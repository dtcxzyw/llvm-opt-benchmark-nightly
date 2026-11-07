Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/XFileParser?download=true
inline.NumInlined: 2013
inline.NumDeleted: 807
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp11XFileParser27ParseDataObjectAnimationKeyEPNS_5XFile8AnimBoneE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.w = icmp eq i32 %i.b, 2
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit, %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.jt2, %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.jt0, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq i64 %i.y, 1
  %.pre.i = load ptr, ptr %5, align 8             ; 3 uses
  br i1 %i.z, label %bb.b, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i

bb.b:                                             ; preds = %._crit_edge
  %lhsc.i = load i8, ptr %.pre.i, align 1
  %i.aa = icmp ne i8 %lhsc.i, 125
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.b, %._crit_edge
  %i.ab = phi i1 [ true, %._crit_edge ], [ %i.aa, %bb.b ]
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %.pre.i, %i.ac
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.ae = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.ae)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.af = load i64, ptr %i.ac, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %.pre.i, i64 noundef %i.ag) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.ab, label %bb.c, label %_ZN6Assimp11XFileParser20CheckForClosingBraceEv.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA24_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(24) @.str.71) #29
  unreachable

_ZN6Assimp11XFileParser20CheckForClosingBraceEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit
  %.0145 = phi i32 [ 0, %.lr.ph ], [ %i.hb, %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit ] ; 4 uses
  %i.ah = call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 3 uses
  switch i32 %i.b, label %bb.ag [
    i32 0, label %.preheader.preheader
    i32 1, label %.preheader180
    i32 2, label %.preheader180
    i32 3, label %bb.w
    i32 4, label %bb.w
  ]

.preheader.preheader:                             ; preds = %bb.d
  %i.ai = call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %.not12273 = icmp eq i32 %i.ai, 4
  br i1 %.not12273, label %.lr.ph275, label %.preheader._crit_edge

.preheader180:                                    ; preds = %bb.d, %bb.d
  %i.aj = call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %.not11269 = icmp eq i32 %i.aj, 3
  br i1 %.not11269, label %.lr.ph271, label %.preheader180._crit_edge

.preheader:                                       ; preds = %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.jt0
  %i.ak = call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.al = call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %.not12 = icmp eq i32 %i.al, 4
  br i1 %.not12, label %.lr.ph275, label %.preheader._crit_edge

bb.e:                                             ; preds = %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.jt2
  %i.am = call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.an = call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %.not11 = icmp eq i32 %i.an, 3
  br i1 %.not11, label %.lr.ph271, label %.preheader180._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA60_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(60) @.str.62) #29
  unreachable

.lr.ph275:                                        ; preds = %.preheader.preheader, %.preheader
  %.0145178274 = phi i32 [ %i.hc, %.preheader ], [ %.0145, %.preheader.preheader ]
  %i.ao = phi i32 [ %i.ak, %.preheader ], [ %i.ah, %.preheader.preheader ]
  %i.ap = uitofp i32 %i.ao to double              ; 2 uses
  %i.aq = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.ar = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.as = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.at = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.au = load ptr, ptr %i.q, align 8             ; 10 uses
  %i.av = load ptr, ptr %i.r, align 8
  %.not.i = icmp eq ptr %i.au, %i.av
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph275
  store double %i.ap, ptr %i.au, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store float %i.aq, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store float %i.ar, ptr %.sroa.8127.0..sroa_idx, align 4
  %.sroa.10130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store float %i.as, ptr %.sroa.10130.0..sroa_idx, align 8
  %.sroa.12133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  store float %i.at, ptr %.sroa.12133.0..sroa_idx, align 4
  %.sroa.14136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i32 1, ptr %.sroa.14136.0..sroa_idx, align 8
  %i.aw = load ptr, ptr %i.q, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr %i.ax, ptr %i.q, align 8
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit

bb.g:                                             ; preds = %.lr.ph275
  %i.ay = load ptr, ptr %i.p, align 8             ; 5 uses
  %i.az = ptrtoint ptr %i.au to i64
  %i.ba = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775776
  br i1 %i.bc, label %bb.h, label %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #29
  unreachable

_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.bd = ashr exact i64 %i.bb, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 288230376151711743)
  %i.bh = select i1 %i.bf, i64 288230376151711743, i64 %i.bg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bi = shl nuw nsw i64 %i.bh, 5
  %i.bj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #30 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb ; 6 uses
  store double %i.ap, ptr %i.bk, align 8
  %.sroa.6.0..sroa_idx125 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store float %i.aq, ptr %.sroa.6.0..sroa_idx125, align 8
  %.sroa.8127.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store float %i.ar, ptr %.sroa.8127.0..sroa_idx128, align 4
  %.sroa.10130.0..sroa_idx131 = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store float %i.as, ptr %.sroa.10130.0..sroa_idx131, align 8
  %.sroa.12133.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  store float %i.at, ptr %.sroa.12133.0..sroa_idx134, align 4
  %.sroa.14136.0..sroa_idx137 = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 1, ptr %.sroa.14136.0..sroa_idx137, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.ay, %i.au
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i ], [ %i.bj, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i ], [ %i.ay, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !alias.scope !238
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, %i.au
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !224

_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bj, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bm, %.lr.ph.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i23.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  %i.bo = load ptr, ptr %i.r, align 8
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bq) #31
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.bj, ptr %i.p, align 8
  store ptr %i.bn, ptr %i.q, align 8
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.bh
  store ptr %i.br, ptr %i.r, align 8
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit: ; preds = %bb.f, %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %i.bs = load i8, ptr %i.g, align 8, !range !137, !noundef !138
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt0, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.bu = load i64, ptr %i.s, align 8             ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 1
  %.pre.i13 = load ptr, ptr %4, align 8           ; 3 uses
  br i1 %i.bv, label %bb.k, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i14

bb.k:                                             ; preds = %bb.j
  %lhsc.i18 = load i8, ptr %.pre.i13, align 1
  %i.bw = icmp ne i8 %lhsc.i18, 59
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i14

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i14: ; preds = %bb.k, %bb.j
  %i.bx = phi i1 [ true, %bb.j ], [ %i.bw, %bb.k ]
  %i.by = icmp eq ptr %.pre.i13, %i.t
  br i1 %i.by, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i17: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i14
  %i.bz = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.bz)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i14
  %i.ca = load i64, ptr %i.t, align 8
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %.pre.i13, i64 noundef %i.cb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %i.bx, label %bb.l, label %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt0

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA20_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(20) @.str.72) #29
  unreachable

.preheader180._crit_edge:                         ; preds = %.preheader180, %bb.e
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA56_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(56) @.str.63) #29
  unreachable

.lr.ph271:                                        ; preds = %.preheader180, %bb.e
  %.0145177270 = phi i32 [ %i.hd, %bb.e ], [ %.0145, %.preheader180 ] ; 3 uses
  %i.cc = phi i32 [ %i.am, %bb.e ], [ %i.ah, %.preheader180 ]
  %i.cd = uitofp i32 %i.cc to double              ; 4 uses
  %i.ce = call { <2 x float>, float } @_ZN6Assimp11XFileParser11ReadVector3Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.ce, 0 ; 4 uses
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.ce, 1 ; 4 uses
  br i1 %i.w, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph271
  %i.cf = load ptr, ptr %i.n, align 8             ; 8 uses
  %i.cg = load ptr, ptr %i.o, align 8
  %.not.i19 = icmp eq ptr %i.cf, %i.cg
  br i1 %.not.i19, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store double %i.cd, ptr %i.cf, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store <2 x float> %.fca.0.extract, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store float %.fca.1.extract, ptr %.sroa.9109.0..sroa_idx, align 8
  %.sroa.10116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  store i32 1, ptr %.sroa.10116.0..sroa_idx, align 4
  %i.ch = load ptr, ptr %i.n, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr %i.ci, ptr %i.n, align 8
  br label %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt2

bb.o:                                             ; preds = %bb.m
  %i.cj = load ptr, ptr %i.m, align 8             ; 5 uses
  %i.ck = ptrtoint ptr %i.cf to i64
  %i.cl = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cm = sub i64 %i.ck, %i.cl                    ; 3 uses
  %i.cn = icmp eq i64 %i.cm, 9223372036854775800
  br i1 %i.cn, label %bb.p, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #29
  unreachable

_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.co = sdiv exact i64 %i.cm, 24                ; 3 uses
  %.sroa.speculated.i.i.i20 = call i64 @llvm.umax.i64(i64 %i.co, i64 1)
  %i.cp = add nsw i64 %.sroa.speculated.i.i.i20, %i.co ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.co
  %i.cr = call i64 @llvm.umin.i64(i64 %i.cp, i64 384307168202282325)
  %i.cs = select i1 %i.cq, i64 384307168202282325, i64 %i.cr ; 3 uses
  %.not.i.i.i21 = icmp ne i64 %i.cs, 0
  call void @llvm.assume(i1 %.not.i.i.i21)
  %i.ct = mul nuw nsw i64 %i.cs, 24
  %i.cu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #30 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cm ; 4 uses
  store double %i.cd, ptr %i.cv, align 8
  %.sroa.8.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store <2 x float> %.fca.0.extract, ptr %.sroa.8.0..sroa_idx103, align 8
  %.sroa.9109.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store float %.fca.1.extract, ptr %.sroa.9109.0..sroa_idx110, align 8
  %.sroa.10116.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.cv, i64 20
  store i32 1, ptr %.sroa.10116.0..sroa_idx117, align 4
  %.not10.i.i.i.i.i22 = icmp eq ptr %i.cj, %i.cf
  br i1 %.not10.i.i.i.i.i22, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i23

.lr.ph.i.i.i.i.i23:                               ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i23
  %.012.i.i.i.i.i24 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i23 ], [ %i.cu, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i25 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i23 ], [ %i.cj, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i24, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i25, i64 24, i1 false), !alias.scope !239
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i25, i64 24 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i24, i64 24 ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq ptr %i.cw, %i.cf
  br i1 %.not.i.i.i.i.i26, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i23, !llvm.loop !228

_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i23, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i27 = phi ptr [ %i.cu, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cx, %.lr.ph.i.i.i.i.i23 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i27, i64 24
  %.not.i23.i.i28 = icmp eq ptr %i.cj, null
  br i1 %.not.i23.i.i28, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  %i.cz = load ptr, ptr %i.o, align 8
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.db) #31
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.cu, ptr %i.m, align 8
  store ptr %i.cy, ptr %i.n, align 8
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.cs
  store ptr %i.dc, ptr %i.o, align 8
  br label %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt2

bb.r:                                             ; preds = %.lr.ph271
  %i.dd = load ptr, ptr %i.k, align 8             ; 8 uses
  %i.de = load ptr, ptr %i.l, align 8
  %.not.i29 = icmp eq ptr %i.dd, %i.de
  br i1 %.not.i29, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store double %i.cd, ptr %i.dd, align 8
  %.sroa.8.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store <2 x float> %.fca.0.extract, ptr %.sroa.8.0..sroa_idx105, align 8
  %.sroa.9109.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store float %.fca.1.extract, ptr %.sroa.9109.0..sroa_idx112, align 8
  %.sroa.10116.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  store i32 1, ptr %.sroa.10116.0..sroa_idx119, align 4
  %i.df = load ptr, ptr %i.k, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store ptr %i.dg, ptr %i.k, align 8
  br label %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit

bb.t:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.di = ptrtoint ptr %i.dd to i64
  %i.dj = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dk = sub i64 %i.di, %i.dj                    ; 3 uses
  %i.dl = icmp eq i64 %i.dk, 9223372036854775800
  br i1 %i.dl, label %bb.u, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i30

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #29
  unreachable

_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i30: ; preds = %bb.t
  %i.dm = sdiv exact i64 %i.dk, 24                ; 3 uses
  %.sroa.speculated.i.i.i31 = call i64 @llvm.umax.i64(i64 %i.dm, i64 1)
  %i.dn = add nsw i64 %.sroa.speculated.i.i.i31, %i.dm ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dm
  %i.dp = call i64 @llvm.umin.i64(i64 %i.dn, i64 384307168202282325)
  %i.dq = select i1 %i.do, i64 384307168202282325, i64 %i.dp ; 3 uses
  %.not.i.i.i32 = icmp ne i64 %i.dq, 0
  call void @llvm.assume(i1 %.not.i.i.i32)
  %i.dr = mul nuw nsw i64 %i.dq, 24
  %i.ds = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #30 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dk ; 4 uses
  store double %i.cd, ptr %i.dt, align 8
  %.sroa.8.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store <2 x float> %.fca.0.extract, ptr %.sroa.8.0..sroa_idx107, align 8
  %.sroa.9109.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store float %.fca.1.extract, ptr %.sroa.9109.0..sroa_idx114, align 8
  %.sroa.10116.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  store i32 1, ptr %.sroa.10116.0..sroa_idx121, align 4
  %.not10.i.i.i.i.i33 = icmp eq ptr %i.dh, %i.dd
  br i1 %.not10.i.i.i.i.i33, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i38, label %.lr.ph.i.i.i.i.i34

.lr.ph.i.i.i.i.i34:                               ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i30, %.lr.ph.i.i.i.i.i34
  %.012.i.i.i.i.i35 = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i34 ], [ %i.ds, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i30 ] ; 2 uses
  %.0911.i.i.i.i.i36 = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i34 ], [ %i.dh, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i30 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i35, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i36, i64 24, i1 false), !alias.scope !240
  %i.du = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i36, i64 24 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i35, i64 24 ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.du, %i.dd
  br i1 %.not.i.i.i.i.i37, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i38, label %.lr.ph.i.i.i.i.i34, !llvm.loop !228

_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i38: ; preds = %.lr.ph.i.i.i.i.i34, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i30
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %i.ds, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i30 ], [ %i.dv, %.lr.ph.i.i.i.i.i34 ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i39, i64 24
  %.not.i23.i.i40 = icmp eq ptr %i.dh, null
  br i1 %.not.i23.i.i40, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i41, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i38
  %i.dx = load ptr, ptr %i.l, align 8
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = sub i64 %i.dy, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dz) #31
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i41

_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i41: ; preds = %bb.v, %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i38
  store ptr %i.ds, ptr %i.j, align 8
  store ptr %i.dw, ptr %i.k, align 8
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.dq
  store ptr %i.ea, ptr %i.l, align 8
  br label %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit

bb.w:                                             ; preds = %bb.d, %bb.d
  %i.eb = call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %.not = icmp eq i32 %i.eb, 16
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA56_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(56) @.str.64) #29
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ec = uitofp i32 %i.ah to double              ; 2 uses
  %i.ed = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.ee = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.ef = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.eg = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.eh = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.ei = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.ej = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.ek = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.el = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.em = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.en = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.eo = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.ep = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.eq = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.er = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.es = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.et = load ptr, ptr %i.e, align 8             ; 21 uses
  %i.eu = load ptr, ptr %i.f, align 8
  %.not.i43 = icmp eq ptr %i.et, %i.eu
  br i1 %.not.i43, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store double %i.ec, ptr %i.et, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store float %i.ed, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  store float %i.eh, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store float %i.el, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  store float %i.ep, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store float %i.ee, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 28
  store float %i.ei, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store float %i.em, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 36
  store float %i.eq, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  store float %i.ef, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 44
  store float %i.ej, ptr %.sroa.18.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  store float %i.en, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 52
  store float %i.er, ptr %.sroa.21.0..sroa_idx, align 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  store float %i.eg, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 60
  store float %i.ek, ptr %.sroa.24.0..sroa_idx, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  store float %i.eo, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 68
  store float %i.es, ptr %.sroa.26.0..sroa_idx, align 4
  %i.ev = load ptr, ptr %i.e, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 72
  store ptr %i.ew, ptr %i.e, align 8
  br label %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE9push_backERKS2_.exit

bb.aa:                                            ; preds = %bb.y
  %i.ex = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.ey = ptrtoint ptr %i.et to i64
  %i.ez = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.fa = sub i64 %i.ey, %i.ez                    ; 3 uses
  %i.fb = icmp eq i64 %i.fa, 9223372036854775800
  br i1 %i.fb, label %bb.ab, label %_ZNKSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #29
  unreachable

_ZNKSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aa
  %i.fc = sdiv exact i64 %i.fa, 72                ; 3 uses
  %.sroa.speculated.i.i.i44 = call i64 @llvm.umax.i64(i64 %i.fc, i64 1)
  %i.fd = add nsw i64 %.sroa.speculated.i.i.i44, %i.fc ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.fc
  %i.ff = call i64 @llvm.umin.i64(i64 %i.fd, i64 128102389400760775)
  %i.fg = select i1 %i.fe, i64 128102389400760775, i64 %i.ff ; 3 uses
  %.not.i.i.i45 = icmp ne i64 %i.fg, 0
  call void @llvm.assume(i1 %.not.i.i.i45)
  %i.fh = mul nuw nsw i64 %i.fg, 72
  %i.fi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fh) #30 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fa ; 17 uses
  store double %i.ec, ptr %i.fj, align 8
  %.sroa.5.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store float %i.ed, ptr %.sroa.5.0..sroa_idx67, align 8
  %.sroa.7.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store float %i.eh, ptr %.sroa.7.0..sroa_idx69, align 4
  %.sroa.9.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store float %i.el, ptr %.sroa.9.0..sroa_idx71, align 8
  %.sroa.10.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.fj, i64 20
  store float %i.ep, ptr %.sroa.10.0..sroa_idx73, align 4
  %.sroa.11.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  store float %i.ee, ptr %.sroa.11.0..sroa_idx75, align 8
  %.sroa.12.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.fj, i64 28
  store float %i.ei, ptr %.sroa.12.0..sroa_idx77, align 4
  %.sroa.14.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  store float %i.em, ptr %.sroa.14.0..sroa_idx79, align 8
  %.sroa.16.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.fj, i64 36
  store float %i.eq, ptr %.sroa.16.0..sroa_idx81, align 4
  %.sroa.17.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  store float %i.ef, ptr %.sroa.17.0..sroa_idx83, align 8
  %.sroa.18.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.fj, i64 44
  store float %i.ej, ptr %.sroa.18.0..sroa_idx85, align 4
  %.sroa.19.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.fj, i64 48
  store float %i.en, ptr %.sroa.19.0..sroa_idx87, align 8
  %.sroa.21.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.fj, i64 52
  store float %i.er, ptr %.sroa.21.0..sroa_idx89, align 4
  %.sroa.23.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  store float %i.eg, ptr %.sroa.23.0..sroa_idx91, align 8
  %.sroa.24.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.fj, i64 60
  store float %i.ek, ptr %.sroa.24.0..sroa_idx93, align 4
  %.sroa.25.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.fj, i64 64
  store float %i.eo, ptr %.sroa.25.0..sroa_idx95, align 8
  %.sroa.26.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.fj, i64 68
  store float %i.es, ptr %.sroa.26.0..sroa_idx97, align 4
  %.not10.i.i.i.i.i46 = icmp eq ptr %i.ex, %i.et
  br i1 %.not10.i.i.i.i.i46, label %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i47

.lr.ph.i.i.i.i.i47:                               ; preds = %_ZNKSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i47
  %.012.i.i.i.i.i48 = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i47 ], [ %i.fi, %_ZNKSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i49 = phi ptr [ %i.fk, %.lr.ph.i.i.i.i.i47 ], [ %i.ex, %_ZNKSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i.i.i48, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i.i.i49, i64 72, i1 false), !alias.scope !241
  %i.fk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i49, i64 72 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i48, i64 72 ; 2 uses
  %.not.i.i.i.i.i50 = icmp eq ptr %i.fk, %i.et
  br i1 %.not.i.i.i.i.i50, label %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i47, !llvm.loop !235

_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i47, %_ZNKSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i51 = phi ptr [ %i.fi, %_ZNKSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.fl, %.lr.ph.i.i.i.i.i47 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i51, i64 72
  %.not.i23.i.i52 = icmp eq ptr %i.ex, null
  br i1 %.not.i23.i.i52, label %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.fn = load ptr, ptr %i.f, align 8
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = sub i64 %i.fo, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fp) #31
  br label %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.fi, ptr %i.d, align 8
  store ptr %i.fm, ptr %i.e, align 8
  %i.fq = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %i.fg
  store ptr %i.fq, ptr %i.f, align 8
  br label %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.z, %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.fr = load i8, ptr %i.g, align 8, !range !137, !noundef !138
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE9push_backERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.ft = load i64, ptr %i.h, align 8             ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 1
  %.pre.i53 = load ptr, ptr %3, align 8           ; 3 uses
  br i1 %i.fu, label %bb.ae, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i54

bb.ae:                                            ; preds = %bb.ad
  %lhsc.i58 = load i8, ptr %.pre.i53, align 1
  %i.fv = icmp ne i8 %lhsc.i58, 59
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i54

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i54: ; preds = %bb.ae, %bb.ad
  %i.fw = phi i1 [ true, %bb.ad ], [ %i.fv, %bb.ae ]
  %i.fx = icmp eq ptr %.pre.i53, %i.i
  br i1 %i.fx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i57: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i54
  %i.fy = icmp ult i64 %i.ft, 16
  call void @llvm.assume(i1 %i.fy)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i54
  %i.fz = load i64, ptr %i.i, align 8
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %.pre.i53, i64 noundef %i.ga) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %i.fw, label %bb.af, label %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA20_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(20) @.str.72) #29
  unreachable

bb.ag:                                            ; preds = %bb.d
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA18_KcRjRA15_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(18) @.str.65, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(15) @.str.66) #29
  unreachable

_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56, %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE9push_backERKS2_.exit, %bb.s, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i41
  %.0145179 = phi i32 [ %.0145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56 ], [ %.0145, %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE9push_backERKS2_.exit ], [ %.0145177270, %bb.s ], [ %.0145177270, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i41 ]
  %i.gb = load i8, ptr %i.g, align 8, !range !137, !noundef !138
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit, label %bb.ah

_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt0: ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16
  %i.gd = load i8, ptr %i.g, align 8, !range !137, !noundef !138
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.jt0, label %bb.ai

_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt2: ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.n
  %i.gf = load i8, ptr %i.g, align 8, !range !137, !noundef !138
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.jt2, label %bb.aj

bb.ah:                                            ; preds = %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.gh = load i64, ptr %i.u, align 8
  %cond.i = icmp eq i64 %i.gh, 1
  br i1 %cond.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i

bb.ai:                                            ; preds = %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.gi = load i64, ptr %i.u, align 8
  %cond.i.jt0 = icmp eq i64 %i.gi, 1
  br i1 %cond.i.jt0, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.jt0, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i

bb.aj:                                            ; preds = %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.gj = load i64, ptr %i.u, align 8
  %cond.i.jt2 = icmp eq i64 %i.gj, 1
  br i1 %cond.i.jt2, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.jt2, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63: ; preds = %bb.ah
  %i.gk = load ptr, ptr %2, align 8               ; 3 uses
  %lhsc.i64 = load i8, ptr %i.gk, align 1
  switch i8 %lhsc.i64, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i [
    i8 44, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i
    i8 59, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.jt0: ; preds = %bb.ai
  %i.gl = load ptr, ptr %2, align 8               ; 3 uses
  %lhsc.i64.jt0 = load i8, ptr %i.gl, align 1
  switch i8 %lhsc.i64.jt0, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i [
    i8 44, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.jt0
    i8 59, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.jt0
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.jt2: ; preds = %bb.aj
  %i.gm = load ptr, ptr %2, align 8               ; 3 uses
  %lhsc.i64.jt2 = load i8, ptr %i.gm, align 1
  switch i8 %lhsc.i64.jt2, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i [
    i8 44, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.jt2
    i8 59, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.jt2
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63, %bb.ah, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.jt2, %bb.aj, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.jt0, %bb.ai
  invoke void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA43_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(43) @.str.74) #29
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i
  unreachable

bb.al:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = load ptr, ptr %2, align 8               ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.v
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %bb.al
  %i.gq = load i64, ptr %i.v, align 8
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.gn

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63
  %i.gs = icmp eq ptr %i.gk, %i.v
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.jt0: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.jt0, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.jt0
  %i.gt = icmp eq ptr %i.gl, %i.v
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.jt0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.jt0

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.jt2: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.jt2, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.jt2
  %i.gu = icmp eq ptr %i.gm, %i.v
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.jt2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.jt2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i
  %i.gv = load i64, ptr %i.v, align 8
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.jt0: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.jt0
  %i.gx = load i64, ptr %i.v, align 8
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.gy) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.jt0

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.jt2: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.jt2
  %i.gz = load i64, ptr %i.v, align 8
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef %i.ha) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.jt2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.jt0: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.jt0, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.jt0

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.jt2: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.jt2, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.jt2

_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit: ; preds = %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %i.hb = add nuw i32 %.0145179, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.hb, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !236

_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.jt0: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.jt0, %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt0
  %i.hc = add nuw i32 %.0145178274, 1             ; 2 uses
  %exitcond.not.jt0 = icmp eq i32 %i.hc, %i.c
  br i1 %exitcond.not.jt0, label %._crit_edge, label %.preheader, !llvm.loop !236

_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.jt2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.jt2, %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt2
  %i.hd = add nuw i32 %.0145177270, 1             ; 2 uses
  %exitcond.not.jt2 = icmp eq i32 %i.hd, %i.c
  br i1 %exitcond.not.jt2, label %._crit_edge, label %bb.e, !llvm.loop !236
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA60_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(60) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !guid !242 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !137, !noundef !138
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 5 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN17DeadlyImportErrorC2IJRA6_KcRjRA3_S1_RA60_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @.str.110, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(3) @.str.111, ptr noundef nonnull align 1 dereferenceable(60) %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #28
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA56_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(56) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !guid !243 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !137, !noundef !138
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 5 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN17DeadlyImportErrorC2IJRA6_KcRjRA3_S1_RA56_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @.str.110, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(3) @.str.111, ptr noundef nonnull align 1 dereferenceable(56) %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #28
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA18_KcRjRA15_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(18) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(15) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !guid !244 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !137, !noundef !138
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 5 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN17DeadlyImportErrorC2IJRA18_KcRjRA15_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(18) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(15) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN17DeadlyImportErrorC2IJRA6_KcRjRA3_S1_RA18_S1_S4_RA15_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @.str.110, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(3) @.str.111, ptr noundef nonnull align 1 dereferenceable(18) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(15) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #28
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11XFileParser17CheckForSeparatorEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !245 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !137, !noundef !138
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %cond = icmp eq i64 %i.e, 1
  br i1 %cond, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8                ; 4 uses
  %lhsc = load i8, ptr %i.f, align 1
  %.not = icmp eq i8 %lhsc, 44
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %lhsc13 = load i8, ptr %i.f, align 1
  %.not9 = icmp eq i8 %lhsc13, 59
  br i1 %.not9, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread: ; preds = %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3
  invoke void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA43_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(43) @.str.74) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread
  unreachable

bb.d:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.g

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.f, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.p) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA54_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(54) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !guid !246 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !137, !noundef !138
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 5 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_0
