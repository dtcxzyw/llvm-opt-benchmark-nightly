inline.NumInlined: 3092
inline.NumDeleted: 1557
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6hermes30FunctionBasicBlockStatsVisitor11beforeStartEjPKh:bb.a
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !54
  %i.fa = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i25, ptr noundef %i.ex, i64 noundef %i.ez) #21 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !129
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 24 ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !132 ; 2 uses
  %i.ff = icmp eq ptr %i.fc, %i.fe
  br i1 %i.ff, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit26
  %i.fg = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.fa, ptr noundef nonnull @.str.26, i64 noundef 1) #21 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit29

bb.ae:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit26
  store i8 10, ptr %i.fe, align 1
  %i.fh = load ptr, ptr %i.fd, align 8, !tbaa !132
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  store ptr %i.fi, ptr %i.fd, align 8, !tbaa !132
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit29

_ZN4llvh11raw_ostreamlsEPKc.exit29:               ; preds = %bb.ad, %bb.ae
  %i.fj = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit29
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !60
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.fo = load ptr, ptr %i.x, align 8, !tbaa !678, !nonnull !85, !align !128
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr @.str.85, ptr %4, align 8, !tbaa !121, !alias.scope !683
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 7, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !109, !alias.scope !683
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 12, ptr %i.fp, align 8, !tbaa !335, !alias.scope !683
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 1, ptr %i.fq, align 4, !tbaa !338, !alias.scope !683
  %i.fr = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedStringE(ptr noundef nonnull align 8 dereferenceable(36) %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr @.str.86, ptr %5, align 8, !tbaa !121, !alias.scope !686
  %.sroa.2.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 7, ptr %.sroa.2.0..sroa_idx.i.i30, align 8, !tbaa !109, !alias.scope !686
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 12, ptr %i.fs, align 8, !tbaa !335, !alias.scope !686
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 1, ptr %i.ft, align 4, !tbaa !338, !alias.scope !686
  %i.fu = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedStringE(ptr noundef nonnull align 8 dereferenceable(36) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr @.str.87, ptr %6, align 8, !tbaa !121, !alias.scope !689
  %.sroa.2.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 7, ptr %.sroa.2.0..sroa_idx.i.i31, align 8, !tbaa !109, !alias.scope !689
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 12, ptr %i.fv, align 8, !tbaa !335, !alias.scope !689
  %i.fw = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 1, ptr %i.fw, align 4, !tbaa !338, !alias.scope !689
  %i.fx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedStringE(ptr noundef nonnull align 8 dereferenceable(36) %i.fu, ptr noundef nonnull align 8 dereferenceable(24) %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr @.str.88, ptr %7, align 8, !tbaa !121, !alias.scope !692
  %.sroa.2.0..sroa_idx.i.i32 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 11, ptr %.sroa.2.0..sroa_idx.i.i32, align 8, !tbaa !109, !alias.scope !692
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 12, ptr %i.fy, align 8, !tbaa !335, !alias.scope !692
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 1, ptr %i.fz, align 4, !tbaa !338, !alias.scope !692
  %i.ga = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedStringE(ptr noundef nonnull align 8 dereferenceable(36) %i.fx, ptr noundef nonnull align 8 dereferenceable(24) %7) #21 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !129
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 24 ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !132 ; 2 uses
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = icmp ult i64 %i.gh, 9
  br i1 %i.gi, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ga, ptr noundef nonnull @.str.89, i64 noundef 9) #21 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit35

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ge, ptr noundef nonnull align 1 dereferenceable(9) @.str.89, i64 9, i1 false)
  %i.gk = load ptr, ptr %i.gd, align 8, !tbaa !132
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 9
  store ptr %i.gl, ptr %i.gd, align 8, !tbaa !132
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit35

_ZN4llvh11raw_ostreamlsEPKc.exit35:               ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes30FunctionBasicBlockStatsVisitor19preVisitInstructionENS_4inst6OpCodeEPKhi(ptr noundef nonnull align 8 dereferenceable(112) %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i16, align 2                      ; 6 uses
  %4 = alloca %"class.llvh::FormattedString", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.llvh::FormattedString", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.llvh::FormattedString", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.llvh::FormattedString", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.llvh::FormattedString", align 8 ; 7 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !695, !nonnull !85, !align !128 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !456
  %.not.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.g, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !121
  %i.j = icmp eq ptr %2, %i.i
  br i1 %i.j, label %_ZNSt13unordered_mapIPKhtSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_tEEE4findERS7_.exit.loopexit, label %bb.c, !llvm.loop !672

bb.e:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !454  ; 2 uses
  %i.n = urem i64 %i.k, %i.m                      ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !453
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !203  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !121
  %i.u = icmp eq ptr %2, %i.t
  br i1 %i.u, label %_ZNSt13unordered_mapIPKhtSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_tEEE4findERS7_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.v = icmp eq ptr %2, %i.y
  br i1 %i.v, label %_ZNSt13unordered_mapIPKhtSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_tEEE4findERS7_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !673

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.w, %bb.g ], [ %i.r, %bb.f ]
  %i.w = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !49 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !121  ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = urem i64 %i.z, %i.m
  %.not19.i.i.i.i = icmp eq i64 %i.aa, %i.n
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !673

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit, !llvm.loop !673

_ZNSt13unordered_mapIPKhtSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_tEEE4findERS7_.exit.loopexit: ; preds = %bb.d
  %.pre = ptrtoint ptr %2 to i64
  br label %_ZNSt13unordered_mapIPKhtSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_tEEE4findERS7_.exit

_ZNSt13unordered_mapIPKhtSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_tEEE4findERS7_.exit: ; preds = %bb.g, %_ZNSt13unordered_mapIPKhtSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_tEEE4findERS7_.exit.loopexit, %bb.f
  %.pre-phi = phi i64 [ %i.k, %bb.f ], [ %.pre, %_ZNSt13unordered_mapIPKhtSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_tEEE4findERS7_.exit.loopexit ], [ %i.k, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !470
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %.pre-phi, %i.ad
  %i.af = trunc i64 %i.ae to i32
  tail call void @_ZN6hermes3hbc24PrettyDisassembleVisitor24printSourceLineForOffsetEj(ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef %i.af) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !695, !nonnull !85, !align !128
  %i.ah = call noundef nonnull align 2 dereferenceable(2) ptr @_ZNSt8__detail9_Map_baseIPKhSt4pairIKS2_tESaIS5_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !110
  store i16 %i.ai, ptr %i.b, align 2, !tbaa !110
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !682, !nonnull !85, !align !128
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseItSt4pairIKtmESaIS3_ENS_10_Select1stESt8equal_toItESt4hashItENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  %i.an = load i64, ptr %i.am, align 8, !tbaa !109 ; 6 uses
  %i.ao = mul i64 %i.an, 100
  %13 = load ptr, ptr %i.aj, align 8, !tbaa !682, !nonnull !85, !align !128
  %14 = load i64, ptr %13, align 8, !tbaa !93
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %16 = load ptr, ptr %15, align 8, !tbaa !696, !nonnull !85, !align !128
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseItSt4pairIKtmESaIS3_ENS_10_Select1stESt8equal_toItESt4hashItENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  %18 = load i64, ptr %17, align 8, !tbaa !109
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !682, !nonnull !85, !align !128
  %19 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.aq = load i64, ptr %19, align 8, !tbaa !91
  %20 = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %21 = insertelement <2 x i64> %20, i64 %18, i64 1
  %22 = uitofp <2 x i64> %21 to <2 x double>
  %23 = insertelement <2 x i64> poison, i64 %14, i64 0
  %24 = insertelement <2 x i64> %23, i64 %i.aq, i64 1
  %25 = uitofp <2 x i64> %24 to <2 x double>
  %26 = fdiv <2 x double> %22, %25                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !678, !nonnull !85, !align !128
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %27 = extractelement <2 x double> %26, i64 0
  call void @_ZN6hermes3hbc12formatStringIJdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.36, double noundef %27)
  %i.at = load ptr, ptr %5, align 8, !tbaa !50
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !54
  store ptr %i.at, ptr %4, align 8, !tbaa !121, !alias.scope !697
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.av, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !109, !alias.scope !697
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 12, ptr %i.aw, align 8, !tbaa !335, !alias.scope !697
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 1, ptr %i.ax, align 4, !tbaa !338, !alias.scope !697
  %i.ay = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedStringE(ptr noundef nonnull align 8 dereferenceable(36) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %i.az = icmp ult i64 %i.an, 10
  br i1 %i.az, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt13unordered_mapIPKhtSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_tEEE4findERS7_.exit, %bb.n
  %.02229.i.i = phi i64 [ %i.bg, %bb.n ], [ %i.an, %_ZNSt13unordered_mapIPKhtSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_tEEE4findERS7_.exit ] ; 5 uses
  %.02328.i.i = phi i32 [ %i.bh, %bb.n ], [ 1, %_ZNSt13unordered_mapIPKhtSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_tEEE4findERS7_.exit ] ; 4 uses
  %i.ba = icmp ult i64 %.02229.i.i, 100
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bb = add i32 %.02328.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.bc = icmp ult i64 %.02229.i.i, 1000
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = add i32 %.02328.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.l:                                             ; preds = %bb.j
  %i.be = icmp ult i64 %.02229.i.i, 10000
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bf = add i32 %.02328.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.bg = udiv i64 %.02229.i.i, 10000
  %i.bh = add i32 %.02328.i.i, 4                  ; 2 uses
  %i.bi = icmp ult i64 %.02229.i.i, 100000
  br i1 %i.bi, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !380

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.n, %bb.m, %bb.k, %bb.i, %_ZNSt13unordered_mapIPKhtSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_tEEE4findERS7_.exit
  %.0.i.i = phi i32 [ %i.bf, %bb.m ], [ %i.bb, %bb.i ], [ %i.bd, %bb.k ], [ 1, %_ZNSt13unordered_mapIPKhtSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_tEEE4findERS7_.exit ], [ %i.bh, %bb.n ]
  %i.bj = zext i32 %.0.i.i to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.bk, ptr %7, align 8, !tbaa !107, !alias.scope !700
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.bj, i8 noundef signext 0) #21
  %i.bl = load ptr, ptr %7, align 8, !tbaa !50, !alias.scope !700 ; 4 uses
  %i.bm = icmp ugt i64 %i.an, 99
  br i1 %i.bm, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !54, !alias.scope !700
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = add i32 %i.bp, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bt, %.lr.ph.i2.i ], [ %i.an, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.cd, %.lr.ph.i2.i ], [ %i.bq, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.br = urem i64 %.020.i.i, 100
  %i.bs = shl nuw nsw i64 %i.br, 1
  %i.bt = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bs ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !60, !noalias !700
  %i.bx = zext i32 %.01819.i.i to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bx
  store i8 %i.bw, ptr %i.by, align 1, !tbaa !60
  %i.bz = load i8, ptr %i.bu, align 2, !tbaa !60, !noalias !700
  %i.ca = add i32 %.01819.i.i, -1
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cb
  store i8 %i.bz, ptr %i.cc, align 1, !tbaa !60
  %i.cd = add i32 %.01819.i.i, -2
  %i.ce = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.ce, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !381

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.an, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.bt, %.lr.ph.i2.i ] ; 3 uses
  %i.cf = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.cg = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ch = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !60, !noalias !700
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !60
  %i.cl = load i8, ptr %i.ch, align 2, !tbaa !60, !noalias !700
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.cm = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.cn = or disjoint i8 %i.cm, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.o, %bb.p
  %storemerge.i.i = phi i8 [ %i.cn, %bb.p ], [ %i.cl, %bb.o ]
  store i8 %storemerge.i.i, ptr %i.bl, align 1, !tbaa !60
  %i.co = load ptr, ptr %7, align 8, !tbaa !50
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !54
  store ptr %i.co, ptr %6, align 8, !tbaa !121, !alias.scope !703
  %.sroa.2.0..sroa_idx.i.i6 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cq, ptr %.sroa.2.0..sroa_idx.i.i6, align 8, !tbaa !109, !alias.scope !703
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 12, ptr %i.cr, align 8, !tbaa !335, !alias.scope !703
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 1, ptr %i.cs, align 4, !tbaa !338, !alias.scope !703
  %i.ct = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedStringE(ptr noundef nonnull align 8 dereferenceable(36) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.cu = load ptr, ptr %15, align 8, !tbaa !696, !nonnull !85, !align !128
  %i.cv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseItSt4pairIKtmESaIS3_ENS_10_Select1stESt8equal_toItESt4hashItENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.cu, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !109 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.cx = icmp ult i64 %i.cw, 10
  br i1 %i.cx, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i10, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %_ZNSt7__cxx119to_stringEm.exit, %bb.v
  %.02229.i.i8 = phi i64 [ %i.de, %bb.v ], [ %i.cw, %_ZNSt7__cxx119to_stringEm.exit ] ; 5 uses
  %.02328.i.i9 = phi i32 [ %i.df, %bb.v ], [ 1, %_ZNSt7__cxx119to_stringEm.exit ] ; 4 uses
  %i.cy = icmp ult i64 %.02229.i.i8, 100
  br i1 %i.cy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i7
  %i.cz = add i32 %.02328.i.i9, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i10

bb.r:                                             ; preds = %.lr.ph.i.i7
  %i.da = icmp ult i64 %.02229.i.i8, 1000
  br i1 %i.da, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.db = add i32 %.02328.i.i9, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i10

bb.t:                                             ; preds = %bb.r
  %i.dc = icmp ult i64 %.02229.i.i8, 10000
  br i1 %i.dc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dd = add i32 %.02328.i.i9, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i10

bb.v:                                             ; preds = %bb.t
  %i.de = udiv i64 %.02229.i.i8, 10000
  %i.df = add i32 %.02328.i.i9, 4                 ; 2 uses
  %i.dg = icmp ult i64 %.02229.i.i8, 100000
  br i1 %i.dg, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i10, label %.lr.ph.i.i7, !llvm.loop !380

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i10:  ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %_ZNSt7__cxx119to_stringEm.exit
  %.0.i.i11 = phi i32 [ %i.dd, %bb.u ], [ %i.cz, %bb.q ], [ %i.db, %bb.s ], [ 1, %_ZNSt7__cxx119to_stringEm.exit ], [ %i.df, %bb.v ]
  %i.dh = zext i32 %.0.i.i11 to i64
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.di, ptr %9, align 8, !tbaa !107, !alias.scope !706
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.dh, i8 noundef signext 0) #21
  %i.dj = load ptr, ptr %9, align 8, !tbaa !50, !alias.scope !706 ; 4 uses
  %i.dk = icmp ugt i64 %i.cw, 99
  br i1 %i.dk, label %.lr.ph.preheader.i.i15, label %._crit_edge.i.i12

.lr.ph.preheader.i.i15:                           ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i10
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !54, !alias.scope !706
  %i.dn = trunc i64 %i.dm to i32
  %i.do = add i32 %i.dn, -1
  br label %.lr.ph.i2.i16

.lr.ph.i2.i16:                                    ; preds = %.lr.ph.i2.i16, %.lr.ph.preheader.i.i15
  %.020.i.i17 = phi i64 [ %i.dr, %.lr.ph.i2.i16 ], [ %i.cw, %.lr.ph.preheader.i.i15 ] ; 3 uses
  %.01819.i.i18 = phi i32 [ %i.eb, %.lr.ph.i2.i16 ], [ %i.do, %.lr.ph.preheader.i.i15 ] ; 3 uses
  %i.dp = urem i64 %.020.i.i17, 100
  %i.dq = shl nuw nsw i64 %i.dp, 1
  %i.dr = udiv i64 %.020.i.i17, 100               ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.dq ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !60, !noalias !706
  %i.dv = zext i32 %.01819.i.i18 to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dv
  store i8 %i.du, ptr %i.dw, align 1, !tbaa !60
  %i.dx = load i8, ptr %i.ds, align 2, !tbaa !60, !noalias !706
  %i.dy = add i32 %.01819.i.i18, -1
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dz
  store i8 %i.dx, ptr %i.ea, align 1, !tbaa !60
  %i.eb = add i32 %.01819.i.i18, -2
  %i.ec = icmp ugt i64 %.020.i.i17, 9999
  br i1 %i.ec, label %.lr.ph.i2.i16, label %._crit_edge.i.i12, !llvm.loop !381

._crit_edge.i.i12:                                ; preds = %.lr.ph.i2.i16, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i10
  %.0.lcssa.i.i13 = phi i64 [ %i.cw, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i10 ], [ %i.dr, %.lr.ph.i2.i16 ] ; 3 uses
  %i.ed = icmp samesign ugt i64 %.0.lcssa.i.i13, 9
  br i1 %i.ed, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i12
  %i.ee = shl nuw nsw i64 %.0.lcssa.i.i13, 1
  %i.ef = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !60, !noalias !706
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !60
  %i.ej = load i8, ptr %i.ef, align 2, !tbaa !60, !noalias !706
  br label %_ZNSt7__cxx119to_stringEm.exit19

bb.x:                                             ; preds = %._crit_edge.i.i12
  %i.ek = trunc nuw nsw i64 %.0.lcssa.i.i13 to i8
  %i.el = or disjoint i8 %i.ek, 48
  br label %_ZNSt7__cxx119to_stringEm.exit19

_ZNSt7__cxx119to_stringEm.exit19:                 ; preds = %bb.w, %bb.x
  %storemerge.i.i14 = phi i8 [ %i.el, %bb.x ], [ %i.ej, %bb.w ]
  store i8 %storemerge.i.i14, ptr %i.dj, align 1, !tbaa !60
  %i.em = load ptr, ptr %9, align 8, !tbaa !50
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !54
  store ptr %i.em, ptr %8, align 8, !tbaa !121, !alias.scope !709
  %.sroa.2.0..sroa_idx.i.i20 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.eo, ptr %.sroa.2.0..sroa_idx.i.i20, align 8, !tbaa !109, !alias.scope !709
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 12, ptr %i.ep, align 8, !tbaa !335, !alias.scope !709
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 1, ptr %i.eq, align 4, !tbaa !338, !alias.scope !709
  %i.er = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedStringE(ptr noundef nonnull align 8 dereferenceable(36) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %28 = extractelement <2 x double> %26, i64 1
  call void @_ZN6hermes3hbc12formatStringIJdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull @.str.43, double noundef %28)
  %i.es = load ptr, ptr %11, align 8, !tbaa !50
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !54
  store ptr %i.es, ptr %10, align 8, !tbaa !121, !alias.scope !712
  %.sroa.2.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.eu, ptr %.sroa.2.0..sroa_idx.i.i21, align 8, !tbaa !109, !alias.scope !712
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 12, ptr %i.ev, align 8, !tbaa !335, !alias.scope !712
  %i.ew = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 1, ptr %i.ew, align 4, !tbaa !338, !alias.scope !712
  %i.ex = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedStringE(ptr noundef nonnull align 8 dereferenceable(36) %i.er, ptr noundef nonnull align 8 dereferenceable(24) %10) #21 ; 0 uses
  %i.ey = load ptr, ptr %11, align 8, !tbaa !50   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx119to_stringEm.exit19
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !60
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx119to_stringEm.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.fd = load ptr, ptr %9, align 8, !tbaa !50    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.di
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ff = load i64, ptr %i.di, align 8, !tbaa !60
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.fh = load ptr, ptr %7, align 8, !tbaa !50    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.bk
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.fj = load i64, ptr %i.bk, align 8, !tbaa !60
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.fl = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !60
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.y

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !678, !nonnull !85, !align !128
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.fs = load ptr, ptr %0, align 8, !tbaa !61
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 64
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = tail call noundef i32 %i.fu(ptr noundef nonnull align 8 dereferenceable(112) %0) #21
  store ptr @.str.90, ptr %12, align 8, !tbaa !121, !alias.scope !715
  %.sroa.2.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i31, align 8, !tbaa !109, !alias.scope !715
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %i.fv, ptr %i.fw, align 8, !tbaa !335, !alias.scope !715
  %i.fx = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 1, ptr %i.fx, align 4, !tbaa !338, !alias.scope !715
  %i.fy = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedStringE(ptr noundef nonnull align 8 dereferenceable(36) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %12) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.y

bb.y:                                             ; preds = %.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.fz = load ptr, ptr %i.a, align 8, !tbaa !121
  call void @_ZN6hermes3hbc24PrettyDisassembleVisitor19preVisitInstructionENS_4inst6OpCodeEPKhi(ptr noundef nonnull align 8 dereferenceable(68) %0, i8 noundef zeroext %1, ptr noundef %i.fz, i32 noundef %3) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc24PrettyDisassembleVisitor20postVisitInstructionENS_4inst6OpCodeEPKhi(ptr noundef nonnull align 8 dereferenceable(68) %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !678, !nonnull !85, !align !128 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !132  ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull @.str.26, i64 noundef 1) #21 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i8 10, ptr %i.f, align 1
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !132
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !132
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  ret void
}

declare void @_ZN6hermes3hbc24PrettyDisassembleVisitor12visitOperandEPKhNS_4inst11OperandTypeES3_i(ptr noundef nonnull align 8 dereferenceable(68), ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes30FunctionBasicBlockStatsVisitorD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !436
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !436
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, !prof !69

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !291
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit:         ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes30FunctionBasicBlockStatsVisitor14getIndentationEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 48
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

declare void @_ZN6hermes3hbc24PrettyDisassembleVisitor24printSourceLineForOffsetEj(ptr noundef nonnull align 8 dereferenceable(68), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes3hbc24PrettyDisassembleVisitor19preVisitInstructionENS_4inst6OpCodeEPKhi(ptr noundef nonnull align 8 dereferenceable(68), i8 noundef zeroext, ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
end_hunk_0
