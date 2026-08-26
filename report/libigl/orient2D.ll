Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/orient2D?download=true
inline.NumInlined: 693
inline.NumDeleted: 315
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZThn8_N5boost10wrapexceptISt12out_of_rangeED0Ev:bb.a
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn24_N5boost10wrapexceptISt12out_of_rangeED1Ev(ptr noundef %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10wrapexceptISt12out_of_rangeED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN5boost10wrapexceptISt12out_of_rangeED2Ev.exit unwind label %bb.c, !inline_history !21 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #29
  unreachable

_ZN5boost10wrapexceptISt12out_of_rangeED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZNSt12out_of_rangeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.i) #25
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn24_N5boost10wrapexceptISt12out_of_rangeED0Ev(ptr noundef %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost10wrapexceptISt12out_of_rangeED0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN5boost10wrapexceptISt12out_of_rangeED0Ev.exit unwind label %bb.c, !inline_history !21 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #29
  unreachable

_ZN5boost10wrapexceptISt12out_of_rangeED0Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds i8, ptr %0, i64 -24
  %i.j = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZNSt12out_of_rangeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.j) #25
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 noundef 64) #31
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost10wrapexceptISt12out_of_rangeEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12out_of_range, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !15
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.c unwind label %bb.d, !inline_history !26

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt12out_of_rangeEE, i64 16), ptr %0, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt12out_of_rangeEE, i64 64), ptr %i.a, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt12out_of_rangeEE, i64 104), ptr %i.c, align 8, !tbaa !18
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12out_of_rangeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #25
  resume { ptr, i32 } %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #14

; Function Attrs: nounwind memory(argmem: write)
declare void @llvm.x86.sse.stmxcsr(ptr) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_2IST_EES16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 24576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.h = load i32, ptr %i.c, align 4
  %i.i = and i32 %i.h, -24577
  %i.j = or disjoint i32 %i.i, 16384
  store i32 %i.j, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = load <2 x double>, ptr %1, align 8, !tbaa !9, !noalias !27 ; 3 uses
  %i.l = fneg <2 x double> %i.k                   ; 2 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> %i.k, <2 x i32> <i32 2, i32 0>
  %i.n = shufflevector <2 x double> %i.l, <2 x double> %i.k, <2 x i32> <i32 3, i32 1>
  %i.o = load <2 x double>, ptr %2, align 8, !tbaa !9, !noalias !30 ; 3 uses
  %i.p = fneg <2 x double> %i.o                   ; 2 uses
  %i.q = shufflevector <2 x double> %i.p, <2 x double> %i.o, <2 x i32> <i32 0, i32 2>
  %i.r = shufflevector <2 x double> %i.p, <2 x double> %i.o, <2 x i32> <i32 1, i32 3>
  %i.s = load <2 x double>, ptr %3, align 8, !tbaa !9, !noalias !33 ; 3 uses
  %i.t = fneg <2 x double> %i.s                   ; 2 uses
  %i.u = shufflevector <2 x double> %i.t, <2 x double> %i.s, <2 x i32> <i32 0, i32 2>
  %i.v = shufflevector <2 x double> %i.t, <2 x double> %i.s, <2 x i32> <i32 1, i32 3>
  %i.w = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.q) #25, !srcloc !36
  %i.x = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.m) #32, !srcloc !37 ; 2 uses
  %i.y = fadd <2 x double> %i.w, %i.x
  %i.z = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.y) #25, !srcloc !36
  %i.aa = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.r) #25, !srcloc !36
  %i.ab = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.n) #32, !srcloc !37 ; 2 uses
  %i.ac = fadd <2 x double> %i.aa, %i.ab
  %i.ad = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ac) #25, !srcloc !36
  %i.ae = bitcast <2 x double> %i.ad to <2 x i64>
  %i.af = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u) #25, !srcloc !36
  %i.ag = fadd <2 x double> %i.x, %i.af
  %i.ah = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ag) #25, !srcloc !36
  %i.ai = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.v) #25, !srcloc !36
  %i.aj = fadd <2 x double> %i.ab, %i.ai
  %i.ak = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aj) #25, !srcloc !36
  %i.al = bitcast <2 x double> %i.ak to <2 x i64>
  %i.am = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.z) #32, !srcloc !37 ; 3 uses
  %i.an = fneg <2 x double> %i.am
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ap = xor <2 x i64> %i.al, <i64 -9223372036854775808, i64 0>
  %i.aq = bitcast <2 x i64> %i.ap to <2 x double>
  %i.ar = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aq) #25, !srcloc !36 ; 3 uses
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.at = fmul <2 x double> %i.am, %i.ar
  %i.au = fmul <2 x double> %i.am, %i.as
  %i.av = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.au, <2 x double> splat (double +inf))
  %i.aw = fmul <2 x double> %i.ao, %i.ar
  %i.ax = fmul <2 x double> %i.ao, %i.as
  %i.ay = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ax, <2 x double> splat (double +inf))
  %i.az = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.at, <2 x double> %i.av)
  %i.ba = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.aw, <2 x double> %i.ay)
  %i.bb = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.az, <2 x double> %i.ba)
  %i.bc = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bb) #25, !srcloc !36 ; 2 uses
  %i.bd = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ah) #32, !srcloc !37 ; 3 uses
  %i.be = fneg <2 x double> %i.bd
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bg = xor <2 x i64> %i.ae, <i64 -9223372036854775808, i64 0>
  %i.bh = bitcast <2 x i64> %i.bg to <2 x double>
  %i.bi = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bh) #25, !srcloc !36 ; 3 uses
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bk = fmul <2 x double> %i.bd, %i.bi
  %i.bl = fmul <2 x double> %i.bd, %i.bj
  %i.bm = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bl, <2 x double> splat (double +inf))
  %i.bn = fmul <2 x double> %i.bf, %i.bi
  %i.bo = fmul <2 x double> %i.bf, %i.bj
  %i.bp = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bo, <2 x double> splat (double +inf))
  %i.bq = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bk, <2 x double> %i.bm)
  %i.br = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bn, <2 x double> %i.bp)
  %i.bs = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bq, <2 x double> %i.br)
  %i.bt = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bs) #25, !srcloc !36 ; 2 uses
  %i.bu = extractelement <2 x double> %i.bc, i64 0
  %i.bv = fneg double %i.bu                       ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.bt, i64 1 ; 2 uses
  %i.bw = fcmp olt double %.sroa.0.8.vec.extract.i.i.i, %i.bv
  %4 = extractelement <2 x double> %i.bc, i64 1   ; 2 uses
  br i1 %i.bw, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bx = extractelement <2 x double> %i.bt, i64 0
  %i.by = fneg double %i.bx                       ; 2 uses
  %i.bz = fcmp olt double %4, %i.by
  br i1 %i.bz, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ca = fcmp une double %4, %i.by
  %i.cb = fcmp une double %.sroa.0.8.vec.extract.i.i.i, %i.bv
  %or.cond.not.i.i.i.i.i.i = or i1 %i.cb, %i.ca
  %i.cc = select i1 %or.cond.not.i.i.i.i.i.i, i64 8589934591, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.cc, %bb.c ], [ 4294967297, %bb.a ], [ -1, %bb.b ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.5.0.i.i.i.i.i.i to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %.not = icmp eq i32 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.cd = load i32, ptr %i.a, align 4
  %i.ce = and i32 %i.cd, -24577
  %i.cf = or disjoint i32 %i.ce, %i.g
  store i32 %i.cf, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cg = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_2IST_EES16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.3 = phi i32 [ %i.cg, %bb.e ], [ %.sroa.0.0.extract.trunc.i, %bb.d ]
  ret i32 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #24

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_2IST_EES16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.CGAL::Point_2.91", align 16 ; 14 uses
  %5 = alloca %"class.CGAL::Point_2.91", align 16 ; 14 uses
  %6 = alloca %"class.CGAL::Point_2.91", align 16 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_2IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_2.91") align 16 %4, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_2IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_2.91") align 16 %5, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_2IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_2.91") align 16 %6, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.d = invoke noundef i32 @_ZN4CGAL13orientationC2INS_9cpp_floatEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS4_S8_S8_S8_S8_S8_(ptr noundef nonnull align 16 dereferenceable(192) %4, ptr noundef nonnull align 16 dereferenceable(84) %i.a, ptr noundef nonnull align 16 dereferenceable(192) %5, ptr noundef nonnull align 16 dereferenceable(84) %i.b, ptr noundef nonnull align 16 dereferenceable(192) %6, ptr noundef nonnull align 16 dereferenceable(84) %i.c)
          to label %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_2IS4_EES9_S9_.exit unwind label %bb.l

_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_2IS4_EES9_S9_.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 169
  %i.f = load i8, ptr %i.e, align 1, !tbaa !38, !range !42, !noundef !43
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 170
  %i.i = load i8, ptr %i.h, align 2, !range !42
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.g, i1 true, i1 %i.j
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_2IS4_EES9_S9_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i64, ptr %i.c, align 16
  %i.n = shl i64 %i.m, 3
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.n) #31
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i:                ; preds = %bb.d, %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_2IS4_EES9_S9_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 73
  %i.p = load i8, ptr %i.o, align 1, !tbaa !38, !range !42, !noundef !43
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 74
  %i.s = load i8, ptr %i.r, align 2, !range !42
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i.i.i.1.i.i.i = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond.i.i.i.1.i.i.i, label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i64, ptr %6, align 16
  %i.x = shl i64 %i.w, 3
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.x) #31
  br label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit

_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 169
  %i.z = load i8, ptr %i.y, align 1, !tbaa !38, !range !42, !noundef !43
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 170
  %i.ac = load i8, ptr %i.ab, align 2, !range !42
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i.i.i.i.i.i9 = select i1 %i.aa, i1 true, i1 %i.ad
  br i1 %or.cond.i.i.i.i.i.i9, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10, label %bb.f

bb.f:                                             ; preds = %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load i64, ptr %i.b, align 16
  %i.ah = shl i64 %i.ag, 3
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ah) #31
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10:              ; preds = %bb.f, %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 73
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !38, !range !42, !noundef !43
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 74
  %i.am = load i8, ptr %i.al, align 2, !range !42
  %i.an = trunc nuw i8 %i.am to i1
  %or.cond.i.i.i.1.i.i.i11 = select i1 %i.ak, i1 true, i1 %i.an
  br i1 %or.cond.i.i.i.1.i.i.i11, label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit12, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load i64, ptr %5, align 16
  %i.ar = shl i64 %i.aq, 3
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.ar) #31
  br label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit12

_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit12: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 169
  %i.at = load i8, ptr %i.as, align 1, !tbaa !38, !range !42, !noundef !43
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 170
  %i.aw = load i8, ptr %i.av, align 2, !range !42
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond.i.i.i.i.i.i13 = select i1 %i.au, i1 true, i1 %i.ax
  br i1 %or.cond.i.i.i.i.i.i13, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i14, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit12
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load i64, ptr %i.a, align 16
  %i.bb = shl i64 %i.ba, 3
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bb) #31
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i14

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i14:              ; preds = %bb.h, %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit12
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 73
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !38, !range !42, !noundef !43
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 74
  %i.bg = load i8, ptr %i.bf, align 2, !range !42
  %i.bh = trunc nuw i8 %i.bg to i1
  %or.cond.i.i.i.1.i.i.i15 = select i1 %i.be, i1 true, i1 %i.bh
  br i1 %or.cond.i.i.i.1.i.i.i15, label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit16, label %bb.i

bb.i:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i14
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = load i64, ptr %4, align 16
  %i.bl = shl i64 %i.bk, 3
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bl) #31
  br label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit16

_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit16: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i14, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i32 %i.d

bb.j:                                             ; preds = %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.b
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %6) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.l ], [ %i.bn, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %5) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.bm, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
end_hunk_0
