Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/eSLIM?download=true
inline.NumInlined: 16391
inline.NumDeleted: 1852
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 150
begin_hunk_0_@_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE:bb.a
  %i.t = lshr i64 %i.d, 32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 0, ptr %3, align 8, !tbaa !234
  store i64 %i.t, ptr %i.u, align 8, !tbaa !235
  %i.v = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.w = shl i64 %i.v, 32                         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.x = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.y = add i64 %i.x, %i.w                       ; 3 uses
  %i.z = icmp ugt i64 %i.y, %i.d
  %i.aa = icmp ult i64 %i.y, %i.w
  %i.ab = or i1 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %.loopexit, !llvm.loop !1364

bb.f:                                             ; preds = %bb.d
  %i.ac = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f, %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
  %.0 = phi i64 [ %i.s, %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit ], [ %i.ac, %bb.f ], [ %i.y, %bb.e ]
  %i.ad = load i64, ptr %2, align 8, !tbaa !234
  %i.ae = add i64 %i.ad, %.0
  ret i64 %i.ae
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4992 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !186  ; 2 uses
  %i.c = icmp ugt i64 %i.b, 623
  br i1 %i.c, label %vector.ph, label %bb.b

vector.ph:                                        ; preds = %bb.a
  %.pre.i = load i64, ptr %0, align 8, !tbaa !160
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !160 ; 5 uses
  %i.g = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.h = and <2 x i64> %i.g, splat (i64 -2147483648)
  %i.i = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.j = or disjoint <2 x i64> %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 3176
  %wide.load9 = load <2 x i64>, ptr %i.k, align 8, !tbaa !160
  %i.l = lshr exact <2 x i64> %i.j, splat (i64 1)
  %i.m = xor <2 x i64> %i.l, %wide.load9
  %i.n = and <2 x i64> %wide.load, splat (i64 1)
  %i.o = icmp eq <2 x i64> %i.n, zeroinitializer
  %i.p = select <2 x i1> %i.o, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.q = xor <2 x i64> %i.m, %i.p
  store <2 x i64> %i.q, ptr %i.d, align 8, !tbaa !160
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.r = icmp eq i64 %index.next, 226
  br i1 %i.r, label %vector.ph11, label %vector.body, !llvm.loop !1365

vector.ph11:                                      ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.t = and i64 %vector.recur.extract, -2147483648
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.v = load i64, ptr %i.u, align 8, !tbaa !160  ; 2 uses
  %i.w = and i64 %i.v, 2147483646
  %i.x = or disjoint i64 %i.w, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4984
  %i.z = load i64, ptr %i.y, align 8, !tbaa !160
  %i.aa = lshr exact i64 %i.x, 1
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = and i64 %i.v, 1
  %.not20.i = icmp eq i64 %i.ac, 0
  %i.ad = select i1 %.not20.i, i64 0, i64 2567483615
  %i.ae = xor i64 %i.ab, %i.ad
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !160
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %.pre24.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !160
  %vector.recur.init14 = insertelement <2 x i64> poison, i64 %.pre24.i, i64 1
  br label %vector.body12

vector.body12:                                    ; preds = %vector.body12, %vector.ph11
  %index13 = phi i64 [ 0, %vector.ph11 ], [ %index.next18, %vector.body12 ] ; 3 uses
  %vector.recur15 = phi <2 x i64> [ %vector.recur.init14, %vector.ph11 ], [ %wide.load16, %vector.body12 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index13 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1816
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1824
  %wide.load16 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !160 ; 4 uses
  %i.aj = shufflevector <2 x i64> %vector.recur15, <2 x i64> %wide.load16, <2 x i32> <i32 1, i32 2>
  %i.ak = and <2 x i64> %i.aj, splat (i64 -2147483648)
  %i.al = and <2 x i64> %wide.load16, splat (i64 2147483646)
  %i.am = or disjoint <2 x i64> %i.al, %i.ak
  %wide.load17 = load <2 x i64>, ptr %i.af, align 8, !tbaa !160
  %i.an = lshr exact <2 x i64> %i.am, splat (i64 1)
  %i.ao = xor <2 x i64> %i.an, %wide.load17
  %i.ap = and <2 x i64> %wide.load16, splat (i64 1)
  %i.aq = icmp eq <2 x i64> %i.ap, zeroinitializer
  %i.ar = select <2 x i1> %i.aq, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.as = xor <2 x i64> %i.ao, %i.ar
  store <2 x i64> %i.as, ptr %i.ag, align 8, !tbaa !160
  %index.next18 = add nuw i64 %index13, 2         ; 2 uses
  %i.at = icmp eq i64 %index.next18, 396
  br i1 %i.at, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, label %vector.body12, !llvm.loop !1366

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit: ; preds = %vector.body12
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4984 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !160
  %i.aw = and i64 %i.av, -2147483648
  %i.ax = load i64, ptr %0, align 8, !tbaa !160   ; 2 uses
  %i.ay = and i64 %i.ax, 2147483646
  %i.az = or disjoint i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !160
  %i.bc = lshr exact i64 %i.az, 1
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = and i64 %i.ax, 1
  %.not.i = icmp eq i64 %i.be, 0
  %i.bf = select i1 %.not.i, i64 0, i64 2567483615
  %i.bg = xor i64 %i.bd, %i.bf
  store i64 %i.bg, ptr %i.au, align 8, !tbaa !160
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, %bb.a
  %i.bh = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.bi = add nuw nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !186
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bh
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !160 ; 2 uses
  %i.bl = lshr i64 %i.bk, 11
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = xor i64 %i.bm, %i.bk                    ; 2 uses
  %i.bo = shl i64 %i.bn, 7
  %i.bp = and i64 %i.bo, 2636928640
  %i.bq = xor i64 %i.bp, %i.bn                    ; 2 uses
  %i.br = shl i64 %i.bq, 15
  %i.bs = and i64 %i.br, 4022730752
  %i.bt = xor i64 %i.bs, %i.bq                    ; 2 uses
  %i.bu = lshr i64 %i.bt, 18
  %i.bv = xor i64 %i.bu, %i.bt
  ret i64 %i.bv
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZSt8__sampleIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEESt20back_insert_iteratorIS5_ESt19output_iterator_taglRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET0_T_SE_St20forward_iterator_tagSD_T1_T2_OT3_(ptr %0, ptr %1, ptr %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(5000) %4) local_unnamed_addr #3 comdat {
bb.a:
  %5 = alloca %"class.std::uniform_int_distribution.41", align 8 ; 6 uses
  %6 = alloca %"class.std::uniform_int_distribution.41", align 8 ; 5 uses
  %7 = alloca %"struct.std::uniform_int_distribution<long>::param_type", align 8 ; 5 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 0, ptr %6, align 8, !tbaa !237
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !238
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 2                   ; 7 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %3) ; 3 uses
  %i.g = udiv i64 4294967295, %i.f
  %.not = icmp ult i64 %i.g, %i.f
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp ne i64 %3, 0
  %i.i = icmp samesign ugt i64 %i.f, 1
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.r
  %.06374 = phi i64 [ %i.f, %.lr.ph ], [ %i.at, %bb.r ] ; 4 uses
  %.06473 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %.266, %bb.r ] ; 3 uses
  %.sroa.053.072 = phi ptr [ %0, %.lr.ph ], [ %i.bu, %bb.r ] ; 4 uses
  %i.n = add nsw i64 %.06374, -1                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.o = mul nuw nsw i64 %i.n, %.06374
  %i.p = add nsw i64 %i.o, -1
  store i64 0, ptr %5, align 8, !tbaa !237
  store i64 %i.p, ptr %i.k, align 8, !tbaa !238
  %i.q = call noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(5000) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.r = sdiv i64 %i.q, %i.n
  %i.s = srem i64 %i.q, %i.n
  %i.t = icmp slt i64 %i.r, %.06473
  br i1 %i.t, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !157  ; 4 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !156
  %.not.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %.sroa.053.072, align 4, !tbaa !35
  store i32 %i.w, ptr %i.u, align 4, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store ptr %i.x, ptr %i.l, align 8, !tbaa !157
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %2, align 8, !tbaa !155    ; 4 uses
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 5 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775804
  br i1 %i.ac, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #27
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ad = ashr exact i64 %i.ab, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = call i64 @llvm.umin.i64(i64 %i.ae, i64 2305843009213693951)
  %i.ah = select i1 %i.af, i64 2305843009213693951, i64 %i.ag ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ah, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #28 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab ; 2 uses
  %i.al = load i32, ptr %.sroa.053.072, align 4, !tbaa !35
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !35
  %i.am = icmp sgt i64 %i.ab, 0
  br i1 %i.am, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr align 4 %i.y, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !156
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.aq) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aj, ptr %2, align 8, !tbaa !155
  store ptr %i.an, ptr %i.l, align 8, !tbaa !157
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.ar, ptr %i.m, align 8, !tbaa !156
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.e
  %8 = add nsw i64 %.06473, -1                    ; 2 uses
  %i.as = icmp eq i64 %8, 0
  br i1 %i.as, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.j
  %.16569 = phi i64 [ %8, %bb.j ], [ %.06473, %bb.c ] ; 3 uses
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.053.072, i64 4 ; 2 uses
  %i.at = add nsw i64 %.06374, -2                 ; 2 uses
  %i.au = icmp slt i64 %i.s, %.16569
  br i1 %i.au, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !157 ; 4 uses
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !156
  %.not.i.i10 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i10, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %9, align 4, !tbaa !35
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store ptr %i.ay, ptr %i.l, align 8, !tbaa !157
  br label %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi.exit17

bb.n:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %2, align 8, !tbaa !155   ; 4 uses
  %i.ba = ptrtoint ptr %i.av to i64
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 5 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775804
  br i1 %i.bd, label %bb.o, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #27
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11: ; preds = %bb.n
  %i.be = ashr exact i64 %i.bc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i12 = call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i.i12, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bf, i64 2305843009213693951)
  %i.bi = select i1 %i.bg, i64 2305843009213693951, i64 %i.bh ; 3 uses
  %.not.i.i.i.i13 = icmp ne i64 %i.bi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i13)
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #28 ; 4 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 2 uses
  %i.bm = load i32, ptr %9, align 4, !tbaa !35
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !35
  %i.bn = icmp sgt i64 %i.bc, 0
  br i1 %i.bn, label %bb.p, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14

bb.p:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr align 4 %i.az, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14: ; preds = %bb.p, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %.not.i17.i.i.i15 = icmp eq ptr %i.az, null
  br i1 %.not.i17.i.i.i15, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14
  %i.bp = load ptr, ptr %i.m, align 8, !tbaa !156
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.br) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16: ; preds = %bb.q, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14
  store ptr %i.bk, ptr %2, align 8, !tbaa !155
  store ptr %i.bo, ptr %i.l, align 8, !tbaa !157
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.bs, ptr %i.m, align 8, !tbaa !156
  br label %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi.exit17

_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi.exit17: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16
  %i.bt = add nsw i64 %.16569, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.k, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi.exit17
  %.266 = phi i64 [ %i.bt, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi.exit17 ], [ %.16569, %bb.k ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.053.072, i64 8 ; 2 uses
  %i.bv = icmp ne i64 %.266, 0
  %i.bw = icmp sgt i64 %.06374, 3
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %i.bx, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.r, %.preheader, %bb.b
  %.sroa.053.2 = phi ptr [ %0, %bb.b ], [ %0, %.preheader ], [ %i.bu, %bb.r ]
  %.4 = phi i64 [ %.sroa.speculated, %bb.b ], [ %.sroa.speculated, %.preheader ], [ %.266, %bb.r ] ; 2 uses
  %.2 = phi i64 [ %i.f, %bb.b ], [ %i.f, %.preheader ], [ %i.at, %bb.r ]
  %.not881 = icmp eq i64 %.4, 0
  br i1 %.not881, label %._crit_edge, label %.lr.ph85

.lr.ph85:                                         ; preds = %.thread
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph85, %bb.z
  %.384 = phi i64 [ %.2, %.lr.ph85 ], [ %i.cb, %bb.z ]
  %.583 = phi i64 [ %.4, %.lr.ph85 ], [ %.6, %bb.z ] ; 3 uses
  %.sroa.053.382 = phi ptr [ %.sroa.053.2, %.lr.ph85 ], [ %i.dd, %bb.z ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.cb = add nsw i64 %.384, -1                   ; 2 uses
  store i64 0, ptr %7, align 8, !tbaa !237
  store i64 %i.cb, ptr %i.by, align 8, !tbaa !238
  %i.cc = call noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(5000) %4, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.cd = icmp slt i64 %i.cc, %.583
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.cd, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !157 ; 4 uses
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !156
  %.not.i.i19 = icmp eq ptr %i.ce, %i.cf
  br i1 %.not.i.i19, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = load i32, ptr %.sroa.053.382, align 4, !tbaa !35
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !35
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store ptr %i.ch, ptr %i.bz, align 8, !tbaa !157
  br label %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi.exit26

bb.v:                                             ; preds = %bb.t
  %i.ci = load ptr, ptr %2, align 8, !tbaa !155   ; 4 uses
  %i.cj = ptrtoint ptr %i.ce to i64
  %i.ck = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.cl = sub i64 %i.cj, %i.ck                    ; 5 uses
  %i.cm = icmp eq i64 %i.cl, 9223372036854775804
  br i1 %i.cm, label %bb.w, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i20

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #27
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i20: ; preds = %bb.v
  %i.cn = ashr exact i64 %i.cl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i21 = call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  %i.co = add nsw i64 %.sroa.speculated.i.i.i.i21, %i.cn ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cn
  %i.cq = call i64 @llvm.umin.i64(i64 %i.co, i64 2305843009213693951)
  %i.cr = select i1 %i.cp, i64 2305843009213693951, i64 %i.cq ; 3 uses
  %.not.i.i.i.i22 = icmp ne i64 %i.cr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i22)
  %i.cs = shl nuw nsw i64 %i.cr, 2
  %i.ct = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #28 ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.cl ; 2 uses
  %i.cv = load i32, ptr %.sroa.053.382, align 4, !tbaa !35
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !35
  %i.cw = icmp sgt i64 %i.cl, 0
  br i1 %i.cw, label %bb.x, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i23

bb.x:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i20
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ct, ptr align 4 %i.ci, i64 %i.cl, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i23

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i23: ; preds = %bb.x, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i20
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %.not.i17.i.i.i24 = icmp eq ptr %i.ci, null
  br i1 %.not.i17.i.i.i24, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i25, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i23
  %i.cy = load ptr, ptr %i.ca, align 8, !tbaa !156
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = sub i64 %i.cz, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.da) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i25

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i25: ; preds = %bb.y, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i23
  store ptr %i.ct, ptr %2, align 8, !tbaa !155
  store ptr %i.cx, ptr %i.bz, align 8, !tbaa !157
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cr
  store ptr %i.db, ptr %i.ca, align 8, !tbaa !156
  br label %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi.exit26

_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi.exit26: ; preds = %bb.u, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i25
  %i.dc = add nsw i64 %.583, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.s, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi.exit26
  %.6 = phi i64 [ %i.dc, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi.exit26 ], [ %.583, %bb.s ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.053.382, i64 4
  %.not8 = icmp eq i64 %.6, 0
  br i1 %.not8, label %._crit_edge, label %bb.s, !llvm.loop !1367

._crit_edge:                                      ; preds = %bb.j, %bb.z, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %._crit_edge
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::uniform_int_distribution<long>::param_type", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !238
  %i.c = load i64, ptr %2, align 8, !tbaa !237
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = icmp ult i64 %i.d, 4294967295
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i64 %i.d to i32                ; 3 uses
  %i.g = add nuw i32 %i.f, 1                      ; 2 uses
  %i.h = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.i = zext i32 %i.g to i64                     ; 2 uses
  %i.j = mul i64 %i.h, %i.i                       ; 3 uses
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %.not21 = icmp ult i32 %i.f, %i.k
  br i1 %.not21, label %_ZNSt24uniform_int_distributionIlE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = xor i32 %i.f, -1
  %i.m = urem i32 %i.l, %i.g                      ; 2 uses
  %i.n = icmp ugt i32 %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionIlE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.o = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.p = mul i64 %i.o, %i.i                       ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp ugt i32 %i.m, %i.q
  br i1 %i.r, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionIlE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit, !llvm.loop !1368

_ZNSt24uniform_int_distributionIlE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c
  %.1.i = phi i64 [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %i.p, %.lr.ph.i ]
  %i.s = lshr i64 %.1.i, 32
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 4294967295
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.t = lshr i64 %i.d, 32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 0, ptr %3, align 8, !tbaa !237
  store i64 %i.t, ptr %i.u, align 8, !tbaa !238
  %i.v = call noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.w = shl i64 %i.v, 32                         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.x = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.y = add i64 %i.x, %i.w                       ; 3 uses
  %i.z = icmp ugt i64 %i.y, %i.d
  %i.aa = icmp ult i64 %i.y, %i.w
  %i.ab = or i1 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %.loopexit, !llvm.loop !1369

bb.f:                                             ; preds = %bb.d
  %i.ac = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f, %_ZNSt24uniform_int_distributionIlE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
  %.0 = phi i64 [ %i.s, %_ZNSt24uniform_int_distributionIlE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit ], [ %i.ac, %bb.f ], [ %i.y, %bb.e ]
  %i.ad = load i64, ptr %2, align 8, !tbaa !237
  %i.ae = add i64 %i.ad, %.0
  ret i64 %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !241
  %i.e = ptrtoint ptr %i.d to i64
end_hunk_0
