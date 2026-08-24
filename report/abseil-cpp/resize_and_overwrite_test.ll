Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/resize_and_overwrite_test?download=true
inline.NumInlined: 1325
inline.NumDeleted: 655
begin_hunk_0_@_ZN7testing8internal30ParameterizedTestSuiteRegistry25GetTestSuitePatternHolderINS_13TestWithParamIN12_GLOBAL__N_123ResizeAndOverwriteParamEEEEEPNS0_26ParameterizedTestSuiteInfoIT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12CodeLocationE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9
  %i.g = load ptr, ptr %0, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.not = icmp eq ptr %i.m, @_ZN7testing8internal12TypeIdHelperINS_13TestWithParamIN12_GLOBAL__N_123ResizeAndOverwriteParamEEEE6dummy_E
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @_ZN7testing8internal26ReportInvalidTestSuiteTypeEPKcRKNS0_12CodeLocationE(ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(36) %2)
  tail call void @_ZN7testing8internal5posix5AbortEv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.i, ptr nonnull @_ZTIN7testing8internal30ParameterizedTestSuiteInfoBaseE, ptr nonnull @_ZTIN7testing8internal26ParameterizedTestSuiteInfoINS_13TestWithParamIN12_GLOBAL__N_123ResizeAndOverwriteParamEEEEE, i64 0) #29
  %i.p = icmp ne ptr %i.o, null
  %i.q = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.p)
  br i1 %i.q, label %_ZNSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE9push_backEOS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.32, i32 noundef 1168)
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.33, i64 noundef 77)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.e
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZNSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE9push_backEOS3_.exit

common.resume:                                    ; preds = %bb.r, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.cq, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %common.resume

_ZN7testing8internal27CheckedDowncastToActualTypeINS0_26ParameterizedTestSuiteInfoINS_13TestWithParamIN12_GLOBAL__N_123ResizeAndOverwriteParamEEEEENS0_30ParameterizedTestSuiteInfoBaseEEEPT_PT0_.exit: ; preds = %bb.a
  %i.t = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #30 ; 14 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !25
  %i.v = load ptr, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.x, ptr %i.a, align 8, !tbaa !27
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7testing8internal27CheckedDowncastToActualTypeINS0_26ParameterizedTestSuiteInfoINS_13TestWithParamIN12_GLOBAL__N_123ResizeAndOverwriteParamEEEEENS0_30ParameterizedTestSuiteInfoBaseEEEPT_PT0_.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.r     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.z, ptr %4, align 8, !tbaa !24
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !27
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !28
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZN7testing8internal27CheckedDowncastToActualTypeINS0_26ParameterizedTestSuiteInfoINS_13TestWithParamIN12_GLOBAL__N_123ResizeAndOverwriteParamEEEEENS0_30ParameterizedTestSuiteInfoBaseEEEPT_PT0_.exit
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %_ZN7testing8internal27CheckedDowncastToActualTypeINS0_26ParameterizedTestSuiteInfoINS_13TestWithParamIN12_GLOBAL__N_123ResizeAndOverwriteParamEEEEENS0_30ParameterizedTestSuiteInfoBaseEEEPT_PT0_.exit ] ; 2 uses
  switch i64 %i.x, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !28
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !28
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !26
  %i.af = load ptr, ptr %4, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !24    ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !26 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  store ptr %i.ai, ptr %5, align 8, !tbaa !24
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !28
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !28
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZN7testing8internal12CodeLocationC2EOS1_.exit

_ZN7testing8internal12CodeLocationC2EOS1_.exit:   ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aq = phi ptr [ %i.ah, %bb.j ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.ar = phi i64 [ %i.am, %bb.j ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !26
  store ptr %i.aj, ptr %2, align 8, !tbaa !24
  store i64 0, ptr %i.as, align 8, !tbaa !26
  store i8 0, ptr %i.aj, align 8, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !29 ; 2 uses
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal26ParameterizedTestSuiteInfoINS_13TestWithParamIN12_GLOBAL__N_123ResizeAndOverwriteParamEEEEE, i64 16), ptr %i.t, align 8, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !25
  %i.az = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.u
  br i1 %i.ba, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

bb.k:                                             ; preds = %_ZN7testing8internal12CodeLocationC2EOS1_.exit
  %i.bb = load i64, ptr %i.ae, align 8, !tbaa !26 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.bd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZN7testing8internal12CodeLocationC2EOS1_.exit
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !24
  %i.be = load i64, ptr %i.u, align 8, !tbaa !28
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !28
  %.pre25 = load i64, ptr %i.ae, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.k
  %i.bf = phi i64 [ %.pre25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.bb, %bb.k ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !26
  store ptr %i.u, ptr %4, align 8, !tbaa !24
  store i64 0, ptr %i.ae, align 8, !tbaa !26
  store i8 0, ptr %i.u, align 8, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 3 uses
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !25
  %i.bj = icmp eq ptr %i.aq, %i.ah
  br i1 %i.bj, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bk = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bi, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.aq, ptr %i.bh, align 8, !tbaa !24
  %i.bm = load i64, ptr %i.ah, align 8, !tbaa !28
  store i64 %i.bm, ptr %i.bi, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store i64 %i.ar, ptr %i.bn, align 8, !tbaa !26
  store ptr %i.ah, ptr %5, align 8, !tbaa !24
  store i64 0, ptr %i.at, align 8, !tbaa !26
  store i8 0, ptr %i.ah, align 8, !tbaa !28
  %i.bo = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  store i32 %i.aw, ptr %i.bo, align 8, !tbaa !29
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, i8 0, i64 48, i1 false)
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !16
  %.phi.trans.insert26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre27 = load ptr, ptr %.phi.trans.insert26, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.br = ptrtoint ptr %.pre27 to i64
  %i.bs = ptrtoint ptr %.pre28 to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3
  store i64 %i.bu, ptr %i.b, align 8, !tbaa !27
  %i.bv = call { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS5_mEEES6_INSA_14_Node_iteratorIS8_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !31 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !32
  %.not.i.i = icmp eq ptr %i.bw, %i.by
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.t, ptr %i.bw, align 8, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bz, ptr %i.bq, align 8, !tbaa !31
  br label %_ZNSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE9push_backEOS3_.exit

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ca = load ptr, ptr %0, align 8, !tbaa !16    ; 4 uses
  %i.cb = ptrtoint ptr %i.bw to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 6 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775800
  br i1 %i.ce, label %bb.o, label %_ZNKSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

_ZNKSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.cf = ashr exact i64 %i.cd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = call i64 @llvm.umin.i64(i64 %i.cg, i64 1152921504606846975)
  %i.cj = select i1 %i.ch, i64 1152921504606846975, i64 %i.ci ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #30 ; 4 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.cd ; 2 uses
  store ptr %i.t, ptr %i.cm, align 8, !tbaa !20
  %i.cn = icmp sgt i64 %i.cd, 0
  br i1 %i.cn, label %bb.p, label %_ZNSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cl, ptr align 8 %i.ca, i64 %i.cd, i1 false)
  br label %_ZNSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.p, %_ZNKSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cd) #31
  br label %_ZNSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.cl, ptr %0, align 8, !tbaa !16
  store ptr %i.co, ptr %i.bq, align 8, !tbaa !31
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj
  store ptr %i.cp, ptr %i.bx, align 8, !tbaa !32
  br label %_ZNSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE9push_backEOS3_.exit

bb.r:                                             ; preds = %.noexc.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 128) #31
  br label %common.resume

_ZNSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.d, %_ZNSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.m
  %.1 = phi ptr [ %i.t, %_ZNSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.t, %bb.m ], [ %i.i, %bb.d ], [ %i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_182gtest_StringResizeAndOverwriteTestSuiteStringResizeAndOverwriteTest_EvalGenerator_Ev(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.testing::internal::ParamGenerator") align 8 captures(none) %0) #1 {
bb.a:
  tail call fastcc void @_ZN7testing8ValuesInIN12_GLOBAL__N_123ResizeAndOverwriteParamELm13EEENS_8internal14ParamGeneratorIT_EERAT0__KS5_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) @constinit.34)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_185gtest_StringResizeAndOverwriteTestSuiteStringResizeAndOverwriteTest_EvalGenerateName_B5cxx11ERKN7testing13TestParamInfoINS_23ResizeAndOverwriteParamEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 1 captures(none) %1) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::ParamGenerator", align 8 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.a, label %_ZNSt10_Head_baseILm0EN7testing8internal14ParamGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call fastcc void @_ZN7testing8ValuesInIN12_GLOBAL__N_123ResizeAndOverwriteParamELm13EEENS_8internal14ParamGeneratorIT_EERAT0__KS5_(ptr dead_on_unwind noalias nonnull writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(312) @constinit.34)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val4 = load ptr, ptr %i.b, align 8, !tbaa !33 ; 14 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val4, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7testing8internal14ParamGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 11 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !36
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %i.c, align 4, !tbaa !39, !noalias !36
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !39, !noalias !36
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4, !noalias !36 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %.val4, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !42
  %i.l = load ptr, ptr %.val4, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %.val4) #29, !inline_history !43
  %i.o = load ptr, ptr %.val4, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.val4) #29, !inline_history !43
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.c, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.t = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.j, %bb.i ], [ %i.t, %bb.j ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.u, label %bb.k, label %bb.l, !prof !44

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val4) #29
  br label %bb.l

_ZN7testing8internal14ParamGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %_ZNSt10_Head_baseILm0EN7testing8internal14ParamGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEEELb0EED2Ev.exit

bb.l:                                             ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.v = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %.val4, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !42
  %i.z = load ptr, ptr %.val4, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %.val4) #29, !inline_history !45
  %i.ac = load ptr, ptr %.val4, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %.val4) #29, !inline_history !45
  br label %_ZNSt10_Head_baseILm0EN7testing8internal14ParamGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEEELb0EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.c, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ah = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi i32 [ %i.x, %bb.o ], [ %i.ah, %bb.p ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.q, label %_ZNSt10_Head_baseILm0EN7testing8internal14ParamGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEEELb0EED2Ev.exit, !prof !44

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val4) #29
  br label %_ZNSt10_Head_baseILm0EN7testing8internal14ParamGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm0EN7testing8internal14ParamGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEEELb0EED2Ev.exit: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m, %_ZN7testing8internal14ParamGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEED2Ev.exit, %bb.a
  %i.aj = getelementptr i8, ptr %1, i64 24
  %.val6 = load i64, ptr %i.aj, align 8, !tbaa !46 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.ak = icmp ult i64 %.val6, 10
  br i1 %i.ak, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10_Head_baseILm0EN7testing8internal14ParamGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEEELb0EED2Ev.exit, %bb.w
  %.029.i.i.i = phi i32 [ %i.as, %bb.w ], [ 1, %_ZNSt10_Head_baseILm0EN7testing8internal14ParamGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEEELb0EED2Ev.exit ] ; 4 uses
  %.02328.i.i.i = phi i64 [ %i.ar, %bb.w ], [ %.val6, %_ZNSt10_Head_baseILm0EN7testing8internal14ParamGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEEELb0EED2Ev.exit ] ; 5 uses
  %i.al = icmp ult i64 %.02328.i.i.i, 100
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.am = add i32 %.029.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.an = icmp ult i64 %.02328.i.i.i, 1000
  br i1 %i.an, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ao = add i32 %.029.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.ap = icmp ult i64 %.02328.i.i.i, 10000
  br i1 %i.ap, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aq = add i32 %.029.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.ar = udiv i64 %.02328.i.i.i, 10000
  %i.as = add i32 %.029.i.i.i, 4                  ; 2 uses
  %i.at = icmp ult i64 %.02328.i.i.i, 100000
  br i1 %i.at, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !55

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i:  ; preds = %bb.w, %bb.v, %bb.t, %bb.r, %_ZNSt10_Head_baseILm0EN7testing8internal14ParamGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEEELb0EED2Ev.exit
  %.022.i.i.i = phi i32 [ %i.aq, %bb.v ], [ %i.am, %bb.r ], [ %i.ao, %bb.t ], [ 1, %_ZNSt10_Head_baseILm0EN7testing8internal14ParamGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEEELb0EED2Ev.exit ], [ %i.as, %bb.w ]
  %i.au = zext i32 %.022.i.i.i to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %0, align 8, !tbaa !25, !alias.scope !57
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.au, i8 noundef signext 0)
end_hunk_0
begin_hunk_1_@_ZN7testing8ValuesInIN12_GLOBAL__N_123ResizeAndOverwriteParamELm13EEENS_8internal14ParamGeneratorIT_EERAT0__KS5_:bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume.i unwind label %bb.d, !noalias !156

common.resume.i:                                  ; preds = %.body.i, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.r, %.body.i ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #32, !noalias !156
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

.body.i:                                          ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #31, !noalias !156
  br label %common.resume.i

_ZN7testing8ValuesInIPKN12_GLOBAL__N_123ResizeAndOverwriteParamEEENS_8internal14ParamGeneratorINSt15iterator_traitsIT_E10value_typeEEES8_S8_.exit: ; preds = %.noexc5.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !40, !noalias !156
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 1, ptr %i.t, align 4, !tbaa !42, !noalias !156
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7testing8internal23ParamGeneratorInterfaceIN12_GLOBAL__N_123ResizeAndOverwriteParamEEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.h, align 8, !tbaa !22, !noalias !156
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.a, ptr %i.u, align 8, !tbaa !167, !noalias !156
  store ptr %i.h, ptr %i.g, align 8, !tbaa !33, !alias.scope !156
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEED2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEEE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_123ResizeAndOverwriteParamESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub i64 %i.c, %i.d
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.e) #31
  br label %_ZNSt6vectorIN12_GLOBAL__N_123ResizeAndOverwriteParamESaIS1_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_123ResizeAndOverwriteParamESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEEE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8           ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.b, align 8
  %i.c = ptrtoint ptr %.val1.i to i64
  %i.d = ptrtoint ptr %.val.i to i64
  %i.e = sub i64 %i.c, %i.d
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.e) #31, !inline_history !169
  br label %_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEED2Ev.exit

_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @_ZNK7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE5BeginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !81
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE8IteratorE, i64 16), ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !170
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.val, ptr %i.d, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %i.e, align 8, !tbaa !180
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @_ZNK7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE3EndEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.b, align 8, !tbaa !81
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE8IteratorE, i64 16), ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !170
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.val, ptr %i.d, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %i.e, align 8, !tbaa !180
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE8IteratorD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE8IteratorE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIKN12_GLOBAL__N_123ResizeAndOverwriteParamESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIKN12_GLOBAL__N_123ResizeAndOverwriteParamEEclEPS2_.exit.i

_ZNKSt14default_deleteIKN12_GLOBAL__N_123ResizeAndOverwriteParamEEclEPS2_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #31
  br label %_ZNSt10unique_ptrIKN12_GLOBAL__N_123ResizeAndOverwriteParamESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIKN12_GLOBAL__N_123ResizeAndOverwriteParamESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIKN12_GLOBAL__N_123ResizeAndOverwriteParamEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE8IteratorD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE8IteratorE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE8IteratorD2Ev.exit, label %_ZNKSt14default_deleteIKN12_GLOBAL__N_123ResizeAndOverwriteParamEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIKN12_GLOBAL__N_123ResizeAndOverwriteParamEEclEPS2_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #31, !inline_history !181
  br label %_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE8IteratorD2Ev.exit

_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE8IteratorD2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIKN12_GLOBAL__N_123ResizeAndOverwriteParamEEclEPS2_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_ZNK7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE8Iterator13BaseGeneratorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE8Iterator7AdvanceEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.a, align 8, !tbaa !182
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !81
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIKN12_GLOBAL__N_123ResizeAndOverwriteParamESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIKN12_GLOBAL__N_123ResizeAndOverwriteParamEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIKN12_GLOBAL__N_123ResizeAndOverwriteParamEEclEPS2_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 24) #31
  br label %_ZNSt10unique_ptrIKN12_GLOBAL__N_123ResizeAndOverwriteParamESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIKN12_GLOBAL__N_123ResizeAndOverwriteParamESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIKN12_GLOBAL__N_123ResizeAndOverwriteParamEEclEPS2_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @_ZNK7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE8Iterator5CloneEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE8IteratorE, i64 16), ptr %i.a, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170
  store ptr %i.d, ptr %i.b, align 8, !tbaa !170
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !81
  store i64 %i.g, ptr %i.e, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %i.h, align 8, !tbaa !180
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZNK7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE8Iterator7CurrentEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val1 = load ptr, ptr %i.a, align 8, !tbaa !81 ; 2 uses
  %i.b = icmp eq ptr %.val1, null
  br i1 %i.b, label %_ZNSt10unique_ptrIKN12_GLOBAL__N_123ResizeAndOverwriteParamESt14default_deleteIS2_EE5resetEPS2_.exit.a, label %bb.b

_ZNSt10unique_ptrIKN12_GLOBAL__N_123ResizeAndOverwriteParamESt14default_deleteIS2_EE5resetEPS2_.exit.a: ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.d, align 8, !tbaa !182
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.val2, i64 24, i1 false), !tbaa.struct !183
  store ptr %i.c, ptr %i.a, align 8, !tbaa !81
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIKN12_GLOBAL__N_123ResizeAndOverwriteParamESt14default_deleteIS2_EE5resetEPS2_.exit.a, %bb.a
  %.val = phi ptr [ %i.c, %_ZNSt10unique_ptrIKN12_GLOBAL__N_123ResizeAndOverwriteParamESt14default_deleteIS2_EE5resetEPS2_.exit.a ], [ %.val1, %bb.a ]
  ret ptr %.val
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE8Iterator6EqualsERKNS0_22ParamIteratorInterfaceIS3_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.e = load ptr, ptr %1, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.i = icmp eq ptr %i.d, %i.h
  %i.j = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.i)
  br i1 %i.j, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.28, i32 noundef 348)
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.29, i64 noundef 59)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.30, i64 noundef 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.31, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.n = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !22
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !184  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load i8, ptr %i.t, align 8, !tbaa !197
  %.not.i1.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 67
  %i.w = load i8, ptr %i.v, align 1, !tbaa !28
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.s)
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %bb.e
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.s, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.f, !inline_history !203

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc7, %bb.d
  %.0.i.i.i = phi i8 [ %i.w, %bb.d ], [ %i.aa, %.noexc7 ]
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.f ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc9
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.g

common.resume:                                    ; preds = %bb.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.f ], [ %i.ai, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %.noexc9, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc7, %bb.e, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %common.resume

bb.g:                                             ; preds = %bb.a, %_ZNSolsEPFRSoS_E.exit
  %i.ae = call ptr @__dynamic_cast(ptr nonnull readonly %1, ptr nonnull @_ZTIN7testing8internal22ParamIteratorInterfaceIN12_GLOBAL__N_123ResizeAndOverwriteParamEEE, ptr nonnull @_ZTIN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE8IteratorE, i64 0) #29
  %i.af = icmp ne ptr %i.ae, null
  %i.ag = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.af)
  br i1 %i.ag, label %_ZN7testing8internal27CheckedDowncastToActualTypeIKNS0_30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE8IteratorEKNS0_22ParamIteratorInterfaceIS4_EEEEPT_PT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.32, i32 noundef 1168)
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.33, i64 noundef 77)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.h
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %_ZN7testing8internal27CheckedDowncastToActualTypeIKNS0_30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE8IteratorEKNS0_22ParamIteratorInterfaceIS4_EEEEPT_PT0_.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %common.resume

_ZN7testing8internal27CheckedDowncastToActualTypeIKNS0_30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_123ResizeAndOverwriteParamEE8IteratorEKNS0_22ParamIteratorInterfaceIS4_EEEEPT_PT0_.exit: ; preds = %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.aj, align 8, !tbaa !81
  %.val4 = load ptr, ptr %i.ak, align 8, !tbaa !81
  %i.al = icmp eq ptr %.val, %.val4
  ret i1 %i.al
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #11

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPN7testing8internal23ParamGeneratorInterfaceIN12_GLOBAL__N_123ResizeAndOverwriteParamEEELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPN7testing8internal23ParamGeneratorInterfaceIN12_GLOBAL__N_123ResizeAndOverwriteParamEEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPN7testing8internal23ParamGeneratorInterfaceIN12_GLOBAL__N_123ResizeAndOverwriteParamEEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @_ZNSt15_Sp_counted_ptrIPN7testing8internal23ParamGeneratorInterfaceIN12_GLOBAL__N_123ResizeAndOverwriteParamEEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  ret ptr null
}

declare noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv() local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare void @_ZN7testing8internal26ReportInvalidTestSuiteTypeEPKcRKNS0_12CodeLocationE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal5posix5AbortEv() local_unnamed_addr #20 comdat {
bb.a:
end_hunk_1
