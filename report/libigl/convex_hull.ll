Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/convex_hull?download=true
inline.NumInlined: 9951
inline.NumDeleted: 3256
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors11Collinear_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEEbDpRKS18_:bb.a
  %i.au = shl i64 %i.at, 3
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.au) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10:              ; preds = %bb.g, %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 169
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !355, !range !13, !noundef !14
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 170
  %i.az = load i8, ptr %i.ay, align 2, !range !13
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond.i.i.i.1.i.i.i11 = select i1 %i.ax, i1 true, i1 %i.ba
  br i1 %or.cond.i.i.i.1.i.i.i11, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i12, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load i64, ptr %i.c, align 16
  %i.be = shl i64 %i.bd, 3
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.be) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i12

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i12:            ; preds = %bb.h, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 73
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !355, !range !13, !noundef !14
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 74
  %i.bj = load i8, ptr %i.bi, align 2, !range !13
  %i.bk = trunc nuw i8 %i.bj to i1
  %or.cond.i.i.i.2.i.i.i13 = select i1 %i.bh, i1 true, i1 %i.bk
  br i1 %or.cond.i.i.i.2.i.i.i13, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit14, label %bb.i

bb.i:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i12
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = load i64, ptr %5, align 16
  %i.bo = shl i64 %i.bn, 3
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bo) #38
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit14

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit14: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i12, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 265
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !355, !range !13, !noundef !14
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 266
  %i.bt = load i8, ptr %i.bs, align 2, !range !13
  %i.bu = trunc nuw i8 %i.bt to i1
  %or.cond.i.i.i.i.i.i15 = select i1 %i.br, i1 true, i1 %i.bu
  br i1 %or.cond.i.i.i.i.i.i15, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i16, label %bb.j

bb.j:                                             ; preds = %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit14
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = load i64, ptr %i.b, align 16
  %i.by = shl i64 %i.bx, 3
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.by) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i16

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i16:              ; preds = %bb.j, %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit14
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 169
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !355, !range !13, !noundef !14
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 170
  %i.cd = load i8, ptr %i.cc, align 2, !range !13
  %i.ce = trunc nuw i8 %i.cd to i1
  %or.cond.i.i.i.1.i.i.i17 = select i1 %i.cb, i1 true, i1 %i.ce
  br i1 %or.cond.i.i.i.1.i.i.i17, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18, label %bb.k

bb.k:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i16
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = load i64, ptr %i.a, align 16
  %i.ci = shl i64 %i.ch, 3
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ci) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18:            ; preds = %bb.k, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i16
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 73
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !355, !range !13, !noundef !14
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 74
  %i.cn = load i8, ptr %i.cm, align 2, !range !13
  %i.co = trunc nuw i8 %i.cn to i1
  %or.cond.i.i.i.2.i.i.i19 = select i1 %i.cl, i1 true, i1 %i.co
  br i1 %or.cond.i.i.i.2.i.i.i19, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit20, label %bb.l

bb.l:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = load i64, ptr %4, align 16
  %i.cs = shl i64 %i.cr, 3
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cs) #38
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit20

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit20: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i1 %i.g

bb.m:                                             ; preds = %bb.a
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %bb.b
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.c
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %6) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.o ], [ %i.cu, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %5) #28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.ct, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i16 @_ZN4CGAL11collinearC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S4_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8) local_unnamed_addr #29 comdat {
bb.a:
  %i.a = load <2 x double>, ptr %6, align 16, !tbaa !146
  %i.b = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.c = load <2 x double>, ptr %0, align 16, !tbaa !146
  %i.d = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.c) #28, !srcloc !401
  %i.e = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.b) #27, !srcloc !402
  %i.f = fadd <2 x double> %i.d, %i.e
  %i.g = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.f) #28, !srcloc !401
  %i.h = load <2 x double>, ptr %6, align 16, !tbaa !146
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.j = load <2 x double>, ptr %3, align 16, !tbaa !146
  %i.k = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.j) #28, !srcloc !401
  %i.l = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.i) #27, !srcloc !402
  %i.m = fadd <2 x double> %i.k, %i.l
  %i.n = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.m) #28, !srcloc !401
  %i.o = bitcast <2 x double> %i.n to <2 x i64>
  %i.p = load <2 x double>, ptr %7, align 16, !tbaa !146
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.r = load <2 x double>, ptr %1, align 16, !tbaa !146
  %i.s = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.r) #28, !srcloc !401
  %i.t = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.q) #27, !srcloc !402
  %i.u = fadd <2 x double> %i.s, %i.t
  %i.v = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u) #28, !srcloc !401
  %i.w = load <2 x double>, ptr %7, align 16, !tbaa !146
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.y = load <2 x double>, ptr %4, align 16, !tbaa !146
  %i.z = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.y) #28, !srcloc !401
  %i.aa = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.x) #27, !srcloc !402
  %i.ab = fadd <2 x double> %i.z, %i.aa
  %i.ac = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ab) #28, !srcloc !401
  %i.ad = bitcast <2 x double> %i.ac to <2 x i64>
  %i.ae = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.g) #27, !srcloc !402 ; 5 uses
  %i.af = fneg <2 x double> %i.ae
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ah = xor <2 x i64> %i.ad, <i64 -9223372036854775808, i64 0>
  %i.ai = bitcast <2 x i64> %i.ah to <2 x double> ; 2 uses
  %i.aj = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ai) #28, !srcloc !401 ; 3 uses
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.al = fmul <2 x double> %i.ae, %i.aj
  %i.am = fmul <2 x double> %i.ae, %i.ak
  %i.an = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.am, <2 x double> splat (double +inf))
  %i.ao = fmul <2 x double> %i.ag, %i.aj
  %i.ap = fmul <2 x double> %i.ag, %i.ak
  %i.aq = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ap, <2 x double> splat (double +inf))
  %i.ar = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.al, <2 x double> %i.an)
  %i.as = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ao, <2 x double> %i.aq)
  %i.at = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ar, <2 x double> %i.as)
  %i.au = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.at) #28, !srcloc !401 ; 2 uses
  %i.av = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.v) #27, !srcloc !402 ; 5 uses
  %i.aw = fneg <2 x double> %i.av
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ay = xor <2 x i64> %i.o, <i64 -9223372036854775808, i64 0>
  %i.az = bitcast <2 x i64> %i.ay to <2 x double> ; 2 uses
  %i.ba = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.az) #28, !srcloc !401 ; 3 uses
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bc = fmul <2 x double> %i.av, %i.ba
  %i.bd = fmul <2 x double> %i.av, %i.bb
  %i.be = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bd, <2 x double> splat (double +inf))
  %i.bf = fmul <2 x double> %i.ax, %i.ba
  %i.bg = fmul <2 x double> %i.ax, %i.bb
  %i.bh = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bg, <2 x double> splat (double +inf))
  %i.bi = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bc, <2 x double> %i.be)
  %i.bj = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bf, <2 x double> %i.bh)
  %i.bk = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bi, <2 x double> %i.bj)
  %i.bl = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bk) #28, !srcloc !401 ; 2 uses
  %i.bm = extractelement <2 x double> %i.au, i64 0
  %i.bn = fneg double %i.bm                       ; 2 uses
  %.sroa.0.8.vec.extract.i = extractelement <2 x double> %i.bl, i64 1 ; 2 uses
  %i.bo = fcmp olt double %.sroa.0.8.vec.extract.i, %i.bn
  br i1 %i.bo, label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bp = extractelement <2 x double> %i.bl, i64 0
  %i.bq = fneg double %i.bp                       ; 2 uses
  %.sroa.05.8.vec.extract.i = extractelement <2 x double> %i.au, i64 1 ; 2 uses
  %i.br = fcmp olt double %.sroa.05.8.vec.extract.i, %i.bq
  br i1 %i.br, label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bs = fcmp une double %.sroa.05.8.vec.extract.i, %i.bq
  %i.bt = fcmp une double %.sroa.0.8.vec.extract.i, %i.bn
  %or.cond.not.i.i.i.i = or i1 %i.bt, %i.bs
  %i.bu = select i1 %or.cond.not.i.i.i.i, i64 8589934591, i64 0
  br label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit

_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.bu, %bb.c ], [ 4294967297, %bb.a ], [ -1, %bb.b ] ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.5.0.i.i.i.i to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.5.0.i.i.i.i, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.bv = icmp slt i64 %.sroa.5.0.i.i.i.i, 0
  %i.bw = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond.i = or i1 %i.bv, %i.bw
  %i.bx = icmp eq i32 %.sroa.0.0.extract.trunc.i, %.sroa.3.0.extract.trunc.i
  %i.by = zext i1 %i.bx to i16
  %i.bz = or disjoint i16 %i.by, 256
  %.sroa.4.0.i = select i1 %or.cond.i, i16 0, i16 %i.bz ; 4 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i16 %.sroa.4.0.i to i8
  %.sroa.2.0.extract.shift.i.i = lshr i16 %.sroa.4.0.i, 8
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i to i8
  %i.ca = icmp ne i8 %.sroa.0.0.extract.trunc.i.i, %.sroa.2.0.extract.trunc.i.i
  %i.cb = trunc i16 %.sroa.4.0.i to i1
  %.not43 = or i1 %i.ca, %i.cb
  br i1 %.not43, label %bb.d, label %_ZN4CGAL8internal13cgal_and_implIZNS_11collinearC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S6_E11result_typeERKS6_SA_SA_SA_SA_SA_SA_SA_SA_EUlvE_EENS_9UncertainIbEERKSD_OS6_.exit

bb.d:                                             ; preds = %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit
  %i.cc = load <2 x double>, ptr %8, align 16, !tbaa !146
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ce = load <2 x double>, ptr %2, align 16, !tbaa !146
  %i.cf = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ce) #28, !srcloc !401
  %i.cg = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cd) #27, !srcloc !402
  %i.ch = fadd <2 x double> %i.cf, %i.cg
  %i.ci = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ch) #28, !srcloc !401
  %i.cj = load <2 x double>, ptr %8, align 16, !tbaa !146
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cl = load <2 x double>, ptr %5, align 16, !tbaa !146
  %i.cm = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cl) #28, !srcloc !401
  %i.cn = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ck) #27, !srcloc !402
  %i.co = fadd <2 x double> %i.cm, %i.cn
  %i.cp = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.co) #28, !srcloc !401
  %i.cq = bitcast <2 x double> %i.cp to <2 x i64>
  %i.cr = xor <2 x i64> %i.cq, <i64 -9223372036854775808, i64 0>
  %i.cs = bitcast <2 x i64> %i.cr to <2 x double> ; 2 uses
  %i.ct = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cs) #28, !srcloc !401 ; 3 uses
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cv = fmul <2 x double> %i.ae, %i.ct
  %i.cw = fmul <2 x double> %i.ae, %i.cu
  %i.cx = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.cw, <2 x double> splat (double +inf))
  %i.cy = fmul <2 x double> %i.ag, %i.ct
  %i.cz = fmul <2 x double> %i.ag, %i.cu
  %i.da = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.cz, <2 x double> splat (double +inf))
  %i.db = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.cv, <2 x double> %i.cx)
  %i.dc = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.cy, <2 x double> %i.da)
  %i.dd = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.db, <2 x double> %i.dc)
  %i.de = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dd) #28, !srcloc !401 ; 2 uses
  %i.df = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ci) #27, !srcloc !402 ; 5 uses
  %i.dg = fneg <2 x double> %i.df
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.di = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.az) #28, !srcloc !401 ; 3 uses
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dk = fmul <2 x double> %i.df, %i.di
  %i.dl = fmul <2 x double> %i.df, %i.dj
  %i.dm = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.dl, <2 x double> splat (double +inf))
  %i.dn = fmul <2 x double> %i.dh, %i.di
  %i.do = fmul <2 x double> %i.dh, %i.dj
  %i.dp = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.do, <2 x double> splat (double +inf))
  %i.dq = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dk, <2 x double> %i.dm)
  %i.dr = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dn, <2 x double> %i.dp)
  %i.ds = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dq, <2 x double> %i.dr)
  %i.dt = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ds) #28, !srcloc !401 ; 2 uses
  %i.du = extractelement <2 x double> %i.de, i64 0
  %i.dv = fneg double %i.du                       ; 2 uses
  %.sroa.0.8.vec.extract.i18 = extractelement <2 x double> %i.dt, i64 1 ; 2 uses
  %i.dw = fcmp olt double %.sroa.0.8.vec.extract.i18, %i.dv
  br i1 %i.dw, label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit21, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dx = extractelement <2 x double> %i.dt, i64 0
  %i.dy = fneg double %i.dx                       ; 2 uses
  %.sroa.05.8.vec.extract.i21 = extractelement <2 x double> %i.de, i64 1 ; 2 uses
  %i.dz = fcmp olt double %.sroa.05.8.vec.extract.i21, %i.dy
  br i1 %i.dz, label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit21, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ea = fcmp une double %.sroa.05.8.vec.extract.i21, %i.dy
  %i.eb = fcmp une double %.sroa.0.8.vec.extract.i18, %i.dv
  %or.cond.not.i.i.i.i19 = or i1 %i.eb, %i.ea
  %i.ec = select i1 %or.cond.not.i.i.i.i19, i64 8589934591, i64 0
  br label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit21

_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit21: ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.5.0.i.i.i.i20 = phi i64 [ %i.ec, %bb.f ], [ 4294967297, %bb.d ], [ -1, %bb.e ] ; 3 uses
  %.sroa.0.0.extract.trunc.i22 = trunc i64 %.sroa.5.0.i.i.i.i20 to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i23 = lshr i64 %.sroa.5.0.i.i.i.i20, 32
  %.sroa.3.0.extract.trunc.i24 = trunc nuw i64 %.sroa.3.0.extract.shift.i23 to i32
  %i.ed = icmp slt i64 %.sroa.5.0.i.i.i.i20, 0
  %i.ee = icmp sgt i32 %.sroa.0.0.extract.trunc.i22, 0
  %or.cond.i25 = or i1 %i.ed, %i.ee
  %i.ef = icmp eq i32 %.sroa.0.0.extract.trunc.i22, %.sroa.3.0.extract.trunc.i24
  %i.eg = zext i1 %i.ef to i16
  %i.eh = or disjoint i16 %i.eg, 256
  %.sroa.4.0.i26 = select i1 %or.cond.i25, i16 0, i16 %i.eh ; 4 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i16 %.sroa.4.0.i26 to i8
  %.sroa.2.0.extract.shift.i.i.i = lshr i16 %.sroa.4.0.i26, 8
  %.sroa.2.0.extract.trunc.i.i.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i.i to i8
  %i.ei = icmp ne i8 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.2.0.extract.trunc.i.i.i
  %i.ej = trunc i16 %.sroa.4.0.i26 to i1
  %.not8.i = or i1 %i.ei, %i.ej
  br i1 %.not8.i, label %bb.g, label %_ZN4CGAL8internal13cgal_and_implIZNS_11collinearC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S6_E11result_typeERKS6_SA_SA_SA_SA_SA_SA_SA_SA_EUlvE_EENS_9UncertainIbEERKSD_OS6_.exit

bb.g:                                             ; preds = %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit21
  %i.ek = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cs) #28, !srcloc !401 ; 3 uses
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.em = fmul <2 x double> %i.av, %i.ek
  %i.en = fmul <2 x double> %i.av, %i.el
  %i.eo = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.en, <2 x double> splat (double +inf))
  %i.ep = fmul <2 x double> %i.ax, %i.ek
  %i.eq = fmul <2 x double> %i.ax, %i.el
  %i.er = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.eq, <2 x double> splat (double +inf))
  %i.es = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.em, <2 x double> %i.eo)
  %i.et = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ep, <2 x double> %i.er)
  %i.eu = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.es, <2 x double> %i.et)
  %i.ev = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.eu) #28, !srcloc !401 ; 2 uses
  %i.ew = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ai) #28, !srcloc !401 ; 3 uses
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ey = fmul <2 x double> %i.df, %i.ew
  %i.ez = fmul <2 x double> %i.df, %i.ex
  %i.fa = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ez, <2 x double> splat (double +inf))
  %i.fb = fmul <2 x double> %i.dh, %i.ew
  %i.fc = fmul <2 x double> %i.dh, %i.ex
  %i.fd = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fc, <2 x double> splat (double +inf))
  %i.fe = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ey, <2 x double> %i.fa)
  %i.ff = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fb, <2 x double> %i.fd)
  %i.fg = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fe, <2 x double> %i.ff)
  %i.fh = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fg) #28, !srcloc !401 ; 2 uses
  %i.fi = extractelement <2 x double> %i.ev, i64 0
  %i.fj = fneg double %i.fi                       ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.fh, i64 1 ; 2 uses
  %i.fk = fcmp olt double %.sroa.0.8.vec.extract.i.i.i, %i.fj
  br i1 %i.fk, label %_ZZN4CGAL11collinearC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S4_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_ENKUlvE_clEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fl = extractelement <2 x double> %i.fh, i64 0
  %i.fm = fneg double %i.fl                       ; 2 uses
  %.sroa.05.8.vec.extract.i.i.i = extractelement <2 x double> %i.ev, i64 1 ; 2 uses
  %i.fn = fcmp olt double %.sroa.05.8.vec.extract.i.i.i, %i.fm
  br i1 %i.fn, label %_ZZN4CGAL11collinearC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S4_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_ENKUlvE_clEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fo = fcmp une double %.sroa.05.8.vec.extract.i.i.i, %i.fm
  %i.fp = fcmp une double %.sroa.0.8.vec.extract.i.i.i, %i.fj
  %or.cond.not.i.i.i.i.i.i = or i1 %i.fp, %i.fo
  %i.fq = select i1 %or.cond.not.i.i.i.i.i.i, i64 8589934591, i64 0
  br label %_ZZN4CGAL11collinearC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S4_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_ENKUlvE_clEv.exit.i

_ZZN4CGAL11collinearC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S4_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_ENKUlvE_clEv.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.fq, %bb.i ], [ 4294967297, %bb.g ], [ -1, %bb.h ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i7.i = trunc i64 %.sroa.5.0.i.i.i.i.i.i to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i to i32
  %i.fr = icmp slt i64 %.sroa.5.0.i.i.i.i.i.i, 0
  %i.fs = icmp sgt i32 %.sroa.0.0.extract.trunc.i.i7.i, 0
  %or.cond.i.i.i = or i1 %i.fr, %i.fs
  %i.ft = icmp eq i32 %.sroa.0.0.extract.trunc.i.i7.i, %.sroa.3.0.extract.trunc.i.i.i
  %i.fu = zext i1 %i.ft to i16
  %i.fv = or disjoint i16 %i.fu, 256
  %.sroa.4.0.i.i.i = select i1 %or.cond.i.i.i, i16 0, i16 %i.fv
  %i.fw = and i16 %.sroa.4.0.i, %.sroa.4.0.i.i.i
  %i.fx = and i16 %i.fw, %.sroa.4.0.i26
  br label %_ZN4CGAL8internal13cgal_and_implIZNS_11collinearC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S6_E11result_typeERKS6_SA_SA_SA_SA_SA_SA_SA_SA_EUlvE_EENS_9UncertainIbEERKSD_OS6_.exit

_ZN4CGAL8internal13cgal_and_implIZNS_11collinearC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S6_E11result_typeERKS6_SA_SA_SA_SA_SA_SA_SA_SA_EUlvE_EENS_9UncertainIbEERKSD_OS6_.exit: ; preds = %_ZZN4CGAL11collinearC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S4_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_ENKUlvE_clEv.exit.i, %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit21, %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit
  %.sroa.033.0.insert.insert = phi i16 [ 0, %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit ], [ %i.fx, %_ZZN4CGAL11collinearC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S4_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_ENKUlvE_clEv.exit.i ], [ 0, %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit21 ]
  ret i16 %.sroa.033.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x double> @llvm.x86.sse2.min.pd(<2 x double>, <2 x double>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x double> @llvm.x86.sse2.max.pd(<2 x double>, <2 x double>) #20

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4CGAL11collinearC3INS_9cpp_floatEEENS_8Equal_toIT_S3_E11result_typeERKS3_S7_S7_S7_S7_S7_S7_S7_S7_(ptr noundef nonnull align 16 dereferenceable(84) %0, ptr noundef nonnull align 16 dereferenceable(84) %1, ptr noundef nonnull align 16 dereferenceable(84) %2, ptr noundef nonnull align 16 dereferenceable(84) %3, ptr noundef nonnull align 16 dereferenceable(84) %4, ptr noundef nonnull align 16 dereferenceable(84) %5, ptr noundef nonnull align 16 dereferenceable(84) %6, ptr noundef nonnull align 16 dereferenceable(84) %7, ptr noundef nonnull align 16 dereferenceable(84) %8) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.CGAL::cpp_float", align 16  ; 14 uses
  %10 = alloca %"class.CGAL::cpp_float", align 16 ; 14 uses
  %11 = alloca %"class.CGAL::cpp_float", align 16 ; 14 uses
  %12 = alloca %"class.CGAL::cpp_float", align 16 ; 14 uses
  %13 = alloca %"class.CGAL::cpp_float", align 16 ; 14 uses
  %14 = alloca %"class.CGAL::cpp_float", align 16 ; 14 uses
  %15 = alloca %"class.CGAL::Uncertain", align 2  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %9, ptr noundef nonnull align 16 dereferenceable(84) %0, ptr noundef nonnull align 16 dereferenceable(84) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %10, ptr noundef nonnull align 16 dereferenceable(84) %3, ptr noundef nonnull align 16 dereferenceable(84) %6)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %11, ptr noundef nonnull align 16 dereferenceable(84) %1, ptr noundef nonnull align 16 dereferenceable(84) %7)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %12, ptr noundef nonnull align 16 dereferenceable(84) %4, ptr noundef nonnull align 16 dereferenceable(84) %7)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.a = invoke noundef i32 @_ZN4CGAL19sign_of_determinantINS_9cpp_floatEEENS_3SgnIT_E11result_typeERKS3_S7_S7_S7_(ptr noundef nonnull align 16 dereferenceable(84) %9, ptr noundef nonnull align 16 dereferenceable(84) %10, ptr noundef nonnull align 16 dereferenceable(84) %11, ptr noundef nonnull align 16 dereferenceable(84) %12)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.j, label %bb.y

bb.f:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4CGAL9cpp_floatD2Ev.exit51

bb.g:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4CGAL9cpp_floatD2Ev.exit49

bb.h:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4CGAL9cpp_floatD2Ev.exit47

bb.i:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %13, ptr noundef nonnull align 16 dereferenceable(84) %2, ptr noundef nonnull align 16 dereferenceable(84) %8)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %14, ptr noundef nonnull align 16 dereferenceable(84) %5, ptr noundef nonnull align 16 dereferenceable(84) %8)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.g = invoke noundef i32 @_ZN4CGAL19sign_of_determinantINS_9cpp_floatEEENS_3SgnIT_E11result_typeERKS3_S7_S7_S7_(ptr noundef nonnull align 16 dereferenceable(84) %9, ptr noundef nonnull align 16 dereferenceable(84) %10, ptr noundef nonnull align 16 dereferenceable(84) %13, ptr noundef nonnull align 16 dereferenceable(84) %14)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.h = icmp eq i32 %i.g, 0
  %.sroa.054.0.insert.insert = select i1 %i.h, i16 257, i16 0 ; 4 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i16 %.sroa.054.0.insert.insert to i8
  %.sroa.2.0.extract.shift.i.i.i = lshr i16 %.sroa.054.0.insert.insert, 8
  %.sroa.2.0.extract.trunc.i.i.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i.i to i8
  %i.i = icmp ne i8 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.2.0.extract.trunc.i.i.i
  %i.j = trunc i16 %.sroa.054.0.insert.insert to i1
  %.not6.i = or i1 %i.i, %i.j
  br i1 %.not6.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.k = invoke noundef i32 @_ZN4CGAL19sign_of_determinantINS_9cpp_floatEEENS_3SgnIT_E11result_typeERKS3_S7_S7_S7_(ptr noundef nonnull align 16 dereferenceable(84) %11, ptr noundef nonnull align 16 dereferenceable(84) %12, ptr noundef nonnull align 16 dereferenceable(84) %13, ptr noundef nonnull align 16 dereferenceable(84) %14)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.n
  %i.l = icmp eq i32 %i.k, 0
  %i.m = select i1 %i.l, i16 %.sroa.054.0.insert.insert, i16 0
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %.noexc
  %.sroa.05.0.i = phi i16 [ %i.m, %.noexc ], [ 0, %bb.m ]
  store i16 %.sroa.05.0.i, ptr %15, align 2
  %i.n = invoke noundef zeroext i1 @_ZNK4CGAL9UncertainIbE12make_certainEv(ptr noundef nonnull align 1 dereferenceable(2) %15)
          to label %_ZNK4CGAL9UncertainIbEcvbEv.exit unwind label %bb.u

_ZNK4CGAL9UncertainIbEcvbEv.exit:                 ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 73
  %i.p = load i8, ptr %i.o, align 1, !tbaa !355, !range !13, !noundef !14
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 74
  %i.s = load i8, ptr %i.r, align 2, !range !13
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i.i.i = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK4CGAL9UncertainIbEcvbEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i64, ptr %14, align 16
  %i.x = shl i64 %i.w, 3
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.x) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit

_ZN4CGAL9cpp_floatD2Ev.exit:                      ; preds = %_ZNK4CGAL9UncertainIbEcvbEv.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 73
  %i.z = load i8, ptr %i.y, align 1, !tbaa !355, !range !13, !noundef !14
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 74
  %i.ac = load i8, ptr %i.ab, align 2, !range !13
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i.i.i32 = select i1 %i.aa, i1 true, i1 %i.ad
  br i1 %or.cond.i.i.i32, label %_ZN4CGAL9cpp_floatD2Ev.exit33, label %bb.q

bb.q:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load i64, ptr %13, align 16
  %i.ah = shl i64 %i.ag, 3
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ah) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit33

_ZN4CGAL9cpp_floatD2Ev.exit33:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.y

bb.r:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4CGAL9cpp_floatD2Ev.exit37

bb.s:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4CGAL9cpp_floatD2Ev.exit35

bb.t:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.o, %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.al, %bb.u ], [ %i.ak, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 73
  %i.an = load i8, ptr %i.am, align 1, !tbaa !355, !range !13, !noundef !14
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 74
  %i.aq = load i8, ptr %i.ap, align 2, !range !13
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i.i.i34 = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond.i.i.i34, label %_ZN4CGAL9cpp_floatD2Ev.exit35, label %bb.w
end_hunk_0
begin_hunk_1_@_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors24Less_distance_to_point_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEEbDpRKS18_:bb.a
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !355, !range !13, !noundef !14
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 170
  %i.cd = load i8, ptr %i.cc, align 2, !range !13
  %i.ce = trunc nuw i8 %i.cd to i1
  %or.cond.i.i.i.1.i.i.i17 = select i1 %i.cb, i1 true, i1 %i.ce
  br i1 %or.cond.i.i.i.1.i.i.i17, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18, label %bb.l

bb.l:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i16
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = load i64, ptr %i.a, align 16
  %i.ci = shl i64 %i.ch, 3
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ci) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18:            ; preds = %bb.l, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i16
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 73
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !355, !range !13, !noundef !14
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 74
  %i.cn = load i8, ptr %i.cm, align 2, !range !13
  %i.co = trunc nuw i8 %i.cn to i1
  %or.cond.i.i.i.2.i.i.i19 = select i1 %i.cl, i1 true, i1 %i.co
  br i1 %or.cond.i.i.i.2.i.i.i19, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit20, label %bb.m

bb.m:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = load i64, ptr %4, align 16
  %i.cs = shl i64 %i.cr, 3
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cs) #38
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit20

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit20: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18, %bb.m
  %i.ct = icmp eq i32 %i.g, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i1 %i.ct

bb.n:                                             ; preds = %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.b
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.c
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %6) #28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.p ], [ %i.cv, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %5) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.cu, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i16 @_ZN4CGAL27has_smaller_dist_to_pointC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S4_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8) local_unnamed_addr #29 comdat {
bb.a:
  %i.a = load <2 x double>, ptr %3, align 16, !tbaa !146
  %i.b = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.c = load <2 x double>, ptr %0, align 16, !tbaa !146
  %i.d = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.c) #28, !srcloc !401
  %i.e = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.b) #27, !srcloc !402
  %i.f = fadd <2 x double> %i.d, %i.e
  %i.g = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.f) #28, !srcloc !401 ; 3 uses
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.i = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.g, <2 x double> %i.h)
  %i.j = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.g, <2 x double> %i.h)
  %i.k = shufflevector <2 x double> %i.i, <2 x double> %i.j, <2 x i32> <i32 0, i32 3>
  %i.l = tail call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.k, <2 x double> <double -0.000000e+00, double poison>)
  %i.m = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.l) #28, !srcloc !401 ; 2 uses
  %i.n = bitcast <2 x double> %i.m to <2 x i64>
  %i.o = xor <2 x i64> %i.n, <i64 -9223372036854775808, i64 0>
  %i.p = bitcast <2 x i64> %i.o to <2 x double>
  %i.q = fmul <2 x double> %i.m, %i.p
  %i.r = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.q) #28, !srcloc !401
  %i.s = load <2 x double>, ptr %4, align 16, !tbaa !146
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.u = load <2 x double>, ptr %1, align 16, !tbaa !146
  %i.v = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u) #28, !srcloc !401
  %i.w = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.t) #27, !srcloc !402
  %i.x = fadd <2 x double> %i.v, %i.w
  %i.y = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.x) #28, !srcloc !401 ; 3 uses
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aa = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.y, <2 x double> %i.z)
  %i.ab = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.y, <2 x double> %i.z)
  %i.ac = shufflevector <2 x double> %i.aa, <2 x double> %i.ab, <2 x i32> <i32 0, i32 3>
  %i.ad = tail call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.ac, <2 x double> <double -0.000000e+00, double poison>)
  %i.ae = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ad) #28, !srcloc !401 ; 2 uses
  %i.af = bitcast <2 x double> %i.ae to <2 x i64>
  %i.ag = xor <2 x i64> %i.af, <i64 -9223372036854775808, i64 0>
  %i.ah = bitcast <2 x i64> %i.ag to <2 x double>
  %i.ai = fmul <2 x double> %i.ae, %i.ah
  %i.aj = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ai) #28, !srcloc !401
  %i.ak = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.r) #28, !srcloc !401
  %i.al = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aj) #27, !srcloc !402
  %i.am = fadd <2 x double> %i.ak, %i.al
  %i.an = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.am) #28, !srcloc !401
  %i.ao = load <2 x double>, ptr %5, align 16, !tbaa !146
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aq = load <2 x double>, ptr %2, align 16, !tbaa !146
  %i.ar = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aq) #28, !srcloc !401
  %i.as = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ap) #27, !srcloc !402
  %i.at = fadd <2 x double> %i.ar, %i.as
  %i.au = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.at) #28, !srcloc !401 ; 3 uses
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aw = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.au, <2 x double> %i.av)
  %i.ax = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.au, <2 x double> %i.av)
  %i.ay = shufflevector <2 x double> %i.aw, <2 x double> %i.ax, <2 x i32> <i32 0, i32 3>
  %i.az = tail call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.ay, <2 x double> <double -0.000000e+00, double poison>)
  %i.ba = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.az) #28, !srcloc !401 ; 2 uses
  %i.bb = bitcast <2 x double> %i.ba to <2 x i64>
  %i.bc = xor <2 x i64> %i.bb, <i64 -9223372036854775808, i64 0>
  %i.bd = bitcast <2 x i64> %i.bc to <2 x double>
  %i.be = fmul <2 x double> %i.ba, %i.bd
  %i.bf = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.be) #28, !srcloc !401
  %i.bg = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.an) #28, !srcloc !401
  %i.bh = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bf) #27, !srcloc !402
  %i.bi = fadd <2 x double> %i.bg, %i.bh
  %i.bj = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bi) #28, !srcloc !401 ; 2 uses
  %i.bk = load <2 x double>, ptr %6, align 16, !tbaa !146
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bm = load <2 x double>, ptr %0, align 16, !tbaa !146
  %i.bn = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bm) #28, !srcloc !401
  %i.bo = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bl) #27, !srcloc !402
  %i.bp = fadd <2 x double> %i.bn, %i.bo
  %i.bq = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bp) #28, !srcloc !401 ; 3 uses
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bs = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bq, <2 x double> %i.br)
  %i.bt = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bq, <2 x double> %i.br)
  %i.bu = shufflevector <2 x double> %i.bs, <2 x double> %i.bt, <2 x i32> <i32 0, i32 3>
  %i.bv = tail call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.bu, <2 x double> <double -0.000000e+00, double poison>)
  %i.bw = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bv) #28, !srcloc !401 ; 2 uses
  %i.bx = bitcast <2 x double> %i.bw to <2 x i64>
  %i.by = xor <2 x i64> %i.bx, <i64 -9223372036854775808, i64 0>
  %i.bz = bitcast <2 x i64> %i.by to <2 x double>
  %i.ca = fmul <2 x double> %i.bw, %i.bz
  %i.cb = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ca) #28, !srcloc !401
  %i.cc = load <2 x double>, ptr %7, align 16, !tbaa !146
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ce = load <2 x double>, ptr %1, align 16, !tbaa !146
  %i.cf = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ce) #28, !srcloc !401
  %i.cg = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cd) #27, !srcloc !402
  %i.ch = fadd <2 x double> %i.cf, %i.cg
  %i.ci = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ch) #28, !srcloc !401 ; 3 uses
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ck = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ci, <2 x double> %i.cj)
  %i.cl = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ci, <2 x double> %i.cj)
  %i.cm = shufflevector <2 x double> %i.ck, <2 x double> %i.cl, <2 x i32> <i32 0, i32 3>
  %i.cn = tail call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.cm, <2 x double> <double -0.000000e+00, double poison>)
  %i.co = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cn) #28, !srcloc !401 ; 2 uses
  %i.cp = bitcast <2 x double> %i.co to <2 x i64>
  %i.cq = xor <2 x i64> %i.cp, <i64 -9223372036854775808, i64 0>
  %i.cr = bitcast <2 x i64> %i.cq to <2 x double>
  %i.cs = fmul <2 x double> %i.co, %i.cr
  %i.ct = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cs) #28, !srcloc !401
  %i.cu = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cb) #28, !srcloc !401
  %i.cv = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ct) #27, !srcloc !402
  %i.cw = fadd <2 x double> %i.cu, %i.cv
  %i.cx = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cw) #28, !srcloc !401
  %i.cy = load <2 x double>, ptr %8, align 16, !tbaa !146
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.da = load <2 x double>, ptr %2, align 16, !tbaa !146
  %i.db = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.da) #28, !srcloc !401
  %i.dc = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cz) #27, !srcloc !402
  %i.dd = fadd <2 x double> %i.db, %i.dc
  %i.de = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dd) #28, !srcloc !401 ; 3 uses
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dg = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.de, <2 x double> %i.df)
  %i.dh = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.de, <2 x double> %i.df)
  %i.di = shufflevector <2 x double> %i.dg, <2 x double> %i.dh, <2 x i32> <i32 0, i32 3>
  %i.dj = tail call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.di, <2 x double> <double -0.000000e+00, double poison>)
  %i.dk = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dj) #28, !srcloc !401 ; 2 uses
  %i.dl = bitcast <2 x double> %i.dk to <2 x i64>
  %i.dm = xor <2 x i64> %i.dl, <i64 -9223372036854775808, i64 0>
  %i.dn = bitcast <2 x i64> %i.dm to <2 x double>
  %i.do = fmul <2 x double> %i.dk, %i.dn
  %i.dp = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.do) #28, !srcloc !401
  %i.dq = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cx) #28, !srcloc !401
  %i.dr = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dp) #27, !srcloc !402
  %i.ds = fadd <2 x double> %i.dq, %i.dr
  %i.dt = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ds) #28, !srcloc !401 ; 2 uses
  %i.du = extractelement <2 x double> %i.bj, i64 0
  %i.dv = fneg double %i.du                       ; 2 uses
  %.sroa.0.8.vec.extract.i = extractelement <2 x double> %i.dt, i64 1 ; 2 uses
  %i.dw = fcmp olt double %.sroa.0.8.vec.extract.i, %i.dv
  br i1 %i.dw, label %_ZN4CGAL19cmp_dist_to_pointC3INS_11Interval_ntILb0EEEEENS_7CompareIT_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.dx = extractelement <2 x double> %i.dt, i64 0
  %i.dy = fneg double %i.dx                       ; 2 uses
  %.sroa.012.8.vec.extract.i = extractelement <2 x double> %i.bj, i64 1 ; 2 uses
  %i.dz = fcmp olt double %.sroa.012.8.vec.extract.i, %i.dy
  br i1 %i.dz, label %_ZN4CGAL19cmp_dist_to_pointC3INS_11Interval_ntILb0EEEEENS_7CompareIT_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ea = fcmp une double %.sroa.012.8.vec.extract.i, %i.dy
  %i.eb = fcmp une double %.sroa.0.8.vec.extract.i, %i.dv
  %or.cond.not.i.i.i.i = or i1 %i.eb, %i.ea
  %i.ec = select i1 %or.cond.not.i.i.i.i, i64 8589934591, i64 0
  br label %_ZN4CGAL19cmp_dist_to_pointC3INS_11Interval_ntILb0EEEEENS_7CompareIT_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_.exit

_ZN4CGAL19cmp_dist_to_pointC3INS_11Interval_ntILb0EEEEENS_7CompareIT_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.ec, %bb.c ], [ 4294967297, %bb.a ], [ -1, %bb.b ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.5.0.i.i.i.i to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.5.0.i.i.i.i, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32 ; 2 uses
  %i.ed = icmp slt i32 %.sroa.3.0.extract.trunc.i, -1
  %i.ee = icmp sgt i32 %.sroa.0.0.extract.trunc.i, -1
  %or.cond.i = or i1 %i.ee, %i.ed
  %i.ef = icmp eq i32 %.sroa.0.0.extract.trunc.i, %.sroa.3.0.extract.trunc.i
  %i.eg = zext i1 %i.ef to i16
  %i.eh = or disjoint i16 %i.eg, 256
  %.sroa.4.0.i = select i1 %or.cond.i, i16 0, i16 %i.eh
  ret i16 %.sroa.4.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x double> @llvm.x86.sse2.min.sd(<2 x double>, <2 x double>) #20

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4CGAL19cmp_dist_to_pointC3INS_9cpp_floatEEENS_7CompareIT_E11result_typeERKS3_S7_S7_S7_S7_S7_S7_S7_S7_(ptr noundef nonnull align 16 dereferenceable(84) %0, ptr noundef nonnull align 16 dereferenceable(84) %1, ptr noundef nonnull align 16 dereferenceable(84) %2, ptr noundef nonnull align 16 dereferenceable(84) %3, ptr noundef nonnull align 16 dereferenceable(84) %4, ptr noundef nonnull align 16 dereferenceable(84) %5, ptr noundef nonnull align 16 dereferenceable(84) %6, ptr noundef nonnull align 16 dereferenceable(84) %7, ptr noundef nonnull align 16 dereferenceable(84) %8) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.CGAL::cpp_float", align 16  ; 14 uses
  %10 = alloca %"class.CGAL::cpp_float", align 16 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZN4CGAL18squared_distanceC3INS_9cpp_floatEEET_RKS2_S4_S4_S4_S4_S4_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %9, ptr noundef nonnull align 16 dereferenceable(84) %0, ptr noundef nonnull align 16 dereferenceable(84) %1, ptr noundef nonnull align 16 dereferenceable(84) %2, ptr noundef nonnull align 16 dereferenceable(84) %3, ptr noundef nonnull align 16 dereferenceable(84) %4, ptr noundef nonnull align 16 dereferenceable(84) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZN4CGAL18squared_distanceC3INS_9cpp_floatEEET_RKS2_S4_S4_S4_S4_S4_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %10, ptr noundef nonnull align 16 dereferenceable(84) %0, ptr noundef nonnull align 16 dereferenceable(84) %1, ptr noundef nonnull align 16 dereferenceable(84) %2, ptr noundef nonnull align 16 dereferenceable(84) %6, ptr noundef nonnull align 16 dereferenceable(84) %7, ptr noundef nonnull align 16 dereferenceable(84) %8)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef zeroext i1 @_ZN4CGALltERKNS_9cpp_floatES2_(ptr noundef nonnull align 16 dereferenceable(84) %9, ptr noundef nonnull align 16 dereferenceable(84) %10)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  br i1 %i.a, label %_ZN4CGAL7compareINS_9cpp_floatES1_EENS_22Real_embeddable_traitsINS_15Coercion_traitsIT_T0_E4TypeEE7Compare11result_typeERKS4_RKS5_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.b = invoke noundef zeroext i1 @_ZN4CGALltERKNS_9cpp_floatES2_(ptr noundef nonnull align 16 dereferenceable(84) %10, ptr noundef nonnull align 16 dereferenceable(84) %9)
          to label %.noexc15 unwind label %bb.g

.noexc15:                                         ; preds = %bb.c
  %..i.i.i = zext i1 %i.b to i32
  br label %_ZN4CGAL7compareINS_9cpp_floatES1_EENS_22Real_embeddable_traitsINS_15Coercion_traitsIT_T0_E4TypeEE7Compare11result_typeERKS4_RKS5_.exit

_ZN4CGAL7compareINS_9cpp_floatES1_EENS_22Real_embeddable_traitsINS_15Coercion_traitsIT_T0_E4TypeEE7Compare11result_typeERKS4_RKS5_.exit: ; preds = %.noexc15, %.noexc
  %.0.i.i.i = phi i32 [ -1, %.noexc ], [ %..i.i.i, %.noexc15 ]
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 73
  %i.d = load i8, ptr %i.c, align 1, !tbaa !355, !range !13, !noundef !14
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 74
  %i.g = load i8, ptr %i.f, align 2, !range !13
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i.i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4CGAL7compareINS_9cpp_floatES1_EENS_22Real_embeddable_traitsINS_15Coercion_traitsIT_T0_E4TypeEE7Compare11result_typeERKS4_RKS5_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i64, ptr %10, align 16
  %i.l = shl i64 %i.k, 3
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.l) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit

_ZN4CGAL9cpp_floatD2Ev.exit:                      ; preds = %_ZN4CGAL7compareINS_9cpp_floatES1_EENS_22Real_embeddable_traitsINS_15Coercion_traitsIT_T0_E4TypeEE7Compare11result_typeERKS4_RKS5_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 73
  %i.n = load i8, ptr %i.m, align 1, !tbaa !355, !range !13, !noundef !14
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 74
  %i.q = load i8, ptr %i.p, align 2, !range !13
  %i.r = trunc nuw i8 %i.q to i1
  %or.cond.i.i.i16 = select i1 %i.o, i1 true, i1 %i.r
  br i1 %or.cond.i.i.i16, label %_ZN4CGAL9cpp_floatD2Ev.exit17, label %bb.e

bb.e:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load i64, ptr %9, align 16
  %i.v = shl i64 %i.u, 3
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.v) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit17

_ZN4CGAL9cpp_floatD2Ev.exit17:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  ret i32 %.0.i.i.i

bb.f:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4CGAL9cpp_floatD2Ev.exit19

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 73
  %i.z = load i8, ptr %i.y, align 1, !tbaa !355, !range !13, !noundef !14
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 74
  %i.ac = load i8, ptr %i.ab, align 2, !range !13
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i.i.i18 = select i1 %i.aa, i1 true, i1 %i.ad
  br i1 %or.cond.i.i.i18, label %_ZN4CGAL9cpp_floatD2Ev.exit19, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load i64, ptr %10, align 16
  %i.ah = shl i64 %i.ag, 3
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ah) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit19

_ZN4CGAL9cpp_floatD2Ev.exit19:                    ; preds = %bb.h, %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.x, %bb.g ], [ %i.x, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 73
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !355, !range !13, !noundef !14
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 74
  %i.am = load i8, ptr %i.al, align 2, !range !13
  %i.an = trunc nuw i8 %i.am to i1
  %or.cond.i.i.i20 = select i1 %i.ak, i1 true, i1 %i.an
  br i1 %or.cond.i.i.i20, label %_ZN4CGAL9cpp_floatD2Ev.exit21, label %bb.i

bb.i:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit19
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load i64, ptr %9, align 16
  %i.ar = shl i64 %i.aq, 3
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.ar) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit21

_ZN4CGAL9cpp_floatD2Ev.exit21:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit19, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL18squared_distanceC3INS_9cpp_floatEEET_RKS2_S4_S4_S4_S4_S4_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::cpp_float") align 16 %0, ptr noundef nonnull align 16 dereferenceable(84) %1, ptr noundef nonnull align 16 dereferenceable(84) %2, ptr noundef nonnull align 16 dereferenceable(84) %3, ptr noundef nonnull align 16 dereferenceable(84) %4, ptr noundef nonnull align 16 dereferenceable(84) %5, ptr noundef nonnull align 16 dereferenceable(84) %6) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.CGAL::cpp_float", align 16  ; 13 uses
  %8 = alloca %"class.CGAL::cpp_float", align 16  ; 15 uses
  %9 = alloca %"class.CGAL::cpp_float", align 16  ; 15 uses
  %10 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %11 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %12 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %13 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %9, ptr noundef nonnull align 16 dereferenceable(84) %1, ptr noundef nonnull align 16 dereferenceable(84) %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.b = load i32, ptr %i.a, align 16, !tbaa !357, !noalias !494
  store i64 0, ptr %8, align 16, !tbaa !146, !alias.scope !494
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i64 1, ptr %i.c, align 16, !tbaa !352, !alias.scope !494
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i8 0, ptr %i.d, align 8, !tbaa !354, !alias.scope !494
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 73 ; 4 uses
  store i8 1, ptr %i.e, align 1, !tbaa !355, !alias.scope !494
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 74 ; 4 uses
  store i8 0, ptr %i.f, align 2, !tbaa !356, !alias.scope !494
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm512ELm0ELS3_1ELS4_0ES5_Lm512ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(84) %8, ptr noundef nonnull align 16 dereferenceable(84) %9, ptr noundef nonnull align 16 dereferenceable(84) %9)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i8, ptr %i.e, align 1, !tbaa !355, !range !13, !alias.scope !494, !noundef !14
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load i8, ptr %i.f, align 2, !range !13, !alias.scope !494
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond.i.i.i.i.i.i, label %.body, label %.body.sink.split

bb.c:                                             ; preds = %bb.a
  %i.l = shl nsw i32 %i.b, 1
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i32 %i.l, ptr %i.m, align 16, !tbaa !357, !alias.scope !494
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %11, ptr noundef nonnull align 16 dereferenceable(84) %2, ptr noundef nonnull align 16 dereferenceable(84) %5)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.o = load i32, ptr %i.n, align 16, !tbaa !357, !noalias !504
  store i64 0, ptr %10, align 16, !tbaa !146, !alias.scope !504
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i64 1, ptr %i.p, align 16, !tbaa !352, !alias.scope !504
end_hunk_1
begin_hunk_2_@_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors31Less_signed_distance_to_plane_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_3IST_EES16_S16_S16_S16_EEEbDpRKT_:bb.a
  %i.ax = load <2 x double>, ptr %5, align 8, !tbaa !36, !noalias !611 ; 3 uses
  %i.ay = fneg <2 x double> %i.ax                 ; 2 uses
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> %i.ax, <2 x i32> <i32 0, i32 2>
  %i.ba = shufflevector <2 x double> %i.ay, <2 x double> %i.ax, <2 x i32> <i32 1, i32 3>
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !36, !noalias !611 ; 2 uses
  %i.bd = fneg double %i.bc
  %i.be = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bc, i64 1
  store <2 x double> %i.az, ptr %10, align 16, !alias.scope !611
  %.sroa.04.i.i.i.i.sroa.4.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store <2 x double> %i.ba, ptr %.sroa.04.i.i.i.i.sroa.4.0..sroa_idx.i44, align 16, !alias.scope !611
  %.sroa.04.i.i.i.i.sroa.5.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %10, i64 32
  store <2 x double> %i.bf, ptr %.sroa.04.i.i.i.i.sroa.5.0..sroa_idx.i45, align 16, !alias.scope !611
  %i.bg = invoke i16 @_ZNK4CGAL23CartesianKernelFunctors31Less_signed_distance_to_plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_SA_SA_SA_(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull align 16 dereferenceable(48) %6, ptr noundef nonnull align 16 dereferenceable(48) %7, ptr noundef nonnull align 16 dereferenceable(48) %8, ptr noundef nonnull align 16 dereferenceable(48) %9, ptr noundef nonnull align 16 dereferenceable(48) %10)
          to label %bb.b unwind label %bb.c       ; 3 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %.sroa.0.0.extract.trunc.i = trunc i16 %i.bg to i8
  %.sroa.2.0.extract.shift.i = lshr i16 %i.bg, 8
  %.sroa.2.0.extract.trunc.i = trunc nuw i16 %.sroa.2.0.extract.shift.i to i8
  %i.bh = icmp ne i8 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  %i.bi = trunc i16 %i.bg to i1
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %.4 = extractvalue { ptr, i32 } %i.bj, 1
  %i.bk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #28
  %i.bl = icmp eq i32 %.4, %i.bk
  br i1 %i.bl, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.430 = extractvalue { ptr, i32 } %i.bj, 0
  %i.bm = call ptr @__cxa_begin_catch(ptr %.430) #28 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.b, %bb.d
  %.2 = phi i1 [ undef, %bb.d ], [ %i.bi, %bb.b ]
  %.1 = phi i1 [ true, %bb.d ], [ %i.bh, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.bn = load i32, ptr %i.c, align 4
  %i.bo = and i32 %i.bn, -24577
  %i.bp = or disjoint i32 %i.bo, %i.i
  store i32 %i.bp, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.1, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bq = call noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors31Less_signed_distance_to_plane_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_S16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEEbDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.merged = phi { ptr, i32 } [ %i.br, %bb.g ], [ %i.bj, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.bs = load i32, ptr %i.a, align 4
  %i.bt = and i32 %i.bs, -24577
  %i.bu = or disjoint i32 %i.bt, %i.i
  store i32 %i.bu, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %.merged

bb.i:                                             ; preds = %bb.e, %bb.f
  %.3 = phi i1 [ %i.bq, %bb.f ], [ %.2, %bb.e ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i16 @_ZNK4CGAL23CartesianKernelFunctors31Less_signed_distance_to_plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_SA_SA_SA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, ptr noundef nonnull align 16 dereferenceable(48) %2, ptr noundef nonnull align 16 dereferenceable(48) %3, ptr noundef nonnull align 16 dereferenceable(48) %4, ptr noundef nonnull align 16 dereferenceable(48) %5) local_unnamed_addr #29 comdat align 2 {
bb.a:
  %6 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %7 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %8 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %9 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %10 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %11 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %12 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %13 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %14 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.k = load <2 x double>, ptr %1, align 16, !tbaa !146
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.m = load <2 x double>, ptr %2, align 16, !tbaa !146
  %i.n = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.m) #28, !srcloc !401
  %i.o = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.l) #27, !srcloc !402
  %i.p = fadd <2 x double> %i.n, %i.o
  %i.q = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.p) #28, !srcloc !401
  store <2 x double> %i.q, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.r = load <2 x double>, ptr %i.a, align 16, !tbaa !146
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.t = load <2 x double>, ptr %i.c, align 16, !tbaa !146
  %i.u = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.t) #28, !srcloc !401
  %i.v = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.s) #27, !srcloc !402
  %i.w = fadd <2 x double> %i.u, %i.v
  %i.x = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.w) #28, !srcloc !401
  store <2 x double> %i.x, ptr %7, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.y = load <2 x double>, ptr %i.b, align 16, !tbaa !146
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aa = load <2 x double>, ptr %i.d, align 16, !tbaa !146
  %i.ab = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aa) #28, !srcloc !401
  %i.ac = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.z) #27, !srcloc !402
  %i.ad = fadd <2 x double> %i.ab, %i.ac
  %i.ae = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ad) #28, !srcloc !401
  store <2 x double> %i.ae, ptr %8, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.af = load <2 x double>, ptr %1, align 16, !tbaa !146
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = load <2 x double>, ptr %3, align 16, !tbaa !146
  %i.ai = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ah) #28, !srcloc !401
  %i.aj = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ag) #27, !srcloc !402
  %i.ak = fadd <2 x double> %i.ai, %i.aj
  %i.al = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ak) #28, !srcloc !401
  store <2 x double> %i.al, ptr %9, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.am = load <2 x double>, ptr %i.a, align 16, !tbaa !146
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ao = load <2 x double>, ptr %i.e, align 16, !tbaa !146
  %i.ap = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ao) #28, !srcloc !401
  %i.aq = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.an) #27, !srcloc !402
  %i.ar = fadd <2 x double> %i.ap, %i.aq
  %i.as = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ar) #28, !srcloc !401
  store <2 x double> %i.as, ptr %10, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.at = load <2 x double>, ptr %i.b, align 16, !tbaa !146
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.av = load <2 x double>, ptr %i.f, align 16, !tbaa !146
  %i.aw = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.av) #28, !srcloc !401
  %i.ax = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.au) #27, !srcloc !402
  %i.ay = fadd <2 x double> %i.aw, %i.ax
  %i.az = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ay) #28, !srcloc !401
  store <2 x double> %i.az, ptr %11, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ba = load <2 x double>, ptr %5, align 16, !tbaa !146
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bc = load <2 x double>, ptr %4, align 16, !tbaa !146
  %i.bd = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bc) #28, !srcloc !401
  %i.be = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bb) #27, !srcloc !402
  %i.bf = fadd <2 x double> %i.bd, %i.be
  %i.bg = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bf) #28, !srcloc !401
  store <2 x double> %i.bg, ptr %12, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.bh = load <2 x double>, ptr %i.i, align 16, !tbaa !146
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bj = load <2 x double>, ptr %i.g, align 16, !tbaa !146
  %i.bk = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bj) #28, !srcloc !401
  %i.bl = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bi) #27, !srcloc !402
  %i.bm = fadd <2 x double> %i.bk, %i.bl
  %i.bn = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bm) #28, !srcloc !401
  store <2 x double> %i.bn, ptr %13, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.bo = load <2 x double>, ptr %i.j, align 16, !tbaa !146
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bq = load <2 x double>, ptr %i.h, align 16, !tbaa !146
  %i.br = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bq) #28, !srcloc !401
  %i.bs = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bp) #27, !srcloc !402
  %i.bt = fadd <2 x double> %i.br, %i.bs
  %i.bu = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bt) #28, !srcloc !401
  store <2 x double> %i.bu, ptr %14, align 16
  %i.bv = call <2 x double> @_ZN4CGAL11determinantINS_11Interval_ntILb0EEEEET_RKS3_S5_S5_S5_S5_S5_S5_S5_S5_(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 16 dereferenceable(16) %14) ; 2 uses
  %i.bw = extractelement <2 x double> %i.bv, i64 0 ; 2 uses
  %i.bx = fneg double %i.bw
  %i.by = fcmp olt double %i.bw, 0.000000e+00
  br i1 %i.by, label %_ZN4CGAL34has_smaller_signed_dist_to_planeC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S4_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.bv, i64 1 ; 2 uses
  %i.bz = fcmp olt double %.sroa.0.8.vec.extract.i.i.i, 0.000000e+00
  br i1 %i.bz, label %_ZN4CGAL34has_smaller_signed_dist_to_planeC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S4_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ca = fcmp une double %.sroa.0.8.vec.extract.i.i.i, %i.bx
  %i.cb = select i1 %i.ca, i64 8589934591, i64 0
  br label %_ZN4CGAL34has_smaller_signed_dist_to_planeC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S4_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_.exit

_ZN4CGAL34has_smaller_signed_dist_to_planeC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S4_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.c ], [ 4294967297, %bb.a ], [ -1, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.5.0.i.i.i.i.i.i to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i, 32
  %.sroa.3.0.extract.trunc.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i to i32 ; 2 uses
  %i.cc = icmp slt i32 %.sroa.3.0.extract.trunc.i.i, -1
  %i.cd = icmp sgt i32 %.sroa.0.0.extract.trunc.i.i, -1
  %or.cond.i.i = or i1 %i.cd, %i.cc
  %i.ce = icmp eq i32 %.sroa.0.0.extract.trunc.i.i, %.sroa.3.0.extract.trunc.i.i
  %i.cf = zext i1 %i.ce to i16
  %i.cg = or disjoint i16 %i.cf, 256
  %.sroa.4.0.i.i = select i1 %or.cond.i.i, i16 0, i16 %i.cg
  ret i16 %.sroa.4.0.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors31Less_signed_distance_to_plane_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_S16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEEbDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.CGAL::Point_3.199", align 16 ; 18 uses
  %7 = alloca %"class.CGAL::Point_3.199", align 16 ; 18 uses
  %8 = alloca %"class.CGAL::Point_3.199", align 16 ; 18 uses
  %9 = alloca %"class.CGAL::Point_3.199", align 16 ; 18 uses
  %10 = alloca %"class.CGAL::Point_3.199", align 16 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.199") align 16 %6, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.199") align 16 %7, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.199") align 16 %8, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.199") align 16 %9, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.d unwind label %bb.x

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.199") align 16 %10, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.e unwind label %bb.y

bb.e:                                             ; preds = %bb.d
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 192 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 192 ; 2 uses
  %i.k = invoke noundef i32 @_ZN4CGAL26cmp_signed_dist_to_planeC3INS_9cpp_floatEEENS_7CompareIT_E11result_typeERKS3_S7_S7_S7_S7_S7_S7_S7_S7_S7_S7_S7_S7_S7_S7_(ptr noundef nonnull align 16 dereferenceable(288) %6, ptr noundef nonnull align 16 dereferenceable(84) %i.a, ptr noundef nonnull align 16 dereferenceable(84) %i.b, ptr noundef nonnull align 16 dereferenceable(288) %7, ptr noundef nonnull align 16 dereferenceable(84) %i.c, ptr noundef nonnull align 16 dereferenceable(84) %i.d, ptr noundef nonnull align 16 dereferenceable(288) %8, ptr noundef nonnull align 16 dereferenceable(84) %i.e, ptr noundef nonnull align 16 dereferenceable(84) %i.f, ptr noundef nonnull align 16 dereferenceable(288) %9, ptr noundef nonnull align 16 dereferenceable(84) %i.g, ptr noundef nonnull align 16 dereferenceable(84) %i.h, ptr noundef nonnull align 16 dereferenceable(288) %10, ptr noundef nonnull align 16 dereferenceable(84) %i.i, ptr noundef nonnull align 16 dereferenceable(84) %i.j)
          to label %bb.f unwind label %bb.z

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 265
  %i.m = load i8, ptr %i.l, align 1, !tbaa !355, !range !13, !noundef !14
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 266
  %i.p = load i8, ptr %i.o, align 2, !range !13
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.n, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 200
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load i64, ptr %i.j, align 16
  %i.u = shl i64 %i.t, 3
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.u) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i:                ; preds = %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 169
  %i.w = load i8, ptr %i.v, align 1, !tbaa !355, !range !13, !noundef !14
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 170
  %i.z = load i8, ptr %i.y, align 2, !range !13
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond.i.i.i.1.i.i.i = select i1 %i.x, i1 true, i1 %i.aa
  br i1 %or.cond.i.i.i.1.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load i64, ptr %i.i, align 16
  %i.ae = shl i64 %i.ad, 3
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ae) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i:              ; preds = %bb.h, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 73
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !355, !range !13, !noundef !14
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 74
  %i.aj = load i8, ptr %i.ai, align 2, !range !13
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond.i.i.i.2.i.i.i = select i1 %i.ah, i1 true, i1 %i.ak
  br i1 %or.cond.i.i.i.2.i.i.i, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load i64, ptr %10, align 16
  %i.ao = shl i64 %i.an, 3
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ao) #38
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 265
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !355, !range !13, !noundef !14
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 266
  %i.at = load i8, ptr %i.as, align 2, !range !13
  %i.au = trunc nuw i8 %i.at to i1
  %or.cond.i.i.i.i.i.i15 = select i1 %i.ar, i1 true, i1 %i.au
  br i1 %or.cond.i.i.i.i.i.i15, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i16, label %bb.j

bb.j:                                             ; preds = %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 200
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = load i64, ptr %i.h, align 16
  %i.ay = shl i64 %i.ax, 3
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ay) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i16

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i16:              ; preds = %bb.j, %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 169
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !355, !range !13, !noundef !14
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 170
  %i.bd = load i8, ptr %i.bc, align 2, !range !13
  %i.be = trunc nuw i8 %i.bd to i1
  %or.cond.i.i.i.1.i.i.i17 = select i1 %i.bb, i1 true, i1 %i.be
  br i1 %or.cond.i.i.i.1.i.i.i17, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18, label %bb.k

bb.k:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i16
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = load i64, ptr %i.g, align 16
  %i.bi = shl i64 %i.bh, 3
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bi) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18:            ; preds = %bb.k, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i16
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 73
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !355, !range !13, !noundef !14
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 74
  %i.bn = load i8, ptr %i.bm, align 2, !range !13
  %i.bo = trunc nuw i8 %i.bn to i1
  %or.cond.i.i.i.2.i.i.i19 = select i1 %i.bl, i1 true, i1 %i.bo
  br i1 %or.cond.i.i.i.2.i.i.i19, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit20, label %bb.l

bb.l:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = load i64, ptr %9, align 16
  %i.bs = shl i64 %i.br, 3
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bs) #38
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit20

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit20: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 265
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !355, !range !13, !noundef !14
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 266
  %i.bx = load i8, ptr %i.bw, align 2, !range !13
  %i.by = trunc nuw i8 %i.bx to i1
  %or.cond.i.i.i.i.i.i21 = select i1 %i.bv, i1 true, i1 %i.by
  br i1 %or.cond.i.i.i.i.i.i21, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i22, label %bb.m

bb.m:                                             ; preds = %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit20
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 200
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = load i64, ptr %i.f, align 16
  %i.cc = shl i64 %i.cb, 3
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cc) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i22

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i22:              ; preds = %bb.m, %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit20
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 169
end_hunk_2
begin_hunk_3_@_ZNK4CGAL8internal25Static_filters_predicates13Orientation_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_3IS6_EESE_SE_SE_:bb.a
  %i.ag = insertelement <2 x double> poison, double %i.a, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fsub <2 x double> %i.af, %i.ah          ; 5 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  %i.ak = tail call noundef double @llvm.fabs.f64(double %i.aj) ; 2 uses
  %i.al = extractelement <2 x double> %i.ai, i64 1
  %i.am = tail call noundef double @llvm.fabs.f64(double %i.al) ; 2 uses
  %i.an = fcmp olt double %i.j, %i.ak
  %.0103 = select i1 %i.an, double %i.ak, double %i.j ; 2 uses
  %i.ao = fcmp olt double %.0103, %i.am
  %.1104 = select i1 %i.ao, double %i.am, double %.0103 ; 4 uses
  %i.ap = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.ai, %i.aq
  %i.as = insertelement <2 x double> poison, double %i.i, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = shufflevector <2 x double> %i.p, <2 x double> %i.q, <2 x i32> <i32 0, i32 2>
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.au, <2 x double> %i.ar) ; 2 uses
  %i.aw = fneg <2 x double> %i.p
  %i.ax = shufflevector <2 x double> %i.ai, <2 x double> %i.av, <2 x i32> <i32 1, i32 3>
  %i.ay = fmul <2 x double> %i.ax, %i.aw
  %i.az = shufflevector <2 x double> %i.ai, <2 x double> %i.av, <2 x i32> <i32 0, i32 2>
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.q, <2 x double> %i.ay) ; 2 uses
  %i.bb = extractelement <2 x double> %i.o, i64 1
  %i.bc = extractelement <2 x double> %i.ba, i64 0
  %i.bd = extractelement <2 x double> %i.ba, i64 1
  %i.be = tail call noundef double @llvm.fmuladd.f64(double %i.bc, double %i.bb, double %i.bd) ; 2 uses
  %i.bf = fmul double %.1104, f0x3CF704402C00000A
  %i.bg = fmul double %i.bf, %.1102
  %i.bh = fmul double %i.bg, %.1100               ; 2 uses
  %i.bi = fcmp ogt double %.1104, %.1100          ; 2 uses
  %.2105 = select i1 %i.bi, double %.1100, double %.1104 ; 3 uses
  %.2 = select i1 %i.bi, double %.1104, double %.1100 ; 3 uses
  %i.bj = fcmp ogt double %.1102, %.2
  br i1 %i.bj, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bk = fcmp olt double %.1102, %.2105
  br i1 %i.bk, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.3106 = phi double [ %.2105, %bb.b ], [ %.1102, %bb.c ], [ %.2105, %bb.a ] ; 2 uses
  %.3 = phi double [ %.2, %bb.b ], [ %.2, %bb.c ], [ %.1102, %bb.a ]
  %i.bl = fcmp olt double %.3106, 1.000000e-97
  br i1 %i.bl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bm = fcmp oeq double %.3106, 0.000000e+00
  br i1 %i.bm, label %.thread, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bn = fcmp olt double %.3, f0x551C931E8AB87173
  br i1 %i.bn, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bo = fcmp ogt double %i.be, %i.bh
  br i1 %i.bo, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = fneg double %i.bh
  %i.bq = fcmp olt double %i.be, %i.bp
  br i1 %i.bq, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.e
  %i.br = tail call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_3IST_EES16_S16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.e, %bb.g, %bb.i
  %.1 = phi i32 [ %i.br, %bb.i ], [ -1, %bb.h ], [ 0, %bb.e ], [ 1, %bb.g ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_3IST_EES16_S16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %6 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %7 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %8 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %9 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %10 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %11 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %12 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %13 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = load <2 x double>, ptr %1, align 8, !tbaa !36, !noalias !641 ; 3 uses
  %i.n = fneg <2 x double> %i.m                   ; 2 uses
  %i.o = shufflevector <2 x double> %i.n, <2 x double> %i.m, <2 x i32> <i32 2, i32 0>
  %i.p = shufflevector <2 x double> %i.n, <2 x double> %i.m, <2 x i32> <i32 3, i32 1>
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !36, !noalias !641 ; 2 uses
  %i.s = fneg double %i.r
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.s, i64 1
  %i.v = load double, ptr %2, align 8, !tbaa !36, !noalias !644 ; 2 uses
  %i.w = fneg double %i.v
  %i.x = insertelement <2 x double> poison, double %i.w, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.v, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load <2 x double>, ptr %i.z, align 8, !tbaa !36, !noalias !644 ; 3 uses
  %i.ab = fneg <2 x double> %i.aa                 ; 2 uses
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> %i.aa, <2 x i32> <i32 0, i32 2>
  %i.ad = shufflevector <2 x double> %i.ab, <2 x double> %i.aa, <2 x i32> <i32 1, i32 3>
  %i.ae = load <2 x double>, ptr %3, align 8, !tbaa !36, !noalias !647 ; 3 uses
  %i.af = fneg <2 x double> %i.ae                 ; 2 uses
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.ah = shufflevector <2 x double> %i.af, <2 x double> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !36, !noalias !647 ; 2 uses
  %i.ak = fneg double %i.aj
  %i.al = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.aj, i64 1
  %i.an = load double, ptr %4, align 8, !tbaa !36, !noalias !650 ; 2 uses
  %i.ao = fneg double %i.an
  %i.ap = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.an, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load <2 x double>, ptr %i.ar, align 8, !tbaa !36, !noalias !650 ; 3 uses
  %i.at = fneg <2 x double> %i.as                 ; 2 uses
  %i.au = shufflevector <2 x double> %i.at, <2 x double> %i.as, <2 x i32> <i32 0, i32 2>
  %i.av = shufflevector <2 x double> %i.at, <2 x double> %i.as, <2 x i32> <i32 1, i32 3>
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.aw = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.y) #28, !srcloc !401
  %i.ax = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.o) #27, !srcloc !402 ; 3 uses
  %i.ay = fadd <2 x double> %i.aw, %i.ax
  %i.az = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ay) #28, !srcloc !401
  store <2 x double> %i.az, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ba = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ag) #28, !srcloc !401
  %i.bb = fadd <2 x double> %i.ax, %i.ba
  %i.bc = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bb) #28, !srcloc !401
  store <2 x double> %i.bc, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.bd = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aq) #28, !srcloc !401
  %i.be = fadd <2 x double> %i.ax, %i.bd
  %i.bf = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.be) #28, !srcloc !401
  store <2 x double> %i.bf, ptr %7, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.bg = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ac) #28, !srcloc !401
  %i.bh = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.p) #27, !srcloc !402 ; 3 uses
  %i.bi = fadd <2 x double> %i.bg, %i.bh
  %i.bj = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bi) #28, !srcloc !401
  store <2 x double> %i.bj, ptr %8, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.bk = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ah) #28, !srcloc !401
  %i.bl = fadd <2 x double> %i.bh, %i.bk
  %i.bm = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bl) #28, !srcloc !401
  store <2 x double> %i.bm, ptr %9, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.bn = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.au) #28, !srcloc !401
  %i.bo = fadd <2 x double> %i.bh, %i.bn
  %i.bp = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bo) #28, !srcloc !401
  store <2 x double> %i.bp, ptr %10, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.bq = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ad) #28, !srcloc !401
  %i.br = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u) #27, !srcloc !402 ; 3 uses
  %i.bs = fadd <2 x double> %i.bq, %i.br
  %i.bt = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bs) #28, !srcloc !401
  store <2 x double> %i.bt, ptr %11, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.bu = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.am) #28, !srcloc !401
  %i.bv = fadd <2 x double> %i.br, %i.bu
  %i.bw = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bv) #28, !srcloc !401
  store <2 x double> %i.bw, ptr %12, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.bx = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.av) #28, !srcloc !401
  %i.by = fadd <2 x double> %i.br, %i.bx
  %i.bz = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.by) #28, !srcloc !401
  store <2 x double> %i.bz, ptr %13, align 16
  %i.ca = invoke <2 x double> @_ZN4CGAL11determinantINS_11Interval_ntILb0EEEEET_RKS3_S5_S5_S5_S5_S5_S5_S5_S5_(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %13)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.cb = extractelement <2 x double> %i.ca, i64 0 ; 2 uses
  %i.cc = fneg double %i.cb
  %i.cd = fcmp olt double %i.cb, 0.000000e+00
  br i1 %i.cd, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.noexc
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.ca, i64 1 ; 2 uses
  %i.ce = fcmp olt double %.sroa.0.8.vec.extract.i.i.i, 0.000000e+00
  br i1 %i.ce, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cf = fcmp une double %.sroa.0.8.vec.extract.i.i.i, %i.cc
  %i.cg = select i1 %i.cf, i64 8589934591, i64 0
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.b, %bb.c
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.cg, %bb.c ], [ 4294967297, %.noexc ], [ -1, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.5.0.i.i.i.i.i.i to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.ch = icmp ne i32 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.ci = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.323 = extractvalue { ptr, i32 } %i.ci, 1
  %i.cj = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #28
  %i.ck = icmp eq i32 %.323, %i.cj
  br i1 %i.ck, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.327 = extractvalue { ptr, i32 } %i.ci, 0
  %i.cl = call ptr @__cxa_begin_catch(ptr %.327) #28 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.d, %bb.f
  %.2 = phi i32 [ undef, %bb.f ], [ %.sroa.0.0.extract.trunc.i, %bb.d ]
  %.1 = phi i1 [ true, %bb.f ], [ %i.ch, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.cm = load i32, ptr %i.c, align 4
  %i.cn = and i32 %i.cm, -24577
  %i.co = or disjoint i32 %i.cn, %i.i
  store i32 %i.co, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.1, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %.merged = phi { ptr, i32 } [ %i.cq, %bb.i ], [ %i.ci, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.cr = load i32, ptr %i.a, align 4
  %i.cs = and i32 %i.cr, -24577
  %i.ct = or disjoint i32 %i.cs, %i.i
  store i32 %i.ct, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %.merged

bb.k:                                             ; preds = %bb.g, %bb.h
  %.3 = phi i32 [ %i.cp, %bb.h ], [ %.2, %bb.g ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.CGAL::Point_3.199", align 16 ; 18 uses
  %6 = alloca %"class.CGAL::Point_3.199", align 16 ; 18 uses
  %7 = alloca %"class.CGAL::Point_3.199", align 16 ; 18 uses
  %8 = alloca %"class.CGAL::Point_3.199", align 16 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.199") align 16 %5, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.199") align 16 %6, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.199") align 16 %7, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.199") align 16 %8, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 2 uses
  %i.i = invoke noundef i32 @_ZN4CGAL13orientationC3INS_9cpp_floatEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_(ptr noundef nonnull align 16 dereferenceable(288) %5, ptr noundef nonnull align 16 dereferenceable(84) %i.a, ptr noundef nonnull align 16 dereferenceable(84) %i.b, ptr noundef nonnull align 16 dereferenceable(288) %6, ptr noundef nonnull align 16 dereferenceable(84) %i.c, ptr noundef nonnull align 16 dereferenceable(84) %i.d, ptr noundef nonnull align 16 dereferenceable(288) %7, ptr noundef nonnull align 16 dereferenceable(84) %i.e, ptr noundef nonnull align 16 dereferenceable(84) %i.f, ptr noundef nonnull align 16 dereferenceable(288) %8, ptr noundef nonnull align 16 dereferenceable(84) %i.g, ptr noundef nonnull align 16 dereferenceable(84) %i.h)
          to label %_ZNK4CGAL23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_S9_S9_.exit unwind label %bb.t

_ZNK4CGAL23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_S9_S9_.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 265
  %i.k = load i8, ptr %i.j, align 1, !tbaa !355, !range !13, !noundef !14
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 266
  %i.n = load i8, ptr %i.m, align 2, !range !13
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.l, i1 true, i1 %i.o
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK4CGAL23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_S9_S9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 200
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i64, ptr %i.h, align 16
  %i.s = shl i64 %i.r, 3
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.s) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i:                ; preds = %bb.e, %_ZNK4CGAL23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_S9_S9_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 169
  %i.u = load i8, ptr %i.t, align 1, !tbaa !355, !range !13, !noundef !14
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 170
  %i.x = load i8, ptr %i.w, align 2, !range !13
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond.i.i.i.1.i.i.i = select i1 %i.v, i1 true, i1 %i.y
  br i1 %or.cond.i.i.i.1.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load i64, ptr %i.g, align 16
  %i.ac = shl i64 %i.ab, 3
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i:              ; preds = %bb.f, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 73
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !355, !range !13, !noundef !14
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 74
  %i.ah = load i8, ptr %i.ag, align 2, !range !13
  %i.ai = trunc nuw i8 %i.ah to i1
  %or.cond.i.i.i.2.i.i.i = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %or.cond.i.i.i.2.i.i.i, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load i64, ptr %8, align 16
  %i.am = shl i64 %i.al, 3
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.am) #38
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 265
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !355, !range !13, !noundef !14
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 266
  %i.ar = load i8, ptr %i.aq, align 2, !range !13
  %i.as = trunc nuw i8 %i.ar to i1
  %or.cond.i.i.i.i.i.i12 = select i1 %i.ap, i1 true, i1 %i.as
  br i1 %or.cond.i.i.i.i.i.i12, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i13, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 200
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = load i64, ptr %i.f, align 16
  %i.aw = shl i64 %i.av, 3
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.aw) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i13

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i13:              ; preds = %bb.h, %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 169
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !355, !range !13, !noundef !14
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 170
  %i.bb = load i8, ptr %i.ba, align 2, !range !13
  %i.bc = trunc nuw i8 %i.bb to i1
  %or.cond.i.i.i.1.i.i.i14 = select i1 %i.az, i1 true, i1 %i.bc
  br i1 %or.cond.i.i.i.1.i.i.i14, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i15, label %bb.i

bb.i:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i13
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load i64, ptr %i.e, align 16
end_hunk_3
begin_hunk_4_@_ZN4CGAL13Convex_hull_38internal22copy_ch2_to_face_graphINS_7Point_3INS_5EpickEEENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEEEEvRKNSt7__cxx114listIT_SaISD_EEERT0_:bb.a
  store ptr %i.ao, ptr %2, align 8, !tbaa !653
  store ptr %i.bh, ptr %i.m, align 8, !tbaa !656
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am ; 2 uses
  store ptr %i.bi, ptr %i.d, align 8, !tbaa !657
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_31HalfedgeDS_in_place_list_vertexINS0_19I_Polyhedron_vertexINS0_22HalfedgeDS_vertex_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EENS0_7Point_3IS7_EEEEEEEESaISJ_EEESaISL_EE17_M_realloc_insertIJSL_EEEvN9__gnu_cxx17__normal_iteratorIPSL_SN_EEDpOT_.exit.i.i
  %i.bj = phi ptr [ %i.ad, %bb.g ], [ %i.bh, %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_31HalfedgeDS_in_place_list_vertexINS0_19I_Polyhedron_vertexINS0_22HalfedgeDS_vertex_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EENS0_7Point_3IS7_EEEEEEEESaISJ_EEESaISL_EE17_M_realloc_insertIJSL_EEEvN9__gnu_cxx17__normal_iteratorIPSL_SN_EEDpOT_.exit.i.i ] ; 2 uses
  %i.bk = phi ptr [ %i.p, %bb.g ], [ %i.ao, %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_31HalfedgeDS_in_place_list_vertexINS0_19I_Polyhedron_vertexINS0_22HalfedgeDS_vertex_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EENS0_7Point_3IS7_EEEEEEEESaISJ_EEESaISL_EE17_M_realloc_insertIJSL_EEEvN9__gnu_cxx17__normal_iteratorIPSL_SN_EEDpOT_.exit.i.i ]
  %i.bl = phi ptr [ %i.q, %bb.g ], [ %i.bi, %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_31HalfedgeDS_in_place_list_vertexINS0_19I_Polyhedron_vertexINS0_22HalfedgeDS_vertex_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EENS0_7Point_3IS7_EEEEEEEESaISJ_EEESaISL_EE17_M_realloc_insertIJSL_EEEvN9__gnu_cxx17__normal_iteratorIPSL_SN_EEDpOT_.exit.i.i ]
  %i.bm = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %.sroa.013.0.copyload = load ptr, ptr %i.bm, align 8, !tbaa !586
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %.sroa.050.0 = load ptr, ptr %.sroa.050.056, align 8, !tbaa !286 ; 2 uses
  %.not = icmp eq ptr %.sroa.050.0, %0
  br i1 %.not, label %._crit_edge, label %bb.e

.loopexit:                                        ; preds = %bb.e, %_ZNKSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_31HalfedgeDS_in_place_list_vertexINS0_19I_Polyhedron_vertexINS0_22HalfedgeDS_vertex_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EENS0_7Point_3IS7_EEEEEEEESaISJ_EEESaISL_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.l:                                             ; preds = %._crit_edge
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.n, align 8, !tbaa !274 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !656
  %i.bq = load ptr, ptr %2, align 8, !tbaa !653   ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3                 ; 2 uses
  %i.bv = icmp ugt i64 %i.bu, 3
  br i1 %i.bv, label %.lr.ph60.preheader, label %._crit_edge61

.lr.ph60.preheader:                               ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %.sroa.0.0.copyload.i.i43 = load ptr, ptr %i.bw, align 8, !tbaa !274
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i43, i64 8
  %.sroa.0.0.copyload.i.i44 = load ptr, ptr %i.bx, align 8, !tbaa !274
  br label %.lr.ph60

._crit_edge61.loopexit:                           ; preds = %bb.o
  %.pre = load ptr, ptr %2, align 8, !tbaa !653
  br label %._crit_edge61

._crit_edge61:                                    ; preds = %._crit_edge61.loopexit, %bb.l
  %i.by = phi ptr [ %.pre, %._crit_edge61.loopexit ], [ %i.bq, %bb.l ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_31HalfedgeDS_in_place_list_vertexINS0_19I_Polyhedron_vertexINS0_22HalfedgeDS_vertex_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EENS0_7Point_3IS7_EEEEEEEESaISJ_EEESaISL_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge61
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !657
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cc) #38
  br label %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_31HalfedgeDS_in_place_list_vertexINS0_19I_Polyhedron_vertexINS0_22HalfedgeDS_vertex_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EENS0_7Point_3IS7_EEEEEEEESaISJ_EEESaISL_EED2Ev.exit

_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_31HalfedgeDS_in_place_list_vertexINS0_19I_Polyhedron_vertexINS0_22HalfedgeDS_vertex_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EENS0_7Point_3IS7_EEEEEEEESaISJ_EEESaISL_EED2Ev.exit: ; preds = %._crit_edge61, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.n:                                             ; preds = %._crit_edge
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %bb.o
  %.03258 = phi i64 [ %i.cg, %bb.o ], [ 3, %.lr.ph60.preheader ]
  %.sroa.09.057 = phi ptr [ %.sroa.0.0.copyload.i.i45, %bb.o ], [ %.sroa.0.0.copyload.i.i44, %.lr.ph60.preheader ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.09.057, i64 8
  %.sroa.0.0.copyload.i.i45 = load ptr, ptr %i.ce, align 8, !tbaa !274
  %i.cf = invoke ptr @_ZN4CGAL5Euler10split_faceINS_12Polyhedron_3INS_5EpickENS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEEEEN5boost12graph_traitsIT_E19halfedge_descriptorESC_SC_RSA_(ptr nonnull %.sroa.09.057, ptr %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(105) %1)
          to label %bb.o unwind label %bb.p       ; 0 uses

bb.o:                                             ; preds = %.lr.ph60
  %i.cg = add nuw i64 %.03258, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cg, %i.bu
  br i1 %exitcond.not, label %._crit_edge61.loopexit, label %.lr.ph60, !llvm.loop !665

bb.p:                                             ; preds = %.lr.ph60
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %bb.p, %bb.d
  %.pn35.pn = phi { ptr, i32 } [ %i.ch, %bb.p ], [ %i.o, %bb.d ], [ %i.cd, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ci = load ptr, ptr %2, align 8, !tbaa !653   ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_31HalfedgeDS_in_place_list_vertexINS0_19I_Polyhedron_vertexINS0_22HalfedgeDS_vertex_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EENS0_7Point_3IS7_EEEEEEEESaISJ_EEESaISL_EED2Ev.exit47, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !657
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cn) #38
  br label %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_31HalfedgeDS_in_place_list_vertexINS0_19I_Polyhedron_vertexINS0_22HalfedgeDS_vertex_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EENS0_7Point_3IS7_EEEEEEEESaISJ_EEESaISL_EED2Ev.exit47

_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_31HalfedgeDS_in_place_list_vertexINS0_19I_Polyhedron_vertexINS0_22HalfedgeDS_vertex_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EENS0_7Point_3IS7_EEEEEEEESaISJ_EEESaISL_EED2Ev.exit47: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn35.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_2IST_EES16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.k = load <2 x double>, ptr %1, align 8, !tbaa !36, !noalias !666 ; 3 uses
  %i.l = fneg <2 x double> %i.k                   ; 2 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> %i.k, <2 x i32> <i32 2, i32 0>
  %i.n = shufflevector <2 x double> %i.l, <2 x double> %i.k, <2 x i32> <i32 3, i32 1>
  %i.o = load <2 x double>, ptr %2, align 8, !tbaa !36, !noalias !669 ; 3 uses
  %i.p = fneg <2 x double> %i.o                   ; 2 uses
  %i.q = shufflevector <2 x double> %i.p, <2 x double> %i.o, <2 x i32> <i32 0, i32 2>
  %i.r = shufflevector <2 x double> %i.p, <2 x double> %i.o, <2 x i32> <i32 1, i32 3>
  %i.s = load <2 x double>, ptr %3, align 8, !tbaa !36, !noalias !672 ; 3 uses
  %i.t = fneg <2 x double> %i.s                   ; 2 uses
  %i.u = shufflevector <2 x double> %i.t, <2 x double> %i.s, <2 x i32> <i32 0, i32 2>
  %i.v = shufflevector <2 x double> %i.t, <2 x double> %i.s, <2 x i32> <i32 1, i32 3>
  %i.w = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.q) #28, !srcloc !401
  %i.x = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.m) #27, !srcloc !402 ; 2 uses
  %i.y = fadd <2 x double> %i.w, %i.x
  %i.z = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.y) #28, !srcloc !401
  %i.aa = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.r) #28, !srcloc !401
  %i.ab = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.n) #27, !srcloc !402 ; 2 uses
  %i.ac = fadd <2 x double> %i.aa, %i.ab
  %i.ad = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ac) #28, !srcloc !401
  %i.ae = bitcast <2 x double> %i.ad to <2 x i64>
  %i.af = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u) #28, !srcloc !401
  %i.ag = fadd <2 x double> %i.x, %i.af
  %i.ah = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ag) #28, !srcloc !401
  %i.ai = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.v) #28, !srcloc !401
  %i.aj = fadd <2 x double> %i.ab, %i.ai
  %i.ak = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aj) #28, !srcloc !401
  %i.al = bitcast <2 x double> %i.ak to <2 x i64>
  %i.am = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.z) #27, !srcloc !402 ; 3 uses
  %i.an = fneg <2 x double> %i.am
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ap = xor <2 x i64> %i.al, <i64 -9223372036854775808, i64 0>
  %i.aq = bitcast <2 x i64> %i.ap to <2 x double>
  %i.ar = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aq) #28, !srcloc !401 ; 3 uses
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
  %i.bc = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bb) #28, !srcloc !401 ; 2 uses
  %i.bd = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ah) #27, !srcloc !402 ; 3 uses
  %i.be = fneg <2 x double> %i.bd
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bg = xor <2 x i64> %i.ae, <i64 -9223372036854775808, i64 0>
  %i.bh = bitcast <2 x i64> %i.bg to <2 x double>
  %i.bi = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bh) #28, !srcloc !401 ; 3 uses
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
  %i.bt = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bs) #28, !srcloc !401 ; 2 uses
  %i.bu = extractelement <2 x double> %i.bc, i64 0
  %i.bv = fneg double %i.bu                       ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.bt, i64 1 ; 2 uses
  %i.bw = fcmp olt double %.sroa.0.8.vec.extract.i.i.i, %i.bv
  br i1 %i.bw, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bx = extractelement <2 x double> %i.bt, i64 0
  %i.by = fneg double %i.bx                       ; 2 uses
  %.sroa.05.8.vec.extract.i.i.i = extractelement <2 x double> %i.bc, i64 1 ; 2 uses
  %i.bz = fcmp olt double %.sroa.05.8.vec.extract.i.i.i, %i.by
  br i1 %i.bz, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ca = fcmp une double %.sroa.05.8.vec.extract.i.i.i, %i.by
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

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_2IST_EES16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.CGAL::Point_2.290", align 16 ; 14 uses
  %5 = alloca %"class.CGAL::Point_2.290", align 16 ; 14 uses
  %6 = alloca %"class.CGAL::Point_2.290", align 16 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_2IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_2.290") align 16 %4, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_2IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_2.290") align 16 %5, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_2IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_2.290") align 16 %6, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.d = invoke noundef i32 @_ZN4CGAL13orientationC2INS_9cpp_floatEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS4_S8_S8_S8_S8_S8_(ptr noundef nonnull align 16 dereferenceable(192) %4, ptr noundef nonnull align 16 dereferenceable(84) %i.a, ptr noundef nonnull align 16 dereferenceable(192) %5, ptr noundef nonnull align 16 dereferenceable(84) %i.b, ptr noundef nonnull align 16 dereferenceable(192) %6, ptr noundef nonnull align 16 dereferenceable(84) %i.c)
          to label %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_2IS4_EES9_S9_.exit unwind label %bb.l

_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_2IS4_EES9_S9_.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 169
  %i.f = load i8, ptr %i.e, align 1, !tbaa !355, !range !13, !noundef !14
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 170
  %i.i = load i8, ptr %i.h, align 2, !range !13
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.g, i1 true, i1 %i.j
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_2IS4_EES9_S9_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i64, ptr %i.c, align 16
  %i.n = shl i64 %i.m, 3
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.n) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i:                ; preds = %bb.d, %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_2IS4_EES9_S9_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 73
  %i.p = load i8, ptr %i.o, align 1, !tbaa !355, !range !13, !noundef !14
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 74
  %i.s = load i8, ptr %i.r, align 2, !range !13
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i.i.i.1.i.i.i = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond.i.i.i.1.i.i.i, label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i64, ptr %6, align 16
  %i.x = shl i64 %i.w, 3
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.x) #38
  br label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit

_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 169
  %i.z = load i8, ptr %i.y, align 1, !tbaa !355, !range !13, !noundef !14
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 170
  %i.ac = load i8, ptr %i.ab, align 2, !range !13
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i.i.i.i.i.i9 = select i1 %i.aa, i1 true, i1 %i.ad
  br i1 %or.cond.i.i.i.i.i.i9, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10, label %bb.f

bb.f:                                             ; preds = %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load i64, ptr %i.b, align 16
  %i.ah = shl i64 %i.ag, 3
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ah) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10:              ; preds = %bb.f, %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 73
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !355, !range !13, !noundef !14
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 74
  %i.am = load i8, ptr %i.al, align 2, !range !13
  %i.an = trunc nuw i8 %i.am to i1
  %or.cond.i.i.i.1.i.i.i11 = select i1 %i.ak, i1 true, i1 %i.an
  br i1 %or.cond.i.i.i.1.i.i.i11, label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit12, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load i64, ptr %5, align 16
  %i.ar = shl i64 %i.aq, 3
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.ar) #38
  br label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit12

_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit12: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 169
  %i.at = load i8, ptr %i.as, align 1, !tbaa !355, !range !13, !noundef !14
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 170
  %i.aw = load i8, ptr %i.av, align 2, !range !13
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond.i.i.i.i.i.i13 = select i1 %i.au, i1 true, i1 %i.ax
  br i1 %or.cond.i.i.i.i.i.i13, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i14, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit12
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load i64, ptr %i.a, align 16
  %i.bb = shl i64 %i.ba, 3
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bb) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i14

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i14:              ; preds = %bb.h, %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit12
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 73
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !355, !range !13, !noundef !14
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 74
  %i.bg = load i8, ptr %i.bf, align 2, !range !13
  %i.bh = trunc nuw i8 %i.bg to i1
  %or.cond.i.i.i.1.i.i.i15 = select i1 %i.be, i1 true, i1 %i.bh
  br i1 %or.cond.i.i.i.1.i.i.i15, label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit16, label %bb.i

bb.i:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i14
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = load i64, ptr %4, align 16
  %i.bl = shl i64 %i.bk, 3
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bl) #38
  br label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit16

_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit16: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i14, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
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
  call void @_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %6) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.l ], [ %i.bn, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %5) #28
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.bm, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn.pn
}

end_hunk_4
begin_hunk_5_@_ZN4CGAL26ch__ref_graham_andrew_scanIN9__gnu_cxx17__normal_iteratorIPNS_7Point_3INS_5EpickEEESt6vectorIS5_SaIS5_EEEESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS_22Projection_traits_xy_3IS4_EEEET0_T_SJ_RSI_RKT1_:_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %i.be = fsub <2 x double> %i.bc, %i.ba          ; 3 uses
  %i.bf = extractelement <2 x double> %i.bd, i64 1
  %i.bg = fneg double %i.bf
  %i.bh = extractelement <2 x double> %i.be, i64 0
  %i.bi = fmul double %i.bh, %i.bg
  %i.bj = extractelement <2 x double> %i.bd, i64 0
  %i.bk = extractelement <2 x double> %i.be, i64 1
  %i.bl = call noundef double @llvm.fmuladd.f64(double %i.bj, double %i.bk, double %i.bi) ; 2 uses
  %i.bm = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bd) ; 2 uses
  %i.bn = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.be) ; 2 uses
  %i.bo = fcmp olt <2 x double> %i.bm, %i.bn
  %i.bp = select <2 x i1> %i.bo, <2 x double> %i.bn, <2 x double> %i.bm ; 2 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 0 ; 3 uses
  %i.br = extractelement <2 x double> %i.bp, i64 1 ; 3 uses
  %i.bs = fcmp ogt double %i.bq, %i.br            ; 2 uses
  %.155.i.i.i.i.i43 = select i1 %i.bs, double %i.br, double %i.bq ; 3 uses
  %.1.i.i.i.i.i44 = select i1 %i.bs, double %i.bq, double %i.br ; 2 uses
  %i.bt = fcmp olt double %.155.i.i.i.i.i43, 1.000000e-146
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bu = fcmp oeq double %.155.i.i.i.i.i43, 0.000000e+00
  br i1 %i.bu, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  %i.bv = fcmp olt double %.1.i.i.i.i.i44, f0x5FB317E5EF3AB327
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bw = fmul double %.155.i.i.i.i.i43, f0x3CD0028010000004
  %i.bx = fmul double %.1.i.i.i.i.i44, %i.bw      ; 2 uses
  %i.by = fcmp ule double %i.bl, %i.bx            ; 2 uses
  %i.bz = fneg double %i.bx
  %i.ca = fcmp uge double %i.bl, %i.bz
  %.021.i.i.i.i.i46 = select i1 %i.by, i32 -1, i32 1
  %cond1.i.i.i.i.i47 = and i1 %i.by, %i.ca
  br i1 %cond1.i.i.i.i.i47, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.cb = invoke noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_2IST_EES16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit

bb.m:                                             ; preds = %bb.k, %bb.l
  %.3.i.i.i.i.i45 = phi i32 [ %.021.i.i.i.i.i46, %bb.k ], [ %i.cb, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.cc = icmp eq i32 %.3.i.i.i.i.i45, 1
  br i1 %i.cc, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %bb.m, %bb.w
  %.sroa.15.1 = phi ptr [ %i.gh, %bb.w ], [ %.sroa.15.0176, %bb.m ] ; 5 uses
  %.sroa.0104.1 = phi ptr [ %.sroa.0103.1, %bb.w ], [ %.sroa.0104.0178, %bb.m ] ; 2 uses
  %.sroa.0103.1 = phi ptr [ %i.gk, %bb.w ], [ %.sroa.0103.0179, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.cd = load <2 x double>, ptr %.sroa.0103.1, align 8, !tbaa !36 ; 3 uses
  store <2 x double> %i.cd, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ce = load <2 x double>, ptr %.sroa.0104.1, align 8, !tbaa !36 ; 2 uses
  store <2 x double> %i.ce, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.cf = load <2 x double>, ptr %.sroa.089.1180, align 8, !tbaa !36 ; 2 uses
  store <2 x double> %i.cf, ptr %7, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.cg = fsub <2 x double> %i.ce, %i.cd          ; 3 uses
  %i.ch = fsub <2 x double> %i.cf, %i.cd          ; 3 uses
  %i.ci = extractelement <2 x double> %i.cg, i64 1
  %i.cj = fneg double %i.ci
  %i.ck = extractelement <2 x double> %i.ch, i64 0
  %i.cl = fmul double %i.ck, %i.cj
  %i.cm = extractelement <2 x double> %i.cg, i64 0
  %i.cn = extractelement <2 x double> %i.ch, i64 1
  %i.co = call noundef double @llvm.fmuladd.f64(double %i.cm, double %i.cn, double %i.cl) ; 2 uses
  %i.cp = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cg) ; 2 uses
  %i.cq = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ch) ; 2 uses
  %i.cr = fcmp olt <2 x double> %i.cp, %i.cq
  %i.cs = select <2 x i1> %i.cr, <2 x double> %i.cq, <2 x double> %i.cp ; 2 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0 ; 3 uses
  %i.cu = extractelement <2 x double> %i.cs, i64 1 ; 3 uses
  %i.cv = fcmp ogt double %i.ct, %i.cu            ; 2 uses
  %.155.i.i.i.i.i52 = select i1 %i.cv, double %i.cu, double %i.ct ; 3 uses
  %.1.i.i.i.i.i53 = select i1 %i.cv, double %i.ct, double %i.cu ; 2 uses
  %i.cw = fcmp olt double %.155.i.i.i.i.i52, 1.000000e-146
  br i1 %i.cw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader
  %i.cx = fcmp oeq double %.155.i.i.i.i.i52, 0.000000e+00
  br i1 %i.cx, label %.thread141, label %bb.q

.thread141:                                       ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.w

bb.o:                                             ; preds = %.preheader
  %i.cy = fcmp olt double %.1.i.i.i.i.i53, f0x5FB317E5EF3AB327
  br i1 %i.cy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cz = fmul double %.155.i.i.i.i.i52, f0x3CD0028010000004
  %i.da = fmul double %.1.i.i.i.i.i53, %i.cz      ; 2 uses
  %i.db = fcmp ule double %i.co, %i.da            ; 2 uses
  %i.dc = fneg double %i.da
  %i.dd = fcmp uge double %i.co, %i.dc
  %.021.i.i.i.i.i55 = select i1 %i.db, i32 -1, i32 1
  %cond1.i.i.i.i.i56 = and i1 %i.db, %i.dd
  br i1 %cond1.i.i.i.i.i56, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.de = load i32, ptr %i.e, align 4
  %i.df = and i32 %i.de, 24576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.dg = load i32, ptr %i.c, align 4
  %i.dh = and i32 %i.dg, -24577
  %i.di = or disjoint i32 %i.dh, 16384
  store i32 %i.di, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dj = load <2 x double>, ptr %5, align 16, !tbaa !36, !noalias !813 ; 3 uses
  %i.dk = fneg <2 x double> %i.dj                 ; 2 uses
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> %i.dj, <2 x i32> <i32 2, i32 0>
  %i.dm = shufflevector <2 x double> %i.dk, <2 x double> %i.dj, <2 x i32> <i32 3, i32 1>
  %i.dn = load <2 x double>, ptr %6, align 16, !tbaa !36, !noalias !816 ; 3 uses
  %i.do = fneg <2 x double> %i.dn                 ; 2 uses
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> %i.dn, <2 x i32> <i32 0, i32 2>
  %i.dq = shufflevector <2 x double> %i.do, <2 x double> %i.dn, <2 x i32> <i32 1, i32 3>
  %i.dr = load <2 x double>, ptr %7, align 16, !tbaa !36, !noalias !819 ; 3 uses
  %i.ds = fneg <2 x double> %i.dr                 ; 2 uses
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> %i.dr, <2 x i32> <i32 0, i32 2>
  %i.du = shufflevector <2 x double> %i.ds, <2 x double> %i.dr, <2 x i32> <i32 1, i32 3>
  %i.dv = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dp) #28, !srcloc !401
  %i.dw = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dl) #27, !srcloc !402 ; 2 uses
  %i.dx = fadd <2 x double> %i.dv, %i.dw
  %i.dy = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dx) #28, !srcloc !401
  %i.dz = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dq) #28, !srcloc !401
  %i.ea = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dm) #27, !srcloc !402 ; 2 uses
  %i.eb = fadd <2 x double> %i.dz, %i.ea
  %i.ec = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.eb) #28, !srcloc !401
  %i.ed = bitcast <2 x double> %i.ec to <2 x i64>
  %i.ee = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dt) #28, !srcloc !401
  %i.ef = fadd <2 x double> %i.dw, %i.ee
  %i.eg = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ef) #28, !srcloc !401
  %i.eh = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.du) #28, !srcloc !401
  %i.ei = fadd <2 x double> %i.ea, %i.eh
  %i.ej = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ei) #28, !srcloc !401
  %i.ek = bitcast <2 x double> %i.ej to <2 x i64>
  %i.el = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dy) #27, !srcloc !402 ; 3 uses
  %i.em = fneg <2 x double> %i.el
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eo = xor <2 x i64> %i.ek, <i64 -9223372036854775808, i64 0>
  %i.ep = bitcast <2 x i64> %i.eo to <2 x double>
  %i.eq = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ep) #28, !srcloc !401 ; 3 uses
  %i.er = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.es = fmul <2 x double> %i.el, %i.eq
  %i.et = fmul <2 x double> %i.el, %i.er
  %i.eu = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.et, <2 x double> splat (double +inf))
  %i.ev = fmul <2 x double> %i.en, %i.eq
  %i.ew = fmul <2 x double> %i.en, %i.er
  %i.ex = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ew, <2 x double> splat (double +inf))
  %i.ey = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.es, <2 x double> %i.eu)
  %i.ez = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ev, <2 x double> %i.ex)
  %i.fa = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ey, <2 x double> %i.ez)
  %i.fb = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fa) #28, !srcloc !401 ; 2 uses
  %i.fc = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.eg) #27, !srcloc !402 ; 3 uses
  %i.fd = fneg <2 x double> %i.fc
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ff = xor <2 x i64> %i.ed, <i64 -9223372036854775808, i64 0>
  %i.fg = bitcast <2 x i64> %i.ff to <2 x double>
  %i.fh = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fg) #28, !srcloc !401 ; 3 uses
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fj = fmul <2 x double> %i.fc, %i.fh
  %i.fk = fmul <2 x double> %i.fc, %i.fi
  %i.fl = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fk, <2 x double> splat (double +inf))
  %i.fm = fmul <2 x double> %i.fe, %i.fh
  %i.fn = fmul <2 x double> %i.fe, %i.fi
  %i.fo = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fn, <2 x double> splat (double +inf))
  %i.fp = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fj, <2 x double> %i.fl)
  %i.fq = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fm, <2 x double> %i.fo)
  %i.fr = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fp, <2 x double> %i.fq)
  %i.fs = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fr) #28, !srcloc !401 ; 2 uses
  %i.ft = extractelement <2 x double> %i.fb, i64 0
  %i.fu = fneg double %i.ft                       ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.fs, i64 1 ; 2 uses
  %i.fv = fcmp olt double %.sroa.0.8.vec.extract.i.i.i.i, %i.fu
  br i1 %i.fv, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fw = extractelement <2 x double> %i.fs, i64 0
  %i.fx = fneg double %i.fw                       ; 2 uses
  %.sroa.05.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.fb, i64 1 ; 2 uses
  %i.fy = fcmp olt double %.sroa.05.8.vec.extract.i.i.i.i, %i.fx
  br i1 %i.fy, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fz = fcmp une double %.sroa.05.8.vec.extract.i.i.i.i, %i.fx
  %i.ga = fcmp une double %.sroa.0.8.vec.extract.i.i.i.i, %i.fu
  %or.cond.not.i.i.i.i.i.i.i = or i1 %i.ga, %i.fz
  %i.gb = select i1 %or.cond.not.i.i.i.i.i.i.i, i64 8589934591, i64 0
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.gb, %bb.s ], [ 4294967297, %bb.q ], [ -1, %bb.r ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.5.0.i.i.i.i.i.i.i to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %.not.i79 = icmp eq i32 %.sroa.0.0.extract.trunc.i.i, %.sroa.2.0.extract.trunc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.gc = load i32, ptr %i.a, align 4
  %i.gd = and i32 %i.gc, -24577
  %i.ge = or disjoint i32 %i.gd, %i.df
  store i32 %i.ge, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not.i79, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gf = invoke noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_2IST_EES16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.v unwind label %.loopexit

bb.v:                                             ; preds = %bb.p, %bb.t, %bb.u
  %.3.i.i.i.i.i54 = phi i32 [ %.021.i.i.i.i.i55, %bb.p ], [ %i.gf, %bb.u ], [ %.sroa.0.0.extract.trunc.i.i, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.gg = icmp eq i32 %.3.i.i.i.i.i54, 1
  br i1 %i.gg, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread141, %bb.v
  %i.gh = getelementptr inbounds i8, ptr %.sroa.15.1, i64 -8
  %i.gi = getelementptr inbounds i8, ptr %.sroa.15.1, i64 -24
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !561
  %i.gk = inttoptr i64 %i.gj to ptr
  br label %.preheader, !llvm.loop !822

.loopexit.split-lp.thread:                        ; preds = %bb.f
  %lpad.loopexit151 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp150:                            ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i9, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i26
  %.sroa.32.1.ph = phi ptr [ %i.n, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i26 ], [ null, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.i, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i9 ]
  %.sroa.0106.1.ph = phi ptr [ %i.j, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i26 ], [ null, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.g, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i9 ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i60, %bb.l
  %lpad.loopexit145 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.aa
  %lpad.loopexit.split-lp146 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %bb.v
  %.not.i59 = icmp eq ptr %.sroa.15.1, %.sroa.32.0177
  br i1 %.not.i59, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gl = ptrtoint ptr %.sroa.089.1180 to i64
  store i64 %i.gl, ptr %.sroa.15.1, align 8, !tbaa !561
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74

bb.z:                                             ; preds = %bb.x
  %i.gm = ptrtoint ptr %.sroa.32.0177 to i64      ; 2 uses
  %i.gn = ptrtoint ptr %.sroa.0106.0181 to i64    ; 3 uses
  %i.go = sub i64 %i.gm, %i.gn                    ; 4 uses
  %i.gp = icmp eq i64 %i.go, 9223372036854775800
  br i1 %i.gp, label %bb.aa, label %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i60

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #39
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc72:                                         ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i60: ; preds = %bb.z
  %i.gq = ashr exact i64 %i.go, 3                 ; 3 uses
  %.sroa.speculated.i.i.i61 = call i64 @llvm.umax.i64(i64 %i.gq, i64 1)
  %i.gr = add nsw i64 %.sroa.speculated.i.i.i61, %i.gq ; 2 uses
  %i.gs = icmp ult i64 %i.gr, %i.gq
  %i.gt = call i64 @llvm.umin.i64(i64 %i.gr, i64 1152921504606846975)
  %i.gu = select i1 %i.gs, i64 1152921504606846975, i64 %i.gt ; 3 uses
  %.not.i.i.i62 = icmp ne i64 %i.gu, 0
  call void @llvm.assume(i1 %.not.i.i.i62)
  %i.gv = shl nuw nsw i64 %i.gu, 3
  %i.gw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gv) #40
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit ; 8 uses

.noexc73:                                         ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i60
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.go
  %i.gy = ptrtoint ptr %.sroa.089.1180 to i64
  store i64 %i.gy, ptr %i.gx, align 8, !tbaa !561
  %.not10.i.i.i.i.i63 = icmp eq ptr %.sroa.0106.0181, %.sroa.32.0177
  br i1 %.not10.i.i.i.i.i63, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71, label %.lr.ph.i.i.i.i.i64.preheader

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %.noexc73
  %i.gz = ptrtoaddr ptr %i.gw to i64
  %i.ha = add i64 %i.gm, -8
  %i.hb = sub i64 %i.ha, %i.gn                    ; 2 uses
  %i.hc = lshr i64 %i.hb, 3
  %i.hd = add nuw nsw i64 %i.hc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hb, 24
  %i.he = sub i64 %i.gn, %i.gz
  %diff.check = icmp ugt i64 %i.he, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i64.preheader249, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i64.preheader
  %n.vec = and i64 %i.hd, 4611686018427387900     ; 3 uses
  %i.hf = shl i64 %n.vec, 3                       ; 2 uses
  %i.hg = getelementptr i8, ptr %i.gw, i64 %i.hf  ; 2 uses
  %i.hh = getelementptr i8, ptr %.sroa.0106.0181, i64 %i.hf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gw, i64 %i.hi ; 2 uses
  %next.gep246 = getelementptr i8, ptr %.sroa.0106.0181, i64 %i.hi ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  call void @llvm.experimental.noalias.scope.decl(metadata !826)
  %i.hj = getelementptr i8, ptr %next.gep246, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep246, align 8, !tbaa !561, !alias.scope !826, !noalias !823
  %wide.load247 = load <2 x i64>, ptr %i.hj, align 8, !tbaa !561, !alias.scope !826, !noalias !823
  %i.hk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !561, !alias.scope !823, !noalias !826
  store <2 x i64> %wide.load247, ptr %i.hk, align 8, !tbaa !561, !alias.scope !823, !noalias !826
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hl = icmp eq i64 %index.next, %n.vec
  br i1 %i.hl, label %middle.block, label %vector.body, !llvm.loop !828

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71, label %.lr.ph.i.i.i.i.i64.preheader249

.lr.ph.i.i.i.i.i64.preheader249:                  ; preds = %.lr.ph.i.i.i.i.i64.preheader, %middle.block
  %.012.i.i.i.i.i65.ph = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.hg, %middle.block ]
  %.0911.i.i.i.i.i66.ph = phi ptr [ %.sroa.0106.0181, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.hh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.preheader249, %.lr.ph.i.i.i.i.i64
  %.012.i.i.i.i.i65 = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i64 ], [ %.012.i.i.i.i.i65.ph, %.lr.ph.i.i.i.i.i64.preheader249 ] ; 2 uses
  %.0911.i.i.i.i.i66 = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i64 ], [ %.0911.i.i.i.i.i66.ph, %.lr.ph.i.i.i.i.i64.preheader249 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  call void @llvm.experimental.noalias.scope.decl(metadata !826)
  %i.hm = load i64, ptr %.0911.i.i.i.i.i66, align 8, !tbaa !561, !alias.scope !826, !noalias !823
  store i64 %i.hm, ptr %.012.i.i.i.i.i65, align 8, !tbaa !561, !alias.scope !823, !noalias !826
  %i.hn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i66, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 8 ; 2 uses
  %.not.i.i.i.i.i67 = icmp eq ptr %i.hn, %.sroa.32.0177
  br i1 %.not.i.i.i.i.i67, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71, label %.lr.ph.i.i.i.i.i64, !llvm.loop !829

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71: ; preds = %.lr.ph.i.i.i.i.i64, %middle.block, %.noexc73
  %.0.lcssa.i.i.i.i.i69 = phi ptr [ %i.gw, %.noexc73 ], [ %i.hg, %middle.block ], [ %i.ho, %.lr.ph.i.i.i.i.i64 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.0181, i64 noundef %i.go) #38
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gu
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74: ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71, %bb.y
  %.0.lcssa.i.i.i.i.i69.pn = phi ptr [ %.0.lcssa.i.i.i.i.i69, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71 ], [ %.sroa.15.1, %bb.y ]
  %.sroa.32.8 = phi ptr [ %i.hp, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71 ], [ %.sroa.32.0177, %bb.y ]
  %.sroa.0106.8 = phi ptr [ %i.gw, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71 ], [ %.sroa.0106.0181, %bb.y ]
  %.sroa.15.7 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i69.pn, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.thread, %bb.m, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74
  %.sroa.15.2 = phi ptr [ %.sroa.15.7, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.15.0176, %bb.m ], [ %.sroa.15.0176, %.thread ] ; 2 uses
  %.sroa.32.2 = phi ptr [ %.sroa.32.8, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.32.0177, %bb.m ], [ %.sroa.32.0177, %.thread ] ; 2 uses
  %.sroa.0104.2 = phi ptr [ %.sroa.089.1180, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.0104.0178, %bb.m ], [ %.sroa.0104.0178, %.thread ]
  %.sroa.0103.2 = phi ptr [ %.sroa.0104.1, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.0103.0179, %bb.m ], [ %.sroa.0103.0179, %.thread ]
  %.sroa.0106.2 = phi ptr [ %.sroa.0106.8, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.0106.0181, %bb.m ], [ %.sroa.0106.0181, %.thread ] ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.089.1180, i64 24 ; 2 uses
  %.not143 = icmp eq ptr %i.hq, %i.f
  br i1 %.not143, label %.critedge, label %bb.h, !llvm.loop !830

.critedge:                                        ; preds = %bb.a, %bb.ab, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit40
  %.sroa.15.3 = phi ptr [ %.sroa.15.2, %bb.ab ], [ %.sroa.15.6, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit40 ], [ %i.n, %bb.a ] ; 2 uses
  %.sroa.32.3 = phi ptr [ %.sroa.32.2, %bb.ab ], [ %i.av, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit40 ], [ %i.n, %bb.a ] ; 2 uses
  %.sroa.0106.3 = phi ptr [ %.sroa.0106.2, %bb.ab ], [ %i.as, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit40 ], [ %i.j, %bb.a ] ; 4 uses
  %.sroa.081.0184 = getelementptr inbounds nuw i8, ptr %.sroa.0106.3, i64 8 ; 2 uses
  %.not144185 = icmp eq ptr %.sroa.081.0184, %.sroa.15.3
  br i1 %.not144185, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EED2Ev.exit, label %.lr.ph187
end_hunk_5
begin_hunk_6_@_ZN4CGAL26ch__ref_graham_andrew_scanIN9__gnu_cxx17__normal_iteratorIPNS_7Point_3INS_5EpickEEESt6vectorIS5_SaIS5_EEEESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS_22Projection_traits_yz_3IS4_EEEET0_T_SJ_RSI_RKT1_:_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %i.bl = fneg double %i.bk
  %i.bm = extractelement <2 x double> %i.bj, i64 0
  %i.bn = fmul double %i.bm, %i.bl
  %i.bo = extractelement <2 x double> %i.bi, i64 0
  %i.bp = extractelement <2 x double> %i.bj, i64 1
  %i.bq = call noundef double @llvm.fmuladd.f64(double %i.bo, double %i.bp, double %i.bn) ; 2 uses
  %i.br = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bi) ; 2 uses
  %i.bs = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bj) ; 2 uses
  %i.bt = fcmp olt <2 x double> %i.br, %i.bs
  %i.bu = select <2 x i1> %i.bt, <2 x double> %i.bs, <2 x double> %i.br ; 2 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 0 ; 3 uses
  %i.bw = extractelement <2 x double> %i.bu, i64 1 ; 3 uses
  %i.bx = fcmp ogt double %i.bv, %i.bw            ; 2 uses
  %.155.i.i.i.i.i43 = select i1 %i.bx, double %i.bw, double %i.bv ; 3 uses
  %.1.i.i.i.i.i44 = select i1 %i.bx, double %i.bv, double %i.bw ; 2 uses
  %i.by = fcmp olt double %.155.i.i.i.i.i43, 1.000000e-146
  br i1 %i.by, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bz = fcmp oeq double %.155.i.i.i.i.i43, 0.000000e+00
  br i1 %i.bz, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  %i.ca = fcmp olt double %.1.i.i.i.i.i44, f0x5FB317E5EF3AB327
  br i1 %i.ca, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cb = fmul double %.155.i.i.i.i.i43, f0x3CD0028010000004
  %i.cc = fmul double %.1.i.i.i.i.i44, %i.cb      ; 2 uses
  %i.cd = fcmp ule double %i.bq, %i.cc            ; 2 uses
  %i.ce = fneg double %i.cc
  %i.cf = fcmp uge double %i.bq, %i.ce
  %.021.i.i.i.i.i46 = select i1 %i.cd, i32 -1, i32 1
  %cond1.i.i.i.i.i47 = and i1 %i.cd, %i.cf
  br i1 %cond1.i.i.i.i.i47, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.cg = invoke noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_2IST_EES16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit

bb.m:                                             ; preds = %bb.k, %bb.l
  %.3.i.i.i.i.i45 = phi i32 [ %.021.i.i.i.i.i46, %bb.k ], [ %i.cg, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.ch = icmp eq i32 %.3.i.i.i.i.i45, 1
  br i1 %i.ch, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %bb.m, %bb.w
  %.sroa.15.1 = phi ptr [ %i.go, %bb.w ], [ %.sroa.15.0176, %bb.m ] ; 5 uses
  %.sroa.0104.1 = phi ptr [ %.sroa.0103.1, %bb.w ], [ %.sroa.0104.0178, %bb.m ] ; 2 uses
  %.sroa.0103.1 = phi ptr [ %i.gr, %bb.w ], [ %.sroa.0103.0179, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0103.1, i64 8
  %i.cj = load <2 x double>, ptr %i.ci, align 8, !tbaa !36 ; 3 uses
  store <2 x double> %i.cj, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0104.1, i64 8
  %i.cl = load <2 x double>, ptr %i.ck, align 8, !tbaa !36 ; 2 uses
  store <2 x double> %i.cl, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.cm = load <2 x double>, ptr %i.bf, align 8, !tbaa !36 ; 2 uses
  store <2 x double> %i.cm, ptr %7, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.cn = fsub <2 x double> %i.cl, %i.cj          ; 3 uses
  %i.co = fsub <2 x double> %i.cm, %i.cj          ; 3 uses
  %i.cp = extractelement <2 x double> %i.cn, i64 1
  %i.cq = fneg double %i.cp
  %i.cr = extractelement <2 x double> %i.co, i64 0
  %i.cs = fmul double %i.cr, %i.cq
  %i.ct = extractelement <2 x double> %i.cn, i64 0
  %i.cu = extractelement <2 x double> %i.co, i64 1
  %i.cv = call noundef double @llvm.fmuladd.f64(double %i.ct, double %i.cu, double %i.cs) ; 2 uses
  %i.cw = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cn) ; 2 uses
  %i.cx = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.co) ; 2 uses
  %i.cy = fcmp olt <2 x double> %i.cw, %i.cx
  %i.cz = select <2 x i1> %i.cy, <2 x double> %i.cx, <2 x double> %i.cw ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0 ; 3 uses
  %i.db = extractelement <2 x double> %i.cz, i64 1 ; 3 uses
  %i.dc = fcmp ogt double %i.da, %i.db            ; 2 uses
  %.155.i.i.i.i.i52 = select i1 %i.dc, double %i.db, double %i.da ; 3 uses
  %.1.i.i.i.i.i53 = select i1 %i.dc, double %i.da, double %i.db ; 2 uses
  %i.dd = fcmp olt double %.155.i.i.i.i.i52, 1.000000e-146
  br i1 %i.dd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader
  %i.de = fcmp oeq double %.155.i.i.i.i.i52, 0.000000e+00
  br i1 %i.de, label %.thread141, label %bb.q

.thread141:                                       ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.w

bb.o:                                             ; preds = %.preheader
  %i.df = fcmp olt double %.1.i.i.i.i.i53, f0x5FB317E5EF3AB327
  br i1 %i.df, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dg = fmul double %.155.i.i.i.i.i52, f0x3CD0028010000004
  %i.dh = fmul double %.1.i.i.i.i.i53, %i.dg      ; 2 uses
  %i.di = fcmp ule double %i.cv, %i.dh            ; 2 uses
  %i.dj = fneg double %i.dh
  %i.dk = fcmp uge double %i.cv, %i.dj
  %.021.i.i.i.i.i55 = select i1 %i.di, i32 -1, i32 1
  %cond1.i.i.i.i.i56 = and i1 %i.di, %i.dk
  br i1 %cond1.i.i.i.i.i56, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.dl = load i32, ptr %i.e, align 4
  %i.dm = and i32 %i.dl, 24576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.dn = load i32, ptr %i.c, align 4
  %i.do = and i32 %i.dn, -24577
  %i.dp = or disjoint i32 %i.do, 16384
  store i32 %i.dp, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dq = load <2 x double>, ptr %5, align 16, !tbaa !36, !noalias !1001 ; 3 uses
  %i.dr = fneg <2 x double> %i.dq                 ; 2 uses
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> %i.dq, <2 x i32> <i32 2, i32 0>
  %i.dt = shufflevector <2 x double> %i.dr, <2 x double> %i.dq, <2 x i32> <i32 3, i32 1>
  %i.du = load <2 x double>, ptr %6, align 16, !tbaa !36, !noalias !1004 ; 3 uses
  %i.dv = fneg <2 x double> %i.du                 ; 2 uses
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> %i.du, <2 x i32> <i32 0, i32 2>
  %i.dx = shufflevector <2 x double> %i.dv, <2 x double> %i.du, <2 x i32> <i32 1, i32 3>
  %i.dy = load <2 x double>, ptr %7, align 16, !tbaa !36, !noalias !1007 ; 3 uses
  %i.dz = fneg <2 x double> %i.dy                 ; 2 uses
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> %i.dy, <2 x i32> <i32 0, i32 2>
  %i.eb = shufflevector <2 x double> %i.dz, <2 x double> %i.dy, <2 x i32> <i32 1, i32 3>
  %i.ec = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dw) #28, !srcloc !401
  %i.ed = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ds) #27, !srcloc !402 ; 2 uses
  %i.ee = fadd <2 x double> %i.ec, %i.ed
  %i.ef = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ee) #28, !srcloc !401
  %i.eg = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dx) #28, !srcloc !401
  %i.eh = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dt) #27, !srcloc !402 ; 2 uses
  %i.ei = fadd <2 x double> %i.eg, %i.eh
  %i.ej = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ei) #28, !srcloc !401
  %i.ek = bitcast <2 x double> %i.ej to <2 x i64>
  %i.el = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ea) #28, !srcloc !401
  %i.em = fadd <2 x double> %i.ed, %i.el
  %i.en = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.em) #28, !srcloc !401
  %i.eo = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.eb) #28, !srcloc !401
  %i.ep = fadd <2 x double> %i.eh, %i.eo
  %i.eq = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ep) #28, !srcloc !401
  %i.er = bitcast <2 x double> %i.eq to <2 x i64>
  %i.es = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ef) #27, !srcloc !402 ; 3 uses
  %i.et = fneg <2 x double> %i.es
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ev = xor <2 x i64> %i.er, <i64 -9223372036854775808, i64 0>
  %i.ew = bitcast <2 x i64> %i.ev to <2 x double>
  %i.ex = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ew) #28, !srcloc !401 ; 3 uses
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ez = fmul <2 x double> %i.es, %i.ex
  %i.fa = fmul <2 x double> %i.es, %i.ey
  %i.fb = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fa, <2 x double> splat (double +inf))
  %i.fc = fmul <2 x double> %i.eu, %i.ex
  %i.fd = fmul <2 x double> %i.eu, %i.ey
  %i.fe = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fd, <2 x double> splat (double +inf))
  %i.ff = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ez, <2 x double> %i.fb)
  %i.fg = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fc, <2 x double> %i.fe)
  %i.fh = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ff, <2 x double> %i.fg)
  %i.fi = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fh) #28, !srcloc !401 ; 2 uses
  %i.fj = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.en) #27, !srcloc !402 ; 3 uses
  %i.fk = fneg <2 x double> %i.fj
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fm = xor <2 x i64> %i.ek, <i64 -9223372036854775808, i64 0>
  %i.fn = bitcast <2 x i64> %i.fm to <2 x double>
  %i.fo = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fn) #28, !srcloc !401 ; 3 uses
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fq = fmul <2 x double> %i.fj, %i.fo
  %i.fr = fmul <2 x double> %i.fj, %i.fp
  %i.fs = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fr, <2 x double> splat (double +inf))
  %i.ft = fmul <2 x double> %i.fl, %i.fo
  %i.fu = fmul <2 x double> %i.fl, %i.fp
  %i.fv = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fu, <2 x double> splat (double +inf))
  %i.fw = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fq, <2 x double> %i.fs)
  %i.fx = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ft, <2 x double> %i.fv)
  %i.fy = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fw, <2 x double> %i.fx)
  %i.fz = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fy) #28, !srcloc !401 ; 2 uses
  %i.ga = extractelement <2 x double> %i.fi, i64 0
  %i.gb = fneg double %i.ga                       ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.fz, i64 1 ; 2 uses
  %i.gc = fcmp olt double %.sroa.0.8.vec.extract.i.i.i.i, %i.gb
  br i1 %i.gc, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gd = extractelement <2 x double> %i.fz, i64 0
  %i.ge = fneg double %i.gd                       ; 2 uses
  %.sroa.05.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.fi, i64 1 ; 2 uses
  %i.gf = fcmp olt double %.sroa.05.8.vec.extract.i.i.i.i, %i.ge
  br i1 %i.gf, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gg = fcmp une double %.sroa.05.8.vec.extract.i.i.i.i, %i.ge
  %i.gh = fcmp une double %.sroa.0.8.vec.extract.i.i.i.i, %i.gb
  %or.cond.not.i.i.i.i.i.i.i = or i1 %i.gh, %i.gg
  %i.gi = select i1 %or.cond.not.i.i.i.i.i.i.i, i64 8589934591, i64 0
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.gi, %bb.s ], [ 4294967297, %bb.q ], [ -1, %bb.r ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.5.0.i.i.i.i.i.i.i to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %.not.i79 = icmp eq i32 %.sroa.0.0.extract.trunc.i.i, %.sroa.2.0.extract.trunc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.gj = load i32, ptr %i.a, align 4
  %i.gk = and i32 %i.gj, -24577
  %i.gl = or disjoint i32 %i.gk, %i.dm
  store i32 %i.gl, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not.i79, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gm = invoke noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_2IST_EES16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.v unwind label %.loopexit

bb.v:                                             ; preds = %bb.p, %bb.t, %bb.u
  %.3.i.i.i.i.i54 = phi i32 [ %.021.i.i.i.i.i55, %bb.p ], [ %i.gm, %bb.u ], [ %.sroa.0.0.extract.trunc.i.i, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.gn = icmp eq i32 %.3.i.i.i.i.i54, 1
  br i1 %i.gn, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread141, %bb.v
  %i.go = getelementptr inbounds i8, ptr %.sroa.15.1, i64 -8
  %i.gp = getelementptr inbounds i8, ptr %.sroa.15.1, i64 -24
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !561
  %i.gr = inttoptr i64 %i.gq to ptr
  br label %.preheader, !llvm.loop !1010

.loopexit.split-lp.thread:                        ; preds = %bb.f
  %lpad.loopexit151 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp150:                            ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i9, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i26
  %.sroa.32.1.ph = phi ptr [ %i.n, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i26 ], [ null, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.i, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i9 ]
  %.sroa.0106.1.ph = phi ptr [ %i.j, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i26 ], [ null, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.g, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i9 ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i60, %bb.l
  %lpad.loopexit145 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.aa
  %lpad.loopexit.split-lp146 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %bb.v
  %.not.i59 = icmp eq ptr %.sroa.15.1, %.sroa.32.0177
  br i1 %.not.i59, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gs = ptrtoint ptr %.sroa.089.1180 to i64
  store i64 %i.gs, ptr %.sroa.15.1, align 8, !tbaa !561
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74

bb.z:                                             ; preds = %bb.x
  %i.gt = ptrtoint ptr %.sroa.32.0177 to i64      ; 2 uses
  %i.gu = ptrtoint ptr %.sroa.0106.0181 to i64    ; 3 uses
  %i.gv = sub i64 %i.gt, %i.gu                    ; 4 uses
  %i.gw = icmp eq i64 %i.gv, 9223372036854775800
  br i1 %i.gw, label %bb.aa, label %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i60

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #39
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc72:                                         ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i60: ; preds = %bb.z
  %i.gx = ashr exact i64 %i.gv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i61 = call i64 @llvm.umax.i64(i64 %i.gx, i64 1)
  %i.gy = add nsw i64 %.sroa.speculated.i.i.i61, %i.gx ; 2 uses
  %i.gz = icmp ult i64 %i.gy, %i.gx
  %i.ha = call i64 @llvm.umin.i64(i64 %i.gy, i64 1152921504606846975)
  %i.hb = select i1 %i.gz, i64 1152921504606846975, i64 %i.ha ; 3 uses
  %.not.i.i.i62 = icmp ne i64 %i.hb, 0
  call void @llvm.assume(i1 %.not.i.i.i62)
  %i.hc = shl nuw nsw i64 %i.hb, 3
  %i.hd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #40
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit ; 8 uses

.noexc73:                                         ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i60
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.gv
  %i.hf = ptrtoint ptr %.sroa.089.1180 to i64
  store i64 %i.hf, ptr %i.he, align 8, !tbaa !561
  %.not10.i.i.i.i.i63 = icmp eq ptr %.sroa.0106.0181, %.sroa.32.0177
  br i1 %.not10.i.i.i.i.i63, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71, label %.lr.ph.i.i.i.i.i64.preheader

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %.noexc73
  %i.hg = ptrtoaddr ptr %i.hd to i64
  %i.hh = add i64 %i.gt, -8
  %i.hi = sub i64 %i.hh, %i.gu                    ; 2 uses
  %i.hj = lshr i64 %i.hi, 3
  %i.hk = add nuw nsw i64 %i.hj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hi, 24
  %i.hl = sub i64 %i.gu, %i.hg
  %diff.check = icmp ugt i64 %i.hl, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i64.preheader249, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i64.preheader
  %n.vec = and i64 %i.hk, 4611686018427387900     ; 3 uses
  %i.hm = shl i64 %n.vec, 3                       ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hd, i64 %i.hm  ; 2 uses
  %i.ho = getelementptr i8, ptr %.sroa.0106.0181, i64 %i.hm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hd, i64 %i.hp ; 2 uses
  %next.gep246 = getelementptr i8, ptr %.sroa.0106.0181, i64 %i.hp ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  %i.hq = getelementptr i8, ptr %next.gep246, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep246, align 8, !tbaa !561, !alias.scope !1014, !noalias !1011
  %wide.load247 = load <2 x i64>, ptr %i.hq, align 8, !tbaa !561, !alias.scope !1014, !noalias !1011
  %i.hr = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !561, !alias.scope !1011, !noalias !1014
  store <2 x i64> %wide.load247, ptr %i.hr, align 8, !tbaa !561, !alias.scope !1011, !noalias !1014
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hs = icmp eq i64 %index.next, %n.vec
  br i1 %i.hs, label %middle.block, label %vector.body, !llvm.loop !1016

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71, label %.lr.ph.i.i.i.i.i64.preheader249

.lr.ph.i.i.i.i.i64.preheader249:                  ; preds = %.lr.ph.i.i.i.i.i64.preheader, %middle.block
  %.012.i.i.i.i.i65.ph = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.hn, %middle.block ]
  %.0911.i.i.i.i.i66.ph = phi ptr [ %.sroa.0106.0181, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.ho, %middle.block ]
  br label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.preheader249, %.lr.ph.i.i.i.i.i64
  %.012.i.i.i.i.i65 = phi ptr [ %i.hv, %.lr.ph.i.i.i.i.i64 ], [ %.012.i.i.i.i.i65.ph, %.lr.ph.i.i.i.i.i64.preheader249 ] ; 2 uses
  %.0911.i.i.i.i.i66 = phi ptr [ %i.hu, %.lr.ph.i.i.i.i.i64 ], [ %.0911.i.i.i.i.i66.ph, %.lr.ph.i.i.i.i.i64.preheader249 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  %i.ht = load i64, ptr %.0911.i.i.i.i.i66, align 8, !tbaa !561, !alias.scope !1014, !noalias !1011
  store i64 %i.ht, ptr %.012.i.i.i.i.i65, align 8, !tbaa !561, !alias.scope !1011, !noalias !1014
  %i.hu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i66, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 8 ; 2 uses
  %.not.i.i.i.i.i67 = icmp eq ptr %i.hu, %.sroa.32.0177
  br i1 %.not.i.i.i.i.i67, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71, label %.lr.ph.i.i.i.i.i64, !llvm.loop !1017

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71: ; preds = %.lr.ph.i.i.i.i.i64, %middle.block, %.noexc73
  %.0.lcssa.i.i.i.i.i69 = phi ptr [ %i.hd, %.noexc73 ], [ %i.hn, %middle.block ], [ %i.hv, %.lr.ph.i.i.i.i.i64 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.0181, i64 noundef %i.gv) #38
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hb
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74: ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71, %bb.y
  %.0.lcssa.i.i.i.i.i69.pn = phi ptr [ %.0.lcssa.i.i.i.i.i69, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71 ], [ %.sroa.15.1, %bb.y ]
  %.sroa.32.8 = phi ptr [ %i.hw, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71 ], [ %.sroa.32.0177, %bb.y ]
  %.sroa.0106.8 = phi ptr [ %i.hd, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71 ], [ %.sroa.0106.0181, %bb.y ]
  %.sroa.15.7 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i69.pn, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.thread, %bb.m, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74
  %.sroa.15.2 = phi ptr [ %.sroa.15.7, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.15.0176, %bb.m ], [ %.sroa.15.0176, %.thread ] ; 2 uses
  %.sroa.32.2 = phi ptr [ %.sroa.32.8, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.32.0177, %bb.m ], [ %.sroa.32.0177, %.thread ] ; 2 uses
  %.sroa.0104.2 = phi ptr [ %.sroa.089.1180, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.0104.0178, %bb.m ], [ %.sroa.0104.0178, %.thread ]
  %.sroa.0103.2 = phi ptr [ %.sroa.0104.1, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.0103.0179, %bb.m ], [ %.sroa.0103.0179, %.thread ]
  %.sroa.0106.2 = phi ptr [ %.sroa.0106.8, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.0106.0181, %bb.m ], [ %.sroa.0106.0181, %.thread ] ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.089.1180, i64 24 ; 2 uses
  %.not143 = icmp eq ptr %i.hx, %i.f
  br i1 %.not143, label %.critedge, label %bb.h, !llvm.loop !1018

.critedge:                                        ; preds = %bb.a, %bb.ab, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit40
  %.sroa.15.3 = phi ptr [ %.sroa.15.2, %bb.ab ], [ %.sroa.15.6, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit40 ], [ %i.n, %bb.a ] ; 2 uses
  %.sroa.32.3 = phi ptr [ %.sroa.32.2, %bb.ab ], [ %i.ay, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit40 ], [ %i.n, %bb.a ] ; 2 uses
  %.sroa.0106.3 = phi ptr [ %.sroa.0106.2, %bb.ab ], [ %i.av, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit40 ], [ %i.j, %bb.a ] ; 4 uses
  %.sroa.081.0184 = getelementptr inbounds nuw i8, ptr %.sroa.0106.3, i64 8 ; 2 uses
  %.not144185 = icmp eq ptr %.sroa.081.0184, %.sroa.15.3
  br i1 %.not144185, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EED2Ev.exit, label %.lr.ph187
end_hunk_6
begin_hunk_7_@_ZN4CGAL26ch__ref_graham_andrew_scanIN9__gnu_cxx17__normal_iteratorIPNS_7Point_3INS_5EpickEEESt6vectorIS5_SaIS5_EEEESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS_22Projection_traits_xz_3IS4_EEEET0_T_SJ_RSI_RKT1_:_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %i.ce = call noundef double @llvm.fabs.f64(double %i.bx) ; 2 uses
  %i.cf = call noundef double @llvm.fabs.f64(double %i.by) ; 2 uses
  %i.cg = fcmp olt double %i.cc, %i.ce
  %.054.i.i.i.i.i41 = select i1 %i.cg, double %i.ce, double %i.cc ; 3 uses
  %i.ch = fcmp olt double %i.cd, %i.cf
  %.0.i.i.i.i.i42 = select i1 %i.ch, double %i.cf, double %i.cd ; 3 uses
  %i.ci = fcmp ogt double %.054.i.i.i.i.i41, %.0.i.i.i.i.i42 ; 2 uses
  %.155.i.i.i.i.i43 = select i1 %i.ci, double %.0.i.i.i.i.i42, double %.054.i.i.i.i.i41 ; 3 uses
  %.1.i.i.i.i.i44 = select i1 %i.ci, double %.054.i.i.i.i.i41, double %.0.i.i.i.i.i42 ; 2 uses
  %i.cj = fcmp olt double %.155.i.i.i.i.i43, 1.000000e-146
  br i1 %i.cj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ck = fcmp oeq double %.155.i.i.i.i.i43, 0.000000e+00
  br i1 %i.ck, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  %i.cl = fcmp olt double %.1.i.i.i.i.i44, f0x5FB317E5EF3AB327
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cm = fmul double %.155.i.i.i.i.i43, f0x3CD0028010000004
  %i.cn = fmul double %.1.i.i.i.i.i44, %i.cm      ; 2 uses
  %i.co = fcmp ule double %i.cb, %i.cn            ; 2 uses
  %i.cp = fneg double %i.cn
  %i.cq = fcmp uge double %i.cb, %i.cp
  %.021.i.i.i.i.i46 = select i1 %i.co, i32 -1, i32 1
  %cond1.i.i.i.i.i47 = and i1 %i.co, %i.cq
  br i1 %cond1.i.i.i.i.i47, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.cr = invoke noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_2IST_EES16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit

bb.m:                                             ; preds = %bb.k, %bb.l
  %.3.i.i.i.i.i45 = phi i32 [ %.021.i.i.i.i.i46, %bb.k ], [ %i.cr, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.cs = icmp eq i32 %.3.i.i.i.i.i45, 1
  br i1 %i.cs, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %bb.m, %bb.w
  %.sroa.15.1 = phi ptr [ %i.ha, %bb.w ], [ %.sroa.15.0176, %bb.m ] ; 5 uses
  %.sroa.0104.1 = phi ptr [ %.sroa.0103.1, %bb.w ], [ %.sroa.0104.0178, %bb.m ] ; 3 uses
  %.sroa.0103.1 = phi ptr [ %i.hd, %bb.w ], [ %.sroa.0103.0179, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.ct = load double, ptr %.sroa.0103.1, align 8, !tbaa !36 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0103.1, i64 16
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !36 ; 3 uses
  store double %i.ct, ptr %5, align 16
  store double %i.cv, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.cw = load double, ptr %.sroa.0104.1, align 8, !tbaa !36 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0104.1, i64 16
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !36 ; 2 uses
  store double %i.cw, ptr %6, align 16
  store double %i.cy, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.cz = load double, ptr %.sroa.089.1180, align 8, !tbaa !36 ; 2 uses
  %i.da = load double, ptr %i.br, align 8, !tbaa !36 ; 2 uses
  store double %i.cz, ptr %7, align 16
  store double %i.da, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.db = fsub double %i.cw, %i.ct                ; 2 uses
  %i.dc = fsub double %i.cy, %i.cv                ; 2 uses
  %i.dd = fsub double %i.cz, %i.ct                ; 2 uses
  %i.de = fsub double %i.da, %i.cv                ; 2 uses
  %i.df = fneg double %i.dc
  %i.dg = fmul double %i.dd, %i.df
  %i.dh = call noundef double @llvm.fmuladd.f64(double %i.db, double %i.de, double %i.dg) ; 2 uses
  %i.di = call noundef double @llvm.fabs.f64(double %i.db) ; 2 uses
  %i.dj = call noundef double @llvm.fabs.f64(double %i.dc) ; 2 uses
  %i.dk = call noundef double @llvm.fabs.f64(double %i.dd) ; 2 uses
  %i.dl = call noundef double @llvm.fabs.f64(double %i.de) ; 2 uses
  %i.dm = fcmp olt double %i.di, %i.dk
  %.054.i.i.i.i.i50 = select i1 %i.dm, double %i.dk, double %i.di ; 3 uses
  %i.dn = fcmp olt double %i.dj, %i.dl
  %.0.i.i.i.i.i51 = select i1 %i.dn, double %i.dl, double %i.dj ; 3 uses
  %i.do = fcmp ogt double %.054.i.i.i.i.i50, %.0.i.i.i.i.i51 ; 2 uses
  %.155.i.i.i.i.i52 = select i1 %i.do, double %.0.i.i.i.i.i51, double %.054.i.i.i.i.i50 ; 3 uses
  %.1.i.i.i.i.i53 = select i1 %i.do, double %.054.i.i.i.i.i50, double %.0.i.i.i.i.i51 ; 2 uses
  %i.dp = fcmp olt double %.155.i.i.i.i.i52, 1.000000e-146
  br i1 %i.dp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader
  %i.dq = fcmp oeq double %.155.i.i.i.i.i52, 0.000000e+00
  br i1 %i.dq, label %.thread141, label %bb.q

.thread141:                                       ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.w

bb.o:                                             ; preds = %.preheader
  %i.dr = fcmp olt double %.1.i.i.i.i.i53, f0x5FB317E5EF3AB327
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ds = fmul double %.155.i.i.i.i.i52, f0x3CD0028010000004
  %i.dt = fmul double %.1.i.i.i.i.i53, %i.ds      ; 2 uses
  %i.du = fcmp ule double %i.dh, %i.dt            ; 2 uses
  %i.dv = fneg double %i.dt
  %i.dw = fcmp uge double %i.dh, %i.dv
  %.021.i.i.i.i.i55 = select i1 %i.du, i32 -1, i32 1
  %cond1.i.i.i.i.i56 = and i1 %i.du, %i.dw
  br i1 %cond1.i.i.i.i.i56, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.dx = load i32, ptr %i.e, align 4
  %i.dy = and i32 %i.dx, 24576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.dz = load i32, ptr %i.c, align 4
  %i.ea = and i32 %i.dz, -24577
  %i.eb = or disjoint i32 %i.ea, 16384
  store i32 %i.eb, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ec = load <2 x double>, ptr %5, align 16, !tbaa !36, !noalias !1179 ; 3 uses
  %i.ed = fneg <2 x double> %i.ec                 ; 2 uses
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> %i.ec, <2 x i32> <i32 2, i32 0>
  %i.ef = shufflevector <2 x double> %i.ed, <2 x double> %i.ec, <2 x i32> <i32 3, i32 1>
  %i.eg = load <2 x double>, ptr %6, align 16, !tbaa !36, !noalias !1182 ; 3 uses
  %i.eh = fneg <2 x double> %i.eg                 ; 2 uses
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> %i.eg, <2 x i32> <i32 0, i32 2>
  %i.ej = shufflevector <2 x double> %i.eh, <2 x double> %i.eg, <2 x i32> <i32 1, i32 3>
  %i.ek = load <2 x double>, ptr %7, align 16, !tbaa !36, !noalias !1185 ; 3 uses
  %i.el = fneg <2 x double> %i.ek                 ; 2 uses
  %i.em = shufflevector <2 x double> %i.el, <2 x double> %i.ek, <2 x i32> <i32 0, i32 2>
  %i.en = shufflevector <2 x double> %i.el, <2 x double> %i.ek, <2 x i32> <i32 1, i32 3>
  %i.eo = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ei) #28, !srcloc !401
  %i.ep = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ee) #27, !srcloc !402 ; 2 uses
  %i.eq = fadd <2 x double> %i.eo, %i.ep
  %i.er = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.eq) #28, !srcloc !401
  %i.es = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ej) #28, !srcloc !401
  %i.et = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ef) #27, !srcloc !402 ; 2 uses
  %i.eu = fadd <2 x double> %i.es, %i.et
  %i.ev = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.eu) #28, !srcloc !401
  %i.ew = bitcast <2 x double> %i.ev to <2 x i64>
  %i.ex = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.em) #28, !srcloc !401
  %i.ey = fadd <2 x double> %i.ep, %i.ex
  %i.ez = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ey) #28, !srcloc !401
  %i.fa = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.en) #28, !srcloc !401
  %i.fb = fadd <2 x double> %i.et, %i.fa
  %i.fc = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fb) #28, !srcloc !401
  %i.fd = bitcast <2 x double> %i.fc to <2 x i64>
  %i.fe = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.er) #27, !srcloc !402 ; 3 uses
  %i.ff = fneg <2 x double> %i.fe
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fh = xor <2 x i64> %i.fd, <i64 -9223372036854775808, i64 0>
  %i.fi = bitcast <2 x i64> %i.fh to <2 x double>
  %i.fj = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fi) #28, !srcloc !401 ; 3 uses
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fl = fmul <2 x double> %i.fe, %i.fj
  %i.fm = fmul <2 x double> %i.fe, %i.fk
  %i.fn = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fm, <2 x double> splat (double +inf))
  %i.fo = fmul <2 x double> %i.fg, %i.fj
  %i.fp = fmul <2 x double> %i.fg, %i.fk
  %i.fq = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fp, <2 x double> splat (double +inf))
  %i.fr = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fl, <2 x double> %i.fn)
  %i.fs = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fo, <2 x double> %i.fq)
  %i.ft = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fr, <2 x double> %i.fs)
  %i.fu = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ft) #28, !srcloc !401 ; 2 uses
  %i.fv = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ez) #27, !srcloc !402 ; 3 uses
  %i.fw = fneg <2 x double> %i.fv
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fy = xor <2 x i64> %i.ew, <i64 -9223372036854775808, i64 0>
  %i.fz = bitcast <2 x i64> %i.fy to <2 x double>
  %i.ga = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fz) #28, !srcloc !401 ; 3 uses
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gc = fmul <2 x double> %i.fv, %i.ga
  %i.gd = fmul <2 x double> %i.fv, %i.gb
  %i.ge = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.gd, <2 x double> splat (double +inf))
  %i.gf = fmul <2 x double> %i.fx, %i.ga
  %i.gg = fmul <2 x double> %i.fx, %i.gb
  %i.gh = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.gg, <2 x double> splat (double +inf))
  %i.gi = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gc, <2 x double> %i.ge)
  %i.gj = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gf, <2 x double> %i.gh)
  %i.gk = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gi, <2 x double> %i.gj)
  %i.gl = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gk) #28, !srcloc !401 ; 2 uses
  %i.gm = extractelement <2 x double> %i.fu, i64 0
  %i.gn = fneg double %i.gm                       ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.gl, i64 1 ; 2 uses
  %i.go = fcmp olt double %.sroa.0.8.vec.extract.i.i.i.i, %i.gn
  br i1 %i.go, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gp = extractelement <2 x double> %i.gl, i64 0
  %i.gq = fneg double %i.gp                       ; 2 uses
  %.sroa.05.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.fu, i64 1 ; 2 uses
  %i.gr = fcmp olt double %.sroa.05.8.vec.extract.i.i.i.i, %i.gq
  br i1 %i.gr, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gs = fcmp une double %.sroa.05.8.vec.extract.i.i.i.i, %i.gq
  %i.gt = fcmp une double %.sroa.0.8.vec.extract.i.i.i.i, %i.gn
  %or.cond.not.i.i.i.i.i.i.i = or i1 %i.gt, %i.gs
  %i.gu = select i1 %or.cond.not.i.i.i.i.i.i.i, i64 8589934591, i64 0
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.gu, %bb.s ], [ 4294967297, %bb.q ], [ -1, %bb.r ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.5.0.i.i.i.i.i.i.i to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %.not.i79 = icmp eq i32 %.sroa.0.0.extract.trunc.i.i, %.sroa.2.0.extract.trunc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.gv = load i32, ptr %i.a, align 4
  %i.gw = and i32 %i.gv, -24577
  %i.gx = or disjoint i32 %i.gw, %i.dy
  store i32 %i.gx, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not.i79, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gy = invoke noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_2IST_EES16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.v unwind label %.loopexit

bb.v:                                             ; preds = %bb.p, %bb.t, %bb.u
  %.3.i.i.i.i.i54 = phi i32 [ %.021.i.i.i.i.i55, %bb.p ], [ %i.gy, %bb.u ], [ %.sroa.0.0.extract.trunc.i.i, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.gz = icmp eq i32 %.3.i.i.i.i.i54, 1
  br i1 %i.gz, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread141, %bb.v
  %i.ha = getelementptr inbounds i8, ptr %.sroa.15.1, i64 -8
  %i.hb = getelementptr inbounds i8, ptr %.sroa.15.1, i64 -24
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !561
  %i.hd = inttoptr i64 %i.hc to ptr
  br label %.preheader, !llvm.loop !1188

.loopexit.split-lp.thread:                        ; preds = %bb.f
  %lpad.loopexit151 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp150:                            ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i9, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i26
  %.sroa.32.1.ph = phi ptr [ %i.n, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i26 ], [ null, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.i, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i9 ]
  %.sroa.0106.1.ph = phi ptr [ %i.j, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i26 ], [ null, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.g, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i9 ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i60, %bb.l
  %lpad.loopexit145 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.aa
  %lpad.loopexit.split-lp146 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %bb.v
  %.not.i59 = icmp eq ptr %.sroa.15.1, %.sroa.32.0177
  br i1 %.not.i59, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.he = ptrtoint ptr %.sroa.089.1180 to i64
  store i64 %i.he, ptr %.sroa.15.1, align 8, !tbaa !561
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74

bb.z:                                             ; preds = %bb.x
  %i.hf = ptrtoint ptr %.sroa.32.0177 to i64      ; 2 uses
  %i.hg = ptrtoint ptr %.sroa.0106.0181 to i64    ; 3 uses
  %i.hh = sub i64 %i.hf, %i.hg                    ; 4 uses
  %i.hi = icmp eq i64 %i.hh, 9223372036854775800
  br i1 %i.hi, label %bb.aa, label %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i60

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #39
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc72:                                         ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i60: ; preds = %bb.z
  %i.hj = ashr exact i64 %i.hh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i61 = call i64 @llvm.umax.i64(i64 %i.hj, i64 1)
  %i.hk = add nsw i64 %.sroa.speculated.i.i.i61, %i.hj ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.hj
  %i.hm = call i64 @llvm.umin.i64(i64 %i.hk, i64 1152921504606846975)
  %i.hn = select i1 %i.hl, i64 1152921504606846975, i64 %i.hm ; 3 uses
  %.not.i.i.i62 = icmp ne i64 %i.hn, 0
  call void @llvm.assume(i1 %.not.i.i.i62)
  %i.ho = shl nuw nsw i64 %i.hn, 3
  %i.hp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ho) #40
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit ; 8 uses

.noexc73:                                         ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i60
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hh
  %i.hr = ptrtoint ptr %.sroa.089.1180 to i64
  store i64 %i.hr, ptr %i.hq, align 8, !tbaa !561
  %.not10.i.i.i.i.i63 = icmp eq ptr %.sroa.0106.0181, %.sroa.32.0177
  br i1 %.not10.i.i.i.i.i63, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71, label %.lr.ph.i.i.i.i.i64.preheader

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %.noexc73
  %i.hs = ptrtoaddr ptr %i.hp to i64
  %i.ht = add i64 %i.hf, -8
  %i.hu = sub i64 %i.ht, %i.hg                    ; 2 uses
  %i.hv = lshr i64 %i.hu, 3
  %i.hw = add nuw nsw i64 %i.hv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hu, 24
  %i.hx = sub i64 %i.hg, %i.hs
  %diff.check = icmp ugt i64 %i.hx, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i64.preheader249, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i64.preheader
  %n.vec = and i64 %i.hw, 4611686018427387900     ; 3 uses
  %i.hy = shl i64 %n.vec, 3                       ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hp, i64 %i.hy  ; 2 uses
  %i.ia = getelementptr i8, ptr %.sroa.0106.0181, i64 %i.hy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ib = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hp, i64 %i.ib ; 2 uses
  %next.gep246 = getelementptr i8, ptr %.sroa.0106.0181, i64 %i.ib ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  %i.ic = getelementptr i8, ptr %next.gep246, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep246, align 8, !tbaa !561, !alias.scope !1192, !noalias !1189
  %wide.load247 = load <2 x i64>, ptr %i.ic, align 8, !tbaa !561, !alias.scope !1192, !noalias !1189
  %i.id = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !561, !alias.scope !1189, !noalias !1192
  store <2 x i64> %wide.load247, ptr %i.id, align 8, !tbaa !561, !alias.scope !1189, !noalias !1192
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ie = icmp eq i64 %index.next, %n.vec
  br i1 %i.ie, label %middle.block, label %vector.body, !llvm.loop !1194

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71, label %.lr.ph.i.i.i.i.i64.preheader249

.lr.ph.i.i.i.i.i64.preheader249:                  ; preds = %.lr.ph.i.i.i.i.i64.preheader, %middle.block
  %.012.i.i.i.i.i65.ph = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.hz, %middle.block ]
  %.0911.i.i.i.i.i66.ph = phi ptr [ %.sroa.0106.0181, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.ia, %middle.block ]
  br label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.preheader249, %.lr.ph.i.i.i.i.i64
  %.012.i.i.i.i.i65 = phi ptr [ %i.ih, %.lr.ph.i.i.i.i.i64 ], [ %.012.i.i.i.i.i65.ph, %.lr.ph.i.i.i.i.i64.preheader249 ] ; 2 uses
  %.0911.i.i.i.i.i66 = phi ptr [ %i.ig, %.lr.ph.i.i.i.i.i64 ], [ %.0911.i.i.i.i.i66.ph, %.lr.ph.i.i.i.i.i64.preheader249 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  %i.if = load i64, ptr %.0911.i.i.i.i.i66, align 8, !tbaa !561, !alias.scope !1192, !noalias !1189
  store i64 %i.if, ptr %.012.i.i.i.i.i65, align 8, !tbaa !561, !alias.scope !1189, !noalias !1192
  %i.ig = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i66, i64 8 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 8 ; 2 uses
  %.not.i.i.i.i.i67 = icmp eq ptr %i.ig, %.sroa.32.0177
  br i1 %.not.i.i.i.i.i67, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71, label %.lr.ph.i.i.i.i.i64, !llvm.loop !1195

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71: ; preds = %.lr.ph.i.i.i.i.i64, %middle.block, %.noexc73
  %.0.lcssa.i.i.i.i.i69 = phi ptr [ %i.hp, %.noexc73 ], [ %i.hz, %middle.block ], [ %i.ih, %.lr.ph.i.i.i.i.i64 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.0181, i64 noundef %i.hh) #38
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.hn
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74: ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71, %bb.y
  %.0.lcssa.i.i.i.i.i69.pn = phi ptr [ %.0.lcssa.i.i.i.i.i69, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71 ], [ %.sroa.15.1, %bb.y ]
  %.sroa.32.8 = phi ptr [ %i.ii, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71 ], [ %.sroa.32.0177, %bb.y ]
  %.sroa.0106.8 = phi ptr [ %i.hp, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71 ], [ %.sroa.0106.0181, %bb.y ]
  %.sroa.15.7 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i69.pn, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.thread, %bb.m, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74
  %.sroa.15.2 = phi ptr [ %.sroa.15.7, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.15.0176, %bb.m ], [ %.sroa.15.0176, %.thread ] ; 2 uses
  %.sroa.32.2 = phi ptr [ %.sroa.32.8, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.32.0177, %bb.m ], [ %.sroa.32.0177, %.thread ] ; 2 uses
  %.sroa.0104.2 = phi ptr [ %.sroa.089.1180, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.0104.0178, %bb.m ], [ %.sroa.0104.0178, %.thread ]
  %.sroa.0103.2 = phi ptr [ %.sroa.0104.1, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.0103.0179, %bb.m ], [ %.sroa.0103.0179, %.thread ]
  %.sroa.0106.2 = phi ptr [ %.sroa.0106.8, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.0106.0181, %bb.m ], [ %.sroa.0106.0181, %.thread ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.089.1180, i64 24 ; 2 uses
  %.not143 = icmp eq ptr %i.ij, %i.f
  br i1 %.not143, label %.critedge, label %bb.h, !llvm.loop !1196

.critedge:                                        ; preds = %bb.a, %bb.ab, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit40
  %.sroa.15.3 = phi ptr [ %.sroa.15.2, %bb.ab ], [ %.sroa.15.6, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit40 ], [ %i.n, %bb.a ] ; 2 uses
  %.sroa.32.3 = phi ptr [ %.sroa.32.2, %bb.ab ], [ %i.bc, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit40 ], [ %i.n, %bb.a ] ; 2 uses
  %.sroa.0106.3 = phi ptr [ %.sroa.0106.2, %bb.ab ], [ %i.az, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit40 ], [ %i.j, %bb.a ] ; 4 uses
  %.sroa.081.0184 = getelementptr inbounds nuw i8, ptr %.sroa.0106.3, i64 8 ; 2 uses
  %.not144185 = icmp eq ptr %.sroa.081.0184, %.sroa.15.3
  br i1 %.not144185, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EED2Ev.exit, label %.lr.ph187
end_hunk_7
begin_hunk_8_@_ZNK4CGAL13Convex_hull_38internal30Is_on_positive_side_of_plane_3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEESB_EclERKNS_7Point_3IS4_EE:bb.a
  %i.du = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.dt, <2 x double> splat (double +inf))
  %i.dv = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dp, <2 x double> %i.dr)
  %i.dw = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ds, <2 x double> %i.du)
  %i.dx = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dv, <2 x double> %i.dw)
  %i.dy = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dx) #28, !noalias !1340, !srcloc !401
  %i.dz = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cl) #27, !srcloc !402 ; 5 uses
  %i.ea = fneg <2 x double> %i.dz
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ec = xor <2 x i64> %i.dg, <i64 -9223372036854775808, i64 0>
  %i.ed = bitcast <2 x i64> %i.ec to <2 x double> ; 2 uses
  %i.ee = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ed) #28, !noalias !1340, !srcloc !401 ; 3 uses
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eg = fmul <2 x double> %i.dz, %i.ee
  %i.eh = fmul <2 x double> %i.dz, %i.ef
  %i.ei = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.eh, <2 x double> splat (double +inf))
  %i.ej = fmul <2 x double> %i.eb, %i.ee
  %i.ek = fmul <2 x double> %i.eb, %i.ef
  %i.el = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ek, <2 x double> splat (double +inf))
  %i.em = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.eg, <2 x double> %i.ei)
  %i.en = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ej, <2 x double> %i.el)
  %i.eo = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.em, <2 x double> %i.en)
  %i.ep = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.eo) #28, !noalias !1340, !srcloc !401
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.er = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dy) #28, !noalias !1340, !srcloc !401
  %i.es = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.eq) #27, !srcloc !402
  %i.et = fadd <2 x double> %i.er, %i.es
  %i.eu = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.et) #28, !noalias !1340, !srcloc !401
  %i.ev = xor <2 x i64> %i.df, <i64 -9223372036854775808, i64 0>
  %i.ew = bitcast <2 x i64> %i.ev to <2 x double> ; 2 uses
  %i.ex = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ew) #28, !noalias !1340, !srcloc !401 ; 3 uses
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ez = fmul <2 x double> %i.dz, %i.ex
  %i.fa = fmul <2 x double> %i.dz, %i.ey
  %i.fb = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fa, <2 x double> splat (double +inf))
  %i.fc = fmul <2 x double> %i.eb, %i.ex
  %i.fd = fmul <2 x double> %i.eb, %i.ey
  %i.fe = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fd, <2 x double> splat (double +inf))
  %i.ff = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ez, <2 x double> %i.fb)
  %i.fg = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fc, <2 x double> %i.fe)
  %i.fh = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ff, <2 x double> %i.fg)
  %i.fi = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fh) #28, !noalias !1340, !srcloc !401
  %i.fj = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cb) #27, !srcloc !402 ; 5 uses
  %i.fk = fneg <2 x double> %i.fj
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.fm = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dm) #28, !noalias !1340, !srcloc !401 ; 3 uses
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fo = fmul <2 x double> %i.fj, %i.fm
  %i.fp = fmul <2 x double> %i.fj, %i.fn
  %i.fq = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fp, <2 x double> splat (double +inf))
  %i.fr = fmul <2 x double> %i.fl, %i.fm
  %i.fs = fmul <2 x double> %i.fl, %i.fn
  %i.ft = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fs, <2 x double> splat (double +inf))
  %i.fu = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fo, <2 x double> %i.fq)
  %i.fv = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fr, <2 x double> %i.ft)
  %i.fw = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fu, <2 x double> %i.fv)
  %i.fx = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fw) #28, !noalias !1340, !srcloc !401
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fz = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fi) #28, !noalias !1340, !srcloc !401
  %i.ga = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fy) #27, !srcloc !402
  %i.gb = fadd <2 x double> %i.fz, %i.ga
  %i.gc = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gb) #28, !noalias !1340, !srcloc !401
  %i.gd = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ed) #28, !noalias !1340, !srcloc !401 ; 3 uses
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gf = fmul <2 x double> %i.fj, %i.gd
  %i.gg = fmul <2 x double> %i.fj, %i.ge
  %i.gh = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.gg, <2 x double> splat (double +inf))
  %i.gi = fmul <2 x double> %i.fl, %i.gd
  %i.gj = fmul <2 x double> %i.fl, %i.ge
  %i.gk = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.gj, <2 x double> splat (double +inf))
  %i.gl = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gf, <2 x double> %i.gh)
  %i.gm = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gi, <2 x double> %i.gk)
  %i.gn = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gl, <2 x double> %i.gm)
  %i.go = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gn) #28, !noalias !1340, !srcloc !401
  %i.gp = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ew) #28, !noalias !1340, !srcloc !401 ; 3 uses
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gr = fmul <2 x double> %i.di, %i.gp
  %i.gs = fmul <2 x double> %i.di, %i.gq
  %i.gt = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.gs, <2 x double> splat (double +inf))
  %i.gu = fmul <2 x double> %i.dk, %i.gp
  %i.gv = fmul <2 x double> %i.dk, %i.gq
  %i.gw = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.gv, <2 x double> splat (double +inf))
  %i.gx = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gr, <2 x double> %i.gt)
  %i.gy = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gu, <2 x double> %i.gw)
  %i.gz = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gx, <2 x double> %i.gy)
  %i.ha = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gz) #28, !noalias !1340, !srcloc !401
  %i.hb = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hc = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.go) #28, !noalias !1340, !srcloc !401
  %i.hd = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hb) #27, !srcloc !402
  %i.he = fadd <2 x double> %i.hc, %i.hd
  %i.hf = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.he) #28, !noalias !1340, !srcloc !401
  store <2 x double> %i.eu, ptr %i.bd, align 16
  %.sroa.5206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x double> %i.gc, ptr %.sroa.5206.0..sroa_idx, align 16
  %.sroa.6207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x double> %i.hf, ptr %.sroa.6207.0..sroa_idx, align 16
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x double> %i.bi, ptr %i.hg, align 16
  %.sroa.7210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x double> %i.bj, ptr %.sroa.7210.0..sroa_idx, align 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x double> %i.bm, ptr %.sroa.10.0..sroa_idx, align 16
  %i.hh = load <2 x double>, ptr %1, align 8, !tbaa !36, !noalias !1347
  %.pre218 = load double, ptr %i.n, align 8, !tbaa !36, !noalias !1347
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %.pre-phi = phi <2 x double> [ %.pre221, %._crit_edge ], [ %i.bx, %bb.j ]
  %i.hi = phi double [ %i.o, %._crit_edge ], [ %.pre218, %bb.j ] ; 2 uses
  %i.hj = phi <2 x double> [ %i.j, %._crit_edge ], [ %i.hh, %bb.j ] ; 3 uses
  %i.hk = fneg <2 x double> %i.hj                 ; 2 uses
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> %i.hj, <2 x i32> <i32 0, i32 2>
  %i.hm = shufflevector <2 x double> %i.hk, <2 x double> %i.hj, <2 x i32> <i32 1, i32 3>
  %i.hn = fneg double %i.hi
  %i.ho = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.hp = insertelement <2 x double> %i.ho, double %i.hi, i64 1
  %i.hq = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hl) #28, !noalias !1313, !srcloc !401
  %i.hr = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.pre-phi) #27, !srcloc !402
  %i.hs = fadd <2 x double> %i.hq, %i.hr
  %i.ht = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hs) #28, !noalias !1313, !srcloc !401
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hv = load <2 x double>, ptr %i.hu, align 16, !tbaa !146, !noalias !1313
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hx = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hm) #28, !noalias !1313, !srcloc !401
  %i.hy = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hw) #27, !srcloc !402
  %i.hz = fadd <2 x double> %i.hx, %i.hy
  %i.ia = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hz) #28, !noalias !1313, !srcloc !401
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ic = load <2 x double>, ptr %i.ib, align 16, !tbaa !146, !noalias !1313
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ie = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hp) #28, !noalias !1313, !srcloc !401
  %i.if = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.id) #27, !srcloc !402
  %i.ig = fadd <2 x double> %i.ie, %i.if
  %i.ih = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ig) #28, !noalias !1313, !srcloc !401
  %i.ii = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ht) #27, !srcloc !402 ; 3 uses
  %i.ij = load <2 x i64>, ptr %i.bd, align 16, !tbaa !146
  %i.ik = fneg <2 x double> %i.ii
  %i.il = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.im = xor <2 x i64> %i.ij, <i64 -9223372036854775808, i64 0>
  %i.in = bitcast <2 x i64> %i.im to <2 x double>
  %i.io = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.in) #28, !srcloc !401 ; 3 uses
  %i.ip = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.iq = fmul <2 x double> %i.ii, %i.io
  %i.ir = fmul <2 x double> %i.ii, %i.ip
  %i.is = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ir, <2 x double> splat (double +inf))
  %i.it = fmul <2 x double> %i.il, %i.io
  %i.iu = fmul <2 x double> %i.il, %i.ip
  %i.iv = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.iu, <2 x double> splat (double +inf))
  %i.iw = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.iq, <2 x double> %i.is)
  %i.ix = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.it, <2 x double> %i.iv)
  %i.iy = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.iw, <2 x double> %i.ix)
  %i.iz = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.iy) #28, !srcloc !401
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.jb = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ia) #27, !srcloc !402 ; 3 uses
  %i.jc = load <2 x i64>, ptr %i.ja, align 16, !tbaa !146
  %i.jd = fneg <2 x double> %i.jb
  %i.je = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jf = xor <2 x i64> %i.jc, <i64 -9223372036854775808, i64 0>
  %i.jg = bitcast <2 x i64> %i.jf to <2 x double>
  %i.jh = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.jg) #28, !srcloc !401 ; 3 uses
  %i.ji = shufflevector <2 x double> %i.jh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jj = fmul <2 x double> %i.jb, %i.jh
  %i.jk = fmul <2 x double> %i.jb, %i.ji
  %i.jl = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.jk, <2 x double> splat (double +inf))
  %i.jm = fmul <2 x double> %i.je, %i.jh
  %i.jn = fmul <2 x double> %i.je, %i.ji
  %i.jo = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.jn, <2 x double> splat (double +inf))
  %i.jp = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.jj, <2 x double> %i.jl)
  %i.jq = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.jm, <2 x double> %i.jo)
  %i.jr = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.jp, <2 x double> %i.jq)
  %i.js = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.jr) #28, !srcloc !401
  %i.jt = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.iz) #28, !srcloc !401
  %i.ju = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.js) #27, !srcloc !402
  %i.jv = fadd <2 x double> %i.jt, %i.ju
  %i.jw = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.jv) #28, !srcloc !401
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.jy = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ih) #27, !srcloc !402 ; 3 uses
  %i.jz = load <2 x i64>, ptr %i.jx, align 16, !tbaa !146
  %i.ka = fneg <2 x double> %i.jy
  %i.kb = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kc = xor <2 x i64> %i.jz, <i64 -9223372036854775808, i64 0>
  %i.kd = bitcast <2 x i64> %i.kc to <2 x double>
  %i.ke = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.kd) #28, !srcloc !401 ; 3 uses
  %i.kf = shufflevector <2 x double> %i.ke, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kg = fmul <2 x double> %i.jy, %i.ke
  %i.kh = fmul <2 x double> %i.jy, %i.kf
  %i.ki = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.kh, <2 x double> splat (double +inf))
  %i.kj = fmul <2 x double> %i.kb, %i.ke
  %i.kk = fmul <2 x double> %i.kb, %i.kf
  %i.kl = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.kk, <2 x double> splat (double +inf))
  %i.km = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.kg, <2 x double> %i.ki)
  %i.kn = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.kj, <2 x double> %i.kl)
  %i.ko = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.km, <2 x double> %i.kn)
  %i.kp = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ko) #28, !srcloc !401
  %i.kq = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.jw) #28, !srcloc !401
  %i.kr = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.kp) #27, !srcloc !402
  %i.ks = fadd <2 x double> %i.kq, %i.kr
  %i.kt = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ks) #28, !srcloc !401 ; 2 uses
  %i.ku = extractelement <2 x double> %i.kt, i64 0 ; 2 uses
  %i.kv = fneg double %i.ku
  %i.kw = fcmp olt double %i.ku, 0.000000e+00
  br i1 %i.kw, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0185.8.vec.extract = extractelement <2 x double> %i.kt, i64 1 ; 2 uses
  %i.kx = fcmp olt double %.sroa.0185.8.vec.extract, 0.000000e+00
  br i1 %i.kx, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ky = fcmp une double %.sroa.0185.8.vec.extract, %i.kv
  %i.kz = select i1 %i.ky, i64 8589934591, i64 0
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.sroa.5.0.i.i.i = phi i64 [ %i.kz, %bb.m ], [ 4294967297, %bb.k ], [ -1, %bb.l ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.5.0.i.i.i to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.5.0.i.i.i, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.la = icmp eq i32 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  br i1 %i.la, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.n
  %i.lb = icmp eq i32 %.sroa.0.0.extract.trunc.i, 1
  br label %bb.ej

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.lc = load i32, ptr %i.g, align 4
  %i.ld = and i32 %i.lc, 24576                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.le = load i32, ptr %i.e, align 4
  %i.lf = and i32 %i.le, -24577
  store i32 %i.lf, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.lh = load ptr, ptr %i.lg, align 16, !tbaa !579
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %bb.p, label %bb.de

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.lk = load ptr, ptr %i.h, align 8, !tbaa !1307, !nonnull !14, !align !1308
  invoke void @_ZNK4CGAL19Cartesian_converterINS_5EpickENS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEENS_12NT_converterIdSF_EEEclERKNS_7Point_3IS1_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.414") align 16 %13, ptr noundef nonnull align 1 dereferenceable(2) %i.lj, ptr noundef nonnull align 8 dereferenceable(24) %i.lk)
          to label %bb.q unwind label %bb.cq

bb.q:                                             ; preds = %bb.p
  %i.ll = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #40
          to label %bb.r unwind label %bb.cr      ; 3 uses

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4CGAL13Convex_hull_38internal30Is_on_positive_side_of_plane_3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEESB_E17Vector_plus_pointINS_16Simple_cartesianIN5boost14multiprecision6numberINSH_8backends16rational_adaptorINSJ_15cpp_int_backendILm0ELm0ELNSH_16cpp_integer_typeE1ELNSH_18cpp_int_check_typeE0ESaIyEEEEELNSH_26expression_template_optionE1EEEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(384) %i.ll)
          to label %bb.s unwind label %bb.cs

bb.s:                                             ; preds = %bb.r
  store ptr %i.ll, ptr %i.lg, align 16, !tbaa !579
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNK4CGAL19Cartesian_converterINS_5EpickENS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEENS_12NT_converterIdSF_EEEclERKNS_7Point_3IS1_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.414") align 16 %16, ptr noundef nonnull align 1 dereferenceable(2) %i.lj, ptr noundef nonnull align 8 dereferenceable(24) %i.lm)
          to label %bb.t unwind label %bb.ct

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28, !noalias !1350
  call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !1353
  invoke void @_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKNS_7Point_3ISG_EESM_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::VectorC3.417") align 16 %4, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 16 dereferenceable(192) %13, ptr noundef nonnull align 16 dereferenceable(192) %16)
          to label %.noexc73 unwind label %bb.cu

.noexc73:                                         ; preds = %bb.t
  store i64 0, ptr %15, align 16, !tbaa !146, !alias.scope !1353
  %i.ln = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.lo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.lp = load i64, ptr %i.lo, align 16, !tbaa !135, !noalias !1353 ; 2 uses
  store i64 %i.lp, ptr %i.ln, align 16, !tbaa !135, !alias.scope !1353
  %i.lq = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.lr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ls = load i8, ptr %i.lr, align 8, !tbaa !144, !range !13, !noalias !1353, !noundef !14
  store i8 %i.ls, ptr %i.lq, align 8, !tbaa !144, !alias.scope !1353
  %i.lt = getelementptr inbounds nuw i8, ptr %15, i64 25 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %4, i64 25
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !9, !range !13, !noalias !1353, !noundef !14 ; 2 uses
  store i8 %i.lv, ptr %i.lt, align 1, !tbaa !9, !alias.scope !1353
  %i.lw = getelementptr inbounds nuw i8, ptr %15, i64 26 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.ly = load i8, ptr %i.lx, align 2, !tbaa !145, !range !13, !noalias !1353, !noundef !14
  store i8 %i.ly, ptr %i.lw, align 2, !tbaa !145, !alias.scope !1353
  %i.lz = trunc nuw i8 %i.lv to i1
  br i1 %i.lz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.noexc73
  %i.ma = shl i64 %i.lp, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(192) %15, ptr nonnull align 16 dereferenceable(192) %4, i64 %i.ma, i1 false)
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i

bb.v:                                             ; preds = %.noexc73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %15, ptr noundef nonnull align 16 dereferenceable(192) %4, i64 16, i1 false), !tbaa.struct !202
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i: ; preds = %bb.v, %bb.u
  %i.mb = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i64 0, ptr %i.mb, align 16, !tbaa !146, !alias.scope !1353
  %i.md = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.me = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.mf = load i64, ptr %i.me, align 16, !tbaa !135, !noalias !1353 ; 2 uses
  store i64 %i.mf, ptr %i.md, align 16, !tbaa !135, !alias.scope !1353
  %i.mg = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.mh = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.mi = load i8, ptr %i.mh, align 8, !tbaa !144, !range !13, !noalias !1353, !noundef !14
  store i8 %i.mi, ptr %i.mg, align 8, !tbaa !144, !alias.scope !1353
  %i.mj = getelementptr inbounds nuw i8, ptr %15, i64 57 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %4, i64 57
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !9, !range !13, !noalias !1353, !noundef !14 ; 2 uses
  store i8 %i.ml, ptr %i.mj, align 1, !tbaa !9, !alias.scope !1353
  %i.mm = getelementptr inbounds nuw i8, ptr %15, i64 58 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %4, i64 58
  %i.mo = load i8, ptr %i.mn, align 2, !tbaa !145, !range !13, !noalias !1353, !noundef !14
  store i8 %i.mo, ptr %i.mm, align 2, !tbaa !145, !alias.scope !1353
  %i.mp = trunc nuw i8 %i.ml to i1
  br i1 %i.mp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i
  %i.mq = shl i64 %i.mf, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.mb, ptr nonnull align 16 dereferenceable(27) %i.mc, i64 %i.mq, i1 false)
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i.i

bb.x:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.mb, ptr noundef nonnull align 16 dereferenceable(27) %i.mc, i64 16, i1 false), !tbaa.struct !202
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i.i

_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i.i: ; preds = %bb.x, %bb.w
  %i.mr = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 5 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 0, ptr %i.mr, align 16, !tbaa !146, !alias.scope !1353
  %i.mt = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.mu = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.mv = load i64, ptr %i.mu, align 16, !tbaa !135, !noalias !1353 ; 2 uses
  store i64 %i.mv, ptr %i.mt, align 16, !tbaa !135, !alias.scope !1353
  %i.mw = getelementptr inbounds nuw i8, ptr %15, i64 88
  %i.mx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.my = load i8, ptr %i.mx, align 8, !tbaa !144, !range !13, !noalias !1353, !noundef !14
  store i8 %i.my, ptr %i.mw, align 8, !tbaa !144, !alias.scope !1353
  %i.mz = getelementptr inbounds nuw i8, ptr %15, i64 89 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %4, i64 89
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !9, !range !13, !noalias !1353, !noundef !14 ; 2 uses
  store i8 %i.nb, ptr %i.mz, align 1, !tbaa !9, !alias.scope !1353
  %i.nc = getelementptr inbounds nuw i8, ptr %15, i64 90 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %4, i64 90
  %i.ne = load i8, ptr %i.nd, align 2, !tbaa !145, !range !13, !noalias !1353, !noundef !14
  store i8 %i.ne, ptr %i.nc, align 2, !tbaa !145, !alias.scope !1353
  %i.nf = trunc nuw i8 %i.nb to i1
  %i.ng = shl i64 %i.mv, 3
  %.sink.i = select i1 %i.nf, i64 %i.ng, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(64) %i.mr, ptr nonnull align 16 dereferenceable(64) %i.ms, i64 %.sink.i, i1 false)
  %i.nh = getelementptr inbounds nuw i8, ptr %15, i64 96 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 0, ptr %i.nh, align 16, !tbaa !146, !alias.scope !1353
  %i.nj = getelementptr inbounds nuw i8, ptr %15, i64 112
  %i.nk = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.nl = load i64, ptr %i.nk, align 16, !tbaa !135, !noalias !1353 ; 2 uses
  store i64 %i.nl, ptr %i.nj, align 16, !tbaa !135, !alias.scope !1353
  %i.nm = getelementptr inbounds nuw i8, ptr %15, i64 120
  %i.nn = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.no = load i8, ptr %i.nn, align 8, !tbaa !144, !range !13, !noalias !1353, !noundef !14
  store i8 %i.no, ptr %i.nm, align 8, !tbaa !144, !alias.scope !1353
  %i.np = getelementptr inbounds nuw i8, ptr %15, i64 121 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %4, i64 121
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !9, !range !13, !noalias !1353, !noundef !14 ; 2 uses
  store i8 %i.nr, ptr %i.np, align 1, !tbaa !9, !alias.scope !1353
  %i.ns = getelementptr inbounds nuw i8, ptr %15, i64 122 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %4, i64 122
  %i.nu = load i8, ptr %i.nt, align 2, !tbaa !145, !range !13, !noalias !1353, !noundef !14
  store i8 %i.nu, ptr %i.ns, align 2, !tbaa !145, !alias.scope !1353
  %i.nv = trunc nuw i8 %i.nr to i1
  %i.nw = shl i64 %i.nl, 3
  %.sink8.i = select i1 %i.nv, i64 %i.nw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.nh, ptr nonnull align 16 dereferenceable(27) %i.ni, i64 %.sink8.i, i1 false)
  %i.nx = getelementptr inbounds nuw i8, ptr %15, i64 128 ; 5 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i64 0, ptr %i.nx, align 16, !tbaa !146, !alias.scope !1353
  %i.nz = getelementptr inbounds nuw i8, ptr %15, i64 144
  %i.oa = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ob = load i64, ptr %i.oa, align 16, !tbaa !135, !noalias !1353 ; 2 uses
  store i64 %i.ob, ptr %i.nz, align 16, !tbaa !135, !alias.scope !1353
  %i.oc = getelementptr inbounds nuw i8, ptr %15, i64 152
  %i.od = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.oe = load i8, ptr %i.od, align 8, !tbaa !144, !range !13, !noalias !1353, !noundef !14
  store i8 %i.oe, ptr %i.oc, align 8, !tbaa !144, !alias.scope !1353
  %i.of = getelementptr inbounds nuw i8, ptr %15, i64 153 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %4, i64 153
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !9, !range !13, !noalias !1353, !noundef !14 ; 2 uses
  store i8 %i.oh, ptr %i.of, align 1, !tbaa !9, !alias.scope !1353
  %i.oi = getelementptr inbounds nuw i8, ptr %15, i64 154 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %4, i64 154
  %i.ok = load i8, ptr %i.oj, align 2, !tbaa !145, !range !13, !noalias !1353, !noundef !14
  store i8 %i.ok, ptr %i.oi, align 2, !tbaa !145, !alias.scope !1353
  %i.ol = trunc nuw i8 %i.oh to i1
  %i.om = shl i64 %i.ob, 3
  %.sink9.i = select i1 %i.ol, i64 %i.om, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(64) %i.nx, ptr nonnull align 16 dereferenceable(64) %i.ny, i64 %.sink9.i, i1 false)
  %i.on = getelementptr inbounds nuw i8, ptr %15, i64 160 ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN4CGAL13Convex_hull_38internal19ch_quickhull_3_scanINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS7_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISF_NS_28Triangulation_ds_face_base_2IvEEEEEESF_EEvRT_RNSt7__cxx114listINSP_11Face_handleESaIST_EEERKT0_:bb.a
  %i.cq = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bk) #28, !srcloc !401
  %i.cr = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bd) #27, !srcloc !402 ; 2 uses
  %i.cs = fadd <2 x double> %i.cq, %i.cr
  %i.ct = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cs) #28, !srcloc !401
  %i.cu = bitcast <2 x double> %i.ct to <2 x i64>
  %i.cv = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bl) #28, !srcloc !401
  %i.cw = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bg) #27, !srcloc !402 ; 2 uses
  %i.cx = fadd <2 x double> %i.cv, %i.cw
  %i.cy = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cx) #28, !srcloc !401
  %i.cz = bitcast <2 x double> %i.cy to <2 x i64>
  %i.da = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bo) #28, !srcloc !401
  %i.db = fadd <2 x double> %i.cn, %i.da
  %i.dc = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.db) #28, !srcloc !401
  %i.dd = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bp) #28, !srcloc !401
  %i.de = fadd <2 x double> %i.cr, %i.dd
  %i.df = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.de) #28, !srcloc !401
  %i.dg = bitcast <2 x double> %i.df to <2 x i64>
  %i.dh = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bt) #28, !srcloc !401
  %i.di = fadd <2 x double> %i.cw, %i.dh
  %i.dj = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.di) #28, !srcloc !401
  %i.dk = bitcast <2 x double> %i.dj to <2 x i64>
  %i.dl = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bx) #28, !srcloc !401
  %i.dm = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cf) #27, !srcloc !402
  %i.dn = fadd <2 x double> %i.dl, %i.dm
  %i.do = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dn) #28, !srcloc !401
  %i.dp = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cb) #28, !srcloc !401
  %i.dq = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cg) #27, !srcloc !402
  %i.dr = fadd <2 x double> %i.dp, %i.dq
  %i.ds = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dr) #28, !srcloc !401
  %i.dt = bitcast <2 x double> %i.ds to <2 x i64>
  %i.du = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cc) #28, !srcloc !401
  %i.dv = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cl) #27, !srcloc !402
  %i.dw = fadd <2 x double> %i.du, %i.dv
  %i.dx = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dw) #28, !srcloc !401
  %i.dy = bitcast <2 x double> %i.dx to <2 x i64>
  %i.dz = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cp) #27, !srcloc !402 ; 5 uses
  %i.ea = fneg <2 x double> %i.dz
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ec = xor <2 x i64> %i.dg, <i64 -9223372036854775808, i64 0>
  %i.ed = bitcast <2 x i64> %i.ec to <2 x double> ; 2 uses
  %i.ee = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ed) #28, !srcloc !401 ; 3 uses
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eg = fmul <2 x double> %i.dz, %i.ee
  %i.eh = fmul <2 x double> %i.dz, %i.ef
  %i.ei = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.eh, <2 x double> splat (double +inf))
  %i.ej = fmul <2 x double> %i.eb, %i.ee
  %i.ek = fmul <2 x double> %i.eb, %i.ef
  %i.el = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ek, <2 x double> splat (double +inf))
  %i.em = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.eg, <2 x double> %i.ei)
  %i.en = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ej, <2 x double> %i.el)
  %i.eo = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.em, <2 x double> %i.en)
  %i.ep = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.eo) #28, !srcloc !401
  %i.eq = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dc) #27, !srcloc !402 ; 5 uses
  %i.er = fneg <2 x double> %i.eq
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.et = xor <2 x i64> %i.cu, <i64 -9223372036854775808, i64 0>
  %i.eu = bitcast <2 x i64> %i.et to <2 x double> ; 2 uses
  %i.ev = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.eu) #28, !srcloc !401 ; 3 uses
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ex = fmul <2 x double> %i.eq, %i.ev
  %i.ey = fmul <2 x double> %i.eq, %i.ew
  %i.ez = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ey, <2 x double> splat (double +inf))
  %i.fa = fmul <2 x double> %i.es, %i.ev
  %i.fb = fmul <2 x double> %i.es, %i.ew
  %i.fc = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fb, <2 x double> splat (double +inf))
  %i.fd = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ex, <2 x double> %i.ez)
  %i.fe = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fa, <2 x double> %i.fc)
  %i.ff = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fd, <2 x double> %i.fe)
  %i.fg = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ff) #28, !srcloc !401
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fi = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ep) #28, !srcloc !401
  %i.fj = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fh) #27, !srcloc !402
  %i.fk = fadd <2 x double> %i.fi, %i.fj
  %i.fl = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fk) #28, !srcloc !401
  %i.fm = xor <2 x i64> %i.dt, <i64 -9223372036854775808, i64 0>
  %i.fn = bitcast <2 x i64> %i.fm to <2 x double> ; 2 uses
  %i.fo = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fn) #28, !srcloc !401 ; 3 uses
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fq = fmul <2 x double> %i.dz, %i.fo
  %i.fr = fmul <2 x double> %i.dz, %i.fp
  %i.fs = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fr, <2 x double> splat (double +inf))
  %i.ft = fmul <2 x double> %i.eb, %i.fo
  %i.fu = fmul <2 x double> %i.eb, %i.fp
  %i.fv = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fu, <2 x double> splat (double +inf))
  %i.fw = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fq, <2 x double> %i.fs)
  %i.fx = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ft, <2 x double> %i.fv)
  %i.fy = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fw, <2 x double> %i.fx)
  %i.fz = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fy) #28, !srcloc !401
  %i.ga = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.do) #27, !srcloc !402 ; 5 uses
  %i.gb = fneg <2 x double> %i.ga
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.gd = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.eu) #28, !srcloc !401 ; 3 uses
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gf = fmul <2 x double> %i.ga, %i.gd
  %i.gg = fmul <2 x double> %i.ga, %i.ge
  %i.gh = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.gg, <2 x double> splat (double +inf))
  %i.gi = fmul <2 x double> %i.gc, %i.gd
  %i.gj = fmul <2 x double> %i.gc, %i.ge
  %i.gk = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.gj, <2 x double> splat (double +inf))
  %i.gl = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gf, <2 x double> %i.gh)
  %i.gm = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gi, <2 x double> %i.gk)
  %i.gn = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gl, <2 x double> %i.gm)
  %i.go = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gn) #28, !srcloc !401
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gq = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fz) #28, !srcloc !401
  %i.gr = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gp) #27, !srcloc !402
  %i.gs = fadd <2 x double> %i.gq, %i.gr
  %i.gt = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gs) #28, !srcloc !401
  %i.gu = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fn) #28, !srcloc !401 ; 3 uses
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gw = fmul <2 x double> %i.eq, %i.gu
  %i.gx = fmul <2 x double> %i.eq, %i.gv
  %i.gy = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.gx, <2 x double> splat (double +inf))
  %i.gz = fmul <2 x double> %i.es, %i.gu
  %i.ha = fmul <2 x double> %i.es, %i.gv
  %i.hb = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ha, <2 x double> splat (double +inf))
  %i.hc = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gw, <2 x double> %i.gy)
  %i.hd = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gz, <2 x double> %i.hb)
  %i.he = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.hc, <2 x double> %i.hd)
  %i.hf = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.he) #28, !srcloc !401
  %i.hg = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ed) #28, !srcloc !401 ; 3 uses
  %i.hh = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hi = fmul <2 x double> %i.ga, %i.hg
  %i.hj = fmul <2 x double> %i.ga, %i.hh
  %i.hk = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.hj, <2 x double> splat (double +inf))
  %i.hl = fmul <2 x double> %i.gc, %i.hg
  %i.hm = fmul <2 x double> %i.gc, %i.hh
  %i.hn = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.hm, <2 x double> splat (double +inf))
  %i.ho = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.hi, <2 x double> %i.hk)
  %i.hp = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.hl, <2 x double> %i.hn)
  %i.hq = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ho, <2 x double> %i.hp)
  %i.hr = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hq) #28, !srcloc !401
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ht = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hf) #28, !srcloc !401
  %i.hu = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hs) #27, !srcloc !402
  %i.hv = fadd <2 x double> %i.ht, %i.hu
  %i.hw = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hv) #28, !srcloc !401
  %i.hx = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fl) #27, !srcloc !402 ; 3 uses
  %i.hy = fneg <2 x double> %i.hx
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ia = xor <2 x i64> %i.dy, <i64 -9223372036854775808, i64 0>
  %i.ib = bitcast <2 x i64> %i.ia to <2 x double>
  %i.ic = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ib) #28, !srcloc !401 ; 3 uses
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ie = fmul <2 x double> %i.hx, %i.ic
  %i.if = fmul <2 x double> %i.hx, %i.id
  %i.ig = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.if, <2 x double> splat (double +inf))
  %i.ih = fmul <2 x double> %i.hz, %i.ic
  %i.ii = fmul <2 x double> %i.hz, %i.id
  %i.ij = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ii, <2 x double> splat (double +inf))
  %i.ik = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ie, <2 x double> %i.ig)
  %i.il = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ih, <2 x double> %i.ij)
  %i.im = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ik, <2 x double> %i.il)
  %i.in = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.im) #28, !srcloc !401
  %i.io = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gt) #27, !srcloc !402 ; 3 uses
  %i.ip = fneg <2 x double> %i.io
  %i.iq = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ir = xor <2 x i64> %i.dk, <i64 -9223372036854775808, i64 0>
  %i.is = bitcast <2 x i64> %i.ir to <2 x double>
  %i.it = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.is) #28, !srcloc !401 ; 3 uses
  %i.iu = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.iv = fmul <2 x double> %i.io, %i.it
  %i.iw = fmul <2 x double> %i.io, %i.iu
  %i.ix = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.iw, <2 x double> splat (double +inf))
  %i.iy = fmul <2 x double> %i.iq, %i.it
  %i.iz = fmul <2 x double> %i.iq, %i.iu
  %i.ja = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.iz, <2 x double> splat (double +inf))
  %i.jb = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.iv, <2 x double> %i.ix)
  %i.jc = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.iy, <2 x double> %i.ja)
  %i.jd = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.jb, <2 x double> %i.jc)
  %i.je = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.jd) #28, !srcloc !401
  %i.jf = shufflevector <2 x double> %i.je, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jg = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.in) #28, !srcloc !401
  %i.jh = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.jf) #27, !srcloc !402
  %i.ji = fadd <2 x double> %i.jg, %i.jh
  %i.jj = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ji) #28, !srcloc !401
  %i.jk = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hw) #27, !srcloc !402 ; 3 uses
  %i.jl = fneg <2 x double> %i.jk
  %i.jm = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jn = xor <2 x i64> %i.cz, <i64 -9223372036854775808, i64 0>
  %i.jo = bitcast <2 x i64> %i.jn to <2 x double>
  %i.jp = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.jo) #28, !srcloc !401 ; 3 uses
  %i.jq = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jr = fmul <2 x double> %i.jk, %i.jp
  %i.js = fmul <2 x double> %i.jk, %i.jq
  %i.jt = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.js, <2 x double> splat (double +inf))
  %i.ju = fmul <2 x double> %i.jm, %i.jp
  %i.jv = fmul <2 x double> %i.jm, %i.jq
  %i.jw = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.jv, <2 x double> splat (double +inf))
  %i.jx = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.jr, <2 x double> %i.jt)
  %i.jy = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ju, <2 x double> %i.jw)
  %i.jz = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.jx, <2 x double> %i.jy)
  %i.ka = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.jz) #28, !srcloc !401
  %i.kb = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.jj) #28, !srcloc !401
  %i.kc = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ka) #27, !srcloc !402
  %i.kd = fadd <2 x double> %i.kb, %i.kc
  %i.ke = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.kd) #28, !srcloc !401 ; 2 uses
  %i.kf = extractelement <2 x double> %i.ke, i64 0 ; 2 uses
  %i.kg = fneg double %i.kf
  %i.kh = fcmp olt double %i.kf, 0.000000e+00
  br i1 %i.kh, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc110
  %.sroa.0.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.ke, i64 1 ; 2 uses
  %i.ki = fcmp olt double %.sroa.0.8.vec.extract.i.i.i.i, 0.000000e+00
  br i1 %i.ki, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.kj = fcmp une double %.sroa.0.8.vec.extract.i.i.i.i, %i.kg
  %i.kk = select i1 %i.kj, i64 8589934591, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.noexc110
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.kk, %bb.d ], [ 4294967297, %.noexc110 ], [ -1, %bb.c ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.5.0.i.i.i.i.i.i.i to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i to i32 ; 2 uses
  %i.kl = icmp slt i32 %.sroa.3.0.extract.trunc.i.i.i, -1
  %i.km = icmp sgt i32 %.sroa.0.0.extract.trunc.i.i.i, -1
  %or.cond.i.i.i = or i1 %i.km, %i.kl
  %i.kn = icmp eq i32 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.3.0.extract.trunc.i.i.i
  %i.ko = zext i1 %i.kn to i16
  %i.kp = or disjoint i16 %i.ko, 256
  %.sroa.4.0.i.i.i = select i1 %or.cond.i.i.i, i16 0, i16 %i.kp ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i16 %.sroa.4.0.i.i.i to i8
  %.sroa.2.0.extract.shift.i.i = lshr i16 %.sroa.4.0.i.i.i, 8
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i to i8
  %.not = icmp eq i8 %.sroa.0.0.extract.trunc.i.i, %.sroa.2.0.extract.trunc.i.i
  %i.kq = trunc i16 %.sroa.4.0.i.i.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.kr = load i32, ptr %i.a, align 4
  %i.ks = and i32 %i.kr, -24577
  %i.kt = or disjoint i32 %i.ks, %i.aw
  store i32 %i.kt, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not, label %.noexc, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ku = invoke noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors31Less_signed_distance_to_plane_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_S16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEEbDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e, %bb.f
  %.3.i = phi i1 [ %i.kq, %bb.e ], [ %i.ku, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %spec.select.i.i.i = select i1 %.3.i, ptr %i.as, ptr %.sroa.02.011.i.i.i ; 2 uses
  %i.kv = load ptr, ptr %i.as, align 8, !tbaa !286 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.kv, %i.aj
  br i1 %.not.i.i.i, label %.loopexit253, label %.noexc110, !llvm.loop !1420

.loopexit253:                                     ; preds = %.noexc, %.preheader.i.i.i, %_ZNSt7__cxx114listIN4CGAL7Point_3INS1_5EpickEEESaIS4_EE5clearEv.exit
  %.sroa.02.2.i.i.i = phi ptr [ %i.ap, %_ZNSt7__cxx114listIN4CGAL7Point_3INS1_5EpickEEESaIS4_EE5clearEv.exit ], [ %i.ap, %.preheader.i.i.i ], [ %spec.select.i.i.i, %.noexc ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.kw, i64 24, i1 false)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ai, i64 80 ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !289
  %i.kz = add i64 %i.ky, -1
  store i64 %i.kz, ptr %i.kx, align 8, !tbaa !289
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.2.i.i.i) #28
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02.2.i.i.i, i64 noundef 40) #38
  invoke void @_ZN4CGAL13Convex_hull_38internal16find_visible_setINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS7_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISF_NS_28Triangulation_ds_face_base_2IvEEEEEESF_EEvRT_RKNT0_7Point_3ENSP_11Face_handleERNSt7__cxx114listISV_SaISV_EEERSt3mapINSP_13Vertex_handleENSP_4EdgeESt4lessIS12_ESaISt4pairIKS12_S13_EEERKSR_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr nonnull %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.preheader252 unwind label %bb.h

.preheader252:                                    ; preds = %.loopexit253
  %.sroa.0174.0270 = load ptr, ptr %5, align 8, !tbaa !286 ; 2 uses
  %.not245271 = icmp eq ptr %.sroa.0174.0270, %5
  br i1 %.not245271, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader252, %bb.k
  %.sroa.0174.0272 = phi ptr [ %.sroa.0174.0, %bb.k ], [ %.sroa.0174.0270, %.preheader252 ] ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0174.0272, i64 16 ; 3 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !322 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 64 ; 3 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !286 ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.lc
  br i1 %i.le, label %bb.i, label %_ZNSt7__cxx114listIN4CGAL7Point_3INS1_5EpickEEESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_S8_S8_.exit

_ZNSt7__cxx114listIN4CGAL7Point_3INS1_5EpickEEESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_S8_S8_.exit: ; preds = %.lr.ph
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 80 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !287
  %i.lh = load i64, ptr %i.i, align 8, !tbaa !289
  %i.li = add i64 %i.lh, %i.lg
  store i64 %i.li, ptr %i.i, align 8, !tbaa !289
  store i64 0, ptr %i.lf, align 8, !tbaa !289
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.ld, ptr noundef nonnull %i.lc) #28
  %.pre308 = load ptr, ptr %i.la, align 8, !tbaa !322
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %.loopexit253
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EED2Ev.exit90

bb.i:                                             ; preds = %_ZNSt7__cxx114listIN4CGAL7Point_3INS1_5EpickEEESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_S8_S8_.exit, %.lr.ph
  %i.ll = phi ptr [ %.pre308, %_ZNSt7__cxx114listIN4CGAL7Point_3INS1_5EpickEEESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_S8_S8_.exit ], [ %i.lb, %.lr.ph ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 56
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !340 ; 3 uses
  %.not247 = icmp eq ptr %i.ln, %1
  br i1 %.not247, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.lo = load i64, ptr %i.v, align 8, !tbaa !581
  %i.lp = add i64 %i.lo, -1
  store i64 %i.lp, ptr %i.v, align 8, !tbaa !581
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.ln, i64 noundef 24) #38
  %.pre309 = load ptr, ptr %i.la, align 8, !tbaa !322
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.lq = phi ptr [ %.pre309, %bb.j ], [ %i.ll, %bb.i ]
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 52
  store i32 0, ptr %i.lr, align 4, !tbaa !25
  %.sroa.0174.0 = load ptr, ptr %.sroa.0174.0272, align 8, !tbaa !286 ; 2 uses
  %.not245 = icmp eq ptr %.sroa.0174.0, %5
  br i1 %.not245, label %._crit_edge, label %.lr.ph, !llvm.loop !1421

._crit_edge:                                      ; preds = %bb.k, %.preheader252
  %i.ls = load i64, ptr %i.n, align 8, !tbaa !1404 ; 3 uses
  %i.lt = icmp ugt i64 %i.ls, 576460752303423487
  br i1 %i.lt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #39
          to label %.noexc57 unwind label %.thread.loopexit.split-lp

.noexc57:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %._crit_edge
  %.not246 = icmp eq i64 %i.ls, 0
  br i1 %.not246, label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE7reserveEm.exit.thread, label %_ZNSt12_Vector_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE11_M_allocateEm.exit.i

_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE7reserveEm.exit.thread: ; preds = %bb.m
  %i.lu = load ptr, ptr %i.l, align 8, !tbaa !1402 ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 40
  %.sroa.0113.0.copyload217 = load ptr, ptr %i.lv, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx218 = getelementptr inbounds nuw i8, ptr %i.lu, i64 48
  %.sroa.12.0.copyload219 = load i32, ptr %.sroa.12.0..sroa_idx218, align 8 ; 2 uses
  %.sroa.14.0..sroa_idx220 = getelementptr inbounds nuw i8, ptr %i.lu, i64 52
  %.sroa.14.0.copyload221 = load i32, ptr %.sroa.14.0..sroa_idx220, align 4 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0113.0.copyload217, i64 52
  store i32 0, ptr %i.lw, align 4, !tbaa !25
  %i.lx = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #40
          to label %.noexc61 unwind label %.loopexit.split-lp.thread ; 5 uses

_ZNSt12_Vector_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE11_M_allocateEm.exit.i: ; preds = %bb.m
  %i.ly = shl nuw nsw i64 %i.ls, 4                ; 2 uses
  %i.lz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ly) #40
          to label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE7reserveEm.exit unwind label %.thread.loopexit ; 5 uses

_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE11_M_allocateEm.exit.i
  %i.ma = load ptr, ptr %i.l, align 8, !tbaa !1402 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 40
  %.sroa.0113.0.copyload = load ptr, ptr %i.mb, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ma, i64 48
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 8 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ma, i64 52
  %.sroa.14.0.copyload = load i32, ptr %.sroa.14.0..sroa_idx, align 4 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0113.0.copyload, i64 52
  store i32 0, ptr %i.mc, align 4, !tbaa !25
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.ly
  store ptr %.sroa.0113.0.copyload, ptr %i.lz, align 8
  %.sroa.12.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store i32 %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx120, align 8
  %.sroa.14.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %i.lz, i64 12
  store i32 %.sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx128, align 4
  br label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit

.noexc61:                                         ; preds = %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE7reserveEm.exit.thread
  store ptr %.sroa.0113.0.copyload217, ptr %i.lx, align 8
  %.sroa.12.0..sroa_idx122 = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store i32 %.sroa.12.0.copyload219, ptr %.sroa.12.0..sroa_idx122, align 8
  %.sroa.14.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %i.lx, i64 12
  store i32 %.sroa.14.0.copyload221, ptr %.sroa.14.0..sroa_idx130, align 4
  %i.me = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  br label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit

_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit: ; preds = %.noexc61, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE7reserveEm.exit
  %.sroa.14.0.copyload231 = phi i32 [ %.sroa.14.0.copyload221, %.noexc61 ], [ %.sroa.14.0.copyload, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE7reserveEm.exit ] ; 2 uses
  %.sroa.12.0.copyload229 = phi i32 [ %.sroa.12.0.copyload219, %.noexc61 ], [ %.sroa.12.0.copyload, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE7reserveEm.exit ]
  %.sroa.0113.0.copyload227 = phi ptr [ %.sroa.0113.0.copyload217, %.noexc61 ], [ %.sroa.0113.0.copyload, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE7reserveEm.exit ]
  %i.mf = phi ptr [ %i.lu, %.noexc61 ], [ %i.ma, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE7reserveEm.exit ]
  %.sroa.0138.5 = phi ptr [ %i.lx, %.noexc61 ], [ %i.lz, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE7reserveEm.exit ] ; 4 uses
  %.sroa.28.5 = phi ptr [ %i.me, %.noexc61 ], [ %i.md, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE7reserveEm.exit ] ; 2 uses
  %i.mg = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %i.mf, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef 56) #38
  %i.mh = load i64, ptr %i.n, align 8, !tbaa !1404
  %.sroa.15.0273 = getelementptr inbounds nuw i8, ptr %.sroa.0138.5, i64 16 ; 2 uses
  %storemerge274 = add i64 %i.mh, -1              ; 2 uses
  store i64 %storemerge274, ptr %i.n, align 8, !tbaa !1404
  %i.mi = icmp eq i64 %storemerge274, 0
  br i1 %i.mi, label %._crit_edge282, label %.lr.ph281

.lr.ph281:                                        ; preds = %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit81
  %.sroa.15.0280 = phi ptr [ %.sroa.15.0, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit81 ], [ %.sroa.15.0273, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit ] ; 7 uses
  %.sroa.0113.0279 = phi ptr [ %i.mx, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit81 ], [ %.sroa.0113.0.copyload227, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit ]
  %.sroa.12.0278 = phi i32 [ %i.mz, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit81 ], [ %.sroa.12.0.copyload229, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit ]
  %.sroa.28.0277 = phi ptr [ %.sroa.28.6, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit81 ], [ %.sroa.28.5, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit ] ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN4CGAL26ch__ref_graham_andrew_scanIN9__gnu_cxx17__normal_iteratorIPNS_7Point_2INS_5EpickEEESt6vectorIS5_SaIS5_EEEESt20back_insert_iteratorIS9_ES4_EET0_T_SE_RSD_RKT1_:_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa !1680, !alias.scope !1796, !noalias !14
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 16) #38
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 2 uses
  %.sroa.15.6 = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.090.0, i64 32 ; 2 uses
  %.not143182 = icmp eq ptr %i.aw, %i.f
  br i1 %.not143182, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !1680
  %i.az = inttoptr i64 %i.ay to ptr
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %.thread
  %.sroa.0107.0188 = phi ptr [ %i.as, %.lr.ph ], [ %.sroa.0107.2, %.thread ] ; 12 uses
  %.sroa.090.1187 = phi ptr [ %i.aw, %.lr.ph ], [ %i.hq, %.thread ] ; 9 uses
  %.sroa.0104.0186 = phi ptr [ %i.az, %.lr.ph ], [ %.sroa.0104.2, %.thread ] ; 3 uses
  %.sroa.0105.0185 = phi ptr [ %i.o, %.lr.ph ], [ %.sroa.0105.2, %.thread ] ; 5 uses
  %.sroa.32.0184 = phi ptr [ %i.av, %.lr.ph ], [ %.sroa.32.2, %.thread ] ; 10 uses
  %.sroa.15.0183 = phi ptr [ %.sroa.15.6, %.lr.ph ], [ %.sroa.15.2, %.thread ] ; 3 uses
  %i.ba = load <2 x double>, ptr %.sroa.0105.0185, align 8, !tbaa !36 ; 2 uses
  %i.bb = load <2 x double>, ptr %.sroa.090.1187, align 8, !tbaa !36
  %i.bc = load <2 x double>, ptr %i.f, align 8, !tbaa !36
  %i.bd = fsub <2 x double> %i.bb, %i.ba          ; 3 uses
  %i.be = fsub <2 x double> %i.bc, %i.ba          ; 3 uses
  %i.bf = extractelement <2 x double> %i.bd, i64 1
  %i.bg = fneg double %i.bf
  %i.bh = extractelement <2 x double> %i.be, i64 0
  %i.bi = fmul double %i.bh, %i.bg
  %i.bj = extractelement <2 x double> %i.bd, i64 0
  %i.bk = extractelement <2 x double> %i.be, i64 1
  %i.bl = call noundef double @llvm.fmuladd.f64(double %i.bj, double %i.bk, double %i.bi) ; 2 uses
  %i.bm = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bd) ; 2 uses
  %i.bn = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.be) ; 2 uses
  %i.bo = fcmp olt <2 x double> %i.bm, %i.bn
  %i.bp = select <2 x i1> %i.bo, <2 x double> %i.bn, <2 x double> %i.bm ; 2 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 0 ; 3 uses
  %i.br = extractelement <2 x double> %i.bp, i64 1 ; 3 uses
  %i.bs = fcmp ogt double %i.bq, %i.br            ; 2 uses
  %.155.i.i43 = select i1 %i.bs, double %i.br, double %i.bq ; 3 uses
  %.1.i.i44 = select i1 %i.bs, double %i.bq, double %i.br ; 2 uses
  %i.bt = fcmp olt double %.155.i.i43, 1.000000e-146
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bu = fcmp oeq double %.155.i.i43, 0.000000e+00
  br i1 %i.bu, label %.thread, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bv = fcmp olt double %.1.i.i44, f0x5FB317E5EF3AB327
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bw = fmul double %.155.i.i43, f0x3CD0028010000004
  %i.bx = fmul double %.1.i.i44, %i.bw            ; 2 uses
  %i.by = fcmp ule double %i.bl, %i.bx            ; 2 uses
  %i.bz = fneg double %i.bx
  %i.ca = fcmp uge double %i.bl, %i.bz
  %.021.i.i46 = select i1 %i.by, i32 -1, i32 1
  %cond1.i.i47 = and i1 %i.by, %i.ca
  br i1 %cond1.i.i47, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.cb = invoke noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_2IST_EES16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0105.0185, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.090.1187, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %bb.m unwind label %.loopexit.split-lp146.loopexit

bb.m:                                             ; preds = %bb.k, %bb.l
  %.3.i.i45 = phi i32 [ %.021.i.i46, %bb.k ], [ %i.cb, %bb.l ]
  %i.cc = icmp eq i32 %.3.i.i45, 1
  br i1 %i.cc, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.m, %.thread141
  %.sroa.15.1 = phi ptr [ %i.gh, %.thread141 ], [ %.sroa.15.0183, %bb.m ] ; 5 uses
  %.sroa.0105.1 = phi ptr [ %.sroa.0104.1, %.thread141 ], [ %.sroa.0105.0185, %bb.m ] ; 4 uses
  %.sroa.0104.1 = phi ptr [ %i.gk, %.thread141 ], [ %.sroa.0104.0186, %bb.m ] ; 4 uses
  %i.cd = load <2 x double>, ptr %.sroa.0104.1, align 8, !tbaa !36 ; 2 uses
  %i.ce = load <2 x double>, ptr %.sroa.0105.1, align 8, !tbaa !36
  %i.cf = load <2 x double>, ptr %.sroa.090.1187, align 8, !tbaa !36
  %i.cg = fsub <2 x double> %i.ce, %i.cd          ; 3 uses
  %i.ch = fsub <2 x double> %i.cf, %i.cd          ; 3 uses
  %i.ci = extractelement <2 x double> %i.cg, i64 1
  %i.cj = fneg double %i.ci
  %i.ck = extractelement <2 x double> %i.ch, i64 0
  %i.cl = fmul double %i.ck, %i.cj
  %i.cm = extractelement <2 x double> %i.cg, i64 0
  %i.cn = extractelement <2 x double> %i.ch, i64 1
  %i.co = call noundef double @llvm.fmuladd.f64(double %i.cm, double %i.cn, double %i.cl) ; 2 uses
  %i.cp = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cg) ; 2 uses
  %i.cq = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ch) ; 2 uses
  %i.cr = fcmp olt <2 x double> %i.cp, %i.cq
  %i.cs = select <2 x i1> %i.cr, <2 x double> %i.cq, <2 x double> %i.cp ; 2 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0 ; 3 uses
  %i.cu = extractelement <2 x double> %i.cs, i64 1 ; 3 uses
  %i.cv = fcmp ogt double %i.ct, %i.cu            ; 2 uses
  %.155.i.i52 = select i1 %i.cv, double %i.cu, double %i.ct ; 3 uses
  %.1.i.i53 = select i1 %i.cv, double %i.ct, double %i.cu ; 2 uses
  %i.cw = fcmp olt double %.155.i.i52, 1.000000e-146
  br i1 %i.cw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader
  %i.cx = fcmp oeq double %.155.i.i52, 0.000000e+00
  br i1 %i.cx, label %.thread141, label %bb.q

bb.o:                                             ; preds = %.preheader
  %i.cy = fcmp olt double %.1.i.i53, f0x5FB317E5EF3AB327
  br i1 %i.cy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cz = fmul double %.155.i.i52, f0x3CD0028010000004
  %i.da = fmul double %.1.i.i53, %i.cz            ; 2 uses
  %i.db = fcmp ule double %i.co, %i.da            ; 2 uses
  %i.dc = fneg double %i.da
  %i.dd = fcmp uge double %i.co, %i.dc
  %.021.i.i55 = select i1 %i.db, i32 -1, i32 1
  %cond1.i.i56 = and i1 %i.db, %i.dd
  br i1 %cond1.i.i56, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.de = load i32, ptr %i.e, align 4
  %i.df = and i32 %i.de, 24576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.dg = load i32, ptr %i.c, align 4
  %i.dh = and i32 %i.dg, -24577
  %i.di = or disjoint i32 %i.dh, 16384
  store i32 %i.di, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dj = load <2 x double>, ptr %.sroa.0104.1, align 8, !tbaa !36, !noalias !1800 ; 3 uses
  %i.dk = fneg <2 x double> %i.dj                 ; 2 uses
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> %i.dj, <2 x i32> <i32 2, i32 0>
  %i.dm = shufflevector <2 x double> %i.dk, <2 x double> %i.dj, <2 x i32> <i32 3, i32 1>
  %i.dn = load <2 x double>, ptr %.sroa.0105.1, align 8, !tbaa !36, !noalias !1803 ; 3 uses
  %i.do = fneg <2 x double> %i.dn                 ; 2 uses
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> %i.dn, <2 x i32> <i32 0, i32 2>
  %i.dq = shufflevector <2 x double> %i.do, <2 x double> %i.dn, <2 x i32> <i32 1, i32 3>
  %i.dr = load <2 x double>, ptr %.sroa.090.1187, align 8, !tbaa !36, !noalias !1806 ; 3 uses
  %i.ds = fneg <2 x double> %i.dr                 ; 2 uses
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> %i.dr, <2 x i32> <i32 0, i32 2>
  %i.du = shufflevector <2 x double> %i.ds, <2 x double> %i.dr, <2 x i32> <i32 1, i32 3>
  %i.dv = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dp) #28, !srcloc !401
  %i.dw = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dl) #27, !srcloc !402 ; 2 uses
  %i.dx = fadd <2 x double> %i.dv, %i.dw
  %i.dy = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dx) #28, !srcloc !401
  %i.dz = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dq) #28, !srcloc !401
  %i.ea = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dm) #27, !srcloc !402 ; 2 uses
  %i.eb = fadd <2 x double> %i.dz, %i.ea
  %i.ec = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.eb) #28, !srcloc !401
  %i.ed = bitcast <2 x double> %i.ec to <2 x i64>
  %i.ee = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dt) #28, !srcloc !401
  %i.ef = fadd <2 x double> %i.dw, %i.ee
  %i.eg = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ef) #28, !srcloc !401
  %i.eh = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.du) #28, !srcloc !401
  %i.ei = fadd <2 x double> %i.ea, %i.eh
  %i.ej = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ei) #28, !srcloc !401
  %i.ek = bitcast <2 x double> %i.ej to <2 x i64>
  %i.el = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dy) #27, !srcloc !402 ; 3 uses
  %i.em = fneg <2 x double> %i.el
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eo = xor <2 x i64> %i.ek, <i64 -9223372036854775808, i64 0>
  %i.ep = bitcast <2 x i64> %i.eo to <2 x double>
  %i.eq = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ep) #28, !srcloc !401 ; 3 uses
  %i.er = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.es = fmul <2 x double> %i.el, %i.eq
  %i.et = fmul <2 x double> %i.el, %i.er
  %i.eu = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.et, <2 x double> splat (double +inf))
  %i.ev = fmul <2 x double> %i.en, %i.eq
  %i.ew = fmul <2 x double> %i.en, %i.er
  %i.ex = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ew, <2 x double> splat (double +inf))
  %i.ey = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.es, <2 x double> %i.eu)
  %i.ez = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ev, <2 x double> %i.ex)
  %i.fa = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ey, <2 x double> %i.ez)
  %i.fb = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fa) #28, !srcloc !401 ; 2 uses
  %i.fc = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.eg) #27, !srcloc !402 ; 3 uses
  %i.fd = fneg <2 x double> %i.fc
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ff = xor <2 x i64> %i.ed, <i64 -9223372036854775808, i64 0>
  %i.fg = bitcast <2 x i64> %i.ff to <2 x double>
  %i.fh = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fg) #28, !srcloc !401 ; 3 uses
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fj = fmul <2 x double> %i.fc, %i.fh
  %i.fk = fmul <2 x double> %i.fc, %i.fi
  %i.fl = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fk, <2 x double> splat (double +inf))
  %i.fm = fmul <2 x double> %i.fe, %i.fh
  %i.fn = fmul <2 x double> %i.fe, %i.fi
  %i.fo = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fn, <2 x double> splat (double +inf))
  %i.fp = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fj, <2 x double> %i.fl)
  %i.fq = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fm, <2 x double> %i.fo)
  %i.fr = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fp, <2 x double> %i.fq)
  %i.fs = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fr) #28, !srcloc !401 ; 2 uses
  %i.ft = extractelement <2 x double> %i.fb, i64 0
  %i.fu = fneg double %i.ft                       ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.fs, i64 1 ; 2 uses
  %i.fv = fcmp olt double %.sroa.0.8.vec.extract.i.i.i.i, %i.fu
  br i1 %i.fv, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fw = extractelement <2 x double> %i.fs, i64 0
  %i.fx = fneg double %i.fw                       ; 2 uses
  %.sroa.05.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.fb, i64 1 ; 2 uses
  %i.fy = fcmp olt double %.sroa.05.8.vec.extract.i.i.i.i, %i.fx
  br i1 %i.fy, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fz = fcmp une double %.sroa.05.8.vec.extract.i.i.i.i, %i.fx
  %i.ga = fcmp une double %.sroa.0.8.vec.extract.i.i.i.i, %i.fu
  %or.cond.not.i.i.i.i.i.i.i = or i1 %i.ga, %i.fz
  %i.gb = select i1 %or.cond.not.i.i.i.i.i.i.i, i64 8589934591, i64 0
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.gb, %bb.s ], [ 4294967297, %bb.q ], [ -1, %bb.r ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.5.0.i.i.i.i.i.i.i to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %.not.i80 = icmp eq i32 %.sroa.0.0.extract.trunc.i.i, %.sroa.2.0.extract.trunc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.gc = load i32, ptr %i.a, align 4
  %i.gd = and i32 %i.gc, -24577
  %i.ge = or disjoint i32 %i.gd, %i.df
  store i32 %i.ge, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not.i80, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gf = invoke noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_2IST_EES16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0104.1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0105.1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.090.1187)
          to label %bb.v unwind label %.loopexit145

bb.v:                                             ; preds = %bb.p, %bb.t, %bb.u
  %.3.i.i54 = phi i32 [ %.021.i.i55, %bb.p ], [ %i.gf, %bb.u ], [ %.sroa.0.0.extract.trunc.i.i, %bb.t ]
  %i.gg = icmp eq i32 %.3.i.i54, 1
  br i1 %i.gg, label %bb.w, label %.thread141

.thread141:                                       ; preds = %bb.n, %bb.v
  %i.gh = getelementptr inbounds i8, ptr %.sroa.15.1, i64 -8
  %i.gi = getelementptr inbounds i8, ptr %.sroa.15.1, i64 -24
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !1680
  %i.gk = inttoptr i64 %i.gj to ptr
  br label %.preheader, !llvm.loop !1809

.loopexit.split-lp146.thread:                     ; preds = %bb.f
  %lpad.loopexit156 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp155:                            ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i9, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i26
  %.sroa.32.1.ph = phi ptr [ %i.n, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i26 ], [ null, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.i, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i9 ]
  %.sroa.0107.1.ph = phi ptr [ %i.j, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i26 ], [ null, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.g, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i9 ]
  %lpad.loopexit.split-lp157 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp146

.loopexit145:                                     ; preds = %bb.u
  %lpad.loopexit147 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp146

.loopexit.split-lp146.loopexit:                   ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i60, %bb.l
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp146

.loopexit.split-lp146.loopexit.split-lp:          ; preds = %bb.z
  %lpad.loopexit.split-lp151 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp146

bb.w:                                             ; preds = %bb.v
  %.not.i59 = icmp eq ptr %.sroa.15.1, %.sroa.32.0184
  br i1 %.not.i59, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gl = ptrtoint ptr %.sroa.090.1187 to i64
  store i64 %i.gl, ptr %.sroa.15.1, align 8, !tbaa !1680
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74

bb.y:                                             ; preds = %bb.w
  %i.gm = ptrtoint ptr %.sroa.32.0184 to i64      ; 2 uses
  %i.gn = ptrtoint ptr %.sroa.0107.0188 to i64    ; 3 uses
  %i.go = sub i64 %i.gm, %i.gn                    ; 4 uses
  %i.gp = icmp eq i64 %i.go, 9223372036854775800
  br i1 %i.gp, label %bb.z, label %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i60

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #39
          to label %.noexc72 unwind label %.loopexit.split-lp146.loopexit.split-lp

.noexc72:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i60: ; preds = %bb.y
  %i.gq = ashr exact i64 %i.go, 3                 ; 3 uses
  %.sroa.speculated.i.i.i61 = call i64 @llvm.umax.i64(i64 %i.gq, i64 1)
  %i.gr = add nsw i64 %.sroa.speculated.i.i.i61, %i.gq ; 2 uses
  %i.gs = icmp ult i64 %i.gr, %i.gq
  %i.gt = call i64 @llvm.umin.i64(i64 %i.gr, i64 1152921504606846975)
  %i.gu = select i1 %i.gs, i64 1152921504606846975, i64 %i.gt ; 3 uses
  %.not.i.i.i62 = icmp ne i64 %i.gu, 0
  call void @llvm.assume(i1 %.not.i.i.i62)
  %i.gv = shl nuw nsw i64 %i.gu, 3
  %i.gw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gv) #40
          to label %.noexc73 unwind label %.loopexit.split-lp146.loopexit ; 8 uses

.noexc73:                                         ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i60
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.go
  %i.gy = ptrtoint ptr %.sroa.090.1187 to i64
  store i64 %i.gy, ptr %i.gx, align 8, !tbaa !1680
  %.not10.i.i.i.i.i63 = icmp eq ptr %.sroa.0107.0188, %.sroa.32.0184
  br i1 %.not10.i.i.i.i.i63, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71, label %.lr.ph.i.i.i.i.i64.preheader

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %.noexc73
  %i.gz = ptrtoaddr ptr %i.gw to i64
  %i.ha = add i64 %i.gm, -8
  %i.hb = sub i64 %i.ha, %i.gn                    ; 2 uses
  %i.hc = lshr i64 %i.hb, 3
  %i.hd = add nuw nsw i64 %i.hc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hb, 24
  %i.he = sub i64 %i.gn, %i.gz
  %diff.check = icmp ugt i64 %i.he, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i64.preheader262, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i64.preheader
  %n.vec = and i64 %i.hd, 4611686018427387900     ; 3 uses
  %i.hf = shl i64 %n.vec, 3                       ; 2 uses
  %i.hg = getelementptr i8, ptr %i.gw, i64 %i.hf  ; 2 uses
  %i.hh = getelementptr i8, ptr %.sroa.0107.0188, i64 %i.hf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gw, i64 %i.hi ; 2 uses
  %next.gep259 = getelementptr i8, ptr %.sroa.0107.0188, i64 %i.hi ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1810)
  call void @llvm.experimental.noalias.scope.decl(metadata !1813)
  %i.hj = getelementptr i8, ptr %next.gep259, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep259, align 8, !tbaa !1680, !alias.scope !1813, !noalias !1810
  %wide.load260 = load <2 x i64>, ptr %i.hj, align 8, !tbaa !1680, !alias.scope !1813, !noalias !1810
  %i.hk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1680, !alias.scope !1810, !noalias !1813
  store <2 x i64> %wide.load260, ptr %i.hk, align 8, !tbaa !1680, !alias.scope !1810, !noalias !1813
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hl = icmp eq i64 %index.next, %n.vec
  br i1 %i.hl, label %middle.block, label %vector.body, !llvm.loop !1815

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71, label %.lr.ph.i.i.i.i.i64.preheader262

.lr.ph.i.i.i.i.i64.preheader262:                  ; preds = %.lr.ph.i.i.i.i.i64.preheader, %middle.block
  %.012.i.i.i.i.i65.ph = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.hg, %middle.block ]
  %.0911.i.i.i.i.i66.ph = phi ptr [ %.sroa.0107.0188, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.hh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.preheader262, %.lr.ph.i.i.i.i.i64
  %.012.i.i.i.i.i65 = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i64 ], [ %.012.i.i.i.i.i65.ph, %.lr.ph.i.i.i.i.i64.preheader262 ] ; 2 uses
  %.0911.i.i.i.i.i66 = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i64 ], [ %.0911.i.i.i.i.i66.ph, %.lr.ph.i.i.i.i.i64.preheader262 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1810)
  call void @llvm.experimental.noalias.scope.decl(metadata !1813)
  %i.hm = load i64, ptr %.0911.i.i.i.i.i66, align 8, !tbaa !1680, !alias.scope !1813, !noalias !1810
  store i64 %i.hm, ptr %.012.i.i.i.i.i65, align 8, !tbaa !1680, !alias.scope !1810, !noalias !1813
  %i.hn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i66, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 8 ; 2 uses
  %.not.i.i.i.i.i67 = icmp eq ptr %i.hn, %.sroa.32.0184
  br i1 %.not.i.i.i.i.i67, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71, label %.lr.ph.i.i.i.i.i64, !llvm.loop !1816

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71: ; preds = %.lr.ph.i.i.i.i.i64, %middle.block, %.noexc73
  %.0.lcssa.i.i.i.i.i69 = phi ptr [ %i.gw, %.noexc73 ], [ %i.hg, %middle.block ], [ %i.ho, %.lr.ph.i.i.i.i.i64 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0107.0188, i64 noundef %i.go) #38
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gu
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74: ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71, %bb.x
  %.0.lcssa.i.i.i.i.i69.pn = phi ptr [ %.0.lcssa.i.i.i.i.i69, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71 ], [ %.sroa.15.1, %bb.x ]
  %.sroa.32.8 = phi ptr [ %i.hp, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71 ], [ %.sroa.32.0184, %bb.x ]
  %.sroa.0107.8 = phi ptr [ %i.gw, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i71 ], [ %.sroa.0107.0188, %bb.x ]
  %.sroa.15.7 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i69.pn, i64 8
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.m, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74
  %.sroa.15.2 = phi ptr [ %.sroa.15.7, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.15.0183, %bb.m ], [ %.sroa.15.0183, %bb.i ] ; 2 uses
  %.sroa.32.2 = phi ptr [ %.sroa.32.8, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.32.0184, %bb.m ], [ %.sroa.32.0184, %bb.i ] ; 2 uses
  %.sroa.0105.2 = phi ptr [ %.sroa.090.1187, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.0105.0185, %bb.m ], [ %.sroa.0105.0185, %bb.i ]
  %.sroa.0104.2 = phi ptr [ %.sroa.0105.1, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.0104.0186, %bb.m ], [ %.sroa.0104.0186, %bb.i ]
  %.sroa.0107.2 = phi ptr [ %.sroa.0107.8, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit74 ], [ %.sroa.0107.0188, %bb.m ], [ %.sroa.0107.0188, %bb.i ] ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.090.1187, i64 16 ; 2 uses
  %.not143 = icmp eq ptr %i.hq, %i.f
  br i1 %.not143, label %.critedge, label %bb.h, !llvm.loop !1817

.critedge:                                        ; preds = %bb.a, %.thread, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit40
  %.sroa.15.3 = phi ptr [ %.sroa.15.2, %.thread ], [ %.sroa.15.6, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit40 ], [ %i.n, %bb.a ] ; 2 uses
  %.sroa.32.3 = phi ptr [ %.sroa.32.2, %.thread ], [ %i.av, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit40 ], [ %i.n, %bb.a ] ; 3 uses
  %.sroa.0107.3 = phi ptr [ %.sroa.0107.2, %.thread ], [ %i.as, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EE9push_backERKS9_.exit40 ], [ %i.j, %bb.a ] ; 5 uses
  %.sroa.082.0191 = getelementptr inbounds nuw i8, ptr %.sroa.0107.3, i64 8 ; 2 uses
  %.not144192 = icmp eq ptr %.sroa.082.0191, %.sroa.15.3
  br i1 %.not144192, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpickEEES_IS5_SaIS5_EEEESaIS9_EED2Ev.exit, label %.lr.ph194

.lr.ph194:                                        ; preds = %.critedge, %_ZNSt20back_insert_iteratorISt6vectorIN4CGAL7Point_2INS1_5EpickEEESaIS4_EEEaSERKS4_.exit
  %.sroa.082.0193 = phi ptr [ %.sroa.082.0, %_ZNSt20back_insert_iteratorISt6vectorIN4CGAL7Point_2INS1_5EpickEEESaIS4_EEEaSERKS4_.exit ], [ %.sroa.082.0191, %.critedge ] ; 2 uses
  %i.hr = load ptr, ptr %.sroa.082.0193, align 8, !tbaa !1818 ; 2 uses
end_hunk_10
