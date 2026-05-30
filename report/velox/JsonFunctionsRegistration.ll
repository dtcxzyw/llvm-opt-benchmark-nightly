inline.NumInlined: 34235
inline.NumDeleted: 5823
begin_hunk_0_@_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_25JsonExtractScalarFunctionINS0_4exec10VectorExecEE8callImplERNS5_12StringWriterERKNS0_10StringViewESC_EUlRT_E_EEN8simdjson10error_codeERNSG_8fallback8ondemand8documentESE_Rb:_ZN8simdjson8fallback8ondemand8document9is_scalarEv.exit
  %i.ar = zext i32 %i.af to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3, !noalias !1934
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !26, !noalias !1934
  %i.ax = icmp eq i8 %i.aw, 93
  br i1 %i.ax, label %bb.j, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit

bb.j:                                             ; preds = %bb.i
  %i.ay = tail call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(49) %1) #31, !noalias !1934
  br i1 %i.ay, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.aa, align 8, !tbaa !1915, !noalias !1934
  store i32 0, ptr %i.p, align 4, !tbaa !1947, !noalias !1934
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 28, ptr %i.az, align 8, !tbaa !1948, !noalias !1934
  br label %bb.r

bb.l:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !854, !range !125, !noalias !1934, !noundef !126
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1915, !noalias !1934
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1937, !noalias !1934 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !1939, !noalias !1934 ; 3 uses
  %i.bj = icmp ne i32 %i.bi, 0
  tail call void @llvm.assume(i1 %i.bj), !noalias !1934
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = add i32 %i.bi, -1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !852, !noalias !1934 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3, !noalias !1934
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !26, !noalias !1934
  %.not.i23 = icmp eq i8 %i.bs, 125
  br i1 %.not.i23, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.bd, align 8, !tbaa !1915, !noalias !1934
  store i32 0, ptr %i.p, align 4, !tbaa !1947, !noalias !1934
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 28, ptr %i.bt, align 8, !tbaa !1948, !noalias !1934
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bu = zext i32 %i.bi to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3, !noalias !1934
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !26, !noalias !1934
  %i.ca = icmp eq i8 %i.bz, 125
  br i1 %i.ca, label %bb.p, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit

bb.p:                                             ; preds = %bb.o
  %i.cb = tail call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(49) %1) #31, !noalias !1934
  br i1 %i.cb, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.bd, align 8, !tbaa !1915, !noalias !1934
  store i32 0, ptr %i.p, align 4, !tbaa !1947, !noalias !1934
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 28, ptr %i.cc, align 8, !tbaa !1948, !noalias !1934
  br label %bb.r

_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit: ; preds = %bb.l, %bb.p, %bb.o, %bb.f, %bb.j, %bb.i
  %.sroa.0.sroa.10.2 = load ptr, ptr %i.a, align 8, !tbaa !853, !noalias !1934
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %1, ptr %4, align 8, !tbaa !1949
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8, !tbaa !3
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 4
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.sroa.0.sroa.10.2, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !tbaa !852
  %i.cd = call noundef i32 @_ZN8facebook5velox9functions17SIMDJsonExtractor15extractInternalIZNS1_25JsonExtractScalarFunctionINS0_4exec10VectorExecEE8callImplERNS5_12StringWriterERKNS0_10StringViewESC_EUlRT_E_EEN8simdjson10error_codeERNSG_8fallback8ondemand5valueESE_Rbm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit, %bb.n, %bb.h, %bb.k, %bb.q, %bb.e, %bb.b, %bb.d
  %.2 = phi i32 [ 0, %bb.c ], [ %i.m, %bb.b ], [ 28, %bb.n ], [ 0, %bb.d ], [ %i.cd, %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit ], [ 29, %bb.e ], [ 28, %bb.q ], [ 28, %bb.k ], [ 28, %bb.h ]
  ret i32 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZZN8facebook5velox9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEE8callImplERNS3_12StringWriterERKNS0_10StringViewESA_ENKUlRT_E_clIN8simdjson8fallback8ondemand8documentEEEDaSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.simdjson::simdjson_result.1061", align 8 ; 7 uses
  %3 = alloca %"struct.simdjson::simdjson_result.1061", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1951, !nonnull !126 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !100, !range !125, !noundef !126
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !1953, !nonnull !126, !align !247 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !306, !range !125, !noundef !126
  %i.i = trunc nuw i8 %i.h to i1
  store i8 0, ptr %i.g, align 8, !tbaa !306
  br i1 %i.i, label %bb.c, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !7    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !26
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #35
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.d:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 1, !tbaa !100
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !853, !noalias !1954 ; 6 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !866    ; 3 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3    ; 3 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !26
  switch i8 %i.u, label %bb.q [
    i8 123, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit
    i8 91, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit
    i8 34, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit
    i8 110, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit
    i8 116, label %bb.e
    i8 102, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = sub i32 %i.w, %i.r
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = sub i32 %i.z, %i.r
  %..i = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.aa) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1933 ; 3 uses
  %i.ad = icmp ne ptr %i.ac, %i.p                 ; 2 uses
  br i1 %i.ad, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.ag, %bb.f ], [ %i.t, %bb.e ] ; 3 uses
  %i.ah = icmp ugt i32 %..i, 3
  br i1 %i.ah, label %bb.g, label %.thread140

bb.g:                                             ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit
  %.0.copyload.i30 = load i32, ptr %.0.i, align 1 ; 2 uses
  %.not.i = icmp eq i32 %.0.copyload.i30, 1702195828
  %i.ai = icmp ne i32 %..i, 4                     ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.ai, label %.thread, label %.thread142

.thread:                                          ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !26
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !100, !range !125, !noundef !126
  br label %.thread140

bb.i:                                             ; preds = %bb.g
  %.not10.i = icmp eq i32 %.0.copyload.i30, 1936482662
  %or.cond = and i1 %i.ai, %.not10.i
  br i1 %or.cond, label %bb.j, label %.thread140

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp eq i32 %..i, 5
  br i1 %i.ao, label %.thread142, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 5
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !26
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !100, !range !125, !noundef !126
  %4 = icmp ne i8 %i.at, 0
  br label %.thread140

.thread140:                                       ; preds = %.thread, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit, %bb.k, %bb.i
  %i.au = phi i8 [ %i.an, %.thread ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit ] ; 2 uses
  %.not12.i = phi i1 [ false, %.thread ], [ false, %bb.i ], [ %4, %bb.k ], [ false, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit ]
  %5 = icmp ne i8 %i.au, 0
  %brmerge.i = or i1 %5, %.not12.i
  br i1 %brmerge.i, label %.thread142, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

.thread142:                                       ; preds = %bb.h, %bb.j, %.thread140
  %i.av = phi i8 [ %i.au, %.thread140 ], [ 0, %bb.j ], [ 1, %bb.h ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1915
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1937
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !1939
  %i.bc = icmp ne i32 %i.bb, 1                    ; 4 uses
  %brmerge = or i1 %i.ad, %i.bc
  br i1 %brmerge, label %_ZN8simdjson8fallback8ondemand14value_iterator13get_root_boolEb.exit, label %_ZN8simdjson8fallback8ondemand14value_iterator13get_root_boolEb.exit.thread

_ZN8simdjson8fallback8ondemand14value_iterator13get_root_boolEb.exit.thread: ; preds = %.thread142
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store ptr %i.be, ptr %i.ab, align 8, !tbaa !1933
  store i32 0, ptr %i.bd, align 4, !tbaa !1947
  br label %.thread146

_ZN8simdjson8fallback8ondemand14value_iterator13get_root_boolEb.exit: ; preds = %.thread142
  %.mux161 = select i1 %i.bc, i32 31, i32 0
  %.mux = select i1 %i.bc, i8 0, i8 %i.av
  br i1 %i.bc, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit, label %.thread146

.thread146:                                       ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator13get_root_boolEb.exit.thread, %_ZN8simdjson8fallback8ondemand14value_iterator13get_root_boolEb.exit
  %.sroa.096.0173 = phi i8 [ %i.av, %_ZN8simdjson8fallback8ondemand14value_iterator13get_root_boolEb.exit.thread ], [ %.mux, %_ZN8simdjson8fallback8ondemand14value_iterator13get_root_boolEb.exit ]
  %i.bf = trunc nuw i8 %.sroa.096.0173 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.bg = select i1 %i.bf, ptr @.str.194, ptr @.str.119
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !730
  %i.bh = load ptr, ptr %0, align 8, !tbaa !1953, !nonnull !126, !align !247
  %i.bi = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIPKcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS5_ESC_IS5_NSt5decayISF_E4typeEEEEESt16is_constructibleIS5_JSF_EESt13is_assignableIRS5_SF_EEERS6_E4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1933, !noalias !1957 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, %i.p                 ; 2 uses
  %spec.select = select i1 %i.bl, ptr %i.bk, ptr %i.p
  %.pn.in = load i32, ptr %spec.select, align 4, !tbaa !3, !noalias !1957
  %.pn = zext i32 %.pn.in to i64
  %.0.i33 = getelementptr inbounds nuw i8, ptr %i.q, i64 %.pn ; 2 uses
  %i.bm = load i8, ptr %.0.i33, align 1, !tbaa !26, !noalias !1957
  %.not.i31 = icmp eq i8 %i.bm, 34
  br i1 %.not.i31, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1915, !noalias !1957
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1937, !noalias !1957 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !1939, !noalias !1957
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store ptr %i.bv, ptr %i.bj, align 8, !tbaa !1933, !noalias !1957
  store i32 0, ptr %i.bu, align 4, !tbaa !1947, !noalias !1957
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i33, i64 1
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !730, !noalias !1960
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !115, !noalias !1960
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !1960
  %i.cc = tail call noundef ptr %i.cb(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull %i.bw, ptr noundef %i.by, i1 noundef zeroext false) #31, !noalias !1960, !inline_history !1963 ; 3 uses
  %.not.i34 = icmp eq ptr %i.cc, null
  br i1 %.not.i34, label %bb.p, label %.thread153

.thread153:                                       ; preds = %bb.o
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !730, !noalias !1960 ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  store ptr %i.cc, ptr %i.bx, align 8, !tbaa !730, !noalias !1960
  store i64 %i.cg, ptr %2, align 8, !tbaa !186
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cd, ptr %.sroa.4121.0..sroa_idx, align 8, !tbaa !730
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ch, align 8, !tbaa !1964
  %i.ci = load ptr, ptr %0, align 8, !tbaa !1953, !nonnull !126, !align !247
  %i.cj = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSISt17basic_string_viewIcS3_EEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS5_ESC_IS5_NSt5decayISF_E4typeEEEEESt16is_constructibleIS5_JSF_EESt13is_assignableIRS5_SF_EEERS6_E4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(40) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.p:                                             ; preds = %bb.o, %bb.l, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit
  %.ph = phi i32 [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit ], [ 31, %bb.l ], [ 5, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.q:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand8documentE(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::simdjson_result.1061") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %1) #31
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !1964 ; 2 uses
  %.not29 = icmp eq i32 %i.cl, 0
  br i1 %.not29, label %.thread155, label %bb.r

.thread155:                                       ; preds = %bb.q
  %i.cm = load ptr, ptr %0, align 8, !tbaa !1953, !nonnull !126, !align !247
  %i.cn = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSISt17basic_string_viewIcS3_EEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS5_ESC_IS5_NSt5decayISF_E4typeEEEEESt16is_constructibleIS5_JSF_EESt13is_assignableIRS5_SF_EEERS6_E4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit: ; preds = %bb.c, %.thread140, %bb.d, %bb.d, %bb.d, %_ZN8simdjson8fallback8ondemand14value_iterator13get_root_boolEb.exit, %bb.p, %bb.r, %.thread155, %.thread153, %.thread146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %.5 = phi i32 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 0, %bb.b ], [ 17, %.thread140 ], [ %.ph, %bb.p ], [ %.mux161, %_ZN8simdjson8fallback8ondemand14value_iterator13get_root_boolEb.exit ], [ %i.cl, %bb.r ], [ 0, %.thread155 ], [ 0, %.thread153 ], [ 0, %.thread146 ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN8facebook5velox9functions17SIMDJsonExtractor15extractInternalIZNS1_25JsonExtractScalarFunctionINS0_4exec10VectorExecEE8callImplERNS5_12StringWriterERKNS0_10StringViewESC_EUlRT_E_EEN8simdjson10error_codeERNSG_8fallback8ondemand5valueESE_Rbm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 13 uses
  %6 = alloca %"class.std::optional.1095", align 8 ; 6 uses
  %7 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 9 uses
  %8 = alloca %"struct.simdjson::simdjson_result.1056", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !1966
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i8 0, ptr %i.a, align 8, !tbaa !1967
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %sext = shl i64 %4, 32
  %i.c = ashr exact i64 %sext, 32                 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1969
  %i.e = load ptr, ptr %0, align 8, !tbaa !1971   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 40
  %.not137752 = icmp ugt i64 %i.i, %i.c
  br i1 %.not137752, label %.lr.ph, label %.thread710

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aw
  %indvars.iv = phi i64 [ %i.c, %.lr.ph ], [ %indvars.iv.next, %bb.aw ] ; 8 uses
  %i.k = phi ptr [ %i.e, %.lr.ph ], [ %i.io, %bb.aw ]
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %indvars.iv ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !1972 ; 3 uses
  switch i32 %i.n, label %bb.d [
    i32 1, label %bb.c
    i32 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  store i8 0, ptr %3, align 1, !tbaa !100
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.o = load ptr, ptr %5, align 8, !tbaa !1973   ; 18 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !1975 ; 5 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !866  ; 5 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !26
  switch i8 %i.u, label %_ZNO8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand9json_typeEE10take_valueEv.exit145.thread [
    i8 123, label %bb.e
    i8 91, label %.thread657
  ]

bb.e:                                             ; preds = %bb.d
  switch i32 %i.n, label %_ZNO8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand9json_typeEE10take_valueEv.exit145.thread [
    i32 1, label %bb.f
    i32 3, label %bb.aa
    i32 0, label %bb.ab
    i32 2, label %bb.ab
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 11 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1933, !noalias !1976 ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.p
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !1947, !noalias !1976 ; 3 uses
  %i.ab = load i32, ptr %i.v, align 8, !tbaa !1979, !noalias !1976 ; 2 uses
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.y, label %bb.g, label %._crit_edge790

end_hunk_0
begin_hunk_1_@_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJPKcEEEvDpOT_:bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #31 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i.i, label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #36
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !98

.noexc11.i.i:                                     ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #36
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #34 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !7
  store i64 %i.d, ptr %i.b, align 8, !tbaa !26
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.b
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  switch i64 %i.d, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcEEvPT_DpOT0_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.a, align 1, !tbaa !26
  store i8 %i.k, ptr %i.j, align 1, !tbaa !26
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcEEvPT_DpOT0_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %i.a, i64 %i.d, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcEEvPT_DpOT0_.exit

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcEEvPT_DpOT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.n, align 8, !tbaa !306
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !730
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !853  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1915
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1937 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1939 ; 2 uses
  %i.i = icmp ne i32 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = add i32 %i.h, -1
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !852
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3    ; 2 uses
  %i.p = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %.not5 = icmp ugt i32 %i.p, %i.o
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.q = phi i32 [ %i.x, %bb.d ], [ %i.p, %bb.a ]
  %.07 = phi i32 [ %.1, %bb.d ], [ 0, %bb.a ]     ; 3 uses
  %.sroa.5.06 = phi ptr [ %i.t, %bb.d ], [ %i.b, %bb.a ]
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.5.06, i64 4 ; 2 uses
  %i.u = load i8, ptr %i.s, align 1, !tbaa !26
  switch i8 %i.u, label %bb.d [
    i8 91, label %bb.b
    i8 123, label %bb.b
    i8 93, label %bb.c
    i8 125, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  %i.v = add nsw i32 %.07, 1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %.lr.ph
  %i.w = add nsw i32 %.07, -1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c, %bb.b
  %.1 = phi i32 [ %.07, %.lr.ph ], [ %i.v, %bb.b ], [ %i.w, %bb.c ] ; 2 uses
  %i.x = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %.not = icmp ugt i32 %i.x, %i.o
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !2014

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.y = icmp eq i32 %.1, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i1 [ true, %bb.a ], [ %i.y, %._crit_edge.loopexit ]
  ret i1 %.0.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZZN8facebook5velox9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEE8callImplERNS3_12StringWriterERKNS0_10StringViewESA_ENKUlRT_E_clIN8simdjson8fallback8ondemand5valueEEEDaSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.simdjson::simdjson_result.1061", align 8 ; 7 uses
  %3 = alloca %"struct.simdjson::simdjson_result.1061", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1951, !nonnull !126 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !100, !range !125, !noundef !126
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !1953, !nonnull !126, !align !247 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !306, !range !125, !noundef !126
  %i.i = trunc nuw i8 %i.h to i1
  store i8 0, ptr %i.g, align 8, !tbaa !306
  br i1 %i.i, label %bb.c, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !7    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !26
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #35
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.d:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 1, !tbaa !100
  %i.o = load ptr, ptr %1, align 8, !tbaa !1973   ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1975 ; 3 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !866  ; 4 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !26
  switch i8 %i.v, label %bb.l [
    i8 123, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit
    i8 91, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit
    i8 34, label %bb.i
    i8 110, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit
    i8 116, label %bb.e
    i8 102, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1933 ; 3 uses
  %.not = icmp eq ptr %i.y, %i.q                  ; 2 uses
  br i1 %.not, label %bb.f, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.aa
  br label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.ab, %bb.f ], [ %i.u, %bb.e ] ; 3 uses
  %.0.copyload.i10.i = load i32, ptr %.0.i, align 1 ; 2 uses
  %i.ac = xor i32 %.0.copyload.i10.i, 1936482662
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !26
  %i.af = xor i8 %i.ae, 101
  %i.ag = zext i8 %i.af to i32
  %i.ah = or i32 %i.ac, %i.ag
  %i.ai = icmp ne i32 %.0.copyload.i10.i, 1702195828 ; 3 uses
  %i.aj = icmp ne i32 %i.ah, 0
  %or.cond.i = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond.i, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit, label %bb.g

bb.g:                                             ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit
  %i.ak = select i1 %i.ai, i64 5, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !26
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !100, !range !125, !noundef !126
  %.not103 = icmp eq i8 %i.ap, 0
  br i1 %.not103, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit: ; preds = %bb.g
  br i1 %.not, label %bb.h, label %.thread85

bb.h:                                             ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 36 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !1947 ; 4 uses
  %i.as = load i32, ptr %i.w, align 8, !tbaa !1979
  %i.at = icmp eq i32 %i.ar, %i.as
  tail call void @llvm.assume(i1 %i.at)
  %i.au = icmp sgt i32 %i.ar, 1
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store ptr %i.av, ptr %i.x, align 8, !tbaa !1933
  %i.aw = add nsw i32 %i.ar, -1
  %or.cond.i.i = icmp ne i32 %i.ar, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i)
  store i32 %i.aw, ptr %i.aq, align 4, !tbaa !1947
  br label %.thread85

.thread85:                                        ; preds = %bb.h, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.ax = select i1 %i.ai, ptr @.str.119, ptr @.str.194
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !730
  %i.ay = load ptr, ptr %0, align 8, !tbaa !1953, !nonnull !126, !align !247
  %i.az = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIPKcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS5_ESC_IS5_NSt5decayISF_E4typeEEEEESt16is_constructibleIS5_JSF_EESt13is_assignableIRS5_SF_EEERS6_E4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1933, !noalias !2015 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, %i.q
  br i1 %i.bc, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i, label %.thread89

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i: ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 36 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !1947, !noalias !2015 ; 4 uses
  %i.bg = load i32, ptr %i.bd, align 8, !tbaa !1979, !noalias !2015
  %i.bh = icmp eq i32 %i.bf, %i.bg
  tail call void @llvm.assume(i1 %i.bh), !noalias !2015
  %i.bi = icmp sgt i32 %i.bf, 0
  tail call void @llvm.assume(i1 %i.bi), !noalias !2015
  %i.bj = load i32, ptr %i.bb, align 4, !tbaa !3, !noalias !2015
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !26, !noalias !2015
  %.not.i = icmp eq i8 %i.bm, 34
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store ptr %i.bn, ptr %i.ba, align 8, !tbaa !1933, !noalias !2015
  %i.bo = add nsw i32 %i.bf, -1
  %or.cond.i.i.i = icmp ne i32 %i.bf, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i), !noalias !2015
  store i32 %i.bo, ptr %i.be, align 4, !tbaa !1947, !noalias !2015
  br label %.thread89

.thread89:                                        ; preds = %bb.i, %bb.j
  %i.bp = phi i64 [ %i.bk, %bb.j ], [ %i.t, %bb.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1915, !noalias !2018
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1937, !noalias !2021 ; 2 uses
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !730, !noalias !2021
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !115, !noalias !2021
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !2021
  %i.cb = tail call noundef ptr %i.ca(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, ptr noundef nonnull %i.br, ptr noundef %i.bx, i1 noundef zeroext false) #31, !noalias !2021, !inline_history !2024 ; 3 uses
  %.not.i1.i = icmp eq ptr %i.cb, null
  br i1 %.not.i1.i, label %bb.k, label %.thread98

.thread98:                                        ; preds = %.thread89
  %i.cc = load ptr, ptr %i.bu, align 8, !tbaa !730, !noalias !2021 ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  store ptr %i.cb, ptr %i.bu, align 8, !tbaa !730, !noalias !2021
  store i64 %i.cf, ptr %2, align 8, !tbaa !186
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cc, ptr %.sroa.460.0..sroa_idx, align 8, !tbaa !730
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.cg, align 8, !tbaa !1964
  %i.ch = load ptr, ptr %0, align 8, !tbaa !1953, !nonnull !126, !align !247
  %i.ci = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSISt17basic_string_viewIcS3_EEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS5_ESC_IS5_NSt5decayISF_E4typeEEEEESt16is_constructibleIS5_JSF_EESt13is_assignableIRS5_SF_EEERS6_E4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(40) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.k:                                             ; preds = %.thread89, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i
  %.ph = phi i32 [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i ], [ 5, %.thread89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.l:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand5valueE(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::simdjson_result.1061") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #31
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !1964 ; 2 uses
  %.not29 = icmp eq i32 %i.ck, 0
  br i1 %.not29, label %.thread100, label %bb.m

.thread100:                                       ; preds = %bb.l
  %i.cl = load ptr, ptr %0, align 8, !tbaa !1953, !nonnull !126, !align !247
  %i.cm = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSISt17basic_string_viewIcS3_EEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS5_ESC_IS5_NSt5decayISF_E4typeEEEEESt16is_constructibleIS5_JSF_EESt13is_assignableIRS5_SF_EEERS6_E4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(40) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit: ; preds = %bb.c, %bb.g, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit, %bb.d, %bb.d, %bb.d, %bb.k, %bb.m, %.thread100, %.thread98, %.thread85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %.5 = phi i32 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 0, %bb.b ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit ], [ %.ph, %bb.k ], [ 17, %bb.g ], [ %i.ck, %bb.m ], [ 0, %.thread100 ], [ 0, %.thread98 ], [ 0, %.thread85 ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN8facebook5velox9functions17SIMDJsonExtractor14visitRecursiveIZNS1_25JsonExtractScalarFunctionINS0_4exec10VectorExecEE8callImplERNS5_12StringWriterERKNS0_10StringViewESC_EUlRT_E_EEN8simdjson10error_codeERNSG_8fallback8ondemand5valueESE_Rbm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.simdjson::simdjson_result.1061", align 8 ; 6 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.simdjson::padded_string_view", align 8 ; 8 uses
  %8 = alloca %"class.simdjson::fallback::ondemand::parser", align 8 ; 11 uses
  %9 = alloca %"class.simdjson::fallback::ondemand::document", align 8 ; 26 uses
  %10 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 9 uses
  %11 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 10 uses
  %12 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand5valueE(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::simdjson_result.1061") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #31
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1964 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.co

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !2025
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @_ZN8facebook5velox21reusePaddedStringViewERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.simdjson::padded_string_view") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  store i8 1, ptr %8, align 8, !tbaa !2026
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store i64 4294967295, ptr %i.e, align 8, !tbaa !2040
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  store i64 1024, ptr %i.f, align 8, !tbaa !2041
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 8 uses
  store ptr null, ptr %i.g, align 8, !tbaa !2042
  %.sroa.0849.0.copyload = load i64, ptr %7, align 8 ; 8 uses
  %.sroa.2850.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.sroa.2850.0.copyload = load ptr, ptr %.sroa.2850.0..sroa_idx, align 8 ; 5 uses
  %.sroa.3851.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.sroa.3851.0.copyload = load i64, ptr %.sroa.3851.0..sroa_idx, align 8
  %i.h = sub i64 %.sroa.3851.0.copyload, %.sroa.0849.0.copyload ; 2 uses
  %i.i = icmp ugt i64 %i.h, 63
  br i1 %i.i, label %.loopexit1250, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sub nuw nsw i64 64, %i.h                 ; 2 uses
  %i.k = icmp ult i64 %.sroa.0849.0.copyload, %i.j
  br i1 %i.k, label %_ZNK8simdjson18padded_string_view22has_sufficient_paddingEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.l = sub nuw i64 %.sroa.0849.0.copyload, %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.02129.i = phi i64 [ %i.l, %.lr.ph.i ], [ %i.o, %bb.e ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.2850.0.copyload, i64 %.02129.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !26, !noalias !2043
  switch i8 %i.n, label %_ZNK8simdjson18padded_string_view22has_sufficient_paddingEv.exit [
    i8 32, label %bb.e
    i8 13, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.o = add nuw i64 %.02129.i, 1                 ; 2 uses
  %.not.not.i = icmp ult i64 %i.o, %.sroa.0849.0.copyload
  br i1 %.not.not.i, label %bb.d, label %.loopexit1250, !llvm.loop !2046

.loopexit1250:                                    ; preds = %bb.e, %bb.b
  %i.p = icmp ult i64 %.sroa.0849.0.copyload, 3
  br i1 %i.p, label %_ZN8simdjson18padded_string_view15remove_utf8_bomEv.exit.thread, label %_ZN8simdjson18padded_string_view15remove_utf8_bomEv.exit

_ZN8simdjson18padded_string_view15remove_utf8_bomEv.exit: ; preds = %.loopexit1250
  %i.q = load i16, ptr %.sroa.2850.0.copyload, align 1
  %i.r = xor i16 %i.q, -17425
  %i.s = getelementptr i8, ptr %.sroa.2850.0.copyload, i64 2
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i16
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSG_bEEEE7iterateIJNS3_24ConstantFlatVectorReaderISG_EENS3_12VectorReaderIbEEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISV_EEvRKS1_SU_EUlSU_E_EEvSY_SU_T0_EUlSU_E_EEvSU_:bb.a

bb.n:                                             ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit
  %i.cq = load i32, ptr %i.at, align 8, !tbaa !844
  %.not.i.i11 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i11, label %bb.o, label %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i

_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, i64 16, i1 false), !tbaa.struct !851
  %i.cr = load <2 x ptr>, ptr %i.au, align 8, !tbaa !107
  store <2 x ptr> %i.cr, ptr %i.al, align 8, !tbaa !107
  %i.cs = load <2 x i32>, ptr %i.av, align 8, !tbaa !26
  store <2 x i32> %i.cs, ptr %i.am, align 8, !tbaa !26
  %i.ct = load ptr, ptr %i.aw, align 8, !tbaa !853
  store ptr %i.ct, ptr %i.ao, align 8, !tbaa !853
  %i.cu = load i8, ptr %i.ax, align 8, !tbaa !854, !range !125, !noundef !126
  store i8 %i.cu, ptr %i.ap, align 8, !tbaa !854
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.cv = invoke noundef i32 @_ZN8facebook5velox9functions16jsonParsingErrorERN8simdjson8fallback8ondemand8documentE(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  %.not23.i = icmp eq i32 %i.cv, 0
  br i1 %.not23.i, label %bb.s, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit

bb.q:                                             ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.ao

bb.r:                                             ; preds = %bb.o
  %i.cx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ao

bb.s:                                             ; preds = %bb.p
  %i.cy = load ptr, ptr %i.ao, align 8, !tbaa !853, !noalias !4257 ; 6 uses
  %i.cz = load ptr, ptr %2, align 8, !tbaa !866   ; 6 uses
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !26
  %cond = icmp eq i8 %i.dd, 91
  br i1 %cond, label %.thread335, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit

.thread335:                                       ; preds = %bb.s
  %i.de = load ptr, ptr %i.ak, align 8, !tbaa !1933, !noalias !4260 ; 4 uses
  %i.df = icmp eq ptr %i.de, %i.cy
  br i1 %i.df, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.thread335
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !3, !noalias !4260
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !26, !noalias !4260
  %.not8.i.i.i = icmp eq i8 %i.dj, 91
  br i1 %.not8.i.i.i, label %bb.u, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit

bb.u:                                             ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 4 ; 2 uses
  store ptr %i.dk, ptr %i.ak, align 8, !tbaa !1933, !noalias !4260
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread335
  %i.dl = phi ptr [ %i.dk, %bb.u ], [ %i.de, %.thread335 ] ; 2 uses
  %i.dm = load i8, ptr %i.ap, align 8, !tbaa !854, !range !125, !noalias !4260, !noundef !126
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = load ptr, ptr %i.al, align 8, !tbaa !1915, !noalias !4260
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1937, !noalias !4260 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !1939, !noalias !4260 ; 3 uses
  %i.dt = icmp ne i32 %i.ds, 0
  call void @llvm.assume(i1 %i.dt), !noalias !4265
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dv = add i32 %i.ds, -1
  %i.dw = zext i32 %i.dv to i64
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !852, !noalias !4260 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dw
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3, !noalias !4260
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !26, !noalias !4260
  %.not.i.i3.i = icmp eq i8 %i.ec, 93
  br i1 %.not.i.i3.i, label %bb.x, label %.sink.split

bb.x:                                             ; preds = %bb.w
  %i.ed = zext i32 %i.ds to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3, !noalias !4260
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !26, !noalias !4260
  %i.ej = icmp eq i8 %i.ei, 93
  br i1 %i.ej, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ek = call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(49) %2) #31, !noalias !4260
  br i1 %i.ek, label %._crit_edge, label %.sink.split

._crit_edge:                                      ; preds = %bb.y
  %.pre429.a = load ptr, ptr %i.ak, align 8, !tbaa !1983, !noalias !4260
  %.pre430 = load ptr, ptr %2, align 8, !tbaa !866, !noalias !4260
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %bb.x, %bb.v
  %i.el = phi ptr [ %.pre430, %._crit_edge ], [ %i.cz, %bb.x ], [ %i.cz, %bb.v ]
  %i.em = phi ptr [ %.pre429.a, %._crit_edge ], [ %i.dl, %bb.x ], [ %i.dl, %bb.v ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.eo = icmp eq ptr %i.em, %i.en
  call void @llvm.assume(i1 %i.eo), !noalias !4260
  %i.ep = load i32, ptr %i.em, align 4, !tbaa !3, !noalias !4260
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !26, !noalias !4260
  %.not = icmp eq i8 %i.es, 93                    ; 2 uses
  br i1 %.not, label %bb.aa, label %.lr.ph413.split.preheader

bb.aa:                                            ; preds = %bb.z
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store ptr %i.et, ptr %i.ak, align 8, !tbaa !1933, !noalias !4260
  br label %.lr.ph413.split.preheader

.sink.split:                                      ; preds = %bb.y, %bb.w
  store ptr null, ptr %i.al, align 8, !tbaa !1915, !noalias !4260
  store i32 0, ptr %i.an, align 4, !tbaa !1947, !noalias !4260
  store i32 28, ptr %i.am, align 8, !tbaa !1948, !noalias !4260
  br label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit

.lr.ph413.split.preheader:                        ; preds = %bb.z, %bb.aa
  %storemerge = phi i32 [ 0, %bb.aa ], [ 2, %bb.z ]
  store i32 %storemerge, ptr %i.an, align 4, !tbaa !1947, !noalias !4260
  %i.eu = load ptr, ptr %2, align 8               ; 5 uses
  %i.ev = load ptr, ptr %i.al, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  br i1 %.not, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit, label %.lr.ph493

.lr.ph493:                                        ; preds = %.lr.ph413.split.preheader
  %.promoted480 = load ptr, ptr %i.ak, align 8
  %.promoted = load i32, ptr %i.am, align 8
  %i.ex = trunc i64 %i.ch to i1
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph493, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i
  %i.ey = phi i32 [ %.promoted, %.lr.ph493 ], [ %i.hm, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i ] ; 3 uses
  %i.ez = phi ptr [ %.promoted480, %.lr.ph493 ], [ %i.hl, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i ] ; 6 uses
  %.not.i39.i = icmp eq i32 %i.ey, 0
  br i1 %.not.i39.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr null, ptr %i.al, align 8, !tbaa !1915, !noalias !4266
  store i32 0, ptr %i.an, align 4, !tbaa !1947, !noalias !4266
  br label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.fa = icmp ugt ptr %i.ez, %i.cy
  call void @llvm.assume(i1 %i.fa), !noalias !4269
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fc ; 4 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !26
  switch i8 %i.fe, label %.critedge.thread [
    i8 116, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i
    i8 102, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i
  ]

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i: ; preds = %bb.ad, %bb.ad
  %.0.copyload.i10.i.i = load i32, ptr %i.fd, align 1 ; 2 uses
  %i.ff = xor i32 %.0.copyload.i10.i.i, 1936482662
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !26
  %i.fi = xor i8 %i.fh, 101
  %i.fj = zext i8 %i.fi to i32
  %i.fk = or i32 %i.ff, %i.fj
  %i.fl = icmp ne i32 %.0.copyload.i10.i.i, 1702195828 ; 3 uses
  %i.fm = icmp ne i32 %i.fk, 0
  %or.cond.i.i = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %or.cond.i.i, label %.critedge.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i
  %i.fn = select i1 %i.fl, i64 5, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !26
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !100, !range !125, !noundef !126
  %.not401 = icmp eq i8 %i.fs, 0
  br i1 %.not401, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i, label %.critedge.thread

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i: ; preds = %bb.ae
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ez, i64 4 ; 3 uses
  store ptr %i.ft, ptr %i.ak, align 8, !tbaa !1933
  store i32 1, ptr %i.an, align 4, !tbaa !1947
  %i.fu = xor i1 %i.fl, %i.ex
  br i1 %i.fu, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit, label %.critedge

.critedge:                                        ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i
  %i.fv = icmp ugt ptr %i.ft, %i.cy
  call void @llvm.assume(i1 %i.fv)
  br label %.loopexit

.critedge.thread:                                 ; preds = %bb.ae, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i, %bb.ad
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ez, i64 4 ; 7 uses
  store ptr %i.fw, ptr %i.ak, align 8, !tbaa !1933
  %i.fx = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !26
  switch i8 %i.ga, label %.loopexit.sink.split [
    i8 91, label %bb.ah
    i8 123, label %bb.ah
    i8 58, label %bb.ah
    i8 44, label %bb.ah
    i8 34, label %bb.af
  ]

bb.af:                                            ; preds = %.critedge.thread
  %i.gb = load i32, ptr %i.fw, align 4, !tbaa !3
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !26
  %i.gf = icmp eq i8 %i.ge, 58
  br i1 %i.gf, label %bb.ag, label %.loopexit.sink.split

bb.ag:                                            ; preds = %bb.af
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  store ptr %i.gg, ptr %i.ak, align 8, !tbaa !1933
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge.thread, %.critedge.thread, %.critedge.thread, %.critedge.thread, %bb.ag
  %i.gh = phi ptr [ %i.fw, %.critedge.thread ], [ %i.fw, %.critedge.thread ], [ %i.fw, %.critedge.thread ], [ %i.fw, %.critedge.thread ], [ %i.gg, %bb.ag ] ; 3 uses
  %i.gi = load ptr, ptr %i.ew, align 8, !tbaa !1937 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !1939
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gm = zext i32 %i.gk to i64
  %i.gn = load ptr, ptr %i.gl, align 8, !tbaa !852
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gm ; 2 uses
  %i.gp = icmp ult ptr %i.gh, %i.go
  br i1 %i.gp, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i

.lr.ph:                                           ; preds = %bb.ah, %bb.ak
  %i.gq = phi i32 [ %i.gz, %bb.ak ], [ 2, %bb.ah ] ; 4 uses
  %i.gr = phi ptr [ %i.gs, %bb.ak ], [ %i.gh, %bb.ah ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4 ; 5 uses
  store ptr %i.gs, ptr %i.ak, align 8, !tbaa !1933
  %i.gt = load i32, ptr %i.gr, align 4, !tbaa !3
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !26
  switch i8 %i.gw, label %bb.ak [
    i8 91, label %bb.ai
    i8 123, label %bb.ai
    i8 93, label %bb.aj
    i8 125, label %bb.aj
  ]

bb.ai:                                            ; preds = %.lr.ph, %.lr.ph
  %i.gx = add nsw i32 %i.gq, 1                    ; 2 uses
  store i32 %i.gx, ptr %i.an, align 4, !tbaa !1947
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph, %.lr.ph
  %i.gy = add nsw i32 %i.gq, -1                   ; 2 uses
  store i32 %i.gy, ptr %i.an, align 4, !tbaa !1947
  %.not8.i.i.i.i = icmp sgt i32 %i.gq, 2
  br i1 %.not8.i.i.i.i, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %.lr.ph, %bb.aj, %bb.ai
  %i.gz = phi i32 [ %i.gq, %.lr.ph ], [ %i.gy, %bb.aj ], [ %i.gx, %bb.ai ] ; 2 uses
  %i.ha = icmp ult ptr %i.gs, %i.go
  br i1 %i.ha, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.loopexit, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.loopexit: ; preds = %bb.ak
  %i.hb = icmp sgt i32 %i.gz, 0
  br label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.loopexit, %bb.ah
  %i.hc = phi ptr [ %i.gh, %bb.ah ], [ %i.gs, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.loopexit ]
  %i.hd = phi i1 [ true, %bb.ah ], [ %i.hb, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.loopexit ]
  store i32 3, ptr %i.am, align 8, !tbaa !1948
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i

.loopexit.sink.split:                             ; preds = %.critedge.thread, %bb.af
  store i32 1, ptr %i.an, align 4, !tbaa !1947
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aj, %.critedge, %.loopexit.sink.split
  %i.he = phi ptr [ %i.fw, %.loopexit.sink.split ], [ %i.ft, %.critedge ], [ %i.gs, %bb.aj ] ; 3 uses
  %i.hf = icmp ugt ptr %i.he, %i.cy
  call void @llvm.assume(i1 %i.hf)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 4 ; 4 uses
  store ptr %i.hg, ptr %i.ak, align 8, !tbaa !1933
  %i.hh = load i32, ptr %i.he, align 4, !tbaa !3
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !26
  switch i8 %i.hk, label %bb.an [
    i8 93, label %bb.al
    i8 44, label %bb.am
  ]

bb.al:                                            ; preds = %.loopexit
  store i32 0, ptr %i.an, align 4, !tbaa !1947
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i

bb.am:                                            ; preds = %.loopexit
  store i32 2, ptr %i.an, align 4, !tbaa !1947
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i

bb.an:                                            ; preds = %.loopexit
  store i32 3, ptr %i.am, align 8, !tbaa !1948
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i: ; preds = %bb.al, %bb.am, %bb.an, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i
  %i.hl = phi ptr [ %i.hg, %bb.al ], [ %i.hg, %bb.am ], [ %i.hg, %bb.an ], [ %i.hc, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i ]
  %i.hm = phi i32 [ %i.ey, %bb.al ], [ %i.ey, %bb.am ], [ 3, %bb.an ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i ]
  %.not400 = phi i1 [ false, %bb.al ], [ true, %bb.am ], [ true, %bb.an ], [ %i.hd, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i ]
  br i1 %.not400, label %bb.ab, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit

bb.ao:                                            ; preds = %bb.r, %bb.q
  %.pn.i10 = phi { ptr, i32 } [ %i.cx, %bb.r ], [ %i.cw, %bb.q ]
  br i1 %i.cn, label %_ZN8simdjson13padded_stringD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZdaPv(ptr noundef nonnull %i.cm) #35
  br label %_ZN8simdjson13padded_stringD2Ev.exit

_ZN8simdjson13padded_stringD2Ev.exit:             ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %.body

_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i, %.lr.ph413.split.preheader, %bb.t, %.sink.split, %bb.s, %bb.ac, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i, %bb.p
  %.4 = phi i1 [ false, %bb.s ], [ false, %bb.p ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i ], [ false, %.sink.split ], [ false, %bb.ac ], [ false, %bb.t ], [ false, %.lr.ph413.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i ], [ false, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i ]
  %.3.i = phi i1 [ false, %bb.s ], [ false, %bb.p ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i ], [ false, %.sink.split ], [ false, %bb.ac ], [ false, %bb.t ], [ true, %.lr.ph413.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i ], [ true, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i ]
  br i1 %i.cn, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cm) #35
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  store ptr null, ptr %6, align 8, !tbaa !815, !alias.scope !4272
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !4246
  %i.hn = load ptr, ptr %i.bb, align 8, !tbaa !4275, !nonnull !126, !align !247 ; 3 uses
  br i1 %.3.i, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !4276, !nonnull !126, !align !247
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !553
  %i.hr = lshr i64 %indvars.iv, 3
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hr ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !26  ; 2 uses
  br i1 %.4, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hu = trunc i64 %indvars.iv to i8
  %i.hv = and i8 %i.hu, 7
  %i.hw = shl nuw i8 1, %i.hv
  %i.hx = or i8 %i.ht, %i.hw
  br label %.noexc.i

bb.au:                                            ; preds = %bb.as
  %i.hy = and i64 %indvars.iv, 7
  %i.hz = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !26
  %i.ib = and i8 %i.ia, %i.ht
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.au, %bb.at
  %.sink.i = phi i8 [ %i.ib, %bb.au ], [ %i.hx, %bb.at ]
  store i8 %.sink.i, ptr %i.hs, align 1, !tbaa !26
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE7iterateIJNS1_24ConstantFlatVectorReaderISC_EENS1_12VectorReaderIbEEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSQ_.exit

bb.av:                                            ; preds = %bb.ar
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !4278, !nonnull !126, !align !247
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !552 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.if = load ptr, ptr %i.hn, align 8, !tbaa !4279, !nonnull !126, !align !247
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !4229 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 56
end_hunk_2
begin_hunk_3_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSG_bEEEE7iterateIJNS3_24ConstantFlatVectorReaderISG_EENS3_12VectorReaderIbEEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISV_EEvRKNS0_17SelectivityVectorESU_EUlSU_E_EEvSZ_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUlimE_clEim:bb.a
bb.i:                                             ; preds = %bb.h
  %.not23.i = icmp eq i32 %i.cd, 0
  br i1 %.not23.i, label %bb.l, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit

bb.j:                                             ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ai

bb.k:                                             ; preds = %bb.h
  %i.cf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ai

bb.l:                                             ; preds = %bb.i
  %i.cg = load ptr, ptr %i.t, align 8, !tbaa !853, !noalias !4294 ; 7 uses
  %i.ch = load ptr, ptr %3, align 8, !tbaa !866   ; 12 uses
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !3  ; 3 uses
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !26
  %cond = icmp eq i8 %i.cl, 91
  br i1 %cond, label %.thread343, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit

.thread343:                                       ; preds = %bb.l
  %i.cm = load ptr, ptr %i.p, align 8, !tbaa !1933, !noalias !4297 ; 4 uses
  %i.cn = icmp eq ptr %i.cm, %i.cg
  br i1 %i.cn, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.thread343
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !3, !noalias !4297
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !26, !noalias !4297
  %.not8.i.i.i = icmp eq i8 %i.cr, 91
  br i1 %.not8.i.i.i, label %bb.n, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit

bb.n:                                             ; preds = %bb.m
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 2 uses
  store ptr %i.cs, ptr %i.p, align 8, !tbaa !1933, !noalias !4297
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread343
  %i.ct = phi ptr [ %i.cs, %bb.n ], [ %i.cm, %.thread343 ] ; 4 uses
  %i.cu = load i8, ptr %i.u, align 8, !tbaa !854, !range !125, !noalias !4297, !noundef !126
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cw = load ptr, ptr %i.q, align 8, !tbaa !1915, !noalias !4297
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1937, !noalias !4297 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !1939, !noalias !4297 ; 3 uses
  %i.db = icmp ne i32 %i.da, 0
  call void @llvm.assume(i1 %i.db), !noalias !4302
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dd = add i32 %i.da, -1
  %i.de = zext i32 %i.dd to i64
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !852, !noalias !4297 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.de
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3, !noalias !4297 ; 3 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !26, !noalias !4297
  %.not.i.i3.i = icmp eq i8 %i.dk, 93
  br i1 %.not.i.i3.i, label %bb.q, label %.sink.split

bb.q:                                             ; preds = %bb.p
  %i.dl = zext i32 %i.da to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3, !noalias !4297
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !26, !noalias !4297
  %i.dr = icmp ne i8 %i.dq, 93
  %.not5.i = icmp ugt i32 %i.ci, %i.dh
  %or.cond = or i1 %.not5.i, %i.dr
  br i1 %or.cond, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.t
  %i.ds = phi i32 [ %i.dz, %bb.t ], [ %i.ci, %bb.q ]
  %.07.i = phi i32 [ %.1.i, %bb.t ], [ 0, %bb.q ] ; 3 uses
  %.sroa.5.06.i = phi ptr [ %i.dv, %bb.t ], [ %i.cg, %bb.q ]
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.5.06.i, i64 4 ; 2 uses
  %i.dw = load i8, ptr %i.du, align 1, !tbaa !26, !noalias !4297
  switch i8 %i.dw, label %bb.t [
    i8 91, label %bb.r
    i8 123, label %bb.r
    i8 93, label %bb.s
    i8 125, label %bb.s
  ]

bb.r:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.dx = add nsw i32 %.07.i, 1
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.dy = add nsw i32 %.07.i, -1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.lr.ph.i
  %.1.i = phi i32 [ %.07.i, %.lr.ph.i ], [ %i.dx, %bb.r ], [ %i.dy, %bb.s ] ; 2 uses
  %i.dz = load i32, ptr %i.dv, align 4, !tbaa !3, !noalias !4297 ; 2 uses
  %.not.i48 = icmp ugt i32 %i.dz, %i.dh
  br i1 %.not.i48, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, label %.lr.ph.i, !llvm.loop !2014

_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit: ; preds = %bb.t
  %i.ea = icmp eq i32 %.1.i, 0
  br i1 %i.ea, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %.sink.split

_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread: ; preds = %bb.q, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, %bb.o
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ec = icmp eq ptr %i.ct, %i.eb
  call void @llvm.assume(i1 %i.ec), !noalias !4297
  %i.ed = load i32, ptr %i.ct, align 4, !tbaa !3, !noalias !4297
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !26, !noalias !4297
  %.not505 = icmp eq i8 %i.eg, 93                 ; 2 uses
  br i1 %.not505, label %bb.u, label %.lr.ph424.split.preheader

bb.u:                                             ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  store ptr %i.eh, ptr %i.p, align 8, !tbaa !1933, !noalias !4297
  br label %.lr.ph424.split.preheader

.sink.split:                                      ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, %bb.p
  store ptr null, ptr %i.q, align 8, !tbaa !1915, !noalias !4297
  store i32 0, ptr %i.s, align 4, !tbaa !1947, !noalias !4297
  store i32 28, ptr %i.r, align 8, !tbaa !1948, !noalias !4297
  br label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit

.lr.ph424.split.preheader:                        ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, %bb.u
  %i.ei = phi ptr [ %i.eh, %bb.u ], [ %i.ct, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread ]
  %storemerge = phi i32 [ 0, %bb.u ], [ 2, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread ]
  store i32 %storemerge, ptr %i.s, align 4, !tbaa !1947, !noalias !4297
  %i.ej = load ptr, ptr %i.q, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  br i1 %.not505, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit, label %.lr.ph503

.lr.ph503:                                        ; preds = %.lr.ph424.split.preheader
  %.promoted = load i32, ptr %i.r, align 8
  %i.el = trunc i64 %i.bp to i1
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph503, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i
  %i.em = phi ptr [ %i.ei, %.lr.ph503 ], [ %i.hd, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i ] ; 7 uses
  %i.en = phi i32 [ %.promoted, %.lr.ph503 ], [ %i.hc, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i ] ; 3 uses
  %.not.i39.i = icmp eq i32 %i.en, 0
  br i1 %.not.i39.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr null, ptr %i.q, align 8, !tbaa !1915, !noalias !4303
  store i32 0, ptr %i.s, align 4, !tbaa !1947, !noalias !4303
  br label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit

bb.x:                                             ; preds = %bb.v
  %i.eo = icmp ugt ptr %i.em, %i.cg
  call void @llvm.assume(i1 %i.eo), !noalias !4306
  %i.ep = load i32, ptr %i.em, align 4, !tbaa !3
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !26
  switch i8 %i.es, label %.critedge.thread [
    i8 116, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i
    i8 102, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i
  ]

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i: ; preds = %bb.x, %bb.x
  %i.et = load i32, ptr %i.em, align 4, !tbaa !3
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.eu ; 3 uses
  %.0.copyload.i10.i.i.pre = load i32, ptr %i.ev, align 1 ; 2 uses
  %i.ew = xor i32 %.0.copyload.i10.i.i.pre, 1936482662
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !26
  %i.ez = xor i8 %i.ey, 101
  %i.fa = zext i8 %i.ez to i32
  %i.fb = or i32 %i.ew, %i.fa
  %i.fc = icmp ne i32 %.0.copyload.i10.i.i.pre, 1702195828 ; 3 uses
  %i.fd = icmp ne i32 %i.fb, 0
  %or.cond.i.i = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %or.cond.i.i, label %.critedge.thread, label %bb.y

bb.y:                                             ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i
  %i.fe = select i1 %i.fc, i64 5, i64 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !26
  %i.fh = zext i8 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !100, !range !125, !noundef !126
  %.not411 = icmp eq i8 %i.fj, 0
  br i1 %.not411, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i, label %.critedge.thread

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i: ; preds = %bb.y
  %i.fk = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 3 uses
  store ptr %i.fk, ptr %i.p, align 8, !tbaa !1933
  store i32 1, ptr %i.s, align 4, !tbaa !1947
  %i.fl = xor i1 %i.fc, %i.el
  br i1 %i.fl, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit, label %.critedge

.critedge:                                        ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i
  %i.fm = icmp ugt ptr %i.fk, %i.cg
  call void @llvm.assume(i1 %i.fm)
  br label %.loopexit

.critedge.thread:                                 ; preds = %bb.y, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i, %bb.x
  %i.fn = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 7 uses
  store ptr %i.fn, ptr %i.p, align 8, !tbaa !1933
  %i.fo = load i32, ptr %i.em, align 4, !tbaa !3
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !26
  switch i8 %i.fr, label %.loopexit.sink.split [
    i8 91, label %bb.ab
    i8 123, label %bb.ab
    i8 58, label %bb.ab
    i8 44, label %bb.ab
    i8 34, label %bb.z
  ]

bb.z:                                             ; preds = %.critedge.thread
  %i.fs = load i32, ptr %i.fn, align 4, !tbaa !3
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !26
  %i.fw = icmp eq i8 %i.fv, 58
  br i1 %i.fw, label %bb.aa, label %.loopexit.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.fx = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  store ptr %i.fx, ptr %i.p, align 8, !tbaa !1933
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge.thread, %.critedge.thread, %.critedge.thread, %.critedge.thread, %bb.aa
  %i.fy = phi ptr [ %i.fn, %.critedge.thread ], [ %i.fn, %.critedge.thread ], [ %i.fn, %.critedge.thread ], [ %i.fn, %.critedge.thread ], [ %i.fx, %bb.aa ] ; 3 uses
  %i.fz = load ptr, ptr %i.ek, align 8, !tbaa !1937 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !1939
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gd = zext i32 %i.gb to i64
  %i.ge = load ptr, ptr %i.gc, align 8, !tbaa !852
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gd ; 2 uses
  %i.gg = icmp ult ptr %i.fy, %i.gf
  br i1 %i.gg, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i

.lr.ph:                                           ; preds = %bb.ab, %bb.ae
  %i.gh = phi i32 [ %i.gq, %bb.ae ], [ 2, %bb.ab ] ; 4 uses
  %i.gi = phi ptr [ %i.gj, %bb.ae ], [ %i.fy, %bb.ab ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 5 uses
  store ptr %i.gj, ptr %i.p, align 8, !tbaa !1933
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !26
  switch i8 %i.gn, label %bb.ae [
    i8 91, label %bb.ac
    i8 123, label %bb.ac
    i8 93, label %bb.ad
    i8 125, label %bb.ad
  ]

bb.ac:                                            ; preds = %.lr.ph, %.lr.ph
  %i.go = add nsw i32 %i.gh, 1                    ; 2 uses
  store i32 %i.go, ptr %i.s, align 4, !tbaa !1947
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph, %.lr.ph
  %i.gp = add nsw i32 %i.gh, -1                   ; 2 uses
  store i32 %i.gp, ptr %i.s, align 4, !tbaa !1947
  %.not8.i.i.i.i = icmp sgt i32 %i.gh, 2
  br i1 %.not8.i.i.i.i, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %.lr.ph, %bb.ad, %bb.ac
  %i.gq = phi i32 [ %i.gh, %.lr.ph ], [ %i.gp, %bb.ad ], [ %i.go, %bb.ac ] ; 2 uses
  %i.gr = icmp ult ptr %i.gj, %i.gf
  br i1 %i.gr, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.loopexit, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.loopexit: ; preds = %bb.ae
  %i.gs = icmp sgt i32 %i.gq, 0
  br label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.loopexit, %bb.ab
  %i.gt = phi ptr [ %i.fy, %bb.ab ], [ %i.gj, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.loopexit ]
  %i.gu = phi i1 [ true, %bb.ab ], [ %i.gs, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.loopexit ]
  store i32 3, ptr %i.r, align 8, !tbaa !1948
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i

.loopexit.sink.split:                             ; preds = %.critedge.thread, %bb.z
  store i32 1, ptr %i.s, align 4, !tbaa !1947
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %.critedge, %.loopexit.sink.split
  %i.gv = phi ptr [ %i.fn, %.loopexit.sink.split ], [ %i.fk, %.critedge ], [ %i.gj, %bb.ad ] ; 3 uses
  %i.gw = icmp ugt ptr %i.gv, %i.cg
  call void @llvm.assume(i1 %i.gw)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 4 ; 4 uses
  store ptr %i.gx, ptr %i.p, align 8, !tbaa !1933
  %i.gy = load i32, ptr %i.gv, align 4, !tbaa !3
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !26
  switch i8 %i.hb, label %bb.ah [
    i8 93, label %bb.af
    i8 44, label %bb.ag
  ]

bb.af:                                            ; preds = %.loopexit
  store i32 0, ptr %i.s, align 4, !tbaa !1947
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i

bb.ag:                                            ; preds = %.loopexit
  store i32 2, ptr %i.s, align 4, !tbaa !1947
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i

bb.ah:                                            ; preds = %.loopexit
  store i32 3, ptr %i.r, align 8, !tbaa !1948
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i: ; preds = %bb.af, %bb.ag, %bb.ah, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i
  %i.hc = phi i32 [ %i.en, %bb.af ], [ %i.en, %bb.ag ], [ 3, %bb.ah ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i ]
  %i.hd = phi ptr [ %i.gx, %bb.af ], [ %i.gx, %bb.ag ], [ %i.gx, %bb.ah ], [ %i.gt, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i ]
  %.not410 = phi i1 [ false, %bb.af ], [ true, %bb.ag ], [ true, %bb.ah ], [ %i.gu, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i ]
  br i1 %.not410, label %bb.v, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit

bb.ai:                                            ; preds = %bb.k, %bb.j
  %.pn.i17 = phi { ptr, i32 } [ %i.cf, %bb.k ], [ %i.ce, %bb.j ]
  br i1 %i.bv, label %_ZN8simdjson13padded_stringD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #35
  br label %_ZN8simdjson13padded_stringD2Ev.exit

_ZN8simdjson13padded_stringD2Ev.exit:             ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %.body

_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i, %.lr.ph424.split.preheader, %bb.m, %.sink.split, %bb.l, %bb.w, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i, %bb.i
  %.4 = phi i1 [ false, %bb.l ], [ false, %bb.i ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i ], [ false, %.sink.split ], [ false, %bb.w ], [ false, %bb.m ], [ false, %.lr.ph424.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i ], [ false, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i ]
  %.3.i = phi i1 [ false, %bb.l ], [ false, %bb.i ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i ], [ false, %.sink.split ], [ false, %bb.w ], [ false, %bb.m ], [ true, %.lr.ph424.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i ], [ true, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i ]
  br i1 %i.bv, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #35
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  store ptr null, ptr %7, align 8, !tbaa !815, !alias.scope !4309
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !4285
  %i.he = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !4275, !nonnull !126, !align !247 ; 3 uses
  br i1 %.3.i, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !4276, !nonnull !126, !align !247
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !553
  %i.hj = lshr i64 %i.ai, 3
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hj ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !26  ; 2 uses
  br i1 %.4, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hm = trunc nuw nsw i64 %i.ad to i8
  %i.hn = and i8 %i.hm, 7
  %i.ho = shl nuw i8 1, %i.hn
  %i.hp = or i8 %i.hl, %i.ho
  br label %.noexc.i

bb.ao:                                            ; preds = %bb.am
  %i.hq = and i64 %i.ai, 7
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !26
  %i.ht = and i8 %i.hs, %i.hl
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.ao, %bb.an
  %.sink.i = phi i8 [ %i.ht, %bb.ao ], [ %i.hp, %bb.an ]
  store i8 %.sink.i, ptr %i.hk, align 1, !tbaa !26
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE7iterateIJNS1_24ConstantFlatVectorReaderISC_EENS1_12VectorReaderIbEEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSQ_.exit

bb.ap:                                            ; preds = %bb.al
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !4278, !nonnull !126, !align !247
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !552 ; 2 uses
  %.not.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hx = load ptr, ptr %i.hf, align 8, !tbaa !4279, !nonnull !126, !align !247
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !4229 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSG_bEEEE7iterateIJNS3_24ConstantFlatVectorReaderISG_EENS3_12VectorReaderIbEEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISV_EEvRKNS0_17SelectivityVectorESU_EUlSU_E_EEvSZ_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi:bb.a
_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4322
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4322
  br label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, i64 16, i1 false), !tbaa.struct !851, !noalias !4322
  %i.cq = load <2 x ptr>, ptr %i.at, align 8, !tbaa !107, !noalias !4322
  store <2 x ptr> %i.cq, ptr %i.ak, align 8, !tbaa !107, !noalias !4322
  %i.cr = load <2 x i32>, ptr %i.au, align 8, !tbaa !26, !noalias !4322
  store <2 x i32> %i.cr, ptr %i.al, align 8, !tbaa !26, !noalias !4322
  %i.cs = load ptr, ptr %i.av, align 8, !tbaa !853, !noalias !4322
  store ptr %i.cs, ptr %i.an, align 8, !tbaa !853, !noalias !4322
  %i.ct = load i8, ptr %i.aw, align 8, !tbaa !854, !range !125, !noalias !4322, !noundef !126
  store i8 %i.ct, ptr %i.ao, align 8, !tbaa !854, !noalias !4322
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4322
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4322
  %i.cu = invoke noundef i32 @_ZN8facebook5velox9functions16jsonParsingErrorERN8simdjson8fallback8ondemand8documentE(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.j unwind label %bb.l, !noalias !4322

bb.j:                                             ; preds = %bb.i
  %.not23.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not23.i.i, label %bb.m, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit.i

bb.k:                                             ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4322
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4322
  br label %bb.am

bb.l:                                             ; preds = %bb.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.am

bb.m:                                             ; preds = %bb.j
  %i.cx = load ptr, ptr %i.an, align 8, !tbaa !853, !noalias !4328 ; 6 uses
  %i.cy = load ptr, ptr %2, align 8, !tbaa !866, !noalias !4322 ; 6 uses
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !3, !noalias !4322
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !26, !noalias !4322
  %cond = icmp eq i8 %i.dc, 91
  br i1 %cond, label %.thread725, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit.i

.thread725:                                       ; preds = %bb.m
  %i.dd = load ptr, ptr %i.aj, align 8, !tbaa !1933, !noalias !4331 ; 4 uses
  %i.de = icmp eq ptr %i.dd, %i.cx
  br i1 %i.de, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.thread725
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !3, !noalias !4331
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !26, !noalias !4331
  %.not8.i.i.i.i52 = icmp eq i8 %i.di, 91
  br i1 %.not8.i.i.i.i52, label %bb.o, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit.i

bb.o:                                             ; preds = %bb.n
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 2 uses
  store ptr %i.dj, ptr %i.aj, align 8, !tbaa !1933, !noalias !4331
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread725
  %i.dk = phi ptr [ %i.dj, %bb.o ], [ %i.dd, %.thread725 ] ; 2 uses
  %i.dl = load i8, ptr %i.ao, align 8, !tbaa !854, !range !125, !noalias !4331, !noundef !126
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = load ptr, ptr %i.ak, align 8, !tbaa !1915, !noalias !4331
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1937, !noalias !4331 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !1939, !noalias !4331 ; 3 uses
  %i.ds = icmp ne i32 %i.dr, 0
  call void @llvm.assume(i1 %i.ds), !noalias !4336
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.du = add i32 %i.dr, -1
  %i.dv = zext i32 %i.du to i64
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !852, !noalias !4331 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dv
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3, !noalias !4331
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !26, !noalias !4331
  %.not.i.i3.i.i = icmp eq i8 %i.eb, 93
  br i1 %.not.i.i3.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr null, ptr %i.ak, align 8, !tbaa !1915, !noalias !4331
  store i32 0, ptr %i.am, align 4, !tbaa !1947, !noalias !4331
  store i32 28, ptr %i.al, align 8, !tbaa !1948, !noalias !4331
  br label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit.i

bb.s:                                             ; preds = %bb.q
  %i.ec = zext i32 %i.dr to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3, !noalias !4331
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !26, !noalias !4331
  %i.ei = icmp eq i8 %i.eh, 93
  br i1 %i.ei, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ej = call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(49) %2) #31, !noalias !4331
  br i1 %i.ej, label %._crit_edge, label %bb.u

._crit_edge:                                      ; preds = %bb.t
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !1983, !noalias !4331
  %.pre935 = load ptr, ptr %2, align 8, !tbaa !866, !noalias !4331
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %i.ak, align 8, !tbaa !1915, !noalias !4331
  store i32 0, ptr %i.am, align 4, !tbaa !1947, !noalias !4331
  store i32 28, ptr %i.al, align 8, !tbaa !1948, !noalias !4331
  br label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit.i

bb.v:                                             ; preds = %._crit_edge, %bb.s, %bb.p
  %i.ek = phi ptr [ %.pre935, %._crit_edge ], [ %i.cy, %bb.s ], [ %i.cy, %bb.p ]
  %i.el = phi ptr [ %.pre, %._crit_edge ], [ %i.dk, %bb.s ], [ %i.dk, %bb.p ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.en = icmp eq ptr %i.el, %i.em
  call void @llvm.assume(i1 %i.en), !noalias !4331
  %i.eo = load i32, ptr %i.el, align 4, !tbaa !3, !noalias !4331
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !26, !noalias !4331
  %.not1078 = icmp eq i8 %i.er, 93                ; 2 uses
  br i1 %.not1078, label %bb.w, label %.lr.ph908.split.preheader

bb.w:                                             ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store ptr %i.es, ptr %i.aj, align 8, !tbaa !1933, !noalias !4331
  br label %.lr.ph908.split.preheader

.lr.ph908.split.preheader:                        ; preds = %bb.v, %bb.w
  %storemerge867 = phi i32 [ 0, %bb.w ], [ 2, %bb.v ]
  store i32 %storemerge867, ptr %i.am, align 4, !tbaa !1947, !noalias !4331
  %i.et = load ptr, ptr %2, align 8               ; 5 uses
  %i.eu = load ptr, ptr %i.ak, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  br i1 %.not1078, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit.i, label %.lr.ph1072

.lr.ph1072:                                       ; preds = %.lr.ph908.split.preheader
  %.promoted1054 = load ptr, ptr %i.aj, align 8
  %.promoted = load i32, ptr %i.al, align 8
  %i.ew = trunc i64 %i.cg to i1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph1072, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i
  %i.ex = phi i32 [ %.promoted, %.lr.ph1072 ], [ %i.hl, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ] ; 3 uses
  %i.ey = phi ptr [ %.promoted1054, %.lr.ph1072 ], [ %i.hk, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ] ; 6 uses
  %.not.i39.i.i = icmp eq i32 %i.ex, 0
  br i1 %.not.i39.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr null, ptr %i.ak, align 8, !tbaa !1915, !noalias !4337
  store i32 0, ptr %i.am, align 4, !tbaa !1947, !noalias !4337
  br label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ez = icmp ugt ptr %i.ey, %i.cx
  call void @llvm.assume(i1 %i.ez), !noalias !4340
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !4322
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fb ; 4 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !26, !noalias !4322
  switch i8 %i.fd, label %.critedge.thread [
    i8 116, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
    i8 102, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
  ]

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i: ; preds = %bb.z, %bb.z
  %.0.copyload.i10.i.i.i = load i32, ptr %i.fc, align 1, !noalias !4322 ; 2 uses
  %i.fe = xor i32 %.0.copyload.i10.i.i.i, 1936482662
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !26, !noalias !4322
  %i.fh = xor i8 %i.fg, 101
  %i.fi = zext i8 %i.fh to i32
  %i.fj = or i32 %i.fe, %i.fi
  %i.fk = icmp ne i32 %.0.copyload.i10.i.i.i, 1702195828 ; 3 uses
  %i.fl = icmp ne i32 %i.fj, 0
  %or.cond.i.i.i51 = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %or.cond.i.i.i51, label %.critedge.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
  %i.fm = select i1 %i.fk, i64 5, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !26, !noalias !4322
  %i.fp = zext i8 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !100, !range !125, !noalias !4322, !noundef !126
  %.not871 = icmp eq i8 %i.fr, 0
  br i1 %.not871, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i, label %.critedge.thread

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i: ; preds = %bb.aa
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 3 uses
  store ptr %i.fs, ptr %i.aj, align 8, !tbaa !1933, !noalias !4322
  store i32 1, ptr %i.am, align 4, !tbaa !1947, !noalias !4322
  %i.ft = xor i1 %i.fk, %i.ew
  br i1 %i.ft, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit.i, label %.critedge

.critedge:                                        ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i
  %i.fu = icmp ugt ptr %i.fs, %i.cx
  call void @llvm.assume(i1 %i.fu), !noalias !4322
  br label %.loopexit

.critedge.thread:                                 ; preds = %bb.aa, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i, %bb.z
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 8 uses
  store ptr %i.fv, ptr %i.aj, align 8, !tbaa !1933, !noalias !4322
  %i.fw = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !4322
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !26, !noalias !4322
  switch i8 %i.fz, label %bb.ae [
    i8 91, label %bb.af
    i8 123, label %bb.af
    i8 58, label %bb.af
    i8 44, label %bb.af
    i8 93, label %bb.ab
    i8 125, label %bb.ab
    i8 34, label %bb.ac
  ]

bb.ab:                                            ; preds = %.critedge.thread, %.critedge.thread
  store i32 1, ptr %i.am, align 4, !tbaa !1947, !noalias !4322
  br label %.loopexit

bb.ac:                                            ; preds = %.critedge.thread
  %i.ga = load i32, ptr %i.fv, align 4, !tbaa !3, !noalias !4322
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !26, !noalias !4322
  %i.ge = icmp eq i8 %i.gd, 58
  br i1 %i.ge, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  store ptr %i.gf, ptr %i.aj, align 8, !tbaa !1933, !noalias !4322
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac, %.critedge.thread
  store i32 1, ptr %i.am, align 4, !tbaa !1947, !noalias !4322
  br label %.loopexit

bb.af:                                            ; preds = %.critedge.thread, %.critedge.thread, %.critedge.thread, %.critedge.thread, %bb.ad
  %i.gg = phi ptr [ %i.fv, %.critedge.thread ], [ %i.fv, %.critedge.thread ], [ %i.fv, %.critedge.thread ], [ %i.fv, %.critedge.thread ], [ %i.gf, %bb.ad ] ; 3 uses
  %i.gh = load ptr, ptr %i.ev, align 8, !tbaa !1937, !noalias !4322 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !1939, !noalias !4322
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gl = zext i32 %i.gj to i64
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !852, !noalias !4322
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gl ; 2 uses
  %i.go = icmp ult ptr %i.gg, %i.gn
  br i1 %i.go, label %.lr.ph907, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i

.lr.ph907:                                        ; preds = %bb.af, %bb.ai
  %i.gp = phi i32 [ %i.gy, %bb.ai ], [ 2, %bb.af ] ; 4 uses
  %i.gq = phi ptr [ %i.gr, %bb.ai ], [ %i.gg, %bb.af ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 5 uses
  store ptr %i.gr, ptr %i.aj, align 8, !tbaa !1933, !noalias !4322
  %i.gs = load i32, ptr %i.gq, align 4, !tbaa !3, !noalias !4322
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !26, !noalias !4322
  switch i8 %i.gv, label %bb.ai [
    i8 91, label %bb.ag
    i8 123, label %bb.ag
    i8 93, label %bb.ah
    i8 125, label %bb.ah
  ]

bb.ag:                                            ; preds = %.lr.ph907, %.lr.ph907
  %i.gw = add nsw i32 %i.gp, 1                    ; 2 uses
  store i32 %i.gw, ptr %i.am, align 4, !tbaa !1947, !noalias !4322
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph907, %.lr.ph907
  %i.gx = add nsw i32 %i.gp, -1                   ; 2 uses
  store i32 %i.gx, ptr %i.am, align 4, !tbaa !1947, !noalias !4322
  %.not8.i.i.i.i.i = icmp sgt i32 %i.gp, 2
  br i1 %.not8.i.i.i.i.i, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %.lr.ph907, %bb.ah, %bb.ag
  %i.gy = phi i32 [ %i.gp, %.lr.ph907 ], [ %i.gx, %bb.ah ], [ %i.gw, %bb.ag ] ; 2 uses
  %i.gz = icmp ult ptr %i.gr, %i.gn
  br i1 %i.gz, label %.lr.ph907, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit: ; preds = %bb.ai
  %i.ha = icmp sgt i32 %i.gy, 0
  br label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit, %bb.af
  %i.hb = phi ptr [ %i.gg, %bb.af ], [ %i.gr, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit ]
  %i.hc = phi i1 [ true, %bb.af ], [ %i.ha, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit ]
  store i32 3, ptr %i.al, align 8, !tbaa !1948, !noalias !4322
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

.loopexit:                                        ; preds = %bb.ah, %bb.ae, %bb.ab, %.critedge
  %i.hd = phi ptr [ %i.fv, %bb.ae ], [ %i.fs, %.critedge ], [ %i.fv, %bb.ab ], [ %i.gr, %bb.ah ] ; 3 uses
  %i.he = icmp ugt ptr %i.hd, %i.cx
  call void @llvm.assume(i1 %i.he), !noalias !4322
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 4 ; 4 uses
  store ptr %i.hf, ptr %i.aj, align 8, !tbaa !1933, !noalias !4322
  %i.hg = load i32, ptr %i.hd, align 4, !tbaa !3, !noalias !4322
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !26, !noalias !4322
  switch i8 %i.hj, label %bb.al [
    i8 93, label %bb.aj
    i8 44, label %bb.ak
  ]

bb.aj:                                            ; preds = %.loopexit
  store i32 0, ptr %i.am, align 4, !tbaa !1947, !noalias !4322
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.ak:                                            ; preds = %.loopexit
  store i32 2, ptr %i.am, align 4, !tbaa !1947, !noalias !4322
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.al:                                            ; preds = %.loopexit
  store i32 3, ptr %i.al, align 8, !tbaa !1948, !noalias !4322
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i: ; preds = %bb.aj, %bb.ak, %bb.al, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i
  %i.hk = phi ptr [ %i.hf, %bb.aj ], [ %i.hf, %bb.ak ], [ %i.hf, %bb.al ], [ %i.hb, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  %i.hl = phi i32 [ %i.ex, %bb.aj ], [ %i.ex, %bb.ak ], [ 3, %bb.al ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  %.not870 = phi i1 [ false, %bb.aj ], [ true, %bb.ak ], [ true, %bb.al ], [ %i.hc, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  br i1 %.not870, label %bb.x, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit.i

bb.am:                                            ; preds = %bb.l, %bb.k
  %.pn.i.i = phi { ptr, i32 } [ %i.cw, %bb.l ], [ %i.cv, %bb.k ]
  br i1 %i.cm, label %_ZN8simdjson13padded_stringD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZdaPv(ptr noundef nonnull %i.cl) #35, !noalias !4322
  br label %_ZN8simdjson13padded_stringD2Ev.exit

_ZN8simdjson13padded_stringD2Ev.exit:             ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !4322
  br label %.body54

_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit.i: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i, %.lr.ph908.split.preheader, %bb.u, %bb.r, %bb.n, %bb.m, %bb.y, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i, %bb.j
  %.0714 = phi i1 [ false, %bb.m ], [ false, %bb.j ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i ], [ false, %bb.u ], [ false, %bb.y ], [ false, %bb.n ], [ false, %bb.r ], [ false, %.lr.ph908.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i ], [ false, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ]
  %.3.i.i = phi i1 [ false, %bb.m ], [ false, %bb.j ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i ], [ false, %bb.u ], [ false, %bb.y ], [ false, %bb.n ], [ false, %bb.r ], [ true, %.lr.ph908.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i ], [ true, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ]
  br i1 %i.cm, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.cl) #35, !noalias !4322
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !4322
  store ptr null, ptr %6, align 8, !tbaa !815, !alias.scope !4343
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !4316
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !4275, !nonnull !126, !align !247 ; 3 uses
  br i1 %.3.i.i, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !4276, !nonnull !126, !align !247
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !553
  %i.hr = lshr i64 %.0914, 3
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hr ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !26  ; 2 uses
  br i1 %.0714, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hu = trunc i64 %.0914 to i8
  %i.hv = and i8 %i.hu, 7
  %i.hw = shl nuw i8 1, %i.hv
  %i.hx = or i8 %i.ht, %i.hw
  br label %.noexc.i44

bb.as:                                            ; preds = %bb.aq
  %i.hy = and i64 %.0914, 7
  %i.hz = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !26
  %i.ib = and i8 %i.ia, %i.ht
  br label %.noexc.i44

.noexc.i44:                                       ; preds = %bb.as, %bb.ar
  %.sink.i = phi i8 [ %i.ib, %bb.as ], [ %i.hx, %bb.ar ]
  store i8 %.sink.i, ptr %i.hs, align 1, !tbaa !26
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE7iterateIJNS1_24ConstantFlatVectorReaderISC_EENS1_12VectorReaderIbEEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSQ_.exit

bb.at:                                            ; preds = %bb.ap
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !4278, !nonnull !126, !align !247
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !552 ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.ie, null
end_hunk_4
begin_hunk_5_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSG_bEEEE7iterateIJNS3_24ConstantFlatVectorReaderISG_EENS3_12VectorReaderIbEEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISV_EEvRKNS0_17SelectivityVectorESU_EUlSU_E_EEvSZ_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi:bb.a
bb.bv:                                            ; preds = %bb.bu
  %.not23.i = icmp eq i32 %i.mg, 0
  br i1 %.not23.i, label %bb.by, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit

bb.bw:                                            ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit115
  %i.mh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.cv

bb.bx:                                            ; preds = %bb.bu
  %i.mi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.cv

bb.by:                                            ; preds = %bb.bv
  %i.mj = load ptr, ptr %i.s, align 8, !tbaa !853, !noalias !4356 ; 7 uses
  %i.mk = load ptr, ptr %9, align 8, !tbaa !866   ; 12 uses
  %i.ml = load i32, ptr %i.mj, align 4, !tbaa !3  ; 3 uses
  %i.mm = zext i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !26
  %cond884 = icmp eq i8 %i.mo, 91
  br i1 %cond884, label %.thread794, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit

.thread794:                                       ; preds = %bb.by
  %i.mp = load ptr, ptr %i.o, align 8, !tbaa !1933, !noalias !4359 ; 4 uses
  %i.mq = icmp eq ptr %i.mp, %i.mj
  br i1 %i.mq, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %.thread794
  %i.mr = load i32, ptr %i.mp, align 4, !tbaa !3, !noalias !4359
  %i.ms = zext i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !26, !noalias !4359
  %.not8.i.i.i = icmp eq i8 %i.mu, 91
  br i1 %.not8.i.i.i, label %bb.ca, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit

bb.ca:                                            ; preds = %bb.bz
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mp, i64 4 ; 2 uses
  store ptr %i.mv, ptr %i.o, align 8, !tbaa !1933, !noalias !4359
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.thread794
  %i.mw = phi ptr [ %i.mv, %bb.ca ], [ %i.mp, %.thread794 ] ; 4 uses
  %i.mx = load i8, ptr %i.t, align 8, !tbaa !854, !range !125, !noalias !4359, !noundef !126
  %i.my = trunc nuw i8 %i.mx to i1
  br i1 %i.my, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mz = load ptr, ptr %i.p, align 8, !tbaa !1915, !noalias !4359
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !1937, !noalias !4359 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !1939, !noalias !4359 ; 3 uses
  %i.ne = icmp ne i32 %i.nd, 0
  call void @llvm.assume(i1 %i.ne), !noalias !4364
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.ng = add i32 %i.nd, -1
  %i.nh = zext i32 %i.ng to i64
  %i.ni = load ptr, ptr %i.nf, align 8, !tbaa !852, !noalias !4359 ; 2 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.nh
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !3, !noalias !4359 ; 3 uses
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !26, !noalias !4359
  %.not.i.i3.i = icmp eq i8 %i.nn, 93
  br i1 %.not.i.i3.i, label %bb.cd, label %.sink.split

bb.cd:                                            ; preds = %bb.cc
  %i.no = zext i32 %i.nd to i64
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.no
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !3, !noalias !4359
  %i.nr = zext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.nr
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !26, !noalias !4359
  %i.nu = icmp ne i8 %i.nt, 93
  %.not5.i = icmp ugt i32 %i.ml, %i.nk
  %or.cond = or i1 %.not5.i, %i.nu
  br i1 %or.cond, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cd, %bb.cg
  %i.nv = phi i32 [ %i.oc, %bb.cg ], [ %i.ml, %bb.cd ]
  %.07.i = phi i32 [ %.1.i, %bb.cg ], [ 0, %bb.cd ] ; 3 uses
  %.sroa.5.06.i = phi ptr [ %i.ny, %bb.cg ], [ %i.mj, %bb.cd ]
  %i.nw = zext i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.5.06.i, i64 4 ; 2 uses
  %i.nz = load i8, ptr %i.nx, align 1, !tbaa !26, !noalias !4359
  switch i8 %i.nz, label %bb.cg [
    i8 91, label %bb.ce
    i8 123, label %bb.ce
    i8 93, label %bb.cf
    i8 125, label %bb.cf
  ]

bb.ce:                                            ; preds = %.lr.ph.i, %.lr.ph.i
  %i.oa = add nsw i32 %.07.i, 1
  br label %bb.cg

bb.cf:                                            ; preds = %.lr.ph.i, %.lr.ph.i
  %i.ob = add nsw i32 %.07.i, -1
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %.lr.ph.i
  %.1.i = phi i32 [ %.07.i, %.lr.ph.i ], [ %i.oa, %bb.ce ], [ %i.ob, %bb.cf ] ; 2 uses
  %i.oc = load i32, ptr %i.ny, align 4, !tbaa !3, !noalias !4359 ; 2 uses
  %.not.i118 = icmp ugt i32 %i.oc, %i.nk
  br i1 %.not.i118, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, label %.lr.ph.i, !llvm.loop !2014

_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit: ; preds = %bb.cg
  %i.od = icmp eq i32 %.1.i, 0
  br i1 %i.od, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %.sink.split

_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread: ; preds = %bb.cd, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, %bb.cb
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %i.of = icmp eq ptr %i.mw, %i.oe
  call void @llvm.assume(i1 %i.of), !noalias !4359
  %i.og = load i32, ptr %i.mw, align 4, !tbaa !3, !noalias !4359
  %i.oh = zext i32 %i.og to i64
  %i.oi = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !26, !noalias !4359
  %.not1079 = icmp eq i8 %i.oj, 93                ; 2 uses
  br i1 %.not1079, label %bb.ch, label %.lr.ph901.split.preheader

bb.ch:                                            ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread
  %i.ok = getelementptr inbounds nuw i8, ptr %i.mw, i64 4 ; 2 uses
  store ptr %i.ok, ptr %i.o, align 8, !tbaa !1933, !noalias !4359
  br label %.lr.ph901.split.preheader

.sink.split:                                      ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, %bb.cc
  store ptr null, ptr %i.p, align 8, !tbaa !1915, !noalias !4359
  store i32 0, ptr %i.r, align 4, !tbaa !1947, !noalias !4359
  store i32 28, ptr %i.q, align 8, !tbaa !1948, !noalias !4359
  br label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit

.lr.ph901.split.preheader:                        ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, %bb.ch
  %i.ol = phi ptr [ %i.ok, %bb.ch ], [ %i.mw, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread ]
  %storemerge = phi i32 [ 0, %bb.ch ], [ 2, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread ]
  store i32 %storemerge, ptr %i.r, align 4, !tbaa !1947, !noalias !4359
  %i.om = load ptr, ptr %i.p, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  br i1 %.not1079, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit, label %.lr.ph1075

.lr.ph1075:                                       ; preds = %.lr.ph901.split.preheader
  %.promoted1057 = load i32, ptr %i.q, align 8
  %i.oo = trunc i64 %i.ls to i1
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph1075, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i
  %i.op = phi ptr [ %i.ol, %.lr.ph1075 ], [ %i.rg, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i ] ; 7 uses
  %i.oq = phi i32 [ %.promoted1057, %.lr.ph1075 ], [ %i.rf, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i ] ; 3 uses
  %.not.i39.i = icmp eq i32 %i.oq, 0
  br i1 %.not.i39.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store ptr null, ptr %i.p, align 8, !tbaa !1915, !noalias !4365
  store i32 0, ptr %i.r, align 4, !tbaa !1947, !noalias !4365
  br label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit

bb.ck:                                            ; preds = %bb.ci
  %i.or = icmp ugt ptr %i.op, %i.mj
  call void @llvm.assume(i1 %i.or), !noalias !4368
  %i.os = load i32, ptr %i.op, align 4, !tbaa !3
  %i.ot = zext i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !26
  switch i8 %i.ov, label %.critedge882.thread [
    i8 116, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i
    i8 102, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i
  ]

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i: ; preds = %bb.ck, %bb.ck
  %i.ow = load i32, ptr %i.op, align 4, !tbaa !3
  %i.ox = zext i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.ox ; 3 uses
  %.0.copyload.i10.i.i.pre = load i32, ptr %i.oy, align 1 ; 2 uses
  %i.oz = xor i32 %.0.copyload.i10.i.i.pre, 1936482662
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 4
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !26
  %i.pc = xor i8 %i.pb, 101
  %i.pd = zext i8 %i.pc to i32
  %i.pe = or i32 %i.oz, %i.pd
  %i.pf = icmp ne i32 %.0.copyload.i10.i.i.pre, 1702195828 ; 3 uses
  %i.pg = icmp ne i32 %i.pe, 0
  %or.cond.i.i = select i1 %i.pf, i1 %i.pg, i1 false
  br i1 %or.cond.i.i, label %.critedge882.thread, label %bb.cl

bb.cl:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i
  %i.ph = select i1 %i.pf, i64 5, i64 4
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !26
  %i.pk = zext i8 %i.pj to i64
  %i.pl = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.pk
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !100, !range !125, !noundef !126
  %.not866 = icmp eq i8 %i.pm, 0
  br i1 %.not866, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i, label %.critedge882.thread

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i: ; preds = %bb.cl
  %i.pn = getelementptr inbounds nuw i8, ptr %i.op, i64 4 ; 3 uses
  store ptr %i.pn, ptr %i.o, align 8, !tbaa !1933
  store i32 1, ptr %i.r, align 4, !tbaa !1947
  %i.po = xor i1 %i.pf, %i.oo
  br i1 %i.po, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit, label %.critedge882

.critedge882:                                     ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i
  %i.pp = icmp ugt ptr %i.pn, %i.mj
  call void @llvm.assume(i1 %i.pp)
  br label %.loopexit888

.critedge882.thread:                              ; preds = %bb.cl, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i, %bb.ck
  %i.pq = getelementptr inbounds nuw i8, ptr %i.op, i64 4 ; 7 uses
  store ptr %i.pq, ptr %i.o, align 8, !tbaa !1933
  %i.pr = load i32, ptr %i.op, align 4, !tbaa !3
  %i.ps = zext i32 %i.pr to i64
  %i.pt = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.ps
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !26
  switch i8 %i.pu, label %.loopexit888.sink.split [
    i8 91, label %bb.co
    i8 123, label %bb.co
    i8 58, label %bb.co
    i8 44, label %bb.co
    i8 34, label %bb.cm
  ]

bb.cm:                                            ; preds = %.critedge882.thread
  %i.pv = load i32, ptr %i.pq, align 4, !tbaa !3
  %i.pw = zext i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.pw
  %i.py = load i8, ptr %i.px, align 1, !tbaa !26
  %i.pz = icmp eq i8 %i.py, 58
  br i1 %i.pz, label %bb.cn, label %.loopexit888.sink.split

bb.cn:                                            ; preds = %bb.cm
  %i.qa = getelementptr inbounds nuw i8, ptr %i.op, i64 8 ; 2 uses
  store ptr %i.qa, ptr %i.o, align 8, !tbaa !1933
  br label %bb.co

bb.co:                                            ; preds = %.critedge882.thread, %.critedge882.thread, %.critedge882.thread, %.critedge882.thread, %bb.cn
  %i.qb = phi ptr [ %i.pq, %.critedge882.thread ], [ %i.pq, %.critedge882.thread ], [ %i.pq, %.critedge882.thread ], [ %i.pq, %.critedge882.thread ], [ %i.qa, %bb.cn ] ; 3 uses
  %i.qc = load ptr, ptr %i.on, align 8, !tbaa !1937 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !1939
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %i.qg = zext i32 %i.qe to i64
  %i.qh = load ptr, ptr %i.qf, align 8, !tbaa !852
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.qg ; 2 uses
  %i.qj = icmp ult ptr %i.qb, %i.qi
  br i1 %i.qj, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i

.lr.ph:                                           ; preds = %bb.co, %bb.cr
  %i.qk = phi i32 [ %i.qt, %bb.cr ], [ 2, %bb.co ] ; 4 uses
  %i.ql = phi ptr [ %i.qm, %bb.cr ], [ %i.qb, %bb.co ] ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 4 ; 5 uses
  store ptr %i.qm, ptr %i.o, align 8, !tbaa !1933
  %i.qn = load i32, ptr %i.ql, align 4, !tbaa !3
  %i.qo = zext i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.qo
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !26
  switch i8 %i.qq, label %bb.cr [
    i8 91, label %bb.cp
    i8 123, label %bb.cp
    i8 93, label %bb.cq
    i8 125, label %bb.cq
  ]

bb.cp:                                            ; preds = %.lr.ph, %.lr.ph
  %i.qr = add nsw i32 %i.qk, 1                    ; 2 uses
  store i32 %i.qr, ptr %i.r, align 4, !tbaa !1947
  br label %bb.cr

bb.cq:                                            ; preds = %.lr.ph, %.lr.ph
  %i.qs = add nsw i32 %i.qk, -1                   ; 2 uses
  store i32 %i.qs, ptr %i.r, align 4, !tbaa !1947
  %.not8.i.i.i.i = icmp sgt i32 %i.qk, 2
  br i1 %.not8.i.i.i.i, label %bb.cr, label %.loopexit888

bb.cr:                                            ; preds = %.lr.ph, %bb.cq, %bb.cp
  %i.qt = phi i32 [ %i.qk, %.lr.ph ], [ %i.qs, %bb.cq ], [ %i.qr, %bb.cp ] ; 2 uses
  %i.qu = icmp ult ptr %i.qm, %i.qi
  br i1 %i.qu, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.loopexit, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.loopexit: ; preds = %bb.cr
  %i.qv = icmp sgt i32 %i.qt, 0
  br label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.loopexit, %bb.co
  %i.qw = phi ptr [ %i.qb, %bb.co ], [ %i.qm, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.loopexit ]
  %i.qx = phi i1 [ true, %bb.co ], [ %i.qv, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.loopexit ]
  store i32 3, ptr %i.q, align 8, !tbaa !1948
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i

.loopexit888.sink.split:                          ; preds = %.critedge882.thread, %bb.cm
  store i32 1, ptr %i.r, align 4, !tbaa !1947
  br label %.loopexit888

.loopexit888:                                     ; preds = %bb.cq, %.critedge882, %.loopexit888.sink.split
  %i.qy = phi ptr [ %i.pq, %.loopexit888.sink.split ], [ %i.pn, %.critedge882 ], [ %i.qm, %bb.cq ] ; 3 uses
  %i.qz = icmp ugt ptr %i.qy, %i.mj
  call void @llvm.assume(i1 %i.qz)
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 4 ; 4 uses
  store ptr %i.ra, ptr %i.o, align 8, !tbaa !1933
  %i.rb = load i32, ptr %i.qy, align 4, !tbaa !3
  %i.rc = zext i32 %i.rb to i64
  %i.rd = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.rc
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !26
  switch i8 %i.re, label %bb.cu [
    i8 93, label %bb.cs
    i8 44, label %bb.ct
  ]

bb.cs:                                            ; preds = %.loopexit888
  store i32 0, ptr %i.r, align 4, !tbaa !1947
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i

bb.ct:                                            ; preds = %.loopexit888
  store i32 2, ptr %i.r, align 4, !tbaa !1947
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i

bb.cu:                                            ; preds = %.loopexit888
  store i32 3, ptr %i.q, align 8, !tbaa !1948
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i: ; preds = %bb.cs, %bb.ct, %bb.cu, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i
  %i.rf = phi i32 [ %i.oq, %bb.cs ], [ %i.oq, %bb.ct ], [ 3, %bb.cu ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i ]
  %i.rg = phi ptr [ %i.ra, %bb.cs ], [ %i.ra, %bb.ct ], [ %i.ra, %bb.cu ], [ %i.qw, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i ]
  %.not865 = phi i1 [ false, %bb.cs ], [ true, %bb.ct ], [ true, %bb.cu ], [ %i.qx, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i ]
  br i1 %.not865, label %bb.ci, label %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit

bb.cv:                                            ; preds = %bb.bx, %bb.bw
  %.pn.i23 = phi { ptr, i32 } [ %i.mi, %bb.bx ], [ %i.mh, %bb.bw ]
  br i1 %i.ly, label %_ZN8simdjson13padded_stringD2Ev.exit119, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @_ZdaPv(ptr noundef nonnull %i.lx) #35
  br label %_ZN8simdjson13padded_stringD2Ev.exit119

_ZN8simdjson13padded_stringD2Ev.exit119:          ; preds = %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.body

_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i, %.lr.ph901.split.preheader, %bb.bz, %.sink.split, %bb.by, %bb.cj, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i, %bb.bv
  %.4 = phi i1 [ false, %bb.by ], [ false, %bb.bv ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i ], [ false, %.sink.split ], [ false, %bb.cj ], [ false, %bb.bz ], [ false, %.lr.ph901.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i ], [ false, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i ]
  %.3.i = phi i1 [ false, %bb.by ], [ false, %bb.bv ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i ], [ false, %.sink.split ], [ false, %bb.cj ], [ false, %bb.bz ], [ true, %.lr.ph901.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i ], [ true, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i ]
  br i1 %i.ly, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.lx) #35
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %_ZN8facebook5velox9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEE4callIbEEbRbRKNS0_10StringViewERKT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  store ptr null, ptr %13, align 8, !tbaa !815, !alias.scope !4371
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31, !noalias !4347
  %i.rh = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !4275, !nonnull !126, !align !247 ; 3 uses
  br i1 %.3.i, label %bb.cz, label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !4276, !nonnull !126, !align !247
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !553
  %i.rm = lshr i64 %i.kl, 3
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.rm ; 2 uses
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !26  ; 2 uses
  br i1 %.4, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.rp = trunc nuw nsw i64 %i.kg to i8
  %i.rq = and i8 %i.rp, 7
  %i.rr = shl nuw i8 1, %i.rq
  %i.rs = or i8 %i.ro, %i.rr
  br label %.noexc.i

bb.db:                                            ; preds = %bb.cz
  %i.rt = and i64 %i.kl, 7
  %i.ru = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.rt
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !26
  %i.rw = and i8 %i.rv, %i.ro
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.db, %bb.da
  %.sink.i127 = phi i8 [ %i.rw, %bb.db ], [ %i.rs, %bb.da ]
  store i8 %.sink.i127, ptr %i.rn, align 1, !tbaa !26
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE7iterateIJNS1_24ConstantFlatVectorReaderISC_EENS1_12VectorReaderIbEEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSQ_.exit

bb.dc:                                            ; preds = %bb.cy
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ri, i64 8 ; 2 uses
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !4278, !nonnull !126, !align !247
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !552 ; 2 uses
  %.not.i.i = icmp eq ptr %i.rz, null
  br i1 %.not.i.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.sa = load ptr, ptr %i.ri, align 8, !tbaa !4279, !nonnull !126, !align !247
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !4229 ; 3 uses
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSG_bEEEE7iterateIJNS3_12VectorReaderISG_EENSL_IbEEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKS1_ST_EUlST_E_EEvSX_ST_T0_EUlST_E_EEvST_:bb.a

bb.q:                                             ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit
  %i.dc = load i32, ptr %i.at, align 8, !tbaa !844, !noalias !4387
  %.not.i.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i.i, label %bb.r, label %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i

_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4387
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4387
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, i64 16, i1 false), !tbaa.struct !851, !noalias !4387
  %i.dd = load <2 x ptr>, ptr %i.au, align 8, !tbaa !107, !noalias !4387
  store <2 x ptr> %i.dd, ptr %i.al, align 8, !tbaa !107, !noalias !4387
  %i.de = load <2 x i32>, ptr %i.av, align 8, !tbaa !26, !noalias !4387
  store <2 x i32> %i.de, ptr %i.am, align 8, !tbaa !26, !noalias !4387
  %i.df = load ptr, ptr %i.aw, align 8, !tbaa !853, !noalias !4387
  store ptr %i.df, ptr %i.ao, align 8, !tbaa !853, !noalias !4387
  %i.dg = load i8, ptr %i.ax, align 8, !tbaa !854, !range !125, !noalias !4387, !noundef !126
  store i8 %i.dg, ptr %i.ap, align 8, !tbaa !854, !noalias !4387
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4387
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4387
  %i.dh = invoke noundef i32 @_ZN8facebook5velox9functions16jsonParsingErrorERN8simdjson8fallback8ondemand8documentE(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.s unwind label %bb.u, !noalias !4387

bb.s:                                             ; preds = %bb.r
  %.not23.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not23.i.i, label %bb.v, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit

bb.t:                                             ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4387
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4387
  br label %bb.ar

bb.u:                                             ; preds = %bb.r
  %i.dj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ar

bb.v:                                             ; preds = %bb.s
  %i.dk = load ptr, ptr %i.ao, align 8, !tbaa !853, !noalias !4393 ; 6 uses
  %i.dl = load ptr, ptr %2, align 8, !tbaa !866, !noalias !4387 ; 6 uses
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !3, !noalias !4387
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !26, !noalias !4387
  %cond = icmp eq i8 %i.dp, 91
  br i1 %cond, label %.thread323, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit

.thread323:                                       ; preds = %bb.v
  %i.dq = load ptr, ptr %i.ak, align 8, !tbaa !1933, !noalias !4396 ; 4 uses
  %i.dr = icmp eq ptr %i.dq, %i.dk
  br i1 %i.dr, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.thread323
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !3, !noalias !4396
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !26, !noalias !4396
  %.not8.i.i.i.i = icmp eq i8 %i.dv, 91
  br i1 %.not8.i.i.i.i, label %bb.x, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit

bb.x:                                             ; preds = %bb.w
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 4 ; 2 uses
  store ptr %i.dw, ptr %i.ak, align 8, !tbaa !1933, !noalias !4396
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread323
  %i.dx = phi ptr [ %i.dw, %bb.x ], [ %i.dq, %.thread323 ] ; 2 uses
  %i.dy = load i8, ptr %i.ap, align 8, !tbaa !854, !range !125, !noalias !4396, !noundef !126
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = load ptr, ptr %i.al, align 8, !tbaa !1915, !noalias !4396
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1937, !noalias !4396 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !1939, !noalias !4396 ; 3 uses
  %i.ef = icmp ne i32 %i.ee, 0
  call void @llvm.assume(i1 %i.ef), !noalias !4401
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eh = add i32 %i.ee, -1
  %i.ei = zext i32 %i.eh to i64
  %i.ej = load ptr, ptr %i.eg, align 8, !tbaa !852, !noalias !4396 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ei
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3, !noalias !4396
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !26, !noalias !4396
  %.not.i.i3.i.i = icmp eq i8 %i.eo, 93
  br i1 %.not.i.i3.i.i, label %bb.aa, label %.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.ep = zext i32 %i.ee to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3, !noalias !4396
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !26, !noalias !4396
  %i.ev = icmp eq i8 %i.eu, 93
  br i1 %i.ev, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ew = call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(49) %2) #31, !noalias !4396
  br i1 %i.ew, label %._crit_edge, label %.sink.split

._crit_edge:                                      ; preds = %bb.ab
  %.pre417.a = load ptr, ptr %i.ak, align 8, !tbaa !1983, !noalias !4396
  %.pre418 = load ptr, ptr %2, align 8, !tbaa !866, !noalias !4396
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %bb.aa, %bb.y
  %i.ex = phi ptr [ %.pre418, %._crit_edge ], [ %i.dl, %bb.aa ], [ %i.dl, %bb.y ]
  %i.ey = phi ptr [ %.pre417.a, %._crit_edge ], [ %i.dx, %bb.aa ], [ %i.dx, %bb.y ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.fa = icmp eq ptr %i.ey, %i.ez
  call void @llvm.assume(i1 %i.fa), !noalias !4396
  %i.fb = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !4396
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !26, !noalias !4396
  %.not = icmp eq i8 %i.fe, 93                    ; 2 uses
  br i1 %.not, label %bb.ad, label %.lr.ph401.split.preheader

bb.ad:                                            ; preds = %bb.ac
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  store ptr %i.ff, ptr %i.ak, align 8, !tbaa !1933, !noalias !4396
  br label %.lr.ph401.split.preheader

.sink.split:                                      ; preds = %bb.ab, %bb.z
  store ptr null, ptr %i.al, align 8, !tbaa !1915, !noalias !4396
  store i32 0, ptr %i.an, align 4, !tbaa !1947, !noalias !4396
  store i32 28, ptr %i.am, align 8, !tbaa !1948, !noalias !4396
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit

.lr.ph401.split.preheader:                        ; preds = %bb.ac, %bb.ad
  %storemerge = phi i32 [ 0, %bb.ad ], [ 2, %bb.ac ]
  store i32 %storemerge, ptr %i.an, align 4, !tbaa !1947, !noalias !4396
  %i.fg = load ptr, ptr %2, align 8               ; 5 uses
  %i.fh = load ptr, ptr %i.al, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  br i1 %.not, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit, label %.lr.ph481

.lr.ph481:                                        ; preds = %.lr.ph401.split.preheader
  %.promoted468 = load ptr, ptr %i.ak, align 8
  %.promoted = load i32, ptr %i.am, align 8
  %i.fj = trunc i64 %i.ct to i1
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph481, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i
  %i.fk = phi i32 [ %.promoted, %.lr.ph481 ], [ %i.hy, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ] ; 3 uses
  %i.fl = phi ptr [ %.promoted468, %.lr.ph481 ], [ %i.hx, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ] ; 6 uses
  %.not.i39.i.i = icmp eq i32 %i.fk, 0
  br i1 %.not.i39.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr null, ptr %i.al, align 8, !tbaa !1915, !noalias !4402
  store i32 0, ptr %i.an, align 4, !tbaa !1947, !noalias !4402
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.fm = icmp ugt ptr %i.fl, %i.dk
  call void @llvm.assume(i1 %i.fm), !noalias !4405
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !3, !noalias !4387
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fo ; 4 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !26, !noalias !4387
  switch i8 %i.fq, label %.critedge.thread [
    i8 116, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
    i8 102, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
  ]

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i: ; preds = %bb.ag, %bb.ag
  %.0.copyload.i10.i.i.i = load i32, ptr %i.fp, align 1, !noalias !4387 ; 2 uses
  %i.fr = xor i32 %.0.copyload.i10.i.i.i, 1936482662
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !26, !noalias !4387
  %i.fu = xor i8 %i.ft, 101
  %i.fv = zext i8 %i.fu to i32
  %i.fw = or i32 %i.fr, %i.fv
  %i.fx = icmp ne i32 %.0.copyload.i10.i.i.i, 1702195828 ; 3 uses
  %i.fy = icmp ne i32 %i.fw, 0
  %or.cond.i.i.i = select i1 %i.fx, i1 %i.fy, i1 false
  br i1 %or.cond.i.i.i, label %.critedge.thread, label %bb.ah

bb.ah:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
  %i.fz = select i1 %i.fx, i64 5, i64 4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !26, !noalias !4387
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !100, !range !125, !noalias !4387, !noundef !126
  %.not389 = icmp eq i8 %i.ge, 0
  br i1 %.not389, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i, label %.critedge.thread

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i: ; preds = %bb.ah
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 3 uses
  store ptr %i.gf, ptr %i.ak, align 8, !tbaa !1933, !noalias !4387
  store i32 1, ptr %i.an, align 4, !tbaa !1947, !noalias !4387
  %i.gg = xor i1 %i.fx, %i.fj
  br i1 %i.gg, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit, label %.critedge

.critedge:                                        ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i
  %i.gh = icmp ugt ptr %i.gf, %i.dk
  call void @llvm.assume(i1 %i.gh), !noalias !4408
  br label %.loopexit

.critedge.thread:                                 ; preds = %bb.ah, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i, %bb.ag
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 7 uses
  store ptr %i.gi, ptr %i.ak, align 8, !tbaa !1933, !noalias !4387
  %i.gj = load i32, ptr %i.fl, align 4, !tbaa !3, !noalias !4387
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !26, !noalias !4387
  switch i8 %i.gm, label %.loopexit.sink.split [
    i8 91, label %bb.ak
    i8 123, label %bb.ak
    i8 58, label %bb.ak
    i8 44, label %bb.ak
    i8 34, label %bb.ai
  ]

bb.ai:                                            ; preds = %.critedge.thread
  %i.gn = load i32, ptr %i.gi, align 4, !tbaa !3, !noalias !4387
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !26, !noalias !4387
  %i.gr = icmp eq i8 %i.gq, 58
  br i1 %i.gr, label %bb.aj, label %.loopexit.sink.split

bb.aj:                                            ; preds = %bb.ai
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  store ptr %i.gs, ptr %i.ak, align 8, !tbaa !1933, !noalias !4387
  br label %bb.ak

bb.ak:                                            ; preds = %.critedge.thread, %.critedge.thread, %.critedge.thread, %.critedge.thread, %bb.aj
  %i.gt = phi ptr [ %i.gi, %.critedge.thread ], [ %i.gi, %.critedge.thread ], [ %i.gi, %.critedge.thread ], [ %i.gi, %.critedge.thread ], [ %i.gs, %bb.aj ] ; 3 uses
  %i.gu = load ptr, ptr %i.fi, align 8, !tbaa !1937, !noalias !4387 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !1939, !noalias !4387
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gy = zext i32 %i.gw to i64
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !852, !noalias !4387
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gy ; 2 uses
  %i.hb = icmp ult ptr %i.gt, %i.ha
  br i1 %i.hb, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i

.lr.ph:                                           ; preds = %bb.ak, %bb.an
  %i.hc = phi i32 [ %i.hl, %bb.an ], [ 2, %bb.ak ] ; 4 uses
  %i.hd = phi ptr [ %i.he, %bb.an ], [ %i.gt, %bb.ak ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4 ; 5 uses
  store ptr %i.he, ptr %i.ak, align 8, !tbaa !1933, !noalias !4387
  %i.hf = load i32, ptr %i.hd, align 4, !tbaa !3, !noalias !4387
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !26, !noalias !4387
  switch i8 %i.hi, label %bb.an [
    i8 91, label %bb.al
    i8 123, label %bb.al
    i8 93, label %bb.am
    i8 125, label %bb.am
  ]

bb.al:                                            ; preds = %.lr.ph, %.lr.ph
  %i.hj = add nsw i32 %i.hc, 1                    ; 2 uses
  store i32 %i.hj, ptr %i.an, align 4, !tbaa !1947, !noalias !4387
  br label %bb.an

bb.am:                                            ; preds = %.lr.ph, %.lr.ph
  %i.hk = add nsw i32 %i.hc, -1                   ; 2 uses
  store i32 %i.hk, ptr %i.an, align 4, !tbaa !1947, !noalias !4387
  %.not8.i.i.i.i.i = icmp sgt i32 %i.hc, 2
  br i1 %.not8.i.i.i.i.i, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %.lr.ph, %bb.am, %bb.al
  %i.hl = phi i32 [ %i.hc, %.lr.ph ], [ %i.hk, %bb.am ], [ %i.hj, %bb.al ] ; 2 uses
  %i.hm = icmp ult ptr %i.he, %i.ha
  br i1 %i.hm, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit: ; preds = %bb.an
  %i.hn = icmp sgt i32 %i.hl, 0
  br label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit, %bb.ak
  %i.ho = phi ptr [ %i.gt, %bb.ak ], [ %i.he, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit ]
  %i.hp = phi i1 [ true, %bb.ak ], [ %i.hn, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit ]
  store i32 3, ptr %i.am, align 8, !tbaa !1948, !noalias !4387
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

.loopexit.sink.split:                             ; preds = %.critedge.thread, %bb.ai
  store i32 1, ptr %i.an, align 4, !tbaa !1947, !noalias !4387
  br label %.loopexit

.loopexit:                                        ; preds = %bb.am, %.critedge, %.loopexit.sink.split
  %i.hq = phi ptr [ %i.gi, %.loopexit.sink.split ], [ %i.gf, %.critedge ], [ %i.he, %bb.am ] ; 3 uses
  %i.hr = icmp ugt ptr %i.hq, %i.dk
  call void @llvm.assume(i1 %i.hr), !noalias !4387
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 4 ; 4 uses
  store ptr %i.hs, ptr %i.ak, align 8, !tbaa !1933, !noalias !4387
  %i.ht = load i32, ptr %i.hq, align 4, !tbaa !3, !noalias !4387
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !26, !noalias !4387
  switch i8 %i.hw, label %bb.aq [
    i8 93, label %bb.ao
    i8 44, label %bb.ap
  ]

bb.ao:                                            ; preds = %.loopexit
  store i32 0, ptr %i.an, align 4, !tbaa !1947, !noalias !4387
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.ap:                                            ; preds = %.loopexit
  store i32 2, ptr %i.an, align 4, !tbaa !1947, !noalias !4387
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.aq:                                            ; preds = %.loopexit
  store i32 3, ptr %i.am, align 8, !tbaa !1948, !noalias !4387
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i: ; preds = %bb.ao, %bb.ap, %bb.aq, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i
  %i.hx = phi ptr [ %i.hs, %bb.ao ], [ %i.hs, %bb.ap ], [ %i.hs, %bb.aq ], [ %i.ho, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  %i.hy = phi i32 [ %i.fk, %bb.ao ], [ %i.fk, %bb.ap ], [ 3, %bb.aq ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  %.not388 = phi i1 [ false, %bb.ao ], [ true, %bb.ap ], [ true, %bb.aq ], [ %i.hp, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  br i1 %.not388, label %bb.ae, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit

bb.ar:                                            ; preds = %bb.u, %bb.t
  %.pn.i.i = phi { ptr, i32 } [ %i.dj, %bb.u ], [ %i.di, %bb.t ]
  br i1 %i.cz, label %_ZN8simdjson13padded_stringD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZdaPv(ptr noundef nonnull %i.cy) #35, !noalias !4387
  br label %_ZN8simdjson13padded_stringD2Ev.exit

_ZN8simdjson13padded_stringD2Ev.exit:             ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !4387
  br label %.body

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i, %.lr.ph401.split.preheader, %bb.w, %.sink.split, %bb.v, %bb.af, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i, %bb.s
  %.4 = phi i1 [ false, %bb.v ], [ false, %bb.s ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i ], [ false, %.sink.split ], [ false, %bb.af ], [ false, %bb.w ], [ false, %.lr.ph401.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i ], [ false, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ]
  %.3.i.i = phi i1 [ false, %bb.v ], [ false, %bb.s ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i ], [ false, %.sink.split ], [ false, %bb.af ], [ false, %bb.w ], [ true, %.lr.ph401.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i ], [ true, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ]
  br i1 %i.cz, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cy) #35, !noalias !4387
  br label %bb.au

bb.au:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !4387
  store ptr null, ptr %6, align 8, !tbaa !815, !alias.scope !4409
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !4381
  %i.hz = load ptr, ptr %i.bb, align 8, !tbaa !4412, !nonnull !126, !align !247 ; 3 uses
  br i1 %.3.i.i, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !4413, !nonnull !126, !align !247
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !553
  %i.id = lshr i64 %indvars.iv, 3
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.id ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !26  ; 2 uses
  br i1 %.4, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ig = trunc i64 %indvars.iv to i8
  %i.ih = and i8 %i.ig, 7
  %i.ii = shl nuw i8 1, %i.ih
  %i.ij = or i8 %i.if, %i.ii
  br label %.noexc.i

bb.ax:                                            ; preds = %bb.av
  %i.ik = and i64 %indvars.iv, 7
  %i.il = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !26
  %i.in = and i8 %i.im, %i.if
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.ax, %bb.aw
  %.sink.i = phi i8 [ %i.in, %bb.ax ], [ %i.ij, %bb.aw ]
  store i8 %.sink.i, ptr %i.ie, align 1, !tbaa !26
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE7iterateIJNS1_12VectorReaderISC_EENSH_IbEEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit

bb.ay:                                            ; preds = %bb.au
  %i.io = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !4415, !nonnull !126, !align !247
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !552 ; 2 uses
  %.not.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ir = load ptr, ptr %i.hz, align 8, !tbaa !4416, !nonnull !126, !align !247
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !4229 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 56
end_hunk_6
begin_hunk_7_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSG_bEEEE7iterateIJNS3_12VectorReaderISG_EENSL_IbEEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim:bb.a
bb.l:                                             ; preds = %bb.k
  %.not23.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not23.i.i, label %bb.o, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit

bb.m:                                             ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !4428
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4428
  br label %bb.al

bb.n:                                             ; preds = %bb.k
  %i.cr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.al

bb.o:                                             ; preds = %bb.l
  %i.cs = load ptr, ptr %i.t, align 8, !tbaa !853, !noalias !4434 ; 7 uses
  %i.ct = load ptr, ptr %3, align 8, !tbaa !866, !noalias !4428 ; 12 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !3, !noalias !4428 ; 3 uses
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !26, !noalias !4428
  %cond = icmp eq i8 %i.cx, 91
  br i1 %cond, label %.thread329, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit

.thread329:                                       ; preds = %bb.o
  %i.cy = load ptr, ptr %i.p, align 8, !tbaa !1933, !noalias !4437 ; 4 uses
  %i.cz = icmp eq ptr %i.cy, %i.cs
  br i1 %i.cz, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.thread329
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !3, !noalias !4437
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !26, !noalias !4437
  %.not8.i.i.i.i = icmp eq i8 %i.dd, 91
  br i1 %.not8.i.i.i.i, label %bb.q, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 4 ; 2 uses
  store ptr %i.de, ptr %i.p, align 8, !tbaa !1933, !noalias !4437
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread329
  %i.df = phi ptr [ %i.de, %bb.q ], [ %i.cy, %.thread329 ] ; 4 uses
  %i.dg = load i8, ptr %i.u, align 8, !tbaa !854, !range !125, !noalias !4437, !noundef !126
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.di = load ptr, ptr %i.q, align 8, !tbaa !1915, !noalias !4437
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1937, !noalias !4437 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !1939, !noalias !4437 ; 3 uses
  %i.dn = icmp ne i32 %i.dm, 0
  call void @llvm.assume(i1 %i.dn), !noalias !4442
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dp = add i32 %i.dm, -1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = load ptr, ptr %i.do, align 8, !tbaa !852, !noalias !4437 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dq
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3, !noalias !4437 ; 3 uses
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !26, !noalias !4437
  %.not.i.i3.i.i = icmp eq i8 %i.dw, 93
  br i1 %.not.i.i3.i.i, label %bb.t, label %.sink.split

bb.t:                                             ; preds = %bb.s
  %i.dx = zext i32 %i.dm to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3, !noalias !4437
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !26, !noalias !4437
  %i.ed = icmp ne i8 %i.ec, 93
  %.not5.i = icmp ugt i32 %i.cu, %i.dt
  %or.cond = or i1 %.not5.i, %i.ed
  br i1 %or.cond, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %bb.w
  %i.ee = phi i32 [ %i.el, %bb.w ], [ %i.cu, %bb.t ]
  %.07.i = phi i32 [ %.1.i, %bb.w ], [ 0, %bb.t ] ; 3 uses
  %.sroa.5.06.i = phi ptr [ %i.eh, %bb.w ], [ %i.cs, %bb.t ]
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.5.06.i, i64 4 ; 2 uses
  %i.ei = load i8, ptr %i.eg, align 1, !tbaa !26, !noalias !4437
  switch i8 %i.ei, label %bb.w [
    i8 91, label %bb.u
    i8 123, label %bb.u
    i8 93, label %bb.v
    i8 125, label %bb.v
  ]

bb.u:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.ej = add nsw i32 %.07.i, 1
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.ek = add nsw i32 %.07.i, -1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.lr.ph.i
  %.1.i = phi i32 [ %.07.i, %.lr.ph.i ], [ %i.ej, %bb.u ], [ %i.ek, %bb.v ] ; 2 uses
  %i.el = load i32, ptr %i.eh, align 4, !tbaa !3, !noalias !4437 ; 2 uses
  %.not.i34 = icmp ugt i32 %i.el, %i.dt
  br i1 %.not.i34, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, label %.lr.ph.i, !llvm.loop !2014

_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit: ; preds = %bb.w
  %i.em = icmp eq i32 %.1.i, 0
  br i1 %i.em, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %.sink.split

_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread: ; preds = %bb.t, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, %bb.r
  %i.en = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.eo = icmp eq ptr %i.df, %i.en
  call void @llvm.assume(i1 %i.eo), !noalias !4437
  %i.ep = load i32, ptr %i.df, align 4, !tbaa !3, !noalias !4437
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !26, !noalias !4437
  %.not491 = icmp eq i8 %i.es, 93                 ; 2 uses
  br i1 %.not491, label %bb.x, label %.lr.ph410.split.preheader

bb.x:                                             ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread
  %i.et = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  store ptr %i.et, ptr %i.p, align 8, !tbaa !1933, !noalias !4437
  br label %.lr.ph410.split.preheader

.sink.split:                                      ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, %bb.s
  store ptr null, ptr %i.q, align 8, !tbaa !1915, !noalias !4437
  store i32 0, ptr %i.s, align 4, !tbaa !1947, !noalias !4437
  store i32 28, ptr %i.r, align 8, !tbaa !1948, !noalias !4437
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit

.lr.ph410.split.preheader:                        ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, %bb.x
  %i.eu = phi ptr [ %i.et, %bb.x ], [ %i.df, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread ]
  %storemerge = phi i32 [ 0, %bb.x ], [ 2, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread ]
  store i32 %storemerge, ptr %i.s, align 4, !tbaa !1947, !noalias !4437
  %i.ev = load ptr, ptr %i.q, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  br i1 %.not491, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit, label %.lr.ph489

.lr.ph489:                                        ; preds = %.lr.ph410.split.preheader
  %.promoted = load i32, ptr %i.r, align 8
  %i.ex = trunc i64 %i.cb to i1
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph489, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i
  %i.ey = phi ptr [ %i.eu, %.lr.ph489 ], [ %i.hp, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ] ; 7 uses
  %i.ez = phi i32 [ %.promoted, %.lr.ph489 ], [ %i.ho, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ] ; 3 uses
  %.not.i39.i.i = icmp eq i32 %i.ez, 0
  br i1 %.not.i39.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %i.q, align 8, !tbaa !1915, !noalias !4443
  store i32 0, ptr %i.s, align 4, !tbaa !1947, !noalias !4443
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit

bb.aa:                                            ; preds = %bb.y
  %i.fa = icmp ugt ptr %i.ey, %i.cs
  call void @llvm.assume(i1 %i.fa), !noalias !4446
  %i.fb = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !4428
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !26, !noalias !4428
  switch i8 %i.fe, label %.critedge.thread [
    i8 116, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
    i8 102, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
  ]

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i: ; preds = %bb.aa, %bb.aa
  %i.ff = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !4428
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.fg ; 3 uses
  %.0.copyload.i10.i.i.i.pre = load i32, ptr %i.fh, align 1, !noalias !4428 ; 2 uses
  %i.fi = xor i32 %.0.copyload.i10.i.i.i.pre, 1936482662
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !26, !noalias !4428
  %i.fl = xor i8 %i.fk, 101
  %i.fm = zext i8 %i.fl to i32
  %i.fn = or i32 %i.fi, %i.fm
  %i.fo = icmp ne i32 %.0.copyload.i10.i.i.i.pre, 1702195828 ; 3 uses
  %i.fp = icmp ne i32 %i.fn, 0
  %or.cond.i.i.i = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %or.cond.i.i.i, label %.critedge.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
  %i.fq = select i1 %i.fo, i64 5, i64 4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !26, !noalias !4428
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !100, !range !125, !noalias !4428, !noundef !126
  %.not397 = icmp eq i8 %i.fv, 0
  br i1 %.not397, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i, label %.critedge.thread

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i: ; preds = %bb.ab
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 3 uses
  store ptr %i.fw, ptr %i.p, align 8, !tbaa !1933, !noalias !4428
  store i32 1, ptr %i.s, align 4, !tbaa !1947, !noalias !4428
  %i.fx = xor i1 %i.fo, %i.ex
  br i1 %i.fx, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit, label %.critedge

.critedge:                                        ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i
  %i.fy = icmp ugt ptr %i.fw, %i.cs
  call void @llvm.assume(i1 %i.fy), !noalias !4449
  br label %.loopexit

.critedge.thread:                                 ; preds = %bb.ab, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i, %bb.aa
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 7 uses
  store ptr %i.fz, ptr %i.p, align 8, !tbaa !1933, !noalias !4428
  %i.ga = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !4428
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !26, !noalias !4428
  switch i8 %i.gd, label %.loopexit.sink.split [
    i8 91, label %bb.ae
    i8 123, label %bb.ae
    i8 58, label %bb.ae
    i8 44, label %bb.ae
    i8 34, label %bb.ac
  ]

bb.ac:                                            ; preds = %.critedge.thread
  %i.ge = load i32, ptr %i.fz, align 4, !tbaa !3, !noalias !4428
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !26, !noalias !4428
  %i.gi = icmp eq i8 %i.gh, 58
  br i1 %i.gi, label %bb.ad, label %.loopexit.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  store ptr %i.gj, ptr %i.p, align 8, !tbaa !1933, !noalias !4428
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge.thread, %.critedge.thread, %.critedge.thread, %.critedge.thread, %bb.ad
  %i.gk = phi ptr [ %i.fz, %.critedge.thread ], [ %i.fz, %.critedge.thread ], [ %i.fz, %.critedge.thread ], [ %i.fz, %.critedge.thread ], [ %i.gj, %bb.ad ] ; 3 uses
  %i.gl = load ptr, ptr %i.ew, align 8, !tbaa !1937, !noalias !4428 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !1939, !noalias !4428
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gp = zext i32 %i.gn to i64
  %i.gq = load ptr, ptr %i.go, align 8, !tbaa !852, !noalias !4428
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gp ; 2 uses
  %i.gs = icmp ult ptr %i.gk, %i.gr
  br i1 %i.gs, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i

.lr.ph:                                           ; preds = %bb.ae, %bb.ah
  %i.gt = phi i32 [ %i.hc, %bb.ah ], [ 2, %bb.ae ] ; 4 uses
  %i.gu = phi ptr [ %i.gv, %bb.ah ], [ %i.gk, %bb.ae ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4 ; 5 uses
  store ptr %i.gv, ptr %i.p, align 8, !tbaa !1933, !noalias !4428
  %i.gw = load i32, ptr %i.gu, align 4, !tbaa !3, !noalias !4428
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !26, !noalias !4428
  switch i8 %i.gz, label %bb.ah [
    i8 91, label %bb.af
    i8 123, label %bb.af
    i8 93, label %bb.ag
    i8 125, label %bb.ag
  ]

bb.af:                                            ; preds = %.lr.ph, %.lr.ph
  %i.ha = add nsw i32 %i.gt, 1                    ; 2 uses
  store i32 %i.ha, ptr %i.s, align 4, !tbaa !1947, !noalias !4428
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph, %.lr.ph
  %i.hb = add nsw i32 %i.gt, -1                   ; 2 uses
  store i32 %i.hb, ptr %i.s, align 4, !tbaa !1947, !noalias !4428
  %.not8.i.i.i.i.i = icmp sgt i32 %i.gt, 2
  br i1 %.not8.i.i.i.i.i, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %.lr.ph, %bb.ag, %bb.af
  %i.hc = phi i32 [ %i.gt, %.lr.ph ], [ %i.hb, %bb.ag ], [ %i.ha, %bb.af ] ; 2 uses
  %i.hd = icmp ult ptr %i.gv, %i.gr
  br i1 %i.hd, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit: ; preds = %bb.ah
  %i.he = icmp sgt i32 %i.hc, 0
  br label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit, %bb.ae
  %i.hf = phi ptr [ %i.gk, %bb.ae ], [ %i.gv, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit ]
  %i.hg = phi i1 [ true, %bb.ae ], [ %i.he, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit ]
  store i32 3, ptr %i.r, align 8, !tbaa !1948, !noalias !4428
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

.loopexit.sink.split:                             ; preds = %.critedge.thread, %bb.ac
  store i32 1, ptr %i.s, align 4, !tbaa !1947, !noalias !4428
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ag, %.critedge, %.loopexit.sink.split
  %i.hh = phi ptr [ %i.fz, %.loopexit.sink.split ], [ %i.fw, %.critedge ], [ %i.gv, %bb.ag ] ; 3 uses
  %i.hi = icmp ugt ptr %i.hh, %i.cs
  call void @llvm.assume(i1 %i.hi), !noalias !4428
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 4 ; 4 uses
  store ptr %i.hj, ptr %i.p, align 8, !tbaa !1933, !noalias !4428
  %i.hk = load i32, ptr %i.hh, align 4, !tbaa !3, !noalias !4428
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !26, !noalias !4428
  switch i8 %i.hn, label %bb.ak [
    i8 93, label %bb.ai
    i8 44, label %bb.aj
  ]

bb.ai:                                            ; preds = %.loopexit
  store i32 0, ptr %i.s, align 4, !tbaa !1947, !noalias !4428
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.aj:                                            ; preds = %.loopexit
  store i32 2, ptr %i.s, align 4, !tbaa !1947, !noalias !4428
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.ak:                                            ; preds = %.loopexit
  store i32 3, ptr %i.r, align 8, !tbaa !1948, !noalias !4428
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i: ; preds = %bb.ai, %bb.aj, %bb.ak, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i
  %i.ho = phi i32 [ %i.ez, %bb.ai ], [ %i.ez, %bb.aj ], [ 3, %bb.ak ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  %i.hp = phi ptr [ %i.hj, %bb.ai ], [ %i.hj, %bb.aj ], [ %i.hj, %bb.ak ], [ %i.hf, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  %.not396 = phi i1 [ false, %bb.ai ], [ true, %bb.aj ], [ true, %bb.ak ], [ %i.hg, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  br i1 %.not396, label %bb.y, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit

bb.al:                                            ; preds = %bb.n, %bb.m
  %.pn.i.i = phi { ptr, i32 } [ %i.cr, %bb.n ], [ %i.cq, %bb.m ]
  br i1 %i.ch, label %_ZN8simdjson13padded_stringD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %i.cg) #35, !noalias !4428
  br label %_ZN8simdjson13padded_stringD2Ev.exit

_ZN8simdjson13padded_stringD2Ev.exit:             ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4428
  br label %.body

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i, %.lr.ph410.split.preheader, %bb.p, %.sink.split, %bb.o, %bb.z, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i, %bb.l
  %.4 = phi i1 [ false, %bb.o ], [ false, %bb.l ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i ], [ false, %.sink.split ], [ false, %bb.z ], [ false, %bb.p ], [ false, %.lr.ph410.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i ], [ false, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ]
  %.3.i.i = phi i1 [ false, %bb.o ], [ false, %bb.l ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i ], [ false, %.sink.split ], [ false, %bb.z ], [ false, %bb.p ], [ true, %.lr.ph410.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i ], [ true, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ]
  br i1 %i.ch, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cg) #35, !noalias !4428
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4428
  store ptr null, ptr %7, align 8, !tbaa !815, !alias.scope !4450
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !4422
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !4412, !nonnull !126, !align !247 ; 3 uses
  br i1 %.3.i.i, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !4413, !nonnull !126, !align !247
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !553
  %i.hv = lshr i64 %i.ai, 3
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hv ; 2 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !26  ; 2 uses
  br i1 %.4, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hy = trunc nuw nsw i64 %i.ad to i8
  %i.hz = and i8 %i.hy, 7
  %i.ia = shl nuw i8 1, %i.hz
  %i.ib = or i8 %i.hx, %i.ia
  br label %.noexc.i

bb.ar:                                            ; preds = %bb.ap
  %i.ic = and i64 %i.ai, 7
  %i.id = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !26
  %i.if = and i8 %i.ie, %i.hx
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.ar, %bb.aq
  %.sink.i = phi i8 [ %i.if, %bb.ar ], [ %i.ib, %bb.aq ]
  store i8 %.sink.i, ptr %i.hw, align 1, !tbaa !26
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE7iterateIJNS1_12VectorReaderISC_EENSH_IbEEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit

bb.as:                                            ; preds = %bb.ao
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !4415, !nonnull !126, !align !247
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !552 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ij = load ptr, ptr %i.hr, align 8, !tbaa !4416, !nonnull !126, !align !247
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !4229 ; 3 uses
end_hunk_7
begin_hunk_8_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSG_bEEEE7iterateIJNS3_12VectorReaderISG_EENSL_IbEEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi:bb.a
_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4463
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4463
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, i64 16, i1 false), !tbaa.struct !851, !noalias !4463
  %i.dc = load <2 x ptr>, ptr %i.at, align 8, !tbaa !107, !noalias !4463
  store <2 x ptr> %i.dc, ptr %i.ak, align 8, !tbaa !107, !noalias !4463
  %i.dd = load <2 x i32>, ptr %i.au, align 8, !tbaa !26, !noalias !4463
  store <2 x i32> %i.dd, ptr %i.al, align 8, !tbaa !26, !noalias !4463
  %i.de = load ptr, ptr %i.av, align 8, !tbaa !853, !noalias !4463
  store ptr %i.de, ptr %i.an, align 8, !tbaa !853, !noalias !4463
  %i.df = load i8, ptr %i.aw, align 8, !tbaa !854, !range !125, !noalias !4463, !noundef !126
  store i8 %i.df, ptr %i.ao, align 8, !tbaa !854, !noalias !4463
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4463
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4463
  %i.dg = invoke noundef i32 @_ZN8facebook5velox9functions16jsonParsingErrorERN8simdjson8fallback8ondemand8documentE(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.m unwind label %bb.o, !noalias !4463

bb.m:                                             ; preds = %bb.l
  %.not23.i.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not23.i.i.i, label %bb.p, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit.i

bb.n:                                             ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4463
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4463
  br label %bb.ap

bb.o:                                             ; preds = %bb.l
  %i.di = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ap

bb.p:                                             ; preds = %bb.m
  %i.dj = load ptr, ptr %i.an, align 8, !tbaa !853, !noalias !4469 ; 6 uses
  %i.dk = load ptr, ptr %2, align 8, !tbaa !866, !noalias !4463 ; 6 uses
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !3, !noalias !4463
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !26, !noalias !4463
  %cond = icmp eq i8 %i.do, 91
  br i1 %cond, label %.thread716, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit.i

.thread716:                                       ; preds = %bb.p
  %i.dp = load ptr, ptr %i.aj, align 8, !tbaa !1933, !noalias !4472 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, %i.dj
  br i1 %i.dq, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.thread716
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !3, !noalias !4472
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !26, !noalias !4472
  %.not8.i.i.i.i.i39 = icmp eq i8 %i.du, 91
  br i1 %.not8.i.i.i.i.i39, label %bb.r, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  store ptr %i.dv, ptr %i.aj, align 8, !tbaa !1933, !noalias !4472
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread716
  %i.dw = phi ptr [ %i.dv, %bb.r ], [ %i.dp, %.thread716 ] ; 2 uses
  %i.dx = load i8, ptr %i.ao, align 8, !tbaa !854, !range !125, !noalias !4472, !noundef !126
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dz = load ptr, ptr %i.ak, align 8, !tbaa !1915, !noalias !4472
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1937, !noalias !4472 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !1939, !noalias !4472 ; 3 uses
  %i.ee = icmp ne i32 %i.ed, 0
  call void @llvm.assume(i1 %i.ee), !noalias !4477
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.eg = add i32 %i.ed, -1
  %i.eh = zext i32 %i.eg to i64
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !852, !noalias !4472 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.eh
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !4472
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !26, !noalias !4472
  %.not.i.i3.i.i.i = icmp eq i8 %i.en, 93
  br i1 %.not.i.i3.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %i.ak, align 8, !tbaa !1915, !noalias !4472
  store i32 0, ptr %i.am, align 4, !tbaa !1947, !noalias !4472
  store i32 28, ptr %i.al, align 8, !tbaa !1948, !noalias !4472
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit.i

bb.v:                                             ; preds = %bb.t
  %i.eo = zext i32 %i.ed to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3, !noalias !4472
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !26, !noalias !4472
  %i.eu = icmp eq i8 %i.et, 93
  br i1 %i.eu, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ev = call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(49) %2) #31, !noalias !4472
  br i1 %i.ev, label %._crit_edge, label %bb.x

._crit_edge:                                      ; preds = %bb.w
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !1983, !noalias !4472
  %.pre926 = load ptr, ptr %2, align 8, !tbaa !866, !noalias !4472
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %i.ak, align 8, !tbaa !1915, !noalias !4472
  store i32 0, ptr %i.am, align 4, !tbaa !1947, !noalias !4472
  store i32 28, ptr %i.al, align 8, !tbaa !1948, !noalias !4472
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit.i

bb.y:                                             ; preds = %._crit_edge, %bb.v, %bb.s
  %i.ew = phi ptr [ %.pre926, %._crit_edge ], [ %i.dk, %bb.v ], [ %i.dk, %bb.s ]
  %i.ex = phi ptr [ %.pre, %._crit_edge ], [ %i.dw, %bb.v ], [ %i.dw, %bb.s ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.ez = icmp eq ptr %i.ex, %i.ey
  call void @llvm.assume(i1 %i.ez), !noalias !4472
  %i.fa = load i32, ptr %i.ex, align 4, !tbaa !3, !noalias !4472
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !26, !noalias !4472
  %.not1069 = icmp eq i8 %i.fd, 93                ; 2 uses
  br i1 %.not1069, label %bb.z, label %.lr.ph899.split.preheader

bb.z:                                             ; preds = %bb.y
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store ptr %i.fe, ptr %i.aj, align 8, !tbaa !1933, !noalias !4472
  br label %.lr.ph899.split.preheader

.lr.ph899.split.preheader:                        ; preds = %bb.y, %bb.z
  %storemerge858 = phi i32 [ 0, %bb.z ], [ 2, %bb.y ]
  store i32 %storemerge858, ptr %i.am, align 4, !tbaa !1947, !noalias !4472
  %i.ff = load ptr, ptr %2, align 8               ; 5 uses
  %i.fg = load ptr, ptr %i.ak, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  br i1 %.not1069, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit.i, label %.lr.ph1063

.lr.ph1063:                                       ; preds = %.lr.ph899.split.preheader
  %.promoted1045 = load ptr, ptr %i.aj, align 8
  %.promoted = load i32, ptr %i.al, align 8
  %i.fi = trunc i64 %i.cs to i1
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph1063, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i
  %i.fj = phi i32 [ %.promoted, %.lr.ph1063 ], [ %i.hx, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ] ; 3 uses
  %i.fk = phi ptr [ %.promoted1045, %.lr.ph1063 ], [ %i.hw, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ] ; 6 uses
  %.not.i39.i.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i39.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr null, ptr %i.ak, align 8, !tbaa !1915, !noalias !4478
  store i32 0, ptr %i.am, align 4, !tbaa !1947, !noalias !4478
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.fl = icmp ugt ptr %i.fk, %i.dj
  call void @llvm.assume(i1 %i.fl), !noalias !4481
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !3, !noalias !4463
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fn ; 4 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !26, !noalias !4463
  switch i8 %i.fp, label %.critedge.thread [
    i8 116, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i
    i8 102, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i
  ]

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i: ; preds = %bb.ac, %bb.ac
  %.0.copyload.i10.i.i.i.i = load i32, ptr %i.fo, align 1, !noalias !4463 ; 2 uses
  %i.fq = xor i32 %.0.copyload.i10.i.i.i.i, 1936482662
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !26, !noalias !4463
  %i.ft = xor i8 %i.fs, 101
  %i.fu = zext i8 %i.ft to i32
  %i.fv = or i32 %i.fq, %i.fu
  %i.fw = icmp ne i32 %.0.copyload.i10.i.i.i.i, 1702195828 ; 3 uses
  %i.fx = icmp ne i32 %i.fv, 0
  %or.cond.i.i.i.i38 = select i1 %i.fw, i1 %i.fx, i1 false
  br i1 %or.cond.i.i.i.i38, label %.critedge.thread, label %bb.ad

bb.ad:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i
  %i.fy = select i1 %i.fw, i64 5, i64 4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !26, !noalias !4463
  %i.gb = zext i8 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !100, !range !125, !noalias !4463, !noundef !126
  %.not862 = icmp eq i8 %i.gd, 0
  br i1 %.not862, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i, label %.critedge.thread

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i: ; preds = %bb.ad
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 3 uses
  store ptr %i.ge, ptr %i.aj, align 8, !tbaa !1933, !noalias !4463
  store i32 1, ptr %i.am, align 4, !tbaa !1947, !noalias !4463
  %i.gf = xor i1 %i.fw, %i.fi
  br i1 %i.gf, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit.i, label %.critedge

.critedge:                                        ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i
  %i.gg = icmp ugt ptr %i.ge, %i.dj
  call void @llvm.assume(i1 %i.gg), !noalias !4484
  br label %.loopexit

.critedge.thread:                                 ; preds = %bb.ad, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i, %bb.ac
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 8 uses
  store ptr %i.gh, ptr %i.aj, align 8, !tbaa !1933, !noalias !4463
  %i.gi = load i32, ptr %i.fk, align 4, !tbaa !3, !noalias !4463
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !26, !noalias !4463
  switch i8 %i.gl, label %bb.ah [
    i8 91, label %bb.ai
    i8 123, label %bb.ai
    i8 58, label %bb.ai
    i8 44, label %bb.ai
    i8 93, label %bb.ae
    i8 125, label %bb.ae
    i8 34, label %bb.af
  ]

bb.ae:                                            ; preds = %.critedge.thread, %.critedge.thread
  store i32 1, ptr %i.am, align 4, !tbaa !1947, !noalias !4463
  br label %.loopexit

bb.af:                                            ; preds = %.critedge.thread
  %i.gm = load i32, ptr %i.gh, align 4, !tbaa !3, !noalias !4463
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !26, !noalias !4463
  %i.gq = icmp eq i8 %i.gp, 58
  br i1 %i.gq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  store ptr %i.gr, ptr %i.aj, align 8, !tbaa !1933, !noalias !4463
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %.critedge.thread
  store i32 1, ptr %i.am, align 4, !tbaa !1947, !noalias !4463
  br label %.loopexit

bb.ai:                                            ; preds = %.critedge.thread, %.critedge.thread, %.critedge.thread, %.critedge.thread, %bb.ag
  %i.gs = phi ptr [ %i.gh, %.critedge.thread ], [ %i.gh, %.critedge.thread ], [ %i.gh, %.critedge.thread ], [ %i.gh, %.critedge.thread ], [ %i.gr, %bb.ag ] ; 3 uses
  %i.gt = load ptr, ptr %i.fh, align 8, !tbaa !1937, !noalias !4463 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !1939, !noalias !4463
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gx = zext i32 %i.gv to i64
  %i.gy = load ptr, ptr %i.gw, align 8, !tbaa !852, !noalias !4463
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.gx ; 2 uses
  %i.ha = icmp ult ptr %i.gs, %i.gz
  br i1 %i.ha, label %.lr.ph898, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i

.lr.ph898:                                        ; preds = %bb.ai, %bb.al
  %i.hb = phi i32 [ %i.hk, %bb.al ], [ 2, %bb.ai ] ; 4 uses
  %i.hc = phi ptr [ %i.hd, %bb.al ], [ %i.gs, %bb.ai ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4 ; 5 uses
  store ptr %i.hd, ptr %i.aj, align 8, !tbaa !1933, !noalias !4463
  %i.he = load i32, ptr %i.hc, align 4, !tbaa !3, !noalias !4463
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !26, !noalias !4463
  switch i8 %i.hh, label %bb.al [
    i8 91, label %bb.aj
    i8 123, label %bb.aj
    i8 93, label %bb.ak
    i8 125, label %bb.ak
  ]

bb.aj:                                            ; preds = %.lr.ph898, %.lr.ph898
  %i.hi = add nsw i32 %i.hb, 1                    ; 2 uses
  store i32 %i.hi, ptr %i.am, align 4, !tbaa !1947, !noalias !4463
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph898, %.lr.ph898
  %i.hj = add nsw i32 %i.hb, -1                   ; 2 uses
  store i32 %i.hj, ptr %i.am, align 4, !tbaa !1947, !noalias !4463
  %.not8.i.i.i.i.i.i = icmp sgt i32 %i.hb, 2
  br i1 %.not8.i.i.i.i.i.i, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %.lr.ph898, %bb.ak, %bb.aj
  %i.hk = phi i32 [ %i.hb, %.lr.ph898 ], [ %i.hj, %bb.ak ], [ %i.hi, %bb.aj ] ; 2 uses
  %i.hl = icmp ult ptr %i.hd, %i.gz
  br i1 %i.hl, label %.lr.ph898, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit: ; preds = %bb.al
  %i.hm = icmp sgt i32 %i.hk, 0
  br label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit, %bb.ai
  %i.hn = phi ptr [ %i.gs, %bb.ai ], [ %i.hd, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit ]
  %i.ho = phi i1 [ true, %bb.ai ], [ %i.hm, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit ]
  store i32 3, ptr %i.al, align 8, !tbaa !1948, !noalias !4463
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

.loopexit:                                        ; preds = %bb.ak, %bb.ah, %bb.ae, %.critedge
  %i.hp = phi ptr [ %i.gh, %bb.ah ], [ %i.ge, %.critedge ], [ %i.gh, %bb.ae ], [ %i.hd, %bb.ak ] ; 3 uses
  %i.hq = icmp ugt ptr %i.hp, %i.dj
  call void @llvm.assume(i1 %i.hq), !noalias !4463
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 4 ; 4 uses
  store ptr %i.hr, ptr %i.aj, align 8, !tbaa !1933, !noalias !4463
  %i.hs = load i32, ptr %i.hp, align 4, !tbaa !3, !noalias !4463
  %i.ht = zext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !26, !noalias !4463
  switch i8 %i.hv, label %bb.ao [
    i8 93, label %bb.am
    i8 44, label %bb.an
  ]

bb.am:                                            ; preds = %.loopexit
  store i32 0, ptr %i.am, align 4, !tbaa !1947, !noalias !4463
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

bb.an:                                            ; preds = %.loopexit
  store i32 2, ptr %i.am, align 4, !tbaa !1947, !noalias !4463
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

bb.ao:                                            ; preds = %.loopexit
  store i32 3, ptr %i.al, align 8, !tbaa !1948, !noalias !4463
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i: ; preds = %bb.am, %bb.an, %bb.ao, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i
  %i.hw = phi ptr [ %i.hr, %bb.am ], [ %i.hr, %bb.an ], [ %i.hr, %bb.ao ], [ %i.hn, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i ]
  %i.hx = phi i32 [ %i.fj, %bb.am ], [ %i.fj, %bb.an ], [ 3, %bb.ao ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i ]
  %.not861 = phi i1 [ false, %bb.am ], [ true, %bb.an ], [ true, %bb.ao ], [ %i.ho, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i ]
  br i1 %.not861, label %bb.aa, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit.i

bb.ap:                                            ; preds = %bb.o, %bb.n
  %.pn.i.i.i = phi { ptr, i32 } [ %i.di, %bb.o ], [ %i.dh, %bb.n ]
  br i1 %i.cy, label %_ZN8simdjson13padded_stringD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZdaPv(ptr noundef nonnull %i.cx) #35, !noalias !4463
  br label %_ZN8simdjson13padded_stringD2Ev.exit

_ZN8simdjson13padded_stringD2Ev.exit:             ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !4463
  br label %.body42

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit.i: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i, %.lr.ph899.split.preheader, %bb.x, %bb.u, %bb.q, %bb.p, %bb.ab, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i, %bb.m
  %.0705 = phi i1 [ false, %bb.p ], [ false, %bb.m ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i ], [ false, %bb.x ], [ false, %bb.ab ], [ false, %bb.q ], [ false, %bb.u ], [ false, %.lr.ph899.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i ], [ false, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ]
  %.3.i.i.i = phi i1 [ false, %bb.p ], [ false, %bb.m ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i ], [ false, %bb.x ], [ false, %bb.ab ], [ false, %bb.q ], [ false, %bb.u ], [ true, %.lr.ph899.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i ], [ true, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ]
  br i1 %i.cy, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.cx) #35, !noalias !4463
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !4463
  store ptr null, ptr %6, align 8, !tbaa !815, !alias.scope !4485
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !4457
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !4412, !nonnull !126, !align !247 ; 3 uses
  br i1 %.3.i.i.i, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !4413, !nonnull !126, !align !247
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !553
  %i.id = lshr i64 %.0905, 3
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.id ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !26  ; 2 uses
  br i1 %.0705, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ig = trunc i64 %.0905 to i8
  %i.ih = and i8 %i.ig, 7
  %i.ii = shl nuw i8 1, %i.ih
  %i.ij = or i8 %i.if, %i.ii
  br label %.noexc.i31

bb.av:                                            ; preds = %bb.at
  %i.ik = and i64 %.0905, 7
  %i.il = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !26
  %i.in = and i8 %i.im, %i.if
  br label %.noexc.i31

.noexc.i31:                                       ; preds = %bb.av, %bb.au
  %.sink.i = phi i8 [ %i.in, %bb.av ], [ %i.ij, %bb.au ]
  store i8 %.sink.i, ptr %i.ie, align 1, !tbaa !26
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE7iterateIJNS1_12VectorReaderISC_EENSH_IbEEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSP_.exit

bb.aw:                                            ; preds = %bb.as
  %i.io = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !4415, !nonnull !126, !align !247
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !552 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.iq, null
end_hunk_8
begin_hunk_9_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSG_bEEEE7iterateIJNS3_12VectorReaderISG_EENSL_IbEEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi:bb.a
bb.cb:                                            ; preds = %bb.ca
  %.not23.i.i = icmp eq i32 %i.ne, 0
  br i1 %.not23.i.i, label %bb.ce, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit

bb.cc:                                            ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit107
  %i.nf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31, !noalias !4495
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31, !noalias !4495
  br label %bb.db

bb.cd:                                            ; preds = %bb.ca
  %i.ng = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.db

bb.ce:                                            ; preds = %bb.cb
  %i.nh = load ptr, ptr %i.s, align 8, !tbaa !853, !noalias !4501 ; 7 uses
  %i.ni = load ptr, ptr %9, align 8, !tbaa !866, !noalias !4495 ; 12 uses
  %i.nj = load i32, ptr %i.nh, align 4, !tbaa !3, !noalias !4495 ; 3 uses
  %i.nk = zext i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !26, !noalias !4495
  %cond875 = icmp eq i8 %i.nm, 91
  br i1 %cond875, label %.thread785, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit

.thread785:                                       ; preds = %bb.ce
  %i.nn = load ptr, ptr %i.o, align 8, !tbaa !1933, !noalias !4504 ; 4 uses
  %i.no = icmp eq ptr %i.nn, %i.nh
  br i1 %i.no, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %.thread785
  %i.np = load i32, ptr %i.nn, align 4, !tbaa !3, !noalias !4504
  %i.nq = zext i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !26, !noalias !4504
  %.not8.i.i.i.i = icmp eq i8 %i.ns, 91
  br i1 %.not8.i.i.i.i, label %bb.cg, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit

bb.cg:                                            ; preds = %bb.cf
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nn, i64 4 ; 2 uses
  store ptr %i.nt, ptr %i.o, align 8, !tbaa !1933, !noalias !4504
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.thread785
  %i.nu = phi ptr [ %i.nt, %bb.cg ], [ %i.nn, %.thread785 ] ; 4 uses
  %i.nv = load i8, ptr %i.t, align 8, !tbaa !854, !range !125, !noalias !4504, !noundef !126
  %i.nw = trunc nuw i8 %i.nv to i1
  br i1 %i.nw, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nx = load ptr, ptr %i.p, align 8, !tbaa !1915, !noalias !4504
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !1937, !noalias !4504 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !1939, !noalias !4504 ; 3 uses
  %i.oc = icmp ne i32 %i.ob, 0
  call void @llvm.assume(i1 %i.oc), !noalias !4509
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.oe = add i32 %i.ob, -1
  %i.of = zext i32 %i.oe to i64
  %i.og = load ptr, ptr %i.od, align 8, !tbaa !852, !noalias !4504 ; 2 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.of
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !3, !noalias !4504 ; 3 uses
  %i.oj = zext i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !26, !noalias !4504
  %.not.i.i3.i.i = icmp eq i8 %i.ol, 93
  br i1 %.not.i.i3.i.i, label %bb.cj, label %.sink.split

bb.cj:                                            ; preds = %bb.ci
  %i.om = zext i32 %i.ob to i64
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.om
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !3, !noalias !4504
  %i.op = zext i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !26, !noalias !4504
  %i.os = icmp ne i8 %i.or, 93
  %.not5.i = icmp ugt i32 %i.nj, %i.oi
  %or.cond = or i1 %.not5.i, %i.os
  br i1 %or.cond, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cj, %bb.cm
  %i.ot = phi i32 [ %i.pa, %bb.cm ], [ %i.nj, %bb.cj ]
  %.07.i = phi i32 [ %.1.i, %bb.cm ], [ 0, %bb.cj ] ; 3 uses
  %.sroa.5.06.i = phi ptr [ %i.ow, %bb.cm ], [ %i.nh, %bb.cj ]
  %i.ou = zext i32 %i.ot to i64
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.5.06.i, i64 4 ; 2 uses
  %i.ox = load i8, ptr %i.ov, align 1, !tbaa !26, !noalias !4504
  switch i8 %i.ox, label %bb.cm [
    i8 91, label %bb.ck
    i8 123, label %bb.ck
    i8 93, label %bb.cl
    i8 125, label %bb.cl
  ]

bb.ck:                                            ; preds = %.lr.ph.i, %.lr.ph.i
  %i.oy = add nsw i32 %.07.i, 1
  br label %bb.cm

bb.cl:                                            ; preds = %.lr.ph.i, %.lr.ph.i
  %i.oz = add nsw i32 %.07.i, -1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %.lr.ph.i
  %.1.i = phi i32 [ %.07.i, %.lr.ph.i ], [ %i.oy, %bb.ck ], [ %i.oz, %bb.cl ] ; 2 uses
  %i.pa = load i32, ptr %i.ow, align 4, !tbaa !3, !noalias !4504 ; 2 uses
  %.not.i109 = icmp ugt i32 %i.pa, %i.oi
  br i1 %.not.i109, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, label %.lr.ph.i, !llvm.loop !2014

_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit: ; preds = %bb.cm
  %i.pb = icmp eq i32 %.1.i, 0
  br i1 %i.pb, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %.sink.split

_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread: ; preds = %bb.cj, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, %bb.ch
  %i.pc = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.pd = icmp eq ptr %i.nu, %i.pc
  call void @llvm.assume(i1 %i.pd), !noalias !4504
  %i.pe = load i32, ptr %i.nu, align 4, !tbaa !3, !noalias !4504
  %i.pf = zext i32 %i.pe to i64
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !26, !noalias !4504
  %.not1070 = icmp eq i8 %i.ph, 93                ; 2 uses
  br i1 %.not1070, label %bb.cn, label %.lr.ph892.split.preheader

bb.cn:                                            ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread
  %i.pi = getelementptr inbounds nuw i8, ptr %i.nu, i64 4 ; 2 uses
  store ptr %i.pi, ptr %i.o, align 8, !tbaa !1933, !noalias !4504
  br label %.lr.ph892.split.preheader

.sink.split:                                      ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, %bb.ci
  store ptr null, ptr %i.p, align 8, !tbaa !1915, !noalias !4504
  store i32 0, ptr %i.r, align 4, !tbaa !1947, !noalias !4504
  store i32 28, ptr %i.q, align 8, !tbaa !1948, !noalias !4504
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit

.lr.ph892.split.preheader:                        ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, %bb.cn
  %i.pj = phi ptr [ %i.pi, %bb.cn ], [ %i.nu, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread ]
  %storemerge = phi i32 [ 0, %bb.cn ], [ 2, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread ]
  store i32 %storemerge, ptr %i.r, align 4, !tbaa !1947, !noalias !4504
  %i.pk = load ptr, ptr %i.p, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  br i1 %.not1070, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit, label %.lr.ph1066

.lr.ph1066:                                       ; preds = %.lr.ph892.split.preheader
  %.promoted1048 = load i32, ptr %i.q, align 8
  %i.pm = trunc i64 %i.mq to i1
  br label %bb.co

bb.co:                                            ; preds = %.lr.ph1066, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i
  %i.pn = phi ptr [ %i.pj, %.lr.ph1066 ], [ %i.se, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ] ; 7 uses
  %i.po = phi i32 [ %.promoted1048, %.lr.ph1066 ], [ %i.sd, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ] ; 3 uses
  %.not.i39.i.i = icmp eq i32 %i.po, 0
  br i1 %.not.i39.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store ptr null, ptr %i.p, align 8, !tbaa !1915, !noalias !4510
  store i32 0, ptr %i.r, align 4, !tbaa !1947, !noalias !4510
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit

bb.cq:                                            ; preds = %bb.co
  %i.pp = icmp ugt ptr %i.pn, %i.nh
  call void @llvm.assume(i1 %i.pp), !noalias !4513
  %i.pq = load i32, ptr %i.pn, align 4, !tbaa !3, !noalias !4495
  %i.pr = zext i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !26, !noalias !4495
  switch i8 %i.pt, label %.critedge873.thread [
    i8 116, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
    i8 102, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
  ]

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i: ; preds = %bb.cq, %bb.cq
  %i.pu = load i32, ptr %i.pn, align 4, !tbaa !3, !noalias !4495
  %i.pv = zext i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.pv ; 3 uses
  %.0.copyload.i10.i.i.i.pre = load i32, ptr %i.pw, align 1, !noalias !4495 ; 2 uses
  %i.px = xor i32 %.0.copyload.i10.i.i.i.pre, 1936482662
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !26, !noalias !4495
  %i.qa = xor i8 %i.pz, 101
  %i.qb = zext i8 %i.qa to i32
  %i.qc = or i32 %i.px, %i.qb
  %i.qd = icmp ne i32 %.0.copyload.i10.i.i.i.pre, 1702195828 ; 3 uses
  %i.qe = icmp ne i32 %i.qc, 0
  %or.cond.i.i.i = select i1 %i.qd, i1 %i.qe, i1 false
  br i1 %or.cond.i.i.i, label %.critedge873.thread, label %bb.cr

bb.cr:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
  %i.qf = select i1 %i.qd, i64 5, i64 4
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.qf
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !26, !noalias !4495
  %i.qi = zext i8 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !100, !range !125, !noalias !4495, !noundef !126
  %.not857 = icmp eq i8 %i.qk, 0
  br i1 %.not857, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i, label %.critedge873.thread

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i: ; preds = %bb.cr
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pn, i64 4 ; 3 uses
  store ptr %i.ql, ptr %i.o, align 8, !tbaa !1933, !noalias !4495
  store i32 1, ptr %i.r, align 4, !tbaa !1947, !noalias !4495
  %i.qm = xor i1 %i.qd, %i.pm
  br i1 %i.qm, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit, label %.critedge873

.critedge873:                                     ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i
  %i.qn = icmp ugt ptr %i.ql, %i.nh
  call void @llvm.assume(i1 %i.qn), !noalias !4516
  br label %.loopexit879

.critedge873.thread:                              ; preds = %bb.cr, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i, %bb.cq
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pn, i64 4 ; 7 uses
  store ptr %i.qo, ptr %i.o, align 8, !tbaa !1933, !noalias !4495
  %i.qp = load i32, ptr %i.pn, align 4, !tbaa !3, !noalias !4495
  %i.qq = zext i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.qq
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !26, !noalias !4495
  switch i8 %i.qs, label %.loopexit879.sink.split [
    i8 91, label %bb.cu
    i8 123, label %bb.cu
    i8 58, label %bb.cu
    i8 44, label %bb.cu
    i8 34, label %bb.cs
  ]

bb.cs:                                            ; preds = %.critedge873.thread
  %i.qt = load i32, ptr %i.qo, align 4, !tbaa !3, !noalias !4495
  %i.qu = zext i32 %i.qt to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.qu
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !26, !noalias !4495
  %i.qx = icmp eq i8 %i.qw, 58
  br i1 %i.qx, label %bb.ct, label %.loopexit879.sink.split

bb.ct:                                            ; preds = %bb.cs
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pn, i64 8 ; 2 uses
  store ptr %i.qy, ptr %i.o, align 8, !tbaa !1933, !noalias !4495
  br label %bb.cu

bb.cu:                                            ; preds = %.critedge873.thread, %.critedge873.thread, %.critedge873.thread, %.critedge873.thread, %bb.ct
  %i.qz = phi ptr [ %i.qo, %.critedge873.thread ], [ %i.qo, %.critedge873.thread ], [ %i.qo, %.critedge873.thread ], [ %i.qo, %.critedge873.thread ], [ %i.qy, %bb.ct ] ; 3 uses
  %i.ra = load ptr, ptr %i.pl, align 8, !tbaa !1937, !noalias !4495 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rc = load i32, ptr %i.rb, align 8, !tbaa !1939, !noalias !4495
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %i.re = zext i32 %i.rc to i64
  %i.rf = load ptr, ptr %i.rd, align 8, !tbaa !852, !noalias !4495
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %i.re ; 2 uses
  %i.rh = icmp ult ptr %i.qz, %i.rg
  br i1 %i.rh, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i

.lr.ph:                                           ; preds = %bb.cu, %bb.cx
  %i.ri = phi i32 [ %i.rr, %bb.cx ], [ 2, %bb.cu ] ; 4 uses
  %i.rj = phi ptr [ %i.rk, %bb.cx ], [ %i.qz, %bb.cu ] ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 4 ; 5 uses
  store ptr %i.rk, ptr %i.o, align 8, !tbaa !1933, !noalias !4495
  %i.rl = load i32, ptr %i.rj, align 4, !tbaa !3, !noalias !4495
  %i.rm = zext i32 %i.rl to i64
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.rm
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !26, !noalias !4495
  switch i8 %i.ro, label %bb.cx [
    i8 91, label %bb.cv
    i8 123, label %bb.cv
    i8 93, label %bb.cw
    i8 125, label %bb.cw
  ]

bb.cv:                                            ; preds = %.lr.ph, %.lr.ph
  %i.rp = add nsw i32 %i.ri, 1                    ; 2 uses
  store i32 %i.rp, ptr %i.r, align 4, !tbaa !1947, !noalias !4495
  br label %bb.cx

bb.cw:                                            ; preds = %.lr.ph, %.lr.ph
  %i.rq = add nsw i32 %i.ri, -1                   ; 2 uses
  store i32 %i.rq, ptr %i.r, align 4, !tbaa !1947, !noalias !4495
  %.not8.i.i.i.i.i = icmp sgt i32 %i.ri, 2
  br i1 %.not8.i.i.i.i.i, label %bb.cx, label %.loopexit879

bb.cx:                                            ; preds = %.lr.ph, %bb.cw, %bb.cv
  %i.rr = phi i32 [ %i.ri, %.lr.ph ], [ %i.rq, %bb.cw ], [ %i.rp, %bb.cv ] ; 2 uses
  %i.rs = icmp ult ptr %i.rk, %i.rg
  br i1 %i.rs, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit: ; preds = %bb.cx
  %i.rt = icmp sgt i32 %i.rr, 0
  br label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit, %bb.cu
  %i.ru = phi ptr [ %i.qz, %bb.cu ], [ %i.rk, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit ]
  %i.rv = phi i1 [ true, %bb.cu ], [ %i.rt, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit ]
  store i32 3, ptr %i.q, align 8, !tbaa !1948, !noalias !4495
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

.loopexit879.sink.split:                          ; preds = %.critedge873.thread, %bb.cs
  store i32 1, ptr %i.r, align 4, !tbaa !1947, !noalias !4495
  br label %.loopexit879

.loopexit879:                                     ; preds = %bb.cw, %.critedge873, %.loopexit879.sink.split
  %i.rw = phi ptr [ %i.qo, %.loopexit879.sink.split ], [ %i.ql, %.critedge873 ], [ %i.rk, %bb.cw ] ; 3 uses
  %i.rx = icmp ugt ptr %i.rw, %i.nh
  call void @llvm.assume(i1 %i.rx), !noalias !4495
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 4 ; 4 uses
  store ptr %i.ry, ptr %i.o, align 8, !tbaa !1933, !noalias !4495
  %i.rz = load i32, ptr %i.rw, align 4, !tbaa !3, !noalias !4495
  %i.sa = zext i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.sa
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !26, !noalias !4495
  switch i8 %i.sc, label %bb.da [
    i8 93, label %bb.cy
    i8 44, label %bb.cz
  ]

bb.cy:                                            ; preds = %.loopexit879
  store i32 0, ptr %i.r, align 4, !tbaa !1947, !noalias !4495
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.cz:                                            ; preds = %.loopexit879
  store i32 2, ptr %i.r, align 4, !tbaa !1947, !noalias !4495
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.da:                                            ; preds = %.loopexit879
  store i32 3, ptr %i.q, align 8, !tbaa !1948, !noalias !4495
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i: ; preds = %bb.cy, %bb.cz, %bb.da, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i
  %i.sd = phi i32 [ %i.po, %bb.cy ], [ %i.po, %bb.cz ], [ 3, %bb.da ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  %i.se = phi ptr [ %i.ry, %bb.cy ], [ %i.ry, %bb.cz ], [ %i.ry, %bb.da ], [ %i.ru, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  %.not856 = phi i1 [ false, %bb.cy ], [ true, %bb.cz ], [ true, %bb.da ], [ %i.rv, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  br i1 %.not856, label %bb.co, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit

bb.db:                                            ; preds = %bb.cd, %bb.cc
  %.pn.i.i = phi { ptr, i32 } [ %i.ng, %bb.cd ], [ %i.nf, %bb.cc ]
  br i1 %i.mw, label %_ZN8simdjson13padded_stringD2Ev.exit110, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @_ZdaPv(ptr noundef nonnull %i.mv) #35, !noalias !4495
  br label %_ZN8simdjson13padded_stringD2Ev.exit110

_ZN8simdjson13padded_stringD2Ev.exit110:          ; preds = %bb.db, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !4495
  br label %.body

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i, %.lr.ph892.split.preheader, %bb.cf, %.sink.split, %bb.ce, %bb.cp, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i, %bb.cb
  %.4 = phi i1 [ false, %bb.ce ], [ false, %bb.cb ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i ], [ false, %.sink.split ], [ false, %bb.cp ], [ false, %bb.cf ], [ false, %.lr.ph892.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i ], [ false, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ]
  %.3.i.i = phi i1 [ false, %bb.ce ], [ false, %bb.cb ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i ], [ false, %.sink.split ], [ false, %bb.cp ], [ false, %bb.cf ], [ true, %.lr.ph892.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i ], [ true, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ]
  br i1 %i.mw, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.mv) #35, !noalias !4495
  br label %bb.de

bb.de:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJNSH_IbEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSO_RT0_DpRKT1_.exit, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !4495
  store ptr null, ptr %13, align 8, !tbaa !815, !alias.scope !4517
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31, !noalias !4489
  %i.sf = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !4412, !nonnull !126, !align !247 ; 3 uses
  br i1 %.3.i.i, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !4413, !nonnull !126, !align !247
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !553
  %i.sk = lshr i64 %i.kx, 3
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.sk ; 2 uses
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !26  ; 2 uses
  br i1 %.4, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.sn = trunc nuw nsw i64 %i.ks to i8
  %i.so = and i8 %i.sn, 7
  %i.sp = shl nuw i8 1, %i.so
  %i.sq = or i8 %i.sm, %i.sp
  br label %.noexc.i

bb.dh:                                            ; preds = %bb.df
  %i.sr = and i64 %i.kx, 7
  %i.ss = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.sr
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !26
  %i.su = and i8 %i.st, %i.sm
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.dh, %bb.dg
  %.sink.i118 = phi i8 [ %i.su, %bb.dh ], [ %i.sq, %bb.dg ]
  store i8 %.sink.i118, ptr %i.sl, align 1, !tbaa !26
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE7iterateIJNS1_12VectorReaderISC_EENSH_IbEEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit

bb.di:                                            ; preds = %bb.de
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sg, i64 8 ; 2 uses
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !4415, !nonnull !126, !align !247
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !552 ; 2 uses
  %.not.i.i = icmp eq ptr %i.sx, null
  br i1 %.not.i.i, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.sy = load ptr, ptr %i.sg, align 8, !tbaa !4416, !nonnull !126, !align !247
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !4229 ; 3 uses
end_hunk_9
begin_hunk_10_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSE_bEEEE7iterateIJNS3_24ConstantFlatVectorReaderISE_EENS3_12VectorReaderIbEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_:bb.a

bb.n:                                             ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit
  %i.cq = load i32, ptr %i.at, align 8, !tbaa !844, !noalias !4622
  %.not.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i, label %bb.o, label %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i

_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4622
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4622
  br label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, i64 16, i1 false), !tbaa.struct !851, !noalias !4622
  %i.cr = load <2 x ptr>, ptr %i.au, align 8, !tbaa !107, !noalias !4622
  store <2 x ptr> %i.cr, ptr %i.al, align 8, !tbaa !107, !noalias !4622
  %i.cs = load <2 x i32>, ptr %i.av, align 8, !tbaa !26, !noalias !4622
  store <2 x i32> %i.cs, ptr %i.am, align 8, !tbaa !26, !noalias !4622
  %i.ct = load ptr, ptr %i.aw, align 8, !tbaa !853, !noalias !4622
  store ptr %i.ct, ptr %i.ao, align 8, !tbaa !853, !noalias !4622
  %i.cu = load i8, ptr %i.ax, align 8, !tbaa !854, !range !125, !noalias !4622, !noundef !126
  store i8 %i.cu, ptr %i.ap, align 8, !tbaa !854, !noalias !4622
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4622
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4622
  %i.cv = invoke noundef i32 @_ZN8facebook5velox9functions16jsonParsingErrorERN8simdjson8fallback8ondemand8documentE(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.p unwind label %bb.r, !noalias !4622

bb.p:                                             ; preds = %bb.o
  %.not23.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not23.i.i, label %bb.s, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit

bb.q:                                             ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4622
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4622
  br label %bb.ao

bb.r:                                             ; preds = %bb.o
  %i.cx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ao

bb.s:                                             ; preds = %bb.p
  %i.cy = load ptr, ptr %i.ao, align 8, !tbaa !853, !noalias !4628 ; 6 uses
  %i.cz = load ptr, ptr %2, align 8, !tbaa !866, !noalias !4622 ; 6 uses
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !3, !noalias !4622
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !26, !noalias !4622
  %cond = icmp eq i8 %i.dd, 91
  br i1 %cond, label %.thread324, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit

.thread324:                                       ; preds = %bb.s
  %i.de = load ptr, ptr %i.ak, align 8, !tbaa !1933, !noalias !4631 ; 4 uses
  %i.df = icmp eq ptr %i.de, %i.cy
  br i1 %i.df, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.thread324
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !3, !noalias !4631
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !26, !noalias !4631
  %.not8.i.i.i.i = icmp eq i8 %i.dj, 91
  br i1 %.not8.i.i.i.i, label %bb.u, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit

bb.u:                                             ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 4 ; 2 uses
  store ptr %i.dk, ptr %i.ak, align 8, !tbaa !1933, !noalias !4631
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread324
  %i.dl = phi ptr [ %i.dk, %bb.u ], [ %i.de, %.thread324 ] ; 2 uses
  %i.dm = load i8, ptr %i.ap, align 8, !tbaa !854, !range !125, !noalias !4631, !noundef !126
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = load ptr, ptr %i.al, align 8, !tbaa !1915, !noalias !4631
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1937, !noalias !4631 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !1939, !noalias !4631 ; 3 uses
  %i.dt = icmp ne i32 %i.ds, 0
  call void @llvm.assume(i1 %i.dt), !noalias !4636
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dv = add i32 %i.ds, -1
  %i.dw = zext i32 %i.dv to i64
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !852, !noalias !4631 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dw
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3, !noalias !4631
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !26, !noalias !4631
  %.not.i.i3.i.i = icmp eq i8 %i.ec, 93
  br i1 %.not.i.i3.i.i, label %bb.x, label %.sink.split

bb.x:                                             ; preds = %bb.w
  %i.ed = zext i32 %i.ds to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3, !noalias !4631
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !26, !noalias !4631
  %i.ej = icmp eq i8 %i.ei, 93
  br i1 %i.ej, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ek = call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(49) %2) #31, !noalias !4631
  br i1 %i.ek, label %._crit_edge, label %.sink.split

._crit_edge:                                      ; preds = %bb.y
  %.pre418.a = load ptr, ptr %i.ak, align 8, !tbaa !1983, !noalias !4631
  %.pre419 = load ptr, ptr %2, align 8, !tbaa !866, !noalias !4631
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %bb.x, %bb.v
  %i.el = phi ptr [ %.pre419, %._crit_edge ], [ %i.cz, %bb.x ], [ %i.cz, %bb.v ]
  %i.em = phi ptr [ %.pre418.a, %._crit_edge ], [ %i.dl, %bb.x ], [ %i.dl, %bb.v ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.eo = icmp eq ptr %i.em, %i.en
  call void @llvm.assume(i1 %i.eo), !noalias !4631
  %i.ep = load i32, ptr %i.em, align 4, !tbaa !3, !noalias !4631
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !26, !noalias !4631
  %.not = icmp eq i8 %i.es, 93                    ; 2 uses
  br i1 %.not, label %bb.aa, label %.lr.ph402.split.preheader

bb.aa:                                            ; preds = %bb.z
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store ptr %i.et, ptr %i.ak, align 8, !tbaa !1933, !noalias !4631
  br label %.lr.ph402.split.preheader

.sink.split:                                      ; preds = %bb.y, %bb.w
  store ptr null, ptr %i.al, align 8, !tbaa !1915, !noalias !4631
  store i32 0, ptr %i.an, align 4, !tbaa !1947, !noalias !4631
  store i32 28, ptr %i.am, align 8, !tbaa !1948, !noalias !4631
  br label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit

.lr.ph402.split.preheader:                        ; preds = %bb.z, %bb.aa
  %storemerge = phi i32 [ 0, %bb.aa ], [ 2, %bb.z ]
  store i32 %storemerge, ptr %i.an, align 4, !tbaa !1947, !noalias !4631
  %i.eu = load ptr, ptr %2, align 8               ; 5 uses
  %i.ev = load ptr, ptr %i.al, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  br i1 %.not, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit, label %.lr.ph482

.lr.ph482:                                        ; preds = %.lr.ph402.split.preheader
  %.promoted469 = load ptr, ptr %i.ak, align 8
  %.promoted = load i32, ptr %i.am, align 8
  %i.ex = trunc i64 %i.ch to i1
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph482, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i
  %i.ey = phi i32 [ %.promoted, %.lr.ph482 ], [ %i.hm, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ] ; 3 uses
  %i.ez = phi ptr [ %.promoted469, %.lr.ph482 ], [ %i.hl, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ] ; 6 uses
  %.not.i39.i.i = icmp eq i32 %i.ey, 0
  br i1 %.not.i39.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr null, ptr %i.al, align 8, !tbaa !1915, !noalias !4637
  store i32 0, ptr %i.an, align 4, !tbaa !1947, !noalias !4637
  br label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit

bb.ad:                                            ; preds = %bb.ab
  %i.fa = icmp ugt ptr %i.ez, %i.cy
  call void @llvm.assume(i1 %i.fa), !noalias !4640
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !3, !noalias !4622
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fc ; 4 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !26, !noalias !4622
  switch i8 %i.fe, label %.critedge.thread [
    i8 116, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
    i8 102, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
  ]

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i: ; preds = %bb.ad, %bb.ad
  %.0.copyload.i10.i.i.i = load i32, ptr %i.fd, align 1, !noalias !4622 ; 2 uses
  %i.ff = xor i32 %.0.copyload.i10.i.i.i, 1936482662
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !26, !noalias !4622
  %i.fi = xor i8 %i.fh, 101
  %i.fj = zext i8 %i.fi to i32
  %i.fk = or i32 %i.ff, %i.fj
  %i.fl = icmp ne i32 %.0.copyload.i10.i.i.i, 1702195828 ; 3 uses
  %i.fm = icmp ne i32 %i.fk, 0
  %or.cond.i.i.i = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %or.cond.i.i.i, label %.critedge.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
  %i.fn = select i1 %i.fl, i64 5, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !26, !noalias !4622
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !100, !range !125, !noalias !4622, !noundef !126
  %.not390 = icmp eq i8 %i.fs, 0
  br i1 %.not390, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i, label %.critedge.thread

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i: ; preds = %bb.ae
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ez, i64 4 ; 3 uses
  store ptr %i.ft, ptr %i.ak, align 8, !tbaa !1933, !noalias !4622
  store i32 1, ptr %i.an, align 4, !tbaa !1947, !noalias !4622
  %i.fu = xor i1 %i.fl, %i.ex
  br i1 %i.fu, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit, label %.critedge

.critedge:                                        ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i
  %i.fv = icmp ugt ptr %i.ft, %i.cy
  call void @llvm.assume(i1 %i.fv)
  br label %.loopexit

.critedge.thread:                                 ; preds = %bb.ae, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i, %bb.ad
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ez, i64 4 ; 7 uses
  store ptr %i.fw, ptr %i.ak, align 8, !tbaa !1933, !noalias !4622
  %i.fx = load i32, ptr %i.ez, align 4, !tbaa !3, !noalias !4622
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !26, !noalias !4622
  switch i8 %i.ga, label %.loopexit.sink.split [
    i8 91, label %bb.ah
    i8 123, label %bb.ah
    i8 58, label %bb.ah
    i8 44, label %bb.ah
    i8 34, label %bb.af
  ]

bb.af:                                            ; preds = %.critedge.thread
  %i.gb = load i32, ptr %i.fw, align 4, !tbaa !3, !noalias !4622
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !26, !noalias !4622
  %i.gf = icmp eq i8 %i.ge, 58
  br i1 %i.gf, label %bb.ag, label %.loopexit.sink.split

bb.ag:                                            ; preds = %bb.af
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  store ptr %i.gg, ptr %i.ak, align 8, !tbaa !1933, !noalias !4622
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge.thread, %.critedge.thread, %.critedge.thread, %.critedge.thread, %bb.ag
  %i.gh = phi ptr [ %i.fw, %.critedge.thread ], [ %i.fw, %.critedge.thread ], [ %i.fw, %.critedge.thread ], [ %i.fw, %.critedge.thread ], [ %i.gg, %bb.ag ] ; 3 uses
  %i.gi = load ptr, ptr %i.ew, align 8, !tbaa !1937, !noalias !4622 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !1939, !noalias !4622
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gm = zext i32 %i.gk to i64
  %i.gn = load ptr, ptr %i.gl, align 8, !tbaa !852, !noalias !4622
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gm ; 2 uses
  %i.gp = icmp ult ptr %i.gh, %i.go
  br i1 %i.gp, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i

.lr.ph:                                           ; preds = %bb.ah, %bb.ak
  %i.gq = phi i32 [ %i.gz, %bb.ak ], [ 2, %bb.ah ] ; 4 uses
  %i.gr = phi ptr [ %i.gs, %bb.ak ], [ %i.gh, %bb.ah ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4 ; 5 uses
  store ptr %i.gs, ptr %i.ak, align 8, !tbaa !1933, !noalias !4622
  %i.gt = load i32, ptr %i.gr, align 4, !tbaa !3, !noalias !4622
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !26, !noalias !4622
  switch i8 %i.gw, label %bb.ak [
    i8 91, label %bb.ai
    i8 123, label %bb.ai
    i8 93, label %bb.aj
    i8 125, label %bb.aj
  ]

bb.ai:                                            ; preds = %.lr.ph, %.lr.ph
  %i.gx = add nsw i32 %i.gq, 1                    ; 2 uses
  store i32 %i.gx, ptr %i.an, align 4, !tbaa !1947, !noalias !4622
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph, %.lr.ph
  %i.gy = add nsw i32 %i.gq, -1                   ; 2 uses
  store i32 %i.gy, ptr %i.an, align 4, !tbaa !1947, !noalias !4622
  %.not8.i.i.i.i.i = icmp sgt i32 %i.gq, 2
  br i1 %.not8.i.i.i.i.i, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %.lr.ph, %bb.aj, %bb.ai
  %i.gz = phi i32 [ %i.gq, %.lr.ph ], [ %i.gy, %bb.aj ], [ %i.gx, %bb.ai ] ; 2 uses
  %i.ha = icmp ult ptr %i.gs, %i.go
  br i1 %i.ha, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit: ; preds = %bb.ak
  %i.hb = icmp sgt i32 %i.gz, 0
  br label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit, %bb.ah
  %i.hc = phi ptr [ %i.gh, %bb.ah ], [ %i.gs, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit ]
  %i.hd = phi i1 [ true, %bb.ah ], [ %i.hb, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit ]
  store i32 3, ptr %i.am, align 8, !tbaa !1948, !noalias !4622
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

.loopexit.sink.split:                             ; preds = %.critedge.thread, %bb.af
  store i32 1, ptr %i.an, align 4, !tbaa !1947, !noalias !4622
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aj, %.critedge, %.loopexit.sink.split
  %i.he = phi ptr [ %i.fw, %.loopexit.sink.split ], [ %i.ft, %.critedge ], [ %i.gs, %bb.aj ] ; 3 uses
  %i.hf = icmp ugt ptr %i.he, %i.cy
  call void @llvm.assume(i1 %i.hf), !noalias !4622
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 4 ; 4 uses
  store ptr %i.hg, ptr %i.ak, align 8, !tbaa !1933, !noalias !4622
  %i.hh = load i32, ptr %i.he, align 4, !tbaa !3, !noalias !4622
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !26, !noalias !4622
  switch i8 %i.hk, label %bb.an [
    i8 93, label %bb.al
    i8 44, label %bb.am
  ]

bb.al:                                            ; preds = %.loopexit
  store i32 0, ptr %i.an, align 4, !tbaa !1947, !noalias !4622
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.am:                                            ; preds = %.loopexit
  store i32 2, ptr %i.an, align 4, !tbaa !1947, !noalias !4622
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.an:                                            ; preds = %.loopexit
  store i32 3, ptr %i.am, align 8, !tbaa !1948, !noalias !4622
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i: ; preds = %bb.al, %bb.am, %bb.an, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i
  %i.hl = phi ptr [ %i.hg, %bb.al ], [ %i.hg, %bb.am ], [ %i.hg, %bb.an ], [ %i.hc, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  %i.hm = phi i32 [ %i.ey, %bb.al ], [ %i.ey, %bb.am ], [ 3, %bb.an ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  %.not389 = phi i1 [ false, %bb.al ], [ true, %bb.am ], [ true, %bb.an ], [ %i.hd, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  br i1 %.not389, label %bb.ab, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit

bb.ao:                                            ; preds = %bb.r, %bb.q
  %.pn.i.i = phi { ptr, i32 } [ %i.cx, %bb.r ], [ %i.cw, %bb.q ]
  br i1 %i.cn, label %_ZN8simdjson13padded_stringD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZdaPv(ptr noundef nonnull %i.cm) #35, !noalias !4622
  br label %_ZN8simdjson13padded_stringD2Ev.exit

_ZN8simdjson13padded_stringD2Ev.exit:             ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !4622
  br label %.body

_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i, %.lr.ph402.split.preheader, %bb.t, %.sink.split, %bb.s, %bb.ac, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i, %bb.p
  %.4 = phi i1 [ false, %bb.s ], [ false, %bb.p ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i ], [ false, %.sink.split ], [ false, %bb.ac ], [ false, %bb.t ], [ false, %.lr.ph402.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i ], [ false, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ]
  %.3.i.i = phi i1 [ false, %bb.s ], [ false, %bb.p ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i ], [ false, %.sink.split ], [ false, %bb.ac ], [ false, %bb.t ], [ true, %.lr.ph402.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i ], [ true, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ]
  br i1 %i.cn, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cm) #35, !noalias !4622
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !4622
  store ptr null, ptr %6, align 8, !tbaa !815, !alias.scope !4643
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !4616
  %i.hn = load ptr, ptr %i.bb, align 8, !tbaa !4646, !nonnull !126, !align !247 ; 3 uses
  br i1 %.3.i.i, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !4647, !nonnull !126, !align !247
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !553
  %i.hr = lshr i64 %indvars.iv, 3
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hr ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !26  ; 2 uses
  br i1 %.4, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hu = trunc i64 %indvars.iv to i8
  %i.hv = and i8 %i.hu, 7
  %i.hw = shl nuw i8 1, %i.hv
  %i.hx = or i8 %i.ht, %i.hw
  br label %.noexc.i

bb.au:                                            ; preds = %bb.as
  %i.hy = and i64 %indvars.iv, 7
  %i.hz = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !26
  %i.ib = and i8 %i.ia, %i.ht
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.au, %bb.at
  %.sink.i = phi i8 [ %i.ib, %bb.au ], [ %i.hx, %bb.at ]
  store i8 %.sink.i, ptr %i.hs, align 1, !tbaa !26
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE7iterateIJNS1_24ConstantFlatVectorReaderISA_EENS1_12VectorReaderIbEEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit

bb.av:                                            ; preds = %bb.ar
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !4649, !nonnull !126, !align !247
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !552 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.if = load ptr, ptr %i.hn, align 8, !tbaa !4650, !nonnull !126, !align !247
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !4600 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 56
end_hunk_10
begin_hunk_11_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSE_bEEEE7iterateIJNS3_24ConstantFlatVectorReaderISE_EENS3_12VectorReaderIbEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim:bb.a
bb.i:                                             ; preds = %bb.h
  %.not23.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not23.i.i, label %bb.l, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit

bb.j:                                             ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !4662
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4662
  br label %bb.ai

bb.k:                                             ; preds = %bb.h
  %i.cf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ai

bb.l:                                             ; preds = %bb.i
  %i.cg = load ptr, ptr %i.t, align 8, !tbaa !853, !noalias !4668 ; 7 uses
  %i.ch = load ptr, ptr %3, align 8, !tbaa !866, !noalias !4662 ; 12 uses
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !3, !noalias !4662 ; 3 uses
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !26, !noalias !4662
  %cond = icmp eq i8 %i.cl, 91
  br i1 %cond, label %.thread331, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit

.thread331:                                       ; preds = %bb.l
  %i.cm = load ptr, ptr %i.p, align 8, !tbaa !1933, !noalias !4671 ; 4 uses
  %i.cn = icmp eq ptr %i.cm, %i.cg
  br i1 %i.cn, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.thread331
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !3, !noalias !4671
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !26, !noalias !4671
  %.not8.i.i.i.i = icmp eq i8 %i.cr, 91
  br i1 %.not8.i.i.i.i, label %bb.n, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit

bb.n:                                             ; preds = %bb.m
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 2 uses
  store ptr %i.cs, ptr %i.p, align 8, !tbaa !1933, !noalias !4671
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread331
  %i.ct = phi ptr [ %i.cs, %bb.n ], [ %i.cm, %.thread331 ] ; 4 uses
  %i.cu = load i8, ptr %i.u, align 8, !tbaa !854, !range !125, !noalias !4671, !noundef !126
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cw = load ptr, ptr %i.q, align 8, !tbaa !1915, !noalias !4671
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1937, !noalias !4671 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !1939, !noalias !4671 ; 3 uses
  %i.db = icmp ne i32 %i.da, 0
  call void @llvm.assume(i1 %i.db), !noalias !4676
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dd = add i32 %i.da, -1
  %i.de = zext i32 %i.dd to i64
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !852, !noalias !4671 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.de
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3, !noalias !4671 ; 3 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !26, !noalias !4671
  %.not.i.i3.i.i = icmp eq i8 %i.dk, 93
  br i1 %.not.i.i3.i.i, label %bb.q, label %.sink.split

bb.q:                                             ; preds = %bb.p
  %i.dl = zext i32 %i.da to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3, !noalias !4671
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !26, !noalias !4671
  %i.dr = icmp ne i8 %i.dq, 93
  %.not5.i = icmp ugt i32 %i.ci, %i.dh
  %or.cond = or i1 %.not5.i, %i.dr
  br i1 %or.cond, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.t
  %i.ds = phi i32 [ %i.dz, %bb.t ], [ %i.ci, %bb.q ]
  %.07.i = phi i32 [ %.1.i, %bb.t ], [ 0, %bb.q ] ; 3 uses
  %.sroa.5.06.i = phi ptr [ %i.dv, %bb.t ], [ %i.cg, %bb.q ]
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.5.06.i, i64 4 ; 2 uses
  %i.dw = load i8, ptr %i.du, align 1, !tbaa !26, !noalias !4671
  switch i8 %i.dw, label %bb.t [
    i8 91, label %bb.r
    i8 123, label %bb.r
    i8 93, label %bb.s
    i8 125, label %bb.s
  ]

bb.r:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.dx = add nsw i32 %.07.i, 1
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.dy = add nsw i32 %.07.i, -1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.lr.ph.i
  %.1.i = phi i32 [ %.07.i, %.lr.ph.i ], [ %i.dx, %bb.r ], [ %i.dy, %bb.s ] ; 2 uses
  %i.dz = load i32, ptr %i.dv, align 4, !tbaa !3, !noalias !4671 ; 2 uses
  %.not.i36 = icmp ugt i32 %i.dz, %i.dh
  br i1 %.not.i36, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, label %.lr.ph.i, !llvm.loop !2014

_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit: ; preds = %bb.t
  %i.ea = icmp eq i32 %.1.i, 0
  br i1 %i.ea, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %.sink.split

_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread: ; preds = %bb.q, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, %bb.o
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ec = icmp eq ptr %i.ct, %i.eb
  call void @llvm.assume(i1 %i.ec), !noalias !4671
  %i.ed = load i32, ptr %i.ct, align 4, !tbaa !3, !noalias !4671
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !26, !noalias !4671
  %.not493 = icmp eq i8 %i.eg, 93                 ; 2 uses
  br i1 %.not493, label %bb.u, label %.lr.ph412.split.preheader

bb.u:                                             ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  store ptr %i.eh, ptr %i.p, align 8, !tbaa !1933, !noalias !4671
  br label %.lr.ph412.split.preheader

.sink.split:                                      ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, %bb.p
  store ptr null, ptr %i.q, align 8, !tbaa !1915, !noalias !4671
  store i32 0, ptr %i.s, align 4, !tbaa !1947, !noalias !4671
  store i32 28, ptr %i.r, align 8, !tbaa !1948, !noalias !4671
  br label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit

.lr.ph412.split.preheader:                        ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, %bb.u
  %i.ei = phi ptr [ %i.eh, %bb.u ], [ %i.ct, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread ]
  %storemerge = phi i32 [ 0, %bb.u ], [ 2, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread ]
  store i32 %storemerge, ptr %i.s, align 4, !tbaa !1947, !noalias !4671
  %i.ej = load ptr, ptr %i.q, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  br i1 %.not493, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit, label %.lr.ph491

.lr.ph491:                                        ; preds = %.lr.ph412.split.preheader
  %.promoted = load i32, ptr %i.r, align 8
  %i.el = trunc i64 %i.bp to i1
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph491, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i
  %i.em = phi ptr [ %i.ei, %.lr.ph491 ], [ %i.hd, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ] ; 7 uses
  %i.en = phi i32 [ %.promoted, %.lr.ph491 ], [ %i.hc, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ] ; 3 uses
  %.not.i39.i.i = icmp eq i32 %i.en, 0
  br i1 %.not.i39.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr null, ptr %i.q, align 8, !tbaa !1915, !noalias !4677
  store i32 0, ptr %i.s, align 4, !tbaa !1947, !noalias !4677
  br label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit

bb.x:                                             ; preds = %bb.v
  %i.eo = icmp ugt ptr %i.em, %i.cg
  call void @llvm.assume(i1 %i.eo), !noalias !4680
  %i.ep = load i32, ptr %i.em, align 4, !tbaa !3, !noalias !4662
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !26, !noalias !4662
  switch i8 %i.es, label %.critedge.thread [
    i8 116, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
    i8 102, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
  ]

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i: ; preds = %bb.x, %bb.x
  %i.et = load i32, ptr %i.em, align 4, !tbaa !3, !noalias !4662
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.eu ; 3 uses
  %.0.copyload.i10.i.i.i.pre = load i32, ptr %i.ev, align 1, !noalias !4662 ; 2 uses
  %i.ew = xor i32 %.0.copyload.i10.i.i.i.pre, 1936482662
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !26, !noalias !4662
  %i.ez = xor i8 %i.ey, 101
  %i.fa = zext i8 %i.ez to i32
  %i.fb = or i32 %i.ew, %i.fa
  %i.fc = icmp ne i32 %.0.copyload.i10.i.i.i.pre, 1702195828 ; 3 uses
  %i.fd = icmp ne i32 %i.fb, 0
  %or.cond.i.i.i = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %or.cond.i.i.i, label %.critedge.thread, label %bb.y

bb.y:                                             ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
  %i.fe = select i1 %i.fc, i64 5, i64 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !26, !noalias !4662
  %i.fh = zext i8 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !100, !range !125, !noalias !4662, !noundef !126
  %.not399 = icmp eq i8 %i.fj, 0
  br i1 %.not399, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i, label %.critedge.thread

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i: ; preds = %bb.y
  %i.fk = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 3 uses
  store ptr %i.fk, ptr %i.p, align 8, !tbaa !1933, !noalias !4662
  store i32 1, ptr %i.s, align 4, !tbaa !1947, !noalias !4662
  %i.fl = xor i1 %i.fc, %i.el
  br i1 %i.fl, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit, label %.critedge

.critedge:                                        ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i
  %i.fm = icmp ugt ptr %i.fk, %i.cg
  call void @llvm.assume(i1 %i.fm)
  br label %.loopexit

.critedge.thread:                                 ; preds = %bb.y, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i, %bb.x
  %i.fn = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 7 uses
  store ptr %i.fn, ptr %i.p, align 8, !tbaa !1933, !noalias !4662
  %i.fo = load i32, ptr %i.em, align 4, !tbaa !3, !noalias !4662
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !26, !noalias !4662
  switch i8 %i.fr, label %.loopexit.sink.split [
    i8 91, label %bb.ab
    i8 123, label %bb.ab
    i8 58, label %bb.ab
    i8 44, label %bb.ab
    i8 34, label %bb.z
  ]

bb.z:                                             ; preds = %.critedge.thread
  %i.fs = load i32, ptr %i.fn, align 4, !tbaa !3, !noalias !4662
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !26, !noalias !4662
  %i.fw = icmp eq i8 %i.fv, 58
  br i1 %i.fw, label %bb.aa, label %.loopexit.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.fx = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  store ptr %i.fx, ptr %i.p, align 8, !tbaa !1933, !noalias !4662
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge.thread, %.critedge.thread, %.critedge.thread, %.critedge.thread, %bb.aa
  %i.fy = phi ptr [ %i.fn, %.critedge.thread ], [ %i.fn, %.critedge.thread ], [ %i.fn, %.critedge.thread ], [ %i.fn, %.critedge.thread ], [ %i.fx, %bb.aa ] ; 3 uses
  %i.fz = load ptr, ptr %i.ek, align 8, !tbaa !1937, !noalias !4662 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !1939, !noalias !4662
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gd = zext i32 %i.gb to i64
  %i.ge = load ptr, ptr %i.gc, align 8, !tbaa !852, !noalias !4662
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gd ; 2 uses
  %i.gg = icmp ult ptr %i.fy, %i.gf
  br i1 %i.gg, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i

.lr.ph:                                           ; preds = %bb.ab, %bb.ae
  %i.gh = phi i32 [ %i.gq, %bb.ae ], [ 2, %bb.ab ] ; 4 uses
  %i.gi = phi ptr [ %i.gj, %bb.ae ], [ %i.fy, %bb.ab ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 5 uses
  store ptr %i.gj, ptr %i.p, align 8, !tbaa !1933, !noalias !4662
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !3, !noalias !4662
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !26, !noalias !4662
  switch i8 %i.gn, label %bb.ae [
    i8 91, label %bb.ac
    i8 123, label %bb.ac
    i8 93, label %bb.ad
    i8 125, label %bb.ad
  ]

bb.ac:                                            ; preds = %.lr.ph, %.lr.ph
  %i.go = add nsw i32 %i.gh, 1                    ; 2 uses
  store i32 %i.go, ptr %i.s, align 4, !tbaa !1947, !noalias !4662
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph, %.lr.ph
  %i.gp = add nsw i32 %i.gh, -1                   ; 2 uses
  store i32 %i.gp, ptr %i.s, align 4, !tbaa !1947, !noalias !4662
  %.not8.i.i.i.i.i = icmp sgt i32 %i.gh, 2
  br i1 %.not8.i.i.i.i.i, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %.lr.ph, %bb.ad, %bb.ac
  %i.gq = phi i32 [ %i.gh, %.lr.ph ], [ %i.gp, %bb.ad ], [ %i.go, %bb.ac ] ; 2 uses
  %i.gr = icmp ult ptr %i.gj, %i.gf
  br i1 %i.gr, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit: ; preds = %bb.ae
  %i.gs = icmp sgt i32 %i.gq, 0
  br label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit, %bb.ab
  %i.gt = phi ptr [ %i.fy, %bb.ab ], [ %i.gj, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit ]
  %i.gu = phi i1 [ true, %bb.ab ], [ %i.gs, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit ]
  store i32 3, ptr %i.r, align 8, !tbaa !1948, !noalias !4662
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

.loopexit.sink.split:                             ; preds = %.critedge.thread, %bb.z
  store i32 1, ptr %i.s, align 4, !tbaa !1947, !noalias !4662
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %.critedge, %.loopexit.sink.split
  %i.gv = phi ptr [ %i.fn, %.loopexit.sink.split ], [ %i.fk, %.critedge ], [ %i.gj, %bb.ad ] ; 3 uses
  %i.gw = icmp ugt ptr %i.gv, %i.cg
  call void @llvm.assume(i1 %i.gw), !noalias !4662
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 4 ; 4 uses
  store ptr %i.gx, ptr %i.p, align 8, !tbaa !1933, !noalias !4662
  %i.gy = load i32, ptr %i.gv, align 4, !tbaa !3, !noalias !4662
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !26, !noalias !4662
  switch i8 %i.hb, label %bb.ah [
    i8 93, label %bb.af
    i8 44, label %bb.ag
  ]

bb.af:                                            ; preds = %.loopexit
  store i32 0, ptr %i.s, align 4, !tbaa !1947, !noalias !4662
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.ag:                                            ; preds = %.loopexit
  store i32 2, ptr %i.s, align 4, !tbaa !1947, !noalias !4662
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.ah:                                            ; preds = %.loopexit
  store i32 3, ptr %i.r, align 8, !tbaa !1948, !noalias !4662
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i: ; preds = %bb.af, %bb.ag, %bb.ah, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i
  %i.hc = phi i32 [ %i.en, %bb.af ], [ %i.en, %bb.ag ], [ 3, %bb.ah ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  %i.hd = phi ptr [ %i.gx, %bb.af ], [ %i.gx, %bb.ag ], [ %i.gx, %bb.ah ], [ %i.gt, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  %.not398 = phi i1 [ false, %bb.af ], [ true, %bb.ag ], [ true, %bb.ah ], [ %i.gu, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  br i1 %.not398, label %bb.v, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit

bb.ai:                                            ; preds = %bb.k, %bb.j
  %.pn.i.i = phi { ptr, i32 } [ %i.cf, %bb.k ], [ %i.ce, %bb.j ]
  br i1 %i.bv, label %_ZN8simdjson13padded_stringD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #35, !noalias !4662
  br label %_ZN8simdjson13padded_stringD2Ev.exit

_ZN8simdjson13padded_stringD2Ev.exit:             ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4662
  br label %.body

_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i, %.lr.ph412.split.preheader, %bb.m, %.sink.split, %bb.l, %bb.w, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i, %bb.i
  %.4 = phi i1 [ false, %bb.l ], [ false, %bb.i ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i ], [ false, %.sink.split ], [ false, %bb.w ], [ false, %bb.m ], [ false, %.lr.ph412.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i ], [ false, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ]
  %.3.i.i = phi i1 [ false, %bb.l ], [ false, %bb.i ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i ], [ false, %.sink.split ], [ false, %bb.w ], [ false, %bb.m ], [ true, %.lr.ph412.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i ], [ true, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ]
  br i1 %i.bv, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #35, !noalias !4662
  br label %bb.al

bb.al:                                            ; preds = %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4662
  store ptr null, ptr %7, align 8, !tbaa !815, !alias.scope !4683
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !4656
  %i.he = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !4646, !nonnull !126, !align !247 ; 3 uses
  br i1 %.3.i.i, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !4647, !nonnull !126, !align !247
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !553
  %i.hj = lshr i64 %i.ai, 3
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hj ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !26  ; 2 uses
  br i1 %.4, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hm = trunc nuw nsw i64 %i.ad to i8
  %i.hn = and i8 %i.hm, 7
  %i.ho = shl nuw i8 1, %i.hn
  %i.hp = or i8 %i.hl, %i.ho
  br label %.noexc.i

bb.ao:                                            ; preds = %bb.am
  %i.hq = and i64 %i.ai, 7
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !26
  %i.ht = and i8 %i.hs, %i.hl
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.ao, %bb.an
  %.sink.i = phi i8 [ %i.ht, %bb.ao ], [ %i.hp, %bb.an ]
  store i8 %.sink.i, ptr %i.hk, align 1, !tbaa !26
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE7iterateIJNS1_24ConstantFlatVectorReaderISA_EENS1_12VectorReaderIbEEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit

bb.ap:                                            ; preds = %bb.al
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !4649, !nonnull !126, !align !247
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !552 ; 2 uses
  %.not.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hx = load ptr, ptr %i.hf, align 8, !tbaa !4650, !nonnull !126, !align !247
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !4600 ; 3 uses
end_hunk_11
begin_hunk_12_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSE_bEEEE7iterateIJNS3_24ConstantFlatVectorReaderISE_EENS3_12VectorReaderIbEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi:bb.a
_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4696
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4696
  br label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, i64 16, i1 false), !tbaa.struct !851, !noalias !4696
  %i.cq = load <2 x ptr>, ptr %i.at, align 8, !tbaa !107, !noalias !4696
  store <2 x ptr> %i.cq, ptr %i.ak, align 8, !tbaa !107, !noalias !4696
  %i.cr = load <2 x i32>, ptr %i.au, align 8, !tbaa !26, !noalias !4696
  store <2 x i32> %i.cr, ptr %i.al, align 8, !tbaa !26, !noalias !4696
  %i.cs = load ptr, ptr %i.av, align 8, !tbaa !853, !noalias !4696
  store ptr %i.cs, ptr %i.an, align 8, !tbaa !853, !noalias !4696
  %i.ct = load i8, ptr %i.aw, align 8, !tbaa !854, !range !125, !noalias !4696, !noundef !126
  store i8 %i.ct, ptr %i.ao, align 8, !tbaa !854, !noalias !4696
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4696
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4696
  %i.cu = invoke noundef i32 @_ZN8facebook5velox9functions16jsonParsingErrorERN8simdjson8fallback8ondemand8documentE(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.j unwind label %bb.l, !noalias !4696

bb.j:                                             ; preds = %bb.i
  %.not23.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not23.i.i.i, label %bb.m, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit.i

bb.k:                                             ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4696
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4696
  br label %bb.am

bb.l:                                             ; preds = %bb.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.am

bb.m:                                             ; preds = %bb.j
  %i.cx = load ptr, ptr %i.an, align 8, !tbaa !853, !noalias !4702 ; 6 uses
  %i.cy = load ptr, ptr %2, align 8, !tbaa !866, !noalias !4696 ; 6 uses
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !3, !noalias !4696
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !26, !noalias !4696
  %cond = icmp eq i8 %i.dc, 91
  br i1 %cond, label %.thread714, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit.i

.thread714:                                       ; preds = %bb.m
  %i.dd = load ptr, ptr %i.aj, align 8, !tbaa !1933, !noalias !4705 ; 4 uses
  %i.de = icmp eq ptr %i.dd, %i.cx
  br i1 %i.de, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.thread714
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !3, !noalias !4705
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !26, !noalias !4705
  %.not8.i.i.i.i.i42 = icmp eq i8 %i.di, 91
  br i1 %.not8.i.i.i.i.i42, label %bb.o, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit.i

bb.o:                                             ; preds = %bb.n
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 2 uses
  store ptr %i.dj, ptr %i.aj, align 8, !tbaa !1933, !noalias !4705
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread714
  %i.dk = phi ptr [ %i.dj, %bb.o ], [ %i.dd, %.thread714 ] ; 2 uses
  %i.dl = load i8, ptr %i.ao, align 8, !tbaa !854, !range !125, !noalias !4705, !noundef !126
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = load ptr, ptr %i.ak, align 8, !tbaa !1915, !noalias !4705
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1937, !noalias !4705 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !1939, !noalias !4705 ; 3 uses
  %i.ds = icmp ne i32 %i.dr, 0
  call void @llvm.assume(i1 %i.ds), !noalias !4710
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.du = add i32 %i.dr, -1
  %i.dv = zext i32 %i.du to i64
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !852, !noalias !4705 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dv
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3, !noalias !4705
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !26, !noalias !4705
  %.not.i.i3.i.i.i = icmp eq i8 %i.eb, 93
  br i1 %.not.i.i3.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr null, ptr %i.ak, align 8, !tbaa !1915, !noalias !4705
  store i32 0, ptr %i.am, align 4, !tbaa !1947, !noalias !4705
  store i32 28, ptr %i.al, align 8, !tbaa !1948, !noalias !4705
  br label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit.i

bb.s:                                             ; preds = %bb.q
  %i.ec = zext i32 %i.dr to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3, !noalias !4705
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !26, !noalias !4705
  %i.ei = icmp eq i8 %i.eh, 93
  br i1 %i.ei, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ej = call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(49) %2) #31, !noalias !4705
  br i1 %i.ej, label %._crit_edge, label %bb.u

._crit_edge:                                      ; preds = %bb.t
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !1983, !noalias !4705
  %.pre924 = load ptr, ptr %2, align 8, !tbaa !866, !noalias !4705
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %i.ak, align 8, !tbaa !1915, !noalias !4705
  store i32 0, ptr %i.am, align 4, !tbaa !1947, !noalias !4705
  store i32 28, ptr %i.al, align 8, !tbaa !1948, !noalias !4705
  br label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit.i

bb.v:                                             ; preds = %._crit_edge, %bb.s, %bb.p
  %i.ek = phi ptr [ %.pre924, %._crit_edge ], [ %i.cy, %bb.s ], [ %i.cy, %bb.p ]
  %i.el = phi ptr [ %.pre, %._crit_edge ], [ %i.dk, %bb.s ], [ %i.dk, %bb.p ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.en = icmp eq ptr %i.el, %i.em
  call void @llvm.assume(i1 %i.en), !noalias !4705
  %i.eo = load i32, ptr %i.el, align 4, !tbaa !3, !noalias !4705
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !26, !noalias !4705
  %.not1067 = icmp eq i8 %i.er, 93                ; 2 uses
  br i1 %.not1067, label %bb.w, label %.lr.ph897.split.preheader

bb.w:                                             ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store ptr %i.es, ptr %i.aj, align 8, !tbaa !1933, !noalias !4705
  br label %.lr.ph897.split.preheader

.lr.ph897.split.preheader:                        ; preds = %bb.v, %bb.w
  %storemerge856 = phi i32 [ 0, %bb.w ], [ 2, %bb.v ]
  store i32 %storemerge856, ptr %i.am, align 4, !tbaa !1947, !noalias !4705
  %i.et = load ptr, ptr %2, align 8               ; 5 uses
  %i.eu = load ptr, ptr %i.ak, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  br i1 %.not1067, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit.i, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %.lr.ph897.split.preheader
  %.promoted1043 = load ptr, ptr %i.aj, align 8
  %.promoted = load i32, ptr %i.al, align 8
  %i.ew = trunc i64 %i.cg to i1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph1061, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i
  %i.ex = phi i32 [ %.promoted, %.lr.ph1061 ], [ %i.hl, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ] ; 3 uses
  %i.ey = phi ptr [ %.promoted1043, %.lr.ph1061 ], [ %i.hk, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ] ; 6 uses
  %.not.i39.i.i.i = icmp eq i32 %i.ex, 0
  br i1 %.not.i39.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr null, ptr %i.ak, align 8, !tbaa !1915, !noalias !4711
  store i32 0, ptr %i.am, align 4, !tbaa !1947, !noalias !4711
  br label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ez = icmp ugt ptr %i.ey, %i.cx
  call void @llvm.assume(i1 %i.ez), !noalias !4714
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !4696
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fb ; 4 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !26, !noalias !4696
  switch i8 %i.fd, label %.critedge.thread [
    i8 116, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i
    i8 102, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i
  ]

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i: ; preds = %bb.z, %bb.z
  %.0.copyload.i10.i.i.i.i = load i32, ptr %i.fc, align 1, !noalias !4696 ; 2 uses
  %i.fe = xor i32 %.0.copyload.i10.i.i.i.i, 1936482662
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !26, !noalias !4696
  %i.fh = xor i8 %i.fg, 101
  %i.fi = zext i8 %i.fh to i32
  %i.fj = or i32 %i.fe, %i.fi
  %i.fk = icmp ne i32 %.0.copyload.i10.i.i.i.i, 1702195828 ; 3 uses
  %i.fl = icmp ne i32 %i.fj, 0
  %or.cond.i.i.i.i41 = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %or.cond.i.i.i.i41, label %.critedge.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i
  %i.fm = select i1 %i.fk, i64 5, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !26, !noalias !4696
  %i.fp = zext i8 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !100, !range !125, !noalias !4696, !noundef !126
  %.not860 = icmp eq i8 %i.fr, 0
  br i1 %.not860, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i, label %.critedge.thread

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i: ; preds = %bb.aa
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 3 uses
  store ptr %i.fs, ptr %i.aj, align 8, !tbaa !1933, !noalias !4696
  store i32 1, ptr %i.am, align 4, !tbaa !1947, !noalias !4696
  %i.ft = xor i1 %i.fk, %i.ew
  br i1 %i.ft, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit.i, label %.critedge

.critedge:                                        ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i
  %i.fu = icmp ugt ptr %i.fs, %i.cx
  call void @llvm.assume(i1 %i.fu)
  br label %.loopexit

.critedge.thread:                                 ; preds = %bb.aa, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i, %bb.z
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 8 uses
  store ptr %i.fv, ptr %i.aj, align 8, !tbaa !1933, !noalias !4696
  %i.fw = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !4696
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !26, !noalias !4696
  switch i8 %i.fz, label %bb.ae [
    i8 91, label %bb.af
    i8 123, label %bb.af
    i8 58, label %bb.af
    i8 44, label %bb.af
    i8 93, label %bb.ab
    i8 125, label %bb.ab
    i8 34, label %bb.ac
  ]

bb.ab:                                            ; preds = %.critedge.thread, %.critedge.thread
  store i32 1, ptr %i.am, align 4, !tbaa !1947, !noalias !4696
  br label %.loopexit

bb.ac:                                            ; preds = %.critedge.thread
  %i.ga = load i32, ptr %i.fv, align 4, !tbaa !3, !noalias !4696
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !26, !noalias !4696
  %i.ge = icmp eq i8 %i.gd, 58
  br i1 %i.ge, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  store ptr %i.gf, ptr %i.aj, align 8, !tbaa !1933, !noalias !4696
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac, %.critedge.thread
  store i32 1, ptr %i.am, align 4, !tbaa !1947, !noalias !4696
  br label %.loopexit

bb.af:                                            ; preds = %.critedge.thread, %.critedge.thread, %.critedge.thread, %.critedge.thread, %bb.ad
  %i.gg = phi ptr [ %i.fv, %.critedge.thread ], [ %i.fv, %.critedge.thread ], [ %i.fv, %.critedge.thread ], [ %i.fv, %.critedge.thread ], [ %i.gf, %bb.ad ] ; 3 uses
  %i.gh = load ptr, ptr %i.ev, align 8, !tbaa !1937, !noalias !4696 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !1939, !noalias !4696
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gl = zext i32 %i.gj to i64
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !852, !noalias !4696
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gl ; 2 uses
  %i.go = icmp ult ptr %i.gg, %i.gn
  br i1 %i.go, label %.lr.ph896, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i

.lr.ph896:                                        ; preds = %bb.af, %bb.ai
  %i.gp = phi i32 [ %i.gy, %bb.ai ], [ 2, %bb.af ] ; 4 uses
  %i.gq = phi ptr [ %i.gr, %bb.ai ], [ %i.gg, %bb.af ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 5 uses
  store ptr %i.gr, ptr %i.aj, align 8, !tbaa !1933, !noalias !4696
  %i.gs = load i32, ptr %i.gq, align 4, !tbaa !3, !noalias !4696
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !26, !noalias !4696
  switch i8 %i.gv, label %bb.ai [
    i8 91, label %bb.ag
    i8 123, label %bb.ag
    i8 93, label %bb.ah
    i8 125, label %bb.ah
  ]

bb.ag:                                            ; preds = %.lr.ph896, %.lr.ph896
  %i.gw = add nsw i32 %i.gp, 1                    ; 2 uses
  store i32 %i.gw, ptr %i.am, align 4, !tbaa !1947, !noalias !4696
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph896, %.lr.ph896
  %i.gx = add nsw i32 %i.gp, -1                   ; 2 uses
  store i32 %i.gx, ptr %i.am, align 4, !tbaa !1947, !noalias !4696
  %.not8.i.i.i.i.i.i = icmp sgt i32 %i.gp, 2
  br i1 %.not8.i.i.i.i.i.i, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %.lr.ph896, %bb.ah, %bb.ag
  %i.gy = phi i32 [ %i.gp, %.lr.ph896 ], [ %i.gx, %bb.ah ], [ %i.gw, %bb.ag ] ; 2 uses
  %i.gz = icmp ult ptr %i.gr, %i.gn
  br i1 %i.gz, label %.lr.ph896, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit: ; preds = %bb.ai
  %i.ha = icmp sgt i32 %i.gy, 0
  br label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit, %bb.af
  %i.hb = phi ptr [ %i.gg, %bb.af ], [ %i.gr, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit ]
  %i.hc = phi i1 [ true, %bb.af ], [ %i.ha, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit ]
  store i32 3, ptr %i.al, align 8, !tbaa !1948, !noalias !4696
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

.loopexit:                                        ; preds = %bb.ah, %bb.ae, %bb.ab, %.critedge
  %i.hd = phi ptr [ %i.fv, %bb.ae ], [ %i.fs, %.critedge ], [ %i.fv, %bb.ab ], [ %i.gr, %bb.ah ] ; 3 uses
  %i.he = icmp ugt ptr %i.hd, %i.cx
  call void @llvm.assume(i1 %i.he), !noalias !4696
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 4 ; 4 uses
  store ptr %i.hf, ptr %i.aj, align 8, !tbaa !1933, !noalias !4696
  %i.hg = load i32, ptr %i.hd, align 4, !tbaa !3, !noalias !4696
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !26, !noalias !4696
  switch i8 %i.hj, label %bb.al [
    i8 93, label %bb.aj
    i8 44, label %bb.ak
  ]

bb.aj:                                            ; preds = %.loopexit
  store i32 0, ptr %i.am, align 4, !tbaa !1947, !noalias !4696
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

bb.ak:                                            ; preds = %.loopexit
  store i32 2, ptr %i.am, align 4, !tbaa !1947, !noalias !4696
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

bb.al:                                            ; preds = %.loopexit
  store i32 3, ptr %i.al, align 8, !tbaa !1948, !noalias !4696
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i: ; preds = %bb.aj, %bb.ak, %bb.al, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i
  %i.hk = phi ptr [ %i.hf, %bb.aj ], [ %i.hf, %bb.ak ], [ %i.hf, %bb.al ], [ %i.hb, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i ]
  %i.hl = phi i32 [ %i.ex, %bb.aj ], [ %i.ex, %bb.ak ], [ 3, %bb.al ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i ]
  %.not859 = phi i1 [ false, %bb.aj ], [ true, %bb.ak ], [ true, %bb.al ], [ %i.hc, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i ]
  br i1 %.not859, label %bb.x, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit.i

bb.am:                                            ; preds = %bb.l, %bb.k
  %.pn.i.i.i = phi { ptr, i32 } [ %i.cw, %bb.l ], [ %i.cv, %bb.k ]
  br i1 %i.cm, label %_ZN8simdjson13padded_stringD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZdaPv(ptr noundef nonnull %i.cl) #35, !noalias !4696
  br label %_ZN8simdjson13padded_stringD2Ev.exit

_ZN8simdjson13padded_stringD2Ev.exit:             ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !4696
  br label %.body44

_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit.i: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i, %.lr.ph897.split.preheader, %bb.u, %bb.r, %bb.n, %bb.m, %bb.y, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i, %bb.j
  %.0703 = phi i1 [ false, %bb.m ], [ false, %bb.j ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i ], [ false, %bb.u ], [ false, %bb.y ], [ false, %bb.n ], [ false, %bb.r ], [ false, %.lr.ph897.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i ], [ false, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ]
  %.3.i.i.i = phi i1 [ false, %bb.m ], [ false, %bb.j ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i ], [ false, %bb.u ], [ false, %bb.y ], [ false, %bb.n ], [ false, %bb.r ], [ true, %.lr.ph897.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i ], [ true, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ]
  br i1 %i.cm, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.cl) #35, !noalias !4696
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !4696
  store ptr null, ptr %6, align 8, !tbaa !815, !alias.scope !4717
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !4690
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !4646, !nonnull !126, !align !247 ; 3 uses
  br i1 %.3.i.i.i, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !4647, !nonnull !126, !align !247
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !553
  %i.hr = lshr i64 %.0903, 3
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hr ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !26  ; 2 uses
  br i1 %.0703, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hu = trunc i64 %.0903 to i8
  %i.hv = and i8 %i.hu, 7
  %i.hw = shl nuw i8 1, %i.hv
  %i.hx = or i8 %i.ht, %i.hw
  br label %.noexc.i34

bb.as:                                            ; preds = %bb.aq
  %i.hy = and i64 %.0903, 7
  %i.hz = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !26
  %i.ib = and i8 %i.ia, %i.ht
  br label %.noexc.i34

.noexc.i34:                                       ; preds = %bb.as, %bb.ar
  %.sink.i = phi i8 [ %i.ib, %bb.as ], [ %i.hx, %bb.ar ]
  store i8 %.sink.i, ptr %i.hs, align 1, !tbaa !26
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE7iterateIJNS1_24ConstantFlatVectorReaderISA_EENS1_12VectorReaderIbEEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit

bb.at:                                            ; preds = %bb.ap
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !4649, !nonnull !126, !align !247
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !552 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.ie, null
end_hunk_12
begin_hunk_13_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSE_bEEEE7iterateIJNS3_24ConstantFlatVectorReaderISE_EENS3_12VectorReaderIbEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi:bb.a
bb.bv:                                            ; preds = %bb.bu
  %.not23.i.i = icmp eq i32 %i.mg, 0
  br i1 %.not23.i.i, label %bb.by, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit

bb.bw:                                            ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit104
  %i.mh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31, !noalias !4727
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31, !noalias !4727
  br label %bb.cv

bb.bx:                                            ; preds = %bb.bu
  %i.mi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.cv

bb.by:                                            ; preds = %bb.bv
  %i.mj = load ptr, ptr %i.s, align 8, !tbaa !853, !noalias !4733 ; 7 uses
  %i.mk = load ptr, ptr %9, align 8, !tbaa !866, !noalias !4727 ; 12 uses
  %i.ml = load i32, ptr %i.mj, align 4, !tbaa !3, !noalias !4727 ; 3 uses
  %i.mm = zext i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !26, !noalias !4727
  %cond873 = icmp eq i8 %i.mo, 91
  br i1 %cond873, label %.thread783, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit

.thread783:                                       ; preds = %bb.by
  %i.mp = load ptr, ptr %i.o, align 8, !tbaa !1933, !noalias !4736 ; 4 uses
  %i.mq = icmp eq ptr %i.mp, %i.mj
  br i1 %i.mq, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %.thread783
  %i.mr = load i32, ptr %i.mp, align 4, !tbaa !3, !noalias !4736
  %i.ms = zext i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !26, !noalias !4736
  %.not8.i.i.i.i = icmp eq i8 %i.mu, 91
  br i1 %.not8.i.i.i.i, label %bb.ca, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit

bb.ca:                                            ; preds = %bb.bz
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mp, i64 4 ; 2 uses
  store ptr %i.mv, ptr %i.o, align 8, !tbaa !1933, !noalias !4736
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.thread783
  %i.mw = phi ptr [ %i.mv, %bb.ca ], [ %i.mp, %.thread783 ] ; 4 uses
  %i.mx = load i8, ptr %i.t, align 8, !tbaa !854, !range !125, !noalias !4736, !noundef !126
  %i.my = trunc nuw i8 %i.mx to i1
  br i1 %i.my, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mz = load ptr, ptr %i.p, align 8, !tbaa !1915, !noalias !4736
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !1937, !noalias !4736 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !1939, !noalias !4736 ; 3 uses
  %i.ne = icmp ne i32 %i.nd, 0
  call void @llvm.assume(i1 %i.ne), !noalias !4741
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.ng = add i32 %i.nd, -1
  %i.nh = zext i32 %i.ng to i64
  %i.ni = load ptr, ptr %i.nf, align 8, !tbaa !852, !noalias !4736 ; 2 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.nh
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !3, !noalias !4736 ; 3 uses
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !26, !noalias !4736
  %.not.i.i3.i.i = icmp eq i8 %i.nn, 93
  br i1 %.not.i.i3.i.i, label %bb.cd, label %.sink.split

bb.cd:                                            ; preds = %bb.cc
  %i.no = zext i32 %i.nd to i64
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.no
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !3, !noalias !4736
  %i.nr = zext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.nr
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !26, !noalias !4736
  %i.nu = icmp ne i8 %i.nt, 93
  %.not5.i = icmp ugt i32 %i.ml, %i.nk
  %or.cond = or i1 %.not5.i, %i.nu
  br i1 %or.cond, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cd, %bb.cg
  %i.nv = phi i32 [ %i.oc, %bb.cg ], [ %i.ml, %bb.cd ]
  %.07.i = phi i32 [ %.1.i, %bb.cg ], [ 0, %bb.cd ] ; 3 uses
  %.sroa.5.06.i = phi ptr [ %i.ny, %bb.cg ], [ %i.mj, %bb.cd ]
  %i.nw = zext i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.5.06.i, i64 4 ; 2 uses
  %i.nz = load i8, ptr %i.nx, align 1, !tbaa !26, !noalias !4736
  switch i8 %i.nz, label %bb.cg [
    i8 91, label %bb.ce
    i8 123, label %bb.ce
    i8 93, label %bb.cf
    i8 125, label %bb.cf
  ]

bb.ce:                                            ; preds = %.lr.ph.i, %.lr.ph.i
  %i.oa = add nsw i32 %.07.i, 1
  br label %bb.cg

bb.cf:                                            ; preds = %.lr.ph.i, %.lr.ph.i
  %i.ob = add nsw i32 %.07.i, -1
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %.lr.ph.i
  %.1.i = phi i32 [ %.07.i, %.lr.ph.i ], [ %i.oa, %bb.ce ], [ %i.ob, %bb.cf ] ; 2 uses
  %i.oc = load i32, ptr %i.ny, align 4, !tbaa !3, !noalias !4736 ; 2 uses
  %.not.i107 = icmp ugt i32 %i.oc, %i.nk
  br i1 %.not.i107, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, label %.lr.ph.i, !llvm.loop !2014

_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit: ; preds = %bb.cg
  %i.od = icmp eq i32 %.1.i, 0
  br i1 %i.od, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %.sink.split

_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread: ; preds = %bb.cd, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, %bb.cb
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %i.of = icmp eq ptr %i.mw, %i.oe
  call void @llvm.assume(i1 %i.of), !noalias !4736
  %i.og = load i32, ptr %i.mw, align 4, !tbaa !3, !noalias !4736
  %i.oh = zext i32 %i.og to i64
  %i.oi = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !26, !noalias !4736
  %.not1068 = icmp eq i8 %i.oj, 93                ; 2 uses
  br i1 %.not1068, label %bb.ch, label %.lr.ph890.split.preheader

bb.ch:                                            ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread
  %i.ok = getelementptr inbounds nuw i8, ptr %i.mw, i64 4 ; 2 uses
  store ptr %i.ok, ptr %i.o, align 8, !tbaa !1933, !noalias !4736
  br label %.lr.ph890.split.preheader

.sink.split:                                      ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, %bb.cc
  store ptr null, ptr %i.p, align 8, !tbaa !1915, !noalias !4736
  store i32 0, ptr %i.r, align 4, !tbaa !1947, !noalias !4736
  store i32 28, ptr %i.q, align 8, !tbaa !1948, !noalias !4736
  br label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit

.lr.ph890.split.preheader:                        ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, %bb.ch
  %i.ol = phi ptr [ %i.ok, %bb.ch ], [ %i.mw, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread ]
  %storemerge = phi i32 [ 0, %bb.ch ], [ 2, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread ]
  store i32 %storemerge, ptr %i.r, align 4, !tbaa !1947, !noalias !4736
  %i.om = load ptr, ptr %i.p, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  br i1 %.not1068, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit, label %.lr.ph1064

.lr.ph1064:                                       ; preds = %.lr.ph890.split.preheader
  %.promoted1046 = load i32, ptr %i.q, align 8
  %i.oo = trunc i64 %i.ls to i1
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph1064, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i
  %i.op = phi ptr [ %i.ol, %.lr.ph1064 ], [ %i.rg, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ] ; 7 uses
  %i.oq = phi i32 [ %.promoted1046, %.lr.ph1064 ], [ %i.rf, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ] ; 3 uses
  %.not.i39.i.i = icmp eq i32 %i.oq, 0
  br i1 %.not.i39.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store ptr null, ptr %i.p, align 8, !tbaa !1915, !noalias !4742
  store i32 0, ptr %i.r, align 4, !tbaa !1947, !noalias !4742
  br label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit

bb.ck:                                            ; preds = %bb.ci
  %i.or = icmp ugt ptr %i.op, %i.mj
  call void @llvm.assume(i1 %i.or), !noalias !4745
  %i.os = load i32, ptr %i.op, align 4, !tbaa !3, !noalias !4727
  %i.ot = zext i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !26, !noalias !4727
  switch i8 %i.ov, label %.critedge871.thread [
    i8 116, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
    i8 102, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
  ]

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i: ; preds = %bb.ck, %bb.ck
  %i.ow = load i32, ptr %i.op, align 4, !tbaa !3, !noalias !4727
  %i.ox = zext i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.ox ; 3 uses
  %.0.copyload.i10.i.i.i.pre = load i32, ptr %i.oy, align 1, !noalias !4727 ; 2 uses
  %i.oz = xor i32 %.0.copyload.i10.i.i.i.pre, 1936482662
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 4
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !26, !noalias !4727
  %i.pc = xor i8 %i.pb, 101
  %i.pd = zext i8 %i.pc to i32
  %i.pe = or i32 %i.oz, %i.pd
  %i.pf = icmp ne i32 %.0.copyload.i10.i.i.i.pre, 1702195828 ; 3 uses
  %i.pg = icmp ne i32 %i.pe, 0
  %or.cond.i.i.i = select i1 %i.pf, i1 %i.pg, i1 false
  br i1 %or.cond.i.i.i, label %.critedge871.thread, label %bb.cl

bb.cl:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i
  %i.ph = select i1 %i.pf, i64 5, i64 4
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !26, !noalias !4727
  %i.pk = zext i8 %i.pj to i64
  %i.pl = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.pk
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !100, !range !125, !noalias !4727, !noundef !126
  %.not855 = icmp eq i8 %i.pm, 0
  br i1 %.not855, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i, label %.critedge871.thread

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i: ; preds = %bb.cl
  %i.pn = getelementptr inbounds nuw i8, ptr %i.op, i64 4 ; 3 uses
  store ptr %i.pn, ptr %i.o, align 8, !tbaa !1933, !noalias !4727
  store i32 1, ptr %i.r, align 4, !tbaa !1947, !noalias !4727
  %i.po = xor i1 %i.pf, %i.oo
  br i1 %i.po, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit, label %.critedge871

.critedge871:                                     ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i
  %i.pp = icmp ugt ptr %i.pn, %i.mj
  call void @llvm.assume(i1 %i.pp)
  br label %.loopexit877

.critedge871.thread:                              ; preds = %bb.cl, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i, %bb.ck
  %i.pq = getelementptr inbounds nuw i8, ptr %i.op, i64 4 ; 7 uses
  store ptr %i.pq, ptr %i.o, align 8, !tbaa !1933, !noalias !4727
  %i.pr = load i32, ptr %i.op, align 4, !tbaa !3, !noalias !4727
  %i.ps = zext i32 %i.pr to i64
  %i.pt = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.ps
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !26, !noalias !4727
  switch i8 %i.pu, label %.loopexit877.sink.split [
    i8 91, label %bb.co
    i8 123, label %bb.co
    i8 58, label %bb.co
    i8 44, label %bb.co
    i8 34, label %bb.cm
  ]

bb.cm:                                            ; preds = %.critedge871.thread
  %i.pv = load i32, ptr %i.pq, align 4, !tbaa !3, !noalias !4727
  %i.pw = zext i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.pw
  %i.py = load i8, ptr %i.px, align 1, !tbaa !26, !noalias !4727
  %i.pz = icmp eq i8 %i.py, 58
  br i1 %i.pz, label %bb.cn, label %.loopexit877.sink.split

bb.cn:                                            ; preds = %bb.cm
  %i.qa = getelementptr inbounds nuw i8, ptr %i.op, i64 8 ; 2 uses
  store ptr %i.qa, ptr %i.o, align 8, !tbaa !1933, !noalias !4727
  br label %bb.co

bb.co:                                            ; preds = %.critedge871.thread, %.critedge871.thread, %.critedge871.thread, %.critedge871.thread, %bb.cn
  %i.qb = phi ptr [ %i.pq, %.critedge871.thread ], [ %i.pq, %.critedge871.thread ], [ %i.pq, %.critedge871.thread ], [ %i.pq, %.critedge871.thread ], [ %i.qa, %bb.cn ] ; 3 uses
  %i.qc = load ptr, ptr %i.on, align 8, !tbaa !1937, !noalias !4727 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !1939, !noalias !4727
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %i.qg = zext i32 %i.qe to i64
  %i.qh = load ptr, ptr %i.qf, align 8, !tbaa !852, !noalias !4727
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.qg ; 2 uses
  %i.qj = icmp ult ptr %i.qb, %i.qi
  br i1 %i.qj, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i

.lr.ph:                                           ; preds = %bb.co, %bb.cr
  %i.qk = phi i32 [ %i.qt, %bb.cr ], [ 2, %bb.co ] ; 4 uses
  %i.ql = phi ptr [ %i.qm, %bb.cr ], [ %i.qb, %bb.co ] ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 4 ; 5 uses
  store ptr %i.qm, ptr %i.o, align 8, !tbaa !1933, !noalias !4727
  %i.qn = load i32, ptr %i.ql, align 4, !tbaa !3, !noalias !4727
  %i.qo = zext i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.qo
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !26, !noalias !4727
  switch i8 %i.qq, label %bb.cr [
    i8 91, label %bb.cp
    i8 123, label %bb.cp
    i8 93, label %bb.cq
    i8 125, label %bb.cq
  ]

bb.cp:                                            ; preds = %.lr.ph, %.lr.ph
  %i.qr = add nsw i32 %i.qk, 1                    ; 2 uses
  store i32 %i.qr, ptr %i.r, align 4, !tbaa !1947, !noalias !4727
  br label %bb.cr

bb.cq:                                            ; preds = %.lr.ph, %.lr.ph
  %i.qs = add nsw i32 %i.qk, -1                   ; 2 uses
  store i32 %i.qs, ptr %i.r, align 4, !tbaa !1947, !noalias !4727
  %.not8.i.i.i.i.i = icmp sgt i32 %i.qk, 2
  br i1 %.not8.i.i.i.i.i, label %bb.cr, label %.loopexit877

bb.cr:                                            ; preds = %.lr.ph, %bb.cq, %bb.cp
  %i.qt = phi i32 [ %i.qk, %.lr.ph ], [ %i.qs, %bb.cq ], [ %i.qr, %bb.cp ] ; 2 uses
  %i.qu = icmp ult ptr %i.qm, %i.qi
  br i1 %i.qu, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit: ; preds = %bb.cr
  %i.qv = icmp sgt i32 %i.qt, 0
  br label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit, %bb.co
  %i.qw = phi ptr [ %i.qb, %bb.co ], [ %i.qm, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit ]
  %i.qx = phi i1 [ true, %bb.co ], [ %i.qv, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.loopexit ]
  store i32 3, ptr %i.q, align 8, !tbaa !1948, !noalias !4727
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

.loopexit877.sink.split:                          ; preds = %.critedge871.thread, %bb.cm
  store i32 1, ptr %i.r, align 4, !tbaa !1947, !noalias !4727
  br label %.loopexit877

.loopexit877:                                     ; preds = %bb.cq, %.critedge871, %.loopexit877.sink.split
  %i.qy = phi ptr [ %i.pq, %.loopexit877.sink.split ], [ %i.pn, %.critedge871 ], [ %i.qm, %bb.cq ] ; 3 uses
  %i.qz = icmp ugt ptr %i.qy, %i.mj
  call void @llvm.assume(i1 %i.qz), !noalias !4727
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 4 ; 4 uses
  store ptr %i.ra, ptr %i.o, align 8, !tbaa !1933, !noalias !4727
  %i.rb = load i32, ptr %i.qy, align 4, !tbaa !3, !noalias !4727
  %i.rc = zext i32 %i.rb to i64
  %i.rd = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.rc
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !26, !noalias !4727
  switch i8 %i.re, label %bb.cu [
    i8 93, label %bb.cs
    i8 44, label %bb.ct
  ]

bb.cs:                                            ; preds = %.loopexit877
  store i32 0, ptr %i.r, align 4, !tbaa !1947, !noalias !4727
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.ct:                                            ; preds = %.loopexit877
  store i32 2, ptr %i.r, align 4, !tbaa !1947, !noalias !4727
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.cu:                                            ; preds = %.loopexit877
  store i32 3, ptr %i.q, align 8, !tbaa !1948, !noalias !4727
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i: ; preds = %bb.cs, %bb.ct, %bb.cu, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i
  %i.rf = phi i32 [ %i.oq, %bb.cs ], [ %i.oq, %bb.ct ], [ 3, %bb.cu ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  %i.rg = phi ptr [ %i.ra, %bb.cs ], [ %i.ra, %bb.ct ], [ %i.ra, %bb.cu ], [ %i.qw, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  %.not854 = phi i1 [ false, %bb.cs ], [ true, %bb.ct ], [ true, %bb.cu ], [ %i.qx, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  br i1 %.not854, label %bb.ci, label %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit

bb.cv:                                            ; preds = %bb.bx, %bb.bw
  %.pn.i.i = phi { ptr, i32 } [ %i.mi, %bb.bx ], [ %i.mh, %bb.bw ]
  br i1 %i.ly, label %_ZN8simdjson13padded_stringD2Ev.exit108, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @_ZdaPv(ptr noundef nonnull %i.lx) #35, !noalias !4727
  br label %_ZN8simdjson13padded_stringD2Ev.exit108

_ZN8simdjson13padded_stringD2Ev.exit108:          ; preds = %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !4727
  br label %.body

_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i, %.lr.ph890.split.preheader, %bb.bz, %.sink.split, %bb.by, %bb.cj, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i, %bb.bv
  %.4 = phi i1 [ false, %bb.by ], [ false, %bb.bv ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i ], [ false, %.sink.split ], [ false, %bb.cj ], [ false, %bb.bz ], [ false, %.lr.ph890.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i ], [ false, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ]
  %.3.i.i = phi i1 [ false, %bb.by ], [ false, %bb.bv ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i ], [ false, %.sink.split ], [ false, %bb.cj ], [ false, %bb.bz ], [ true, %.lr.ph890.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i ], [ true, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ]
  br i1 %i.ly, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit
  call void @_ZdaPv(ptr noundef nonnull %i.lx) #35, !noalias !4727
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN8facebook5velox4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8callImplERbSC_RKNS0_10StringViewERKb.exit, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !4727
  store ptr null, ptr %13, align 8, !tbaa !815, !alias.scope !4748
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31, !noalias !4721
  %i.rh = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !4646, !nonnull !126, !align !247 ; 3 uses
  br i1 %.3.i.i, label %bb.cz, label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !4647, !nonnull !126, !align !247
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !553
  %i.rm = lshr i64 %i.kl, 3
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.rm ; 2 uses
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !26  ; 2 uses
  br i1 %.4, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.rp = trunc nuw nsw i64 %i.kg to i8
  %i.rq = and i8 %i.rp, 7
  %i.rr = shl nuw i8 1, %i.rq
  %i.rs = or i8 %i.ro, %i.rr
  br label %.noexc.i

bb.db:                                            ; preds = %bb.cz
  %i.rt = and i64 %i.kl, 7
  %i.ru = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.rt
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !26
  %i.rw = and i8 %i.rv, %i.ro
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.db, %bb.da
  %.sink.i116 = phi i8 [ %i.rw, %bb.db ], [ %i.rs, %bb.da ]
  store i8 %.sink.i116, ptr %i.rn, align 1, !tbaa !26
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE7iterateIJNS1_24ConstantFlatVectorReaderISA_EENS1_12VectorReaderIbEEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit

bb.dc:                                            ; preds = %bb.cy
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ri, i64 8 ; 2 uses
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !4649, !nonnull !126, !align !247
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !552 ; 2 uses
  %.not.i.i = icmp eq ptr %i.rz, null
  br i1 %.not.i.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.sa = load ptr, ptr %i.ri, align 8, !tbaa !4650, !nonnull !126, !align !247
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !4600 ; 3 uses
end_hunk_13
begin_hunk_14_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSE_bEEEE7iterateIJNS3_12VectorReaderISE_EENSJ_IbEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_:bb.a

bb.q:                                             ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit
  %i.dc = load i32, ptr %i.at, align 8, !tbaa !844, !noalias !4764
  %.not.i.i.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i.i.i, label %bb.r, label %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i

_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4764
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4764
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, i64 16, i1 false), !tbaa.struct !851, !noalias !4764
  %i.dd = load <2 x ptr>, ptr %i.au, align 8, !tbaa !107, !noalias !4764
  store <2 x ptr> %i.dd, ptr %i.al, align 8, !tbaa !107, !noalias !4764
  %i.de = load <2 x i32>, ptr %i.av, align 8, !tbaa !26, !noalias !4764
  store <2 x i32> %i.de, ptr %i.am, align 8, !tbaa !26, !noalias !4764
  %i.df = load ptr, ptr %i.aw, align 8, !tbaa !853, !noalias !4764
  store ptr %i.df, ptr %i.ao, align 8, !tbaa !853, !noalias !4764
  %i.dg = load i8, ptr %i.ax, align 8, !tbaa !854, !range !125, !noalias !4764, !noundef !126
  store i8 %i.dg, ptr %i.ap, align 8, !tbaa !854, !noalias !4764
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4764
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4764
  %i.dh = invoke noundef i32 @_ZN8facebook5velox9functions16jsonParsingErrorERN8simdjson8fallback8ondemand8documentE(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.s unwind label %bb.u, !noalias !4764

bb.s:                                             ; preds = %bb.r
  %.not23.i.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not23.i.i.i, label %bb.v, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit

bb.t:                                             ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4764
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4764
  br label %bb.ar

bb.u:                                             ; preds = %bb.r
  %i.dj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ar

bb.v:                                             ; preds = %bb.s
  %i.dk = load ptr, ptr %i.ao, align 8, !tbaa !853, !noalias !4770 ; 6 uses
  %i.dl = load ptr, ptr %2, align 8, !tbaa !866, !noalias !4764 ; 6 uses
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !3, !noalias !4764
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !26, !noalias !4764
  %cond = icmp eq i8 %i.dp, 91
  br i1 %cond, label %.thread321, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit

.thread321:                                       ; preds = %bb.v
  %i.dq = load ptr, ptr %i.ak, align 8, !tbaa !1933, !noalias !4773 ; 4 uses
  %i.dr = icmp eq ptr %i.dq, %i.dk
  br i1 %i.dr, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.thread321
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !3, !noalias !4773
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !26, !noalias !4773
  %.not8.i.i.i.i.i = icmp eq i8 %i.dv, 91
  br i1 %.not8.i.i.i.i.i, label %bb.x, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit

bb.x:                                             ; preds = %bb.w
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 4 ; 2 uses
  store ptr %i.dw, ptr %i.ak, align 8, !tbaa !1933, !noalias !4773
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread321
  %i.dx = phi ptr [ %i.dw, %bb.x ], [ %i.dq, %.thread321 ] ; 2 uses
  %i.dy = load i8, ptr %i.ap, align 8, !tbaa !854, !range !125, !noalias !4773, !noundef !126
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = load ptr, ptr %i.al, align 8, !tbaa !1915, !noalias !4773
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1937, !noalias !4773 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !1939, !noalias !4773 ; 3 uses
  %i.ef = icmp ne i32 %i.ee, 0
  call void @llvm.assume(i1 %i.ef), !noalias !4778
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eh = add i32 %i.ee, -1
  %i.ei = zext i32 %i.eh to i64
  %i.ej = load ptr, ptr %i.eg, align 8, !tbaa !852, !noalias !4773 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ei
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3, !noalias !4773
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !26, !noalias !4773
  %.not.i.i3.i.i.i = icmp eq i8 %i.eo, 93
  br i1 %.not.i.i3.i.i.i, label %bb.aa, label %.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.ep = zext i32 %i.ee to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3, !noalias !4773
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !26, !noalias !4773
  %i.ev = icmp eq i8 %i.eu, 93
  br i1 %i.ev, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ew = call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(49) %2) #31, !noalias !4773
  br i1 %i.ew, label %._crit_edge, label %.sink.split

._crit_edge:                                      ; preds = %bb.ab
  %.pre415.a = load ptr, ptr %i.ak, align 8, !tbaa !1983, !noalias !4773
  %.pre416 = load ptr, ptr %2, align 8, !tbaa !866, !noalias !4773
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %bb.aa, %bb.y
  %i.ex = phi ptr [ %.pre416, %._crit_edge ], [ %i.dl, %bb.aa ], [ %i.dl, %bb.y ]
  %i.ey = phi ptr [ %.pre415.a, %._crit_edge ], [ %i.dx, %bb.aa ], [ %i.dx, %bb.y ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.fa = icmp eq ptr %i.ey, %i.ez
  call void @llvm.assume(i1 %i.fa), !noalias !4773
  %i.fb = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !4773
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !26, !noalias !4773
  %.not = icmp eq i8 %i.fe, 93                    ; 2 uses
  br i1 %.not, label %bb.ad, label %.lr.ph399.split.preheader

bb.ad:                                            ; preds = %bb.ac
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  store ptr %i.ff, ptr %i.ak, align 8, !tbaa !1933, !noalias !4773
  br label %.lr.ph399.split.preheader

.sink.split:                                      ; preds = %bb.ab, %bb.z
  store ptr null, ptr %i.al, align 8, !tbaa !1915, !noalias !4773
  store i32 0, ptr %i.an, align 4, !tbaa !1947, !noalias !4773
  store i32 28, ptr %i.am, align 8, !tbaa !1948, !noalias !4773
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit

.lr.ph399.split.preheader:                        ; preds = %bb.ac, %bb.ad
  %storemerge = phi i32 [ 0, %bb.ad ], [ 2, %bb.ac ]
  store i32 %storemerge, ptr %i.an, align 4, !tbaa !1947, !noalias !4773
  %i.fg = load ptr, ptr %2, align 8               ; 5 uses
  %i.fh = load ptr, ptr %i.al, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  br i1 %.not, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit, label %.lr.ph479

.lr.ph479:                                        ; preds = %.lr.ph399.split.preheader
  %.promoted466 = load ptr, ptr %i.ak, align 8
  %.promoted = load i32, ptr %i.am, align 8
  %i.fj = trunc i64 %i.ct to i1
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph479, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i
  %i.fk = phi i32 [ %.promoted, %.lr.ph479 ], [ %i.hy, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ] ; 3 uses
  %i.fl = phi ptr [ %.promoted466, %.lr.ph479 ], [ %i.hx, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ] ; 6 uses
  %.not.i39.i.i.i = icmp eq i32 %i.fk, 0
  br i1 %.not.i39.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr null, ptr %i.al, align 8, !tbaa !1915, !noalias !4779
  store i32 0, ptr %i.an, align 4, !tbaa !1947, !noalias !4779
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.fm = icmp ugt ptr %i.fl, %i.dk
  call void @llvm.assume(i1 %i.fm), !noalias !4782
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !3, !noalias !4764
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fo ; 4 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !26, !noalias !4764
  switch i8 %i.fq, label %.critedge.thread [
    i8 116, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i
    i8 102, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i
  ]

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i: ; preds = %bb.ag, %bb.ag
  %.0.copyload.i10.i.i.i.i = load i32, ptr %i.fp, align 1, !noalias !4764 ; 2 uses
  %i.fr = xor i32 %.0.copyload.i10.i.i.i.i, 1936482662
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !26, !noalias !4764
  %i.fu = xor i8 %i.ft, 101
  %i.fv = zext i8 %i.fu to i32
  %i.fw = or i32 %i.fr, %i.fv
  %i.fx = icmp ne i32 %.0.copyload.i10.i.i.i.i, 1702195828 ; 3 uses
  %i.fy = icmp ne i32 %i.fw, 0
  %or.cond.i.i.i.i = select i1 %i.fx, i1 %i.fy, i1 false
  br i1 %or.cond.i.i.i.i, label %.critedge.thread, label %bb.ah

bb.ah:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i
  %i.fz = select i1 %i.fx, i64 5, i64 4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !26, !noalias !4764
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !100, !range !125, !noalias !4764, !noundef !126
  %.not387 = icmp eq i8 %i.ge, 0
  br i1 %.not387, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i, label %.critedge.thread

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i: ; preds = %bb.ah
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 3 uses
  store ptr %i.gf, ptr %i.ak, align 8, !tbaa !1933, !noalias !4764
  store i32 1, ptr %i.an, align 4, !tbaa !1947, !noalias !4764
  %i.gg = xor i1 %i.fx, %i.fj
  br i1 %i.gg, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit, label %.critedge

.critedge:                                        ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i
  %i.gh = icmp ugt ptr %i.gf, %i.dk
  call void @llvm.assume(i1 %i.gh)
  br label %.loopexit

.critedge.thread:                                 ; preds = %bb.ah, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i, %bb.ag
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 7 uses
  store ptr %i.gi, ptr %i.ak, align 8, !tbaa !1933, !noalias !4764
  %i.gj = load i32, ptr %i.fl, align 4, !tbaa !3, !noalias !4764
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !26, !noalias !4764
  switch i8 %i.gm, label %.loopexit.sink.split [
    i8 91, label %bb.ak
    i8 123, label %bb.ak
    i8 58, label %bb.ak
    i8 44, label %bb.ak
    i8 34, label %bb.ai
  ]

bb.ai:                                            ; preds = %.critedge.thread
  %i.gn = load i32, ptr %i.gi, align 4, !tbaa !3, !noalias !4764
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !26, !noalias !4764
  %i.gr = icmp eq i8 %i.gq, 58
  br i1 %i.gr, label %bb.aj, label %.loopexit.sink.split

bb.aj:                                            ; preds = %bb.ai
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  store ptr %i.gs, ptr %i.ak, align 8, !tbaa !1933, !noalias !4764
  br label %bb.ak

bb.ak:                                            ; preds = %.critedge.thread, %.critedge.thread, %.critedge.thread, %.critedge.thread, %bb.aj
  %i.gt = phi ptr [ %i.gi, %.critedge.thread ], [ %i.gi, %.critedge.thread ], [ %i.gi, %.critedge.thread ], [ %i.gi, %.critedge.thread ], [ %i.gs, %bb.aj ] ; 3 uses
  %i.gu = load ptr, ptr %i.fi, align 8, !tbaa !1937, !noalias !4764 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !1939, !noalias !4764
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gy = zext i32 %i.gw to i64
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !852, !noalias !4764
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gy ; 2 uses
  %i.hb = icmp ult ptr %i.gt, %i.ha
  br i1 %i.hb, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i

.lr.ph:                                           ; preds = %bb.ak, %bb.an
  %i.hc = phi i32 [ %i.hl, %bb.an ], [ 2, %bb.ak ] ; 4 uses
  %i.hd = phi ptr [ %i.he, %bb.an ], [ %i.gt, %bb.ak ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4 ; 5 uses
  store ptr %i.he, ptr %i.ak, align 8, !tbaa !1933, !noalias !4764
  %i.hf = load i32, ptr %i.hd, align 4, !tbaa !3, !noalias !4764
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !26, !noalias !4764
  switch i8 %i.hi, label %bb.an [
    i8 91, label %bb.al
    i8 123, label %bb.al
    i8 93, label %bb.am
    i8 125, label %bb.am
  ]

bb.al:                                            ; preds = %.lr.ph, %.lr.ph
  %i.hj = add nsw i32 %i.hc, 1                    ; 2 uses
  store i32 %i.hj, ptr %i.an, align 4, !tbaa !1947, !noalias !4764
  br label %bb.an

bb.am:                                            ; preds = %.lr.ph, %.lr.ph
  %i.hk = add nsw i32 %i.hc, -1                   ; 2 uses
  store i32 %i.hk, ptr %i.an, align 4, !tbaa !1947, !noalias !4764
  %.not8.i.i.i.i.i.i = icmp sgt i32 %i.hc, 2
  br i1 %.not8.i.i.i.i.i.i, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %.lr.ph, %bb.am, %bb.al
  %i.hl = phi i32 [ %i.hc, %.lr.ph ], [ %i.hk, %bb.am ], [ %i.hj, %bb.al ] ; 2 uses
  %i.hm = icmp ult ptr %i.he, %i.ha
  br i1 %i.hm, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit: ; preds = %bb.an
  %i.hn = icmp sgt i32 %i.hl, 0
  br label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit, %bb.ak
  %i.ho = phi ptr [ %i.gt, %bb.ak ], [ %i.he, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit ]
  %i.hp = phi i1 [ true, %bb.ak ], [ %i.hn, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit ]
  store i32 3, ptr %i.am, align 8, !tbaa !1948, !noalias !4764
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

.loopexit.sink.split:                             ; preds = %.critedge.thread, %bb.ai
  store i32 1, ptr %i.an, align 4, !tbaa !1947, !noalias !4764
  br label %.loopexit

.loopexit:                                        ; preds = %bb.am, %.critedge, %.loopexit.sink.split
  %i.hq = phi ptr [ %i.gi, %.loopexit.sink.split ], [ %i.gf, %.critedge ], [ %i.he, %bb.am ] ; 3 uses
  %i.hr = icmp ugt ptr %i.hq, %i.dk
  call void @llvm.assume(i1 %i.hr), !noalias !4764
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 4 ; 4 uses
  store ptr %i.hs, ptr %i.ak, align 8, !tbaa !1933, !noalias !4764
  %i.ht = load i32, ptr %i.hq, align 4, !tbaa !3, !noalias !4764
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !26, !noalias !4764
  switch i8 %i.hw, label %bb.aq [
    i8 93, label %bb.ao
    i8 44, label %bb.ap
  ]

bb.ao:                                            ; preds = %.loopexit
  store i32 0, ptr %i.an, align 4, !tbaa !1947, !noalias !4764
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

bb.ap:                                            ; preds = %.loopexit
  store i32 2, ptr %i.an, align 4, !tbaa !1947, !noalias !4764
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

bb.aq:                                            ; preds = %.loopexit
  store i32 3, ptr %i.am, align 8, !tbaa !1948, !noalias !4764
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i: ; preds = %bb.ao, %bb.ap, %bb.aq, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i
  %i.hx = phi ptr [ %i.hs, %bb.ao ], [ %i.hs, %bb.ap ], [ %i.hs, %bb.aq ], [ %i.ho, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i ]
  %i.hy = phi i32 [ %i.fk, %bb.ao ], [ %i.fk, %bb.ap ], [ 3, %bb.aq ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i ]
  %.not386 = phi i1 [ false, %bb.ao ], [ true, %bb.ap ], [ true, %bb.aq ], [ %i.hp, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i ]
  br i1 %.not386, label %bb.ae, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit

bb.ar:                                            ; preds = %bb.u, %bb.t
  %.pn.i.i.i = phi { ptr, i32 } [ %i.dj, %bb.u ], [ %i.di, %bb.t ]
  br i1 %i.cz, label %_ZN8simdjson13padded_stringD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZdaPv(ptr noundef nonnull %i.cy) #35, !noalias !4764
  br label %_ZN8simdjson13padded_stringD2Ev.exit

_ZN8simdjson13padded_stringD2Ev.exit:             ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !4764
  br label %.body

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i, %.lr.ph399.split.preheader, %bb.w, %.sink.split, %bb.v, %bb.af, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i, %bb.s
  %.4 = phi i1 [ false, %bb.v ], [ false, %bb.s ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i ], [ false, %.sink.split ], [ false, %bb.af ], [ false, %bb.w ], [ false, %.lr.ph399.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i ], [ false, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ]
  %.3.i.i.i = phi i1 [ false, %bb.v ], [ false, %bb.s ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i ], [ false, %.sink.split ], [ false, %bb.af ], [ false, %bb.w ], [ true, %.lr.ph399.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i ], [ true, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ]
  br i1 %i.cz, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cy) #35, !noalias !4764
  br label %bb.au

bb.au:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !4764
  store ptr null, ptr %6, align 8, !tbaa !815, !alias.scope !4785
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !4758
  %i.hz = load ptr, ptr %i.bb, align 8, !tbaa !4788, !nonnull !126, !align !247 ; 3 uses
  br i1 %.3.i.i.i, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !4789, !nonnull !126, !align !247
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !553
  %i.id = lshr i64 %indvars.iv, 3
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.id ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !26  ; 2 uses
  br i1 %.4, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ig = trunc i64 %indvars.iv to i8
  %i.ih = and i8 %i.ig, 7
  %i.ii = shl nuw i8 1, %i.ih
  %i.ij = or i8 %i.if, %i.ii
  br label %.noexc.i

bb.ax:                                            ; preds = %bb.av
  %i.ik = and i64 %indvars.iv, 7
  %i.il = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !26
  %i.in = and i8 %i.im, %i.if
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.ax, %bb.aw
  %.sink.i = phi i8 [ %i.in, %bb.ax ], [ %i.ij, %bb.aw ]
  store i8 %.sink.i, ptr %i.ie, align 1, !tbaa !26
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE7iterateIJNS1_12VectorReaderISA_EENSF_IbEEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

bb.ay:                                            ; preds = %bb.au
  %i.io = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !4791, !nonnull !126, !align !247
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !552 ; 2 uses
  %.not.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ir = load ptr, ptr %i.hz, align 8, !tbaa !4792, !nonnull !126, !align !247
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !4600 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 56
end_hunk_14
begin_hunk_15_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSE_bEEEE7iterateIJNS3_12VectorReaderISE_EENSJ_IbEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
bb.l:                                             ; preds = %bb.k
  %.not23.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not23.i.i.i, label %bb.o, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit

bb.m:                                             ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !4804
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4804
  br label %bb.al

bb.n:                                             ; preds = %bb.k
  %i.cr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.al

bb.o:                                             ; preds = %bb.l
  %i.cs = load ptr, ptr %i.t, align 8, !tbaa !853, !noalias !4810 ; 7 uses
  %i.ct = load ptr, ptr %3, align 8, !tbaa !866, !noalias !4804 ; 12 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !3, !noalias !4804 ; 3 uses
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !26, !noalias !4804
  %cond = icmp eq i8 %i.cx, 91
  br i1 %cond, label %.thread327, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit

.thread327:                                       ; preds = %bb.o
  %i.cy = load ptr, ptr %i.p, align 8, !tbaa !1933, !noalias !4813 ; 4 uses
  %i.cz = icmp eq ptr %i.cy, %i.cs
  br i1 %i.cz, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.thread327
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !3, !noalias !4813
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !26, !noalias !4813
  %.not8.i.i.i.i.i = icmp eq i8 %i.dd, 91
  br i1 %.not8.i.i.i.i.i, label %bb.q, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 4 ; 2 uses
  store ptr %i.de, ptr %i.p, align 8, !tbaa !1933, !noalias !4813
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread327
  %i.df = phi ptr [ %i.de, %bb.q ], [ %i.cy, %.thread327 ] ; 4 uses
  %i.dg = load i8, ptr %i.u, align 8, !tbaa !854, !range !125, !noalias !4813, !noundef !126
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.di = load ptr, ptr %i.q, align 8, !tbaa !1915, !noalias !4813
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1937, !noalias !4813 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !1939, !noalias !4813 ; 3 uses
  %i.dn = icmp ne i32 %i.dm, 0
  call void @llvm.assume(i1 %i.dn), !noalias !4818
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dp = add i32 %i.dm, -1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = load ptr, ptr %i.do, align 8, !tbaa !852, !noalias !4813 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dq
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3, !noalias !4813 ; 3 uses
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !26, !noalias !4813
  %.not.i.i3.i.i.i = icmp eq i8 %i.dw, 93
  br i1 %.not.i.i3.i.i.i, label %bb.t, label %.sink.split

bb.t:                                             ; preds = %bb.s
  %i.dx = zext i32 %i.dm to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3, !noalias !4813
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !26, !noalias !4813
  %i.ed = icmp ne i8 %i.ec, 93
  %.not5.i = icmp ugt i32 %i.cu, %i.dt
  %or.cond = or i1 %.not5.i, %i.ed
  br i1 %or.cond, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %bb.w
  %i.ee = phi i32 [ %i.el, %bb.w ], [ %i.cu, %bb.t ]
  %.07.i = phi i32 [ %.1.i, %bb.w ], [ 0, %bb.t ] ; 3 uses
  %.sroa.5.06.i = phi ptr [ %i.eh, %bb.w ], [ %i.cs, %bb.t ]
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.5.06.i, i64 4 ; 2 uses
  %i.ei = load i8, ptr %i.eg, align 1, !tbaa !26, !noalias !4813
  switch i8 %i.ei, label %bb.w [
    i8 91, label %bb.u
    i8 123, label %bb.u
    i8 93, label %bb.v
    i8 125, label %bb.v
  ]

bb.u:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.ej = add nsw i32 %.07.i, 1
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.ek = add nsw i32 %.07.i, -1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.lr.ph.i
  %.1.i = phi i32 [ %.07.i, %.lr.ph.i ], [ %i.ej, %bb.u ], [ %i.ek, %bb.v ] ; 2 uses
  %i.el = load i32, ptr %i.eh, align 4, !tbaa !3, !noalias !4813 ; 2 uses
  %.not.i32 = icmp ugt i32 %i.el, %i.dt
  br i1 %.not.i32, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, label %.lr.ph.i, !llvm.loop !2014

_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit: ; preds = %bb.w
  %i.em = icmp eq i32 %.1.i, 0
  br i1 %i.em, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %.sink.split

_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread: ; preds = %bb.t, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, %bb.r
  %i.en = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.eo = icmp eq ptr %i.df, %i.en
  call void @llvm.assume(i1 %i.eo), !noalias !4813
  %i.ep = load i32, ptr %i.df, align 4, !tbaa !3, !noalias !4813
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !26, !noalias !4813
  %.not489 = icmp eq i8 %i.es, 93                 ; 2 uses
  br i1 %.not489, label %bb.x, label %.lr.ph408.split.preheader

bb.x:                                             ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread
  %i.et = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  store ptr %i.et, ptr %i.p, align 8, !tbaa !1933, !noalias !4813
  br label %.lr.ph408.split.preheader

.sink.split:                                      ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, %bb.s
  store ptr null, ptr %i.q, align 8, !tbaa !1915, !noalias !4813
  store i32 0, ptr %i.s, align 4, !tbaa !1947, !noalias !4813
  store i32 28, ptr %i.r, align 8, !tbaa !1948, !noalias !4813
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit

.lr.ph408.split.preheader:                        ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, %bb.x
  %i.eu = phi ptr [ %i.et, %bb.x ], [ %i.df, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread ]
  %storemerge = phi i32 [ 0, %bb.x ], [ 2, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread ]
  store i32 %storemerge, ptr %i.s, align 4, !tbaa !1947, !noalias !4813
  %i.ev = load ptr, ptr %i.q, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  br i1 %.not489, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit, label %.lr.ph487

.lr.ph487:                                        ; preds = %.lr.ph408.split.preheader
  %.promoted = load i32, ptr %i.r, align 8
  %i.ex = trunc i64 %i.cb to i1
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph487, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i
  %i.ey = phi ptr [ %i.eu, %.lr.ph487 ], [ %i.hp, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ] ; 7 uses
  %i.ez = phi i32 [ %.promoted, %.lr.ph487 ], [ %i.ho, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ] ; 3 uses
  %.not.i39.i.i.i = icmp eq i32 %i.ez, 0
  br i1 %.not.i39.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %i.q, align 8, !tbaa !1915, !noalias !4819
  store i32 0, ptr %i.s, align 4, !tbaa !1947, !noalias !4819
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit

bb.aa:                                            ; preds = %bb.y
  %i.fa = icmp ugt ptr %i.ey, %i.cs
  call void @llvm.assume(i1 %i.fa), !noalias !4822
  %i.fb = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !4804
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !26, !noalias !4804
  switch i8 %i.fe, label %.critedge.thread [
    i8 116, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i
    i8 102, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i
  ]

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i: ; preds = %bb.aa, %bb.aa
  %i.ff = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !4804
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.fg ; 3 uses
  %.0.copyload.i10.i.i.i.i.pre = load i32, ptr %i.fh, align 1, !noalias !4804 ; 2 uses
  %i.fi = xor i32 %.0.copyload.i10.i.i.i.i.pre, 1936482662
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !26, !noalias !4804
  %i.fl = xor i8 %i.fk, 101
  %i.fm = zext i8 %i.fl to i32
  %i.fn = or i32 %i.fi, %i.fm
  %i.fo = icmp ne i32 %.0.copyload.i10.i.i.i.i.pre, 1702195828 ; 3 uses
  %i.fp = icmp ne i32 %i.fn, 0
  %or.cond.i.i.i.i = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %or.cond.i.i.i.i, label %.critedge.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i
  %i.fq = select i1 %i.fo, i64 5, i64 4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !26, !noalias !4804
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !100, !range !125, !noalias !4804, !noundef !126
  %.not395 = icmp eq i8 %i.fv, 0
  br i1 %.not395, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i, label %.critedge.thread

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i: ; preds = %bb.ab
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 3 uses
  store ptr %i.fw, ptr %i.p, align 8, !tbaa !1933, !noalias !4804
  store i32 1, ptr %i.s, align 4, !tbaa !1947, !noalias !4804
  %i.fx = xor i1 %i.fo, %i.ex
  br i1 %i.fx, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit, label %.critedge

.critedge:                                        ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i
  %i.fy = icmp ugt ptr %i.fw, %i.cs
  call void @llvm.assume(i1 %i.fy)
  br label %.loopexit

.critedge.thread:                                 ; preds = %bb.ab, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i, %bb.aa
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 7 uses
  store ptr %i.fz, ptr %i.p, align 8, !tbaa !1933, !noalias !4804
  %i.ga = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !4804
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !26, !noalias !4804
  switch i8 %i.gd, label %.loopexit.sink.split [
    i8 91, label %bb.ae
    i8 123, label %bb.ae
    i8 58, label %bb.ae
    i8 44, label %bb.ae
    i8 34, label %bb.ac
  ]

bb.ac:                                            ; preds = %.critedge.thread
  %i.ge = load i32, ptr %i.fz, align 4, !tbaa !3, !noalias !4804
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !26, !noalias !4804
  %i.gi = icmp eq i8 %i.gh, 58
  br i1 %i.gi, label %bb.ad, label %.loopexit.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  store ptr %i.gj, ptr %i.p, align 8, !tbaa !1933, !noalias !4804
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge.thread, %.critedge.thread, %.critedge.thread, %.critedge.thread, %bb.ad
  %i.gk = phi ptr [ %i.fz, %.critedge.thread ], [ %i.fz, %.critedge.thread ], [ %i.fz, %.critedge.thread ], [ %i.fz, %.critedge.thread ], [ %i.gj, %bb.ad ] ; 3 uses
  %i.gl = load ptr, ptr %i.ew, align 8, !tbaa !1937, !noalias !4804 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !1939, !noalias !4804
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gp = zext i32 %i.gn to i64
  %i.gq = load ptr, ptr %i.go, align 8, !tbaa !852, !noalias !4804
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gp ; 2 uses
  %i.gs = icmp ult ptr %i.gk, %i.gr
  br i1 %i.gs, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i

.lr.ph:                                           ; preds = %bb.ae, %bb.ah
  %i.gt = phi i32 [ %i.hc, %bb.ah ], [ 2, %bb.ae ] ; 4 uses
  %i.gu = phi ptr [ %i.gv, %bb.ah ], [ %i.gk, %bb.ae ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4 ; 5 uses
  store ptr %i.gv, ptr %i.p, align 8, !tbaa !1933, !noalias !4804
  %i.gw = load i32, ptr %i.gu, align 4, !tbaa !3, !noalias !4804
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !26, !noalias !4804
  switch i8 %i.gz, label %bb.ah [
    i8 91, label %bb.af
    i8 123, label %bb.af
    i8 93, label %bb.ag
    i8 125, label %bb.ag
  ]

bb.af:                                            ; preds = %.lr.ph, %.lr.ph
  %i.ha = add nsw i32 %i.gt, 1                    ; 2 uses
  store i32 %i.ha, ptr %i.s, align 4, !tbaa !1947, !noalias !4804
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph, %.lr.ph
  %i.hb = add nsw i32 %i.gt, -1                   ; 2 uses
  store i32 %i.hb, ptr %i.s, align 4, !tbaa !1947, !noalias !4804
  %.not8.i.i.i.i.i.i = icmp sgt i32 %i.gt, 2
  br i1 %.not8.i.i.i.i.i.i, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %.lr.ph, %bb.ag, %bb.af
  %i.hc = phi i32 [ %i.gt, %.lr.ph ], [ %i.hb, %bb.ag ], [ %i.ha, %bb.af ] ; 2 uses
  %i.hd = icmp ult ptr %i.gv, %i.gr
  br i1 %i.hd, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit: ; preds = %bb.ah
  %i.he = icmp sgt i32 %i.hc, 0
  br label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit, %bb.ae
  %i.hf = phi ptr [ %i.gk, %bb.ae ], [ %i.gv, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit ]
  %i.hg = phi i1 [ true, %bb.ae ], [ %i.he, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit ]
  store i32 3, ptr %i.r, align 8, !tbaa !1948, !noalias !4804
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

.loopexit.sink.split:                             ; preds = %.critedge.thread, %bb.ac
  store i32 1, ptr %i.s, align 4, !tbaa !1947, !noalias !4804
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ag, %.critedge, %.loopexit.sink.split
  %i.hh = phi ptr [ %i.fz, %.loopexit.sink.split ], [ %i.fw, %.critedge ], [ %i.gv, %bb.ag ] ; 3 uses
  %i.hi = icmp ugt ptr %i.hh, %i.cs
  call void @llvm.assume(i1 %i.hi), !noalias !4804
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 4 ; 4 uses
  store ptr %i.hj, ptr %i.p, align 8, !tbaa !1933, !noalias !4804
  %i.hk = load i32, ptr %i.hh, align 4, !tbaa !3, !noalias !4804
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !26, !noalias !4804
  switch i8 %i.hn, label %bb.ak [
    i8 93, label %bb.ai
    i8 44, label %bb.aj
  ]

bb.ai:                                            ; preds = %.loopexit
  store i32 0, ptr %i.s, align 4, !tbaa !1947, !noalias !4804
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

bb.aj:                                            ; preds = %.loopexit
  store i32 2, ptr %i.s, align 4, !tbaa !1947, !noalias !4804
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

bb.ak:                                            ; preds = %.loopexit
  store i32 3, ptr %i.r, align 8, !tbaa !1948, !noalias !4804
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i: ; preds = %bb.ai, %bb.aj, %bb.ak, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i
  %i.ho = phi i32 [ %i.ez, %bb.ai ], [ %i.ez, %bb.aj ], [ 3, %bb.ak ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i ]
  %i.hp = phi ptr [ %i.hj, %bb.ai ], [ %i.hj, %bb.aj ], [ %i.hj, %bb.ak ], [ %i.hf, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i ]
  %.not394 = phi i1 [ false, %bb.ai ], [ true, %bb.aj ], [ true, %bb.ak ], [ %i.hg, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i ]
  br i1 %.not394, label %bb.y, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit

bb.al:                                            ; preds = %bb.n, %bb.m
  %.pn.i.i.i = phi { ptr, i32 } [ %i.cr, %bb.n ], [ %i.cq, %bb.m ]
  br i1 %i.ch, label %_ZN8simdjson13padded_stringD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %i.cg) #35, !noalias !4804
  br label %_ZN8simdjson13padded_stringD2Ev.exit

_ZN8simdjson13padded_stringD2Ev.exit:             ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4804
  br label %.body

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i, %.lr.ph408.split.preheader, %bb.p, %.sink.split, %bb.o, %bb.z, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i, %bb.l
  %.4 = phi i1 [ false, %bb.o ], [ false, %bb.l ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i ], [ false, %.sink.split ], [ false, %bb.z ], [ false, %bb.p ], [ false, %.lr.ph408.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i ], [ false, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ]
  %.3.i.i.i = phi i1 [ false, %bb.o ], [ false, %bb.l ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i ], [ false, %.sink.split ], [ false, %bb.z ], [ false, %bb.p ], [ true, %.lr.ph408.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i ], [ true, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ]
  br i1 %i.ch, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cg) #35, !noalias !4804
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4804
  store ptr null, ptr %7, align 8, !tbaa !815, !alias.scope !4825
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !4798
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !4788, !nonnull !126, !align !247 ; 3 uses
  br i1 %.3.i.i.i, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !4789, !nonnull !126, !align !247
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !553
  %i.hv = lshr i64 %i.ai, 3
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hv ; 2 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !26  ; 2 uses
  br i1 %.4, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hy = trunc nuw nsw i64 %i.ad to i8
  %i.hz = and i8 %i.hy, 7
  %i.ia = shl nuw i8 1, %i.hz
  %i.ib = or i8 %i.hx, %i.ia
  br label %.noexc.i

bb.ar:                                            ; preds = %bb.ap
  %i.ic = and i64 %i.ai, 7
  %i.id = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !26
  %i.if = and i8 %i.ie, %i.hx
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.ar, %bb.aq
  %.sink.i = phi i8 [ %i.if, %bb.ar ], [ %i.ib, %bb.aq ]
  store i8 %.sink.i, ptr %i.hw, align 1, !tbaa !26
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE7iterateIJNS1_12VectorReaderISA_EENSF_IbEEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

bb.as:                                            ; preds = %bb.ao
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !4791, !nonnull !126, !align !247
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !552 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ij = load ptr, ptr %i.hr, align 8, !tbaa !4792, !nonnull !126, !align !247
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !4600 ; 3 uses
end_hunk_15
begin_hunk_16_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSE_bEEEE7iterateIJNS3_12VectorReaderISE_EENSJ_IbEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4838
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4838
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, i64 16, i1 false), !tbaa.struct !851, !noalias !4838
  %i.dc = load <2 x ptr>, ptr %i.at, align 8, !tbaa !107, !noalias !4838
  store <2 x ptr> %i.dc, ptr %i.ak, align 8, !tbaa !107, !noalias !4838
  %i.dd = load <2 x i32>, ptr %i.au, align 8, !tbaa !26, !noalias !4838
  store <2 x i32> %i.dd, ptr %i.al, align 8, !tbaa !26, !noalias !4838
  %i.de = load ptr, ptr %i.av, align 8, !tbaa !853, !noalias !4838
  store ptr %i.de, ptr %i.an, align 8, !tbaa !853, !noalias !4838
  %i.df = load i8, ptr %i.aw, align 8, !tbaa !854, !range !125, !noalias !4838, !noundef !126
  store i8 %i.df, ptr %i.ao, align 8, !tbaa !854, !noalias !4838
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4838
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4838
  %i.dg = invoke noundef i32 @_ZN8facebook5velox9functions16jsonParsingErrorERN8simdjson8fallback8ondemand8documentE(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.m unwind label %bb.o, !noalias !4838

bb.m:                                             ; preds = %bb.l
  %.not23.i.i.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not23.i.i.i.i, label %bb.p, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit.i

bb.n:                                             ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !4838
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4838
  br label %bb.ap

bb.o:                                             ; preds = %bb.l
  %i.di = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ap

bb.p:                                             ; preds = %bb.m
  %i.dj = load ptr, ptr %i.an, align 8, !tbaa !853, !noalias !4844 ; 6 uses
  %i.dk = load ptr, ptr %2, align 8, !tbaa !866, !noalias !4838 ; 6 uses
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !3, !noalias !4838
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !26, !noalias !4838
  %cond = icmp eq i8 %i.do, 91
  br i1 %cond, label %.thread714, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit.i

.thread714:                                       ; preds = %bb.p
  %i.dp = load ptr, ptr %i.aj, align 8, !tbaa !1933, !noalias !4847 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, %i.dj
  br i1 %i.dq, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.thread714
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !3, !noalias !4847
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !26, !noalias !4847
  %.not8.i.i.i.i.i.i38 = icmp eq i8 %i.du, 91
  br i1 %.not8.i.i.i.i.i.i38, label %bb.r, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  store ptr %i.dv, ptr %i.aj, align 8, !tbaa !1933, !noalias !4847
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread714
  %i.dw = phi ptr [ %i.dv, %bb.r ], [ %i.dp, %.thread714 ] ; 2 uses
  %i.dx = load i8, ptr %i.ao, align 8, !tbaa !854, !range !125, !noalias !4847, !noundef !126
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dz = load ptr, ptr %i.ak, align 8, !tbaa !1915, !noalias !4847
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1937, !noalias !4847 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !1939, !noalias !4847 ; 3 uses
  %i.ee = icmp ne i32 %i.ed, 0
  call void @llvm.assume(i1 %i.ee), !noalias !4852
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.eg = add i32 %i.ed, -1
  %i.eh = zext i32 %i.eg to i64
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !852, !noalias !4847 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.eh
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !4847
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !26, !noalias !4847
  %.not.i.i3.i.i.i.i = icmp eq i8 %i.en, 93
  br i1 %.not.i.i3.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %i.ak, align 8, !tbaa !1915, !noalias !4847
  store i32 0, ptr %i.am, align 4, !tbaa !1947, !noalias !4847
  store i32 28, ptr %i.al, align 8, !tbaa !1948, !noalias !4847
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit.i

bb.v:                                             ; preds = %bb.t
  %i.eo = zext i32 %i.ed to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3, !noalias !4847
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !26, !noalias !4847
  %i.eu = icmp eq i8 %i.et, 93
  br i1 %i.eu, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ev = call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(49) %2) #31, !noalias !4847
  br i1 %i.ev, label %._crit_edge, label %bb.x

._crit_edge:                                      ; preds = %bb.w
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !1983, !noalias !4847
  %.pre924 = load ptr, ptr %2, align 8, !tbaa !866, !noalias !4847
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %i.ak, align 8, !tbaa !1915, !noalias !4847
  store i32 0, ptr %i.am, align 4, !tbaa !1947, !noalias !4847
  store i32 28, ptr %i.al, align 8, !tbaa !1948, !noalias !4847
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit.i

bb.y:                                             ; preds = %._crit_edge, %bb.v, %bb.s
  %i.ew = phi ptr [ %.pre924, %._crit_edge ], [ %i.dk, %bb.v ], [ %i.dk, %bb.s ]
  %i.ex = phi ptr [ %.pre, %._crit_edge ], [ %i.dw, %bb.v ], [ %i.dw, %bb.s ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.ez = icmp eq ptr %i.ex, %i.ey
  call void @llvm.assume(i1 %i.ez), !noalias !4847
  %i.fa = load i32, ptr %i.ex, align 4, !tbaa !3, !noalias !4847
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !26, !noalias !4847
  %.not1067 = icmp eq i8 %i.fd, 93                ; 2 uses
  br i1 %.not1067, label %bb.z, label %.lr.ph897.split.preheader

bb.z:                                             ; preds = %bb.y
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store ptr %i.fe, ptr %i.aj, align 8, !tbaa !1933, !noalias !4847
  br label %.lr.ph897.split.preheader

.lr.ph897.split.preheader:                        ; preds = %bb.y, %bb.z
  %storemerge856 = phi i32 [ 0, %bb.z ], [ 2, %bb.y ]
  store i32 %storemerge856, ptr %i.am, align 4, !tbaa !1947, !noalias !4847
  %i.ff = load ptr, ptr %2, align 8               ; 5 uses
  %i.fg = load ptr, ptr %i.ak, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  br i1 %.not1067, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit.i, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %.lr.ph897.split.preheader
  %.promoted1043 = load ptr, ptr %i.aj, align 8
  %.promoted = load i32, ptr %i.al, align 8
  %i.fi = trunc i64 %i.cs to i1
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph1061, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i.i
  %i.fj = phi i32 [ %.promoted, %.lr.ph1061 ], [ %i.hx, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i.i ] ; 3 uses
  %i.fk = phi ptr [ %.promoted1043, %.lr.ph1061 ], [ %i.hw, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i.i ] ; 6 uses
  %.not.i39.i.i.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i39.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr null, ptr %i.ak, align 8, !tbaa !1915, !noalias !4853
  store i32 0, ptr %i.am, align 4, !tbaa !1947, !noalias !4853
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.fl = icmp ugt ptr %i.fk, %i.dj
  call void @llvm.assume(i1 %i.fl), !noalias !4856
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !3, !noalias !4838
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fn ; 4 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !26, !noalias !4838
  switch i8 %i.fp, label %.critedge.thread [
    i8 116, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i.i
    i8 102, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i.i
  ]

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i.i: ; preds = %bb.ac, %bb.ac
  %.0.copyload.i10.i.i.i.i.i = load i32, ptr %i.fo, align 1, !noalias !4838 ; 2 uses
  %i.fq = xor i32 %.0.copyload.i10.i.i.i.i.i, 1936482662
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !26, !noalias !4838
  %i.ft = xor i8 %i.fs, 101
  %i.fu = zext i8 %i.ft to i32
  %i.fv = or i32 %i.fq, %i.fu
  %i.fw = icmp ne i32 %.0.copyload.i10.i.i.i.i.i, 1702195828 ; 3 uses
  %i.fx = icmp ne i32 %i.fv, 0
  %or.cond.i.i.i.i.i37 = select i1 %i.fw, i1 %i.fx, i1 false
  br i1 %or.cond.i.i.i.i.i37, label %.critedge.thread, label %bb.ad

bb.ad:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i.i
  %i.fy = select i1 %i.fw, i64 5, i64 4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !26, !noalias !4838
  %i.gb = zext i8 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !100, !range !125, !noalias !4838, !noundef !126
  %.not860 = icmp eq i8 %i.gd, 0
  br i1 %.not860, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i.i, label %.critedge.thread

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i.i: ; preds = %bb.ad
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 3 uses
  store ptr %i.ge, ptr %i.aj, align 8, !tbaa !1933, !noalias !4838
  store i32 1, ptr %i.am, align 4, !tbaa !1947, !noalias !4838
  %i.gf = xor i1 %i.fw, %i.fi
  br i1 %i.gf, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit.i, label %.critedge

.critedge:                                        ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i.i
  %i.gg = icmp ugt ptr %i.ge, %i.dj
  call void @llvm.assume(i1 %i.gg)
  br label %.loopexit

.critedge.thread:                                 ; preds = %bb.ad, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i.i, %bb.ac
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 8 uses
  store ptr %i.gh, ptr %i.aj, align 8, !tbaa !1933, !noalias !4838
  %i.gi = load i32, ptr %i.fk, align 4, !tbaa !3, !noalias !4838
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !26, !noalias !4838
  switch i8 %i.gl, label %bb.ah [
    i8 91, label %bb.ai
    i8 123, label %bb.ai
    i8 58, label %bb.ai
    i8 44, label %bb.ai
    i8 93, label %bb.ae
    i8 125, label %bb.ae
    i8 34, label %bb.af
  ]

bb.ae:                                            ; preds = %.critedge.thread, %.critedge.thread
  store i32 1, ptr %i.am, align 4, !tbaa !1947, !noalias !4838
  br label %.loopexit

bb.af:                                            ; preds = %.critedge.thread
  %i.gm = load i32, ptr %i.gh, align 4, !tbaa !3, !noalias !4838
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !26, !noalias !4838
  %i.gq = icmp eq i8 %i.gp, 58
  br i1 %i.gq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  store ptr %i.gr, ptr %i.aj, align 8, !tbaa !1933, !noalias !4838
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %.critedge.thread
  store i32 1, ptr %i.am, align 4, !tbaa !1947, !noalias !4838
  br label %.loopexit

bb.ai:                                            ; preds = %.critedge.thread, %.critedge.thread, %.critedge.thread, %.critedge.thread, %bb.ag
  %i.gs = phi ptr [ %i.gh, %.critedge.thread ], [ %i.gh, %.critedge.thread ], [ %i.gh, %.critedge.thread ], [ %i.gh, %.critedge.thread ], [ %i.gr, %bb.ag ] ; 3 uses
  %i.gt = load ptr, ptr %i.fh, align 8, !tbaa !1937, !noalias !4838 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !1939, !noalias !4838
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gx = zext i32 %i.gv to i64
  %i.gy = load ptr, ptr %i.gw, align 8, !tbaa !852, !noalias !4838
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.gx ; 2 uses
  %i.ha = icmp ult ptr %i.gs, %i.gz
  br i1 %i.ha, label %.lr.ph896, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.i

.lr.ph896:                                        ; preds = %bb.ai, %bb.al
  %i.hb = phi i32 [ %i.hk, %bb.al ], [ 2, %bb.ai ] ; 4 uses
  %i.hc = phi ptr [ %i.hd, %bb.al ], [ %i.gs, %bb.ai ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4 ; 5 uses
  store ptr %i.hd, ptr %i.aj, align 8, !tbaa !1933, !noalias !4838
  %i.he = load i32, ptr %i.hc, align 4, !tbaa !3, !noalias !4838
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !26, !noalias !4838
  switch i8 %i.hh, label %bb.al [
    i8 91, label %bb.aj
    i8 123, label %bb.aj
    i8 93, label %bb.ak
    i8 125, label %bb.ak
  ]

bb.aj:                                            ; preds = %.lr.ph896, %.lr.ph896
  %i.hi = add nsw i32 %i.hb, 1                    ; 2 uses
  store i32 %i.hi, ptr %i.am, align 4, !tbaa !1947, !noalias !4838
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph896, %.lr.ph896
  %i.hj = add nsw i32 %i.hb, -1                   ; 2 uses
  store i32 %i.hj, ptr %i.am, align 4, !tbaa !1947, !noalias !4838
  %.not8.i.i.i.i.i.i.i = icmp sgt i32 %i.hb, 2
  br i1 %.not8.i.i.i.i.i.i.i, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %.lr.ph896, %bb.ak, %bb.aj
  %i.hk = phi i32 [ %i.hb, %.lr.ph896 ], [ %i.hj, %bb.ak ], [ %i.hi, %bb.aj ] ; 2 uses
  %i.hl = icmp ult ptr %i.hd, %i.gz
  br i1 %i.hl, label %.lr.ph896, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.i.loopexit, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.i.loopexit: ; preds = %bb.al
  %i.hm = icmp sgt i32 %i.hk, 0
  br label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.i

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.i.loopexit, %bb.ai
  %i.hn = phi ptr [ %i.gs, %bb.ai ], [ %i.hd, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.i.loopexit ]
  %i.ho = phi i1 [ true, %bb.ai ], [ %i.hm, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.i.loopexit ]
  store i32 3, ptr %i.al, align 8, !tbaa !1948, !noalias !4838
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i.i

.loopexit:                                        ; preds = %bb.ak, %bb.ah, %bb.ae, %.critedge
  %i.hp = phi ptr [ %i.gh, %bb.ah ], [ %i.ge, %.critedge ], [ %i.gh, %bb.ae ], [ %i.hd, %bb.ak ] ; 3 uses
  %i.hq = icmp ugt ptr %i.hp, %i.dj
  call void @llvm.assume(i1 %i.hq), !noalias !4838
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 4 ; 4 uses
  store ptr %i.hr, ptr %i.aj, align 8, !tbaa !1933, !noalias !4838
  %i.hs = load i32, ptr %i.hp, align 4, !tbaa !3, !noalias !4838
  %i.ht = zext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !26, !noalias !4838
  switch i8 %i.hv, label %bb.ao [
    i8 93, label %bb.am
    i8 44, label %bb.an
  ]

bb.am:                                            ; preds = %.loopexit
  store i32 0, ptr %i.am, align 4, !tbaa !1947, !noalias !4838
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i.i

bb.an:                                            ; preds = %.loopexit
  store i32 2, ptr %i.am, align 4, !tbaa !1947, !noalias !4838
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i.i

bb.ao:                                            ; preds = %.loopexit
  store i32 3, ptr %i.al, align 8, !tbaa !1948, !noalias !4838
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i.i: ; preds = %bb.am, %bb.an, %bb.ao, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.i
  %i.hw = phi ptr [ %i.hr, %bb.am ], [ %i.hr, %bb.an ], [ %i.hr, %bb.ao ], [ %i.hn, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.i ]
  %i.hx = phi i32 [ %i.fj, %bb.am ], [ %i.fj, %bb.an ], [ 3, %bb.ao ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.i ]
  %.not859 = phi i1 [ false, %bb.am ], [ true, %bb.an ], [ true, %bb.ao ], [ %i.ho, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.i ]
  br i1 %.not859, label %bb.aa, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit.i

bb.ap:                                            ; preds = %bb.o, %bb.n
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.di, %bb.o ], [ %i.dh, %bb.n ]
  br i1 %i.cy, label %_ZN8simdjson13padded_stringD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZdaPv(ptr noundef nonnull %i.cx) #35, !noalias !4838
  br label %_ZN8simdjson13padded_stringD2Ev.exit

_ZN8simdjson13padded_stringD2Ev.exit:             ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !4838
  br label %.body41

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit.i: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i.i, %.lr.ph897.split.preheader, %bb.x, %bb.u, %bb.q, %bb.p, %bb.ab, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i.i, %bb.m
  %.0703 = phi i1 [ false, %bb.p ], [ false, %bb.m ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i.i ], [ false, %bb.x ], [ false, %bb.ab ], [ false, %bb.q ], [ false, %bb.u ], [ false, %.lr.ph897.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i.i ], [ false, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i.i ]
  %.3.i.i.i.i = phi i1 [ false, %bb.p ], [ false, %bb.m ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i.i ], [ false, %bb.x ], [ false, %bb.ab ], [ false, %bb.q ], [ false, %bb.u ], [ true, %.lr.ph897.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i.i ], [ true, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i.i ]
  br i1 %i.cy, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.cx) #35, !noalias !4838
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !4838
  store ptr null, ptr %6, align 8, !tbaa !815, !alias.scope !4859
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !4832
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !4788, !nonnull !126, !align !247 ; 3 uses
  br i1 %.3.i.i.i.i, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !4789, !nonnull !126, !align !247
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !553
  %i.id = lshr i64 %.0903, 3
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.id ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !26  ; 2 uses
  br i1 %.0703, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ig = trunc i64 %.0903 to i8
  %i.ih = and i8 %i.ig, 7
  %i.ii = shl nuw i8 1, %i.ih
  %i.ij = or i8 %i.if, %i.ii
  br label %.noexc.i30

bb.av:                                            ; preds = %bb.at
  %i.ik = and i64 %.0903, 7
  %i.il = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !26
  %i.in = and i8 %i.im, %i.if
  br label %.noexc.i30

.noexc.i30:                                       ; preds = %bb.av, %bb.au
  %.sink.i = phi i8 [ %i.in, %bb.av ], [ %i.ij, %bb.au ]
  store i8 %.sink.i, ptr %i.ie, align 1, !tbaa !26
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE7iterateIJNS1_12VectorReaderISA_EENSF_IbEEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit

bb.aw:                                            ; preds = %bb.as
  %i.io = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !4791, !nonnull !126, !align !247
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !552 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.iq, null
end_hunk_16
begin_hunk_17_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSE_bEEEE7iterateIJNS3_12VectorReaderISE_EENSJ_IbEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
bb.cb:                                            ; preds = %bb.ca
  %.not23.i.i.i = icmp eq i32 %i.ne, 0
  br i1 %.not23.i.i.i, label %bb.ce, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit

bb.cc:                                            ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit105
  %i.nf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31, !noalias !4869
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31, !noalias !4869
  br label %bb.db

bb.cd:                                            ; preds = %bb.ca
  %i.ng = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.db

bb.ce:                                            ; preds = %bb.cb
  %i.nh = load ptr, ptr %i.s, align 8, !tbaa !853, !noalias !4875 ; 7 uses
  %i.ni = load ptr, ptr %9, align 8, !tbaa !866, !noalias !4869 ; 12 uses
  %i.nj = load i32, ptr %i.nh, align 4, !tbaa !3, !noalias !4869 ; 3 uses
  %i.nk = zext i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !26, !noalias !4869
  %cond873 = icmp eq i8 %i.nm, 91
  br i1 %cond873, label %.thread783, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit

.thread783:                                       ; preds = %bb.ce
  %i.nn = load ptr, ptr %i.o, align 8, !tbaa !1933, !noalias !4878 ; 4 uses
  %i.no = icmp eq ptr %i.nn, %i.nh
  br i1 %i.no, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %.thread783
  %i.np = load i32, ptr %i.nn, align 4, !tbaa !3, !noalias !4878
  %i.nq = zext i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !26, !noalias !4878
  %.not8.i.i.i.i.i = icmp eq i8 %i.ns, 91
  br i1 %.not8.i.i.i.i.i, label %bb.cg, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit

bb.cg:                                            ; preds = %bb.cf
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nn, i64 4 ; 2 uses
  store ptr %i.nt, ptr %i.o, align 8, !tbaa !1933, !noalias !4878
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.thread783
  %i.nu = phi ptr [ %i.nt, %bb.cg ], [ %i.nn, %.thread783 ] ; 4 uses
  %i.nv = load i8, ptr %i.t, align 8, !tbaa !854, !range !125, !noalias !4878, !noundef !126
  %i.nw = trunc nuw i8 %i.nv to i1
  br i1 %i.nw, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nx = load ptr, ptr %i.p, align 8, !tbaa !1915, !noalias !4878
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !1937, !noalias !4878 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !1939, !noalias !4878 ; 3 uses
  %i.oc = icmp ne i32 %i.ob, 0
  call void @llvm.assume(i1 %i.oc), !noalias !4883
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.oe = add i32 %i.ob, -1
  %i.of = zext i32 %i.oe to i64
  %i.og = load ptr, ptr %i.od, align 8, !tbaa !852, !noalias !4878 ; 2 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.of
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !3, !noalias !4878 ; 3 uses
  %i.oj = zext i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !26, !noalias !4878
  %.not.i.i3.i.i.i = icmp eq i8 %i.ol, 93
  br i1 %.not.i.i3.i.i.i, label %bb.cj, label %.sink.split

bb.cj:                                            ; preds = %bb.ci
  %i.om = zext i32 %i.ob to i64
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.om
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !3, !noalias !4878
  %i.op = zext i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !26, !noalias !4878
  %i.os = icmp ne i8 %i.or, 93
  %.not5.i = icmp ugt i32 %i.nj, %i.oi
  %or.cond = or i1 %.not5.i, %i.os
  br i1 %or.cond, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cj, %bb.cm
  %i.ot = phi i32 [ %i.pa, %bb.cm ], [ %i.nj, %bb.cj ]
  %.07.i = phi i32 [ %.1.i, %bb.cm ], [ 0, %bb.cj ] ; 3 uses
  %.sroa.5.06.i = phi ptr [ %i.ow, %bb.cm ], [ %i.nh, %bb.cj ]
  %i.ou = zext i32 %i.ot to i64
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.5.06.i, i64 4 ; 2 uses
  %i.ox = load i8, ptr %i.ov, align 1, !tbaa !26, !noalias !4878
  switch i8 %i.ox, label %bb.cm [
    i8 91, label %bb.ck
    i8 123, label %bb.ck
    i8 93, label %bb.cl
    i8 125, label %bb.cl
  ]

bb.ck:                                            ; preds = %.lr.ph.i, %.lr.ph.i
  %i.oy = add nsw i32 %.07.i, 1
  br label %bb.cm

bb.cl:                                            ; preds = %.lr.ph.i, %.lr.ph.i
  %i.oz = add nsw i32 %.07.i, -1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %.lr.ph.i
  %.1.i = phi i32 [ %.07.i, %.lr.ph.i ], [ %i.oy, %bb.ck ], [ %i.oz, %bb.cl ] ; 2 uses
  %i.pa = load i32, ptr %i.ow, align 4, !tbaa !3, !noalias !4878 ; 2 uses
  %.not.i107 = icmp ugt i32 %i.pa, %i.oi
  br i1 %.not.i107, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, label %.lr.ph.i, !llvm.loop !2014

_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit: ; preds = %bb.cm
  %i.pb = icmp eq i32 %.1.i, 0
  br i1 %i.pb, label %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, label %.sink.split

_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread: ; preds = %bb.cj, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, %bb.ch
  %i.pc = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.pd = icmp eq ptr %i.nu, %i.pc
  call void @llvm.assume(i1 %i.pd), !noalias !4878
  %i.pe = load i32, ptr %i.nu, align 4, !tbaa !3, !noalias !4878
  %i.pf = zext i32 %i.pe to i64
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !26, !noalias !4878
  %.not1068 = icmp eq i8 %i.ph, 93                ; 2 uses
  br i1 %.not1068, label %bb.cn, label %.lr.ph890.split.preheader

bb.cn:                                            ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread
  %i.pi = getelementptr inbounds nuw i8, ptr %i.nu, i64 4 ; 2 uses
  store ptr %i.pi, ptr %i.o, align 8, !tbaa !1933, !noalias !4878
  br label %.lr.ph890.split.preheader

.sink.split:                                      ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit, %bb.ci
  store ptr null, ptr %i.p, align 8, !tbaa !1915, !noalias !4878
  store i32 0, ptr %i.r, align 4, !tbaa !1947, !noalias !4878
  store i32 28, ptr %i.q, align 8, !tbaa !1948, !noalias !4878
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit

.lr.ph890.split.preheader:                        ; preds = %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread, %bb.cn
  %i.pj = phi ptr [ %i.pi, %bb.cn ], [ %i.nu, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread ]
  %storemerge = phi i32 [ 0, %bb.cn ], [ 2, %_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv.exit.thread ]
  store i32 %storemerge, ptr %i.r, align 4, !tbaa !1947, !noalias !4878
  %i.pk = load ptr, ptr %i.p, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  br i1 %.not1068, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit, label %.lr.ph1064

.lr.ph1064:                                       ; preds = %.lr.ph890.split.preheader
  %.promoted1046 = load i32, ptr %i.q, align 8
  %i.pm = trunc i64 %i.mq to i1
  br label %bb.co

bb.co:                                            ; preds = %.lr.ph1064, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i
  %i.pn = phi ptr [ %i.pj, %.lr.ph1064 ], [ %i.se, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ] ; 7 uses
  %i.po = phi i32 [ %.promoted1046, %.lr.ph1064 ], [ %i.sd, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ] ; 3 uses
  %.not.i39.i.i.i = icmp eq i32 %i.po, 0
  br i1 %.not.i39.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store ptr null, ptr %i.p, align 8, !tbaa !1915, !noalias !4884
  store i32 0, ptr %i.r, align 4, !tbaa !1947, !noalias !4884
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit

bb.cq:                                            ; preds = %bb.co
  %i.pp = icmp ugt ptr %i.pn, %i.nh
  call void @llvm.assume(i1 %i.pp), !noalias !4887
  %i.pq = load i32, ptr %i.pn, align 4, !tbaa !3, !noalias !4869
  %i.pr = zext i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !26, !noalias !4869
  switch i8 %i.pt, label %.critedge871.thread [
    i8 116, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i
    i8 102, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i
  ]

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i: ; preds = %bb.cq, %bb.cq
  %i.pu = load i32, ptr %i.pn, align 4, !tbaa !3, !noalias !4869
  %i.pv = zext i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.pv ; 3 uses
  %.0.copyload.i10.i.i.i.i.pre = load i32, ptr %i.pw, align 1, !noalias !4869 ; 2 uses
  %i.px = xor i32 %.0.copyload.i10.i.i.i.i.pre, 1936482662
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !26, !noalias !4869
  %i.qa = xor i8 %i.pz, 101
  %i.qb = zext i8 %i.qa to i32
  %i.qc = or i32 %i.px, %i.qb
  %i.qd = icmp ne i32 %.0.copyload.i10.i.i.i.i.pre, 1702195828 ; 3 uses
  %i.qe = icmp ne i32 %i.qc, 0
  %or.cond.i.i.i.i = select i1 %i.qd, i1 %i.qe, i1 false
  br i1 %or.cond.i.i.i.i, label %.critedge871.thread, label %bb.cr

bb.cr:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i
  %i.qf = select i1 %i.qd, i64 5, i64 4
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.qf
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !26, !noalias !4869
  %i.qi = zext i8 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !100, !range !125, !noalias !4869, !noundef !126
  %.not855 = icmp eq i8 %i.qk, 0
  br i1 %.not855, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i, label %.critedge871.thread

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i: ; preds = %bb.cr
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pn, i64 4 ; 3 uses
  store ptr %i.ql, ptr %i.o, align 8, !tbaa !1933, !noalias !4869
  store i32 1, ptr %i.r, align 4, !tbaa !1947, !noalias !4869
  %i.qm = xor i1 %i.qd, %i.pm
  br i1 %i.qm, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit, label %.critedge871

.critedge871:                                     ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i
  %i.qn = icmp ugt ptr %i.ql, %i.nh
  call void @llvm.assume(i1 %i.qn)
  br label %.loopexit877

.critedge871.thread:                              ; preds = %bb.cr, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i.i.i, %bb.cq
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pn, i64 4 ; 7 uses
  store ptr %i.qo, ptr %i.o, align 8, !tbaa !1933, !noalias !4869
  %i.qp = load i32, ptr %i.pn, align 4, !tbaa !3, !noalias !4869
  %i.qq = zext i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.qq
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !26, !noalias !4869
  switch i8 %i.qs, label %.loopexit877.sink.split [
    i8 91, label %bb.cu
    i8 123, label %bb.cu
    i8 58, label %bb.cu
    i8 44, label %bb.cu
    i8 34, label %bb.cs
  ]

bb.cs:                                            ; preds = %.critedge871.thread
  %i.qt = load i32, ptr %i.qo, align 4, !tbaa !3, !noalias !4869
  %i.qu = zext i32 %i.qt to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.qu
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !26, !noalias !4869
  %i.qx = icmp eq i8 %i.qw, 58
  br i1 %i.qx, label %bb.ct, label %.loopexit877.sink.split

bb.ct:                                            ; preds = %bb.cs
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pn, i64 8 ; 2 uses
  store ptr %i.qy, ptr %i.o, align 8, !tbaa !1933, !noalias !4869
  br label %bb.cu

bb.cu:                                            ; preds = %.critedge871.thread, %.critedge871.thread, %.critedge871.thread, %.critedge871.thread, %bb.ct
  %i.qz = phi ptr [ %i.qo, %.critedge871.thread ], [ %i.qo, %.critedge871.thread ], [ %i.qo, %.critedge871.thread ], [ %i.qo, %.critedge871.thread ], [ %i.qy, %bb.ct ] ; 3 uses
  %i.ra = load ptr, ptr %i.pl, align 8, !tbaa !1937, !noalias !4869 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rc = load i32, ptr %i.rb, align 8, !tbaa !1939, !noalias !4869
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %i.re = zext i32 %i.rc to i64
  %i.rf = load ptr, ptr %i.rd, align 8, !tbaa !852, !noalias !4869
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %i.re ; 2 uses
  %i.rh = icmp ult ptr %i.qz, %i.rg
  br i1 %i.rh, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i

.lr.ph:                                           ; preds = %bb.cu, %bb.cx
  %i.ri = phi i32 [ %i.rr, %bb.cx ], [ 2, %bb.cu ] ; 4 uses
  %i.rj = phi ptr [ %i.rk, %bb.cx ], [ %i.qz, %bb.cu ] ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 4 ; 5 uses
  store ptr %i.rk, ptr %i.o, align 8, !tbaa !1933, !noalias !4869
  %i.rl = load i32, ptr %i.rj, align 4, !tbaa !3, !noalias !4869
  %i.rm = zext i32 %i.rl to i64
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.rm
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !26, !noalias !4869
  switch i8 %i.ro, label %bb.cx [
    i8 91, label %bb.cv
    i8 123, label %bb.cv
    i8 93, label %bb.cw
    i8 125, label %bb.cw
  ]

bb.cv:                                            ; preds = %.lr.ph, %.lr.ph
  %i.rp = add nsw i32 %i.ri, 1                    ; 2 uses
  store i32 %i.rp, ptr %i.r, align 4, !tbaa !1947, !noalias !4869
  br label %bb.cx

bb.cw:                                            ; preds = %.lr.ph, %.lr.ph
  %i.rq = add nsw i32 %i.ri, -1                   ; 2 uses
  store i32 %i.rq, ptr %i.r, align 4, !tbaa !1947, !noalias !4869
  %.not8.i.i.i.i.i.i = icmp sgt i32 %i.ri, 2
  br i1 %.not8.i.i.i.i.i.i, label %bb.cx, label %.loopexit877

bb.cx:                                            ; preds = %.lr.ph, %bb.cw, %bb.cv
  %i.rr = phi i32 [ %i.ri, %.lr.ph ], [ %i.rq, %bb.cw ], [ %i.rp, %bb.cv ] ; 2 uses
  %i.rs = icmp ult ptr %i.rk, %i.rg
  br i1 %i.rs, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit: ; preds = %bb.cx
  %i.rt = icmp sgt i32 %i.rr, 0
  br label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit, %bb.cu
  %i.ru = phi ptr [ %i.qz, %bb.cu ], [ %i.rk, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit ]
  %i.rv = phi i1 [ true, %bb.cu ], [ %i.rt, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i.loopexit ]
  store i32 3, ptr %i.q, align 8, !tbaa !1948, !noalias !4869
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

.loopexit877.sink.split:                          ; preds = %.critedge871.thread, %bb.cs
  store i32 1, ptr %i.r, align 4, !tbaa !1947, !noalias !4869
  br label %.loopexit877

.loopexit877:                                     ; preds = %bb.cw, %.critedge871, %.loopexit877.sink.split
  %i.rw = phi ptr [ %i.qo, %.loopexit877.sink.split ], [ %i.ql, %.critedge871 ], [ %i.rk, %bb.cw ] ; 3 uses
  %i.rx = icmp ugt ptr %i.rw, %i.nh
  call void @llvm.assume(i1 %i.rx), !noalias !4869
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 4 ; 4 uses
  store ptr %i.ry, ptr %i.o, align 8, !tbaa !1933, !noalias !4869
  %i.rz = load i32, ptr %i.rw, align 4, !tbaa !3, !noalias !4869
  %i.sa = zext i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.sa
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !26, !noalias !4869
  switch i8 %i.sc, label %bb.da [
    i8 93, label %bb.cy
    i8 44, label %bb.cz
  ]

bb.cy:                                            ; preds = %.loopexit877
  store i32 0, ptr %i.r, align 4, !tbaa !1947, !noalias !4869
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

bb.cz:                                            ; preds = %.loopexit877
  store i32 2, ptr %i.r, align 4, !tbaa !1947, !noalias !4869
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

bb.da:                                            ; preds = %.loopexit877
  store i32 3, ptr %i.q, align 8, !tbaa !1948, !noalias !4869
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i: ; preds = %bb.cy, %bb.cz, %bb.da, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i
  %i.sd = phi i32 [ %i.po, %bb.cy ], [ %i.po, %bb.cz ], [ 3, %bb.da ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i ]
  %i.se = phi ptr [ %i.ry, %bb.cy ], [ %i.ry, %bb.cz ], [ %i.ry, %bb.da ], [ %i.ru, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i ]
  %.not854 = phi i1 [ false, %bb.cy ], [ true, %bb.cz ], [ true, %bb.da ], [ %i.rv, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i.i ]
  br i1 %.not854, label %bb.co, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit

bb.db:                                            ; preds = %bb.cd, %bb.cc
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ng, %bb.cd ], [ %i.nf, %bb.cc ]
  br i1 %i.mw, label %_ZN8simdjson13padded_stringD2Ev.exit108, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @_ZdaPv(ptr noundef nonnull %i.mv) #35, !noalias !4869
  br label %_ZN8simdjson13padded_stringD2Ev.exit108

_ZN8simdjson13padded_stringD2Ev.exit108:          ; preds = %bb.db, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !4869
  br label %.body

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i, %.lr.ph890.split.preheader, %bb.cf, %.sink.split, %bb.ce, %bb.cp, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i, %bb.cb
  %.4 = phi i1 [ false, %bb.ce ], [ false, %bb.cb ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i ], [ false, %.sink.split ], [ false, %bb.cp ], [ false, %bb.cf ], [ false, %.lr.ph890.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i ], [ false, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ]
  %.3.i.i.i = phi i1 [ false, %bb.ce ], [ false, %bb.cb ], [ false, %_ZNO8simdjson15simdjson_resultINS_8fallback8ondemand8documentEE3getIS3_EENS_10error_codeERT_.exit.i.i.i ], [ false, %.sink.split ], [ false, %bb.cp ], [ false, %bb.cf ], [ true, %.lr.ph890.split.preheader ], [ true, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i ], [ true, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i.i ]
  br i1 %i.mw, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.mv) #35, !noalias !4869
  br label %bb.de

bb.de:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE14doApplyNotNullILm0ENS1_12VectorReaderISA_EEJNSF_IbEEETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSM_RT0_DpRKT1_.exit, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !4869
  store ptr null, ptr %13, align 8, !tbaa !815, !alias.scope !4890
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31, !noalias !4863
  %i.sf = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !4788, !nonnull !126, !align !247 ; 3 uses
  br i1 %.3.i.i.i, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !4789, !nonnull !126, !align !247
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !553
  %i.sk = lshr i64 %i.kx, 3
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.sk ; 2 uses
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !26  ; 2 uses
  br i1 %.4, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.sn = trunc nuw nsw i64 %i.ks to i8
  %i.so = and i8 %i.sn, 7
  %i.sp = shl nuw i8 1, %i.so
  %i.sq = or i8 %i.sm, %i.sp
  br label %.noexc.i

bb.dh:                                            ; preds = %bb.df
  %i.sr = and i64 %i.kx, 7
  %i.ss = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.sr
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !26
  %i.su = and i8 %i.st, %i.sm
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.dh, %bb.dg
  %.sink.i116 = phi i8 [ %i.su, %bb.dh ], [ %i.sq, %bb.dg ]
  store i8 %.sink.i116, ptr %i.sl, align 1, !tbaa !26
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE7iterateIJNS1_12VectorReaderISA_EENSF_IbEEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

bb.di:                                            ; preds = %bb.de
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sg, i64 8 ; 2 uses
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !4791, !nonnull !126, !align !247
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !552 ; 2 uses
  %.not.i.i = icmp eq ptr %i.sx, null
  br i1 %.not.i.i, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.sy = load ptr, ptr %i.sg, align 8, !tbaa !4792, !nonnull !126, !align !247
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !4600 ; 3 uses
end_hunk_17
