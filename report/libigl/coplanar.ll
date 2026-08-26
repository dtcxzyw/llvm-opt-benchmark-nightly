Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/coplanar?download=true
inline.NumInlined: 1327
inline.NumDeleted: 506
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors11Collinear_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEEbDpRKS18_:bb.a
  %i.au = shl i64 %i.at, 3
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.au) #31
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10:              ; preds = %bb.g, %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 169
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !72, !range !78, !noundef !79
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 170
  %i.az = load i8, ptr %i.ay, align 2, !range !78
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond.i.i.i.1.i.i.i11 = select i1 %i.ax, i1 true, i1 %i.ba
  br i1 %or.cond.i.i.i.1.i.i.i11, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i12, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load i64, ptr %i.c, align 16
  %i.be = shl i64 %i.bd, 3
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.be) #31
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i12

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i12:            ; preds = %bb.h, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 73
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !72, !range !78, !noundef !79
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 74
  %i.bj = load i8, ptr %i.bi, align 2, !range !78
  %i.bk = trunc nuw i8 %i.bj to i1
  %or.cond.i.i.i.2.i.i.i13 = select i1 %i.bh, i1 true, i1 %i.bk
  br i1 %or.cond.i.i.i.2.i.i.i13, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit14, label %bb.i

bb.i:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i12
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = load i64, ptr %5, align 16
  %i.bo = shl i64 %i.bn, 3
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bo) #31
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit14

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit14: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i12, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 265
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !72, !range !78, !noundef !79
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 266
  %i.bt = load i8, ptr %i.bs, align 2, !range !78
  %i.bu = trunc nuw i8 %i.bt to i1
  %or.cond.i.i.i.i.i.i15 = select i1 %i.br, i1 true, i1 %i.bu
  br i1 %or.cond.i.i.i.i.i.i15, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i16, label %bb.j

bb.j:                                             ; preds = %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit14
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = load i64, ptr %i.b, align 16
  %i.by = shl i64 %i.bx, 3
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.by) #31
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i16

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i16:              ; preds = %bb.j, %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit14
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 169
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !72, !range !78, !noundef !79
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 170
  %i.cd = load i8, ptr %i.cc, align 2, !range !78
  %i.ce = trunc nuw i8 %i.cd to i1
  %or.cond.i.i.i.1.i.i.i17 = select i1 %i.cb, i1 true, i1 %i.ce
  br i1 %or.cond.i.i.i.1.i.i.i17, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18, label %bb.k

bb.k:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i16
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = load i64, ptr %i.a, align 16
  %i.ci = shl i64 %i.ch, 3
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ci) #31
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18:            ; preds = %bb.k, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i16
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 73
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !72, !range !78, !noundef !79
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 74
  %i.cn = load i8, ptr %i.cm, align 2, !range !78
  %i.co = trunc nuw i8 %i.cn to i1
  %or.cond.i.i.i.2.i.i.i19 = select i1 %i.cl, i1 true, i1 %i.co
  br i1 %or.cond.i.i.i.2.i.i.i19, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit20, label %bb.l

bb.l:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = load i64, ptr %4, align 16
  %i.cs = shl i64 %i.cr, 3
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cs) #31
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit20

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit20: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i18, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
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
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %6) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.o ], [ %i.cu, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %5) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.ct, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i16 @_ZN4CGAL11collinearC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S4_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8) local_unnamed_addr #27 comdat {
bb.a:
  %i.a = load <2 x double>, ptr %6, align 16, !tbaa !57
  %i.b = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.c = load <2 x double>, ptr %0, align 16, !tbaa !57
  %i.d = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.c) #26, !srcloc !122
  %i.e = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.b) #25, !srcloc !123
  %i.f = fadd <2 x double> %i.d, %i.e
  %i.g = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.f) #26, !srcloc !122
  %i.h = load <2 x double>, ptr %6, align 16, !tbaa !57
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.j = load <2 x double>, ptr %3, align 16, !tbaa !57
  %i.k = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.j) #26, !srcloc !122
  %i.l = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.i) #25, !srcloc !123
  %i.m = fadd <2 x double> %i.k, %i.l
  %i.n = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.m) #26, !srcloc !122
  %i.o = bitcast <2 x double> %i.n to <2 x i64>
  %i.p = load <2 x double>, ptr %7, align 16, !tbaa !57
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.r = load <2 x double>, ptr %1, align 16, !tbaa !57
  %i.s = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.r) #26, !srcloc !122
  %i.t = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.q) #25, !srcloc !123
  %i.u = fadd <2 x double> %i.s, %i.t
  %i.v = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u) #26, !srcloc !122
  %i.w = load <2 x double>, ptr %7, align 16, !tbaa !57
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.y = load <2 x double>, ptr %4, align 16, !tbaa !57
  %i.z = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.y) #26, !srcloc !122
  %i.aa = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.x) #25, !srcloc !123
  %i.ab = fadd <2 x double> %i.z, %i.aa
  %i.ac = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ab) #26, !srcloc !122
  %i.ad = bitcast <2 x double> %i.ac to <2 x i64>
  %i.ae = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.g) #25, !srcloc !123 ; 5 uses
  %i.af = fneg <2 x double> %i.ae
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ah = xor <2 x i64> %i.ad, <i64 -9223372036854775808, i64 0>
  %i.ai = bitcast <2 x i64> %i.ah to <2 x double> ; 2 uses
  %i.aj = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ai) #26, !srcloc !122 ; 3 uses
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
  %i.au = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.at) #26, !srcloc !122 ; 2 uses
  %i.av = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.v) #25, !srcloc !123 ; 5 uses
  %i.aw = fneg <2 x double> %i.av
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ay = xor <2 x i64> %i.o, <i64 -9223372036854775808, i64 0>
  %i.az = bitcast <2 x i64> %i.ay to <2 x double> ; 2 uses
  %i.ba = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.az) #26, !srcloc !122 ; 3 uses
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
  %i.bl = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bk) #26, !srcloc !122 ; 2 uses
  %i.bm = extractelement <2 x double> %i.au, i64 0
  %i.bn = fneg double %i.bm                       ; 2 uses
  %.sroa.0.8.vec.extract.i = extractelement <2 x double> %i.bl, i64 1 ; 2 uses
  %i.bo = fcmp olt double %.sroa.0.8.vec.extract.i, %i.bn
  %9 = extractelement <2 x double> %i.au, i64 1   ; 2 uses
  br i1 %i.bo, label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bp = extractelement <2 x double> %i.bl, i64 0
  %i.bq = fneg double %i.bp                       ; 2 uses
  %i.br = fcmp olt double %9, %i.bq
  br i1 %i.br, label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bs = fcmp une double %9, %i.bq
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
  %i.cc = load <2 x double>, ptr %8, align 16, !tbaa !57
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ce = load <2 x double>, ptr %2, align 16, !tbaa !57
  %i.cf = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ce) #26, !srcloc !122
  %i.cg = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cd) #25, !srcloc !123
  %i.ch = fadd <2 x double> %i.cf, %i.cg
  %i.ci = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ch) #26, !srcloc !122
  %i.cj = load <2 x double>, ptr %8, align 16, !tbaa !57
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cl = load <2 x double>, ptr %5, align 16, !tbaa !57
  %i.cm = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cl) #26, !srcloc !122
  %i.cn = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ck) #25, !srcloc !123
  %i.co = fadd <2 x double> %i.cm, %i.cn
  %i.cp = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.co) #26, !srcloc !122
  %i.cq = bitcast <2 x double> %i.cp to <2 x i64>
  %i.cr = xor <2 x i64> %i.cq, <i64 -9223372036854775808, i64 0>
  %i.cs = bitcast <2 x i64> %i.cr to <2 x double> ; 2 uses
  %i.ct = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cs) #26, !srcloc !122 ; 3 uses
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
  %i.de = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dd) #26, !srcloc !122 ; 2 uses
  %i.df = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ci) #25, !srcloc !123 ; 5 uses
  %i.dg = fneg <2 x double> %i.df
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.di = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.az) #26, !srcloc !122 ; 3 uses
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
  %i.dt = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ds) #26, !srcloc !122 ; 2 uses
  %i.du = extractelement <2 x double> %i.de, i64 0
  %i.dv = fneg double %i.du                       ; 2 uses
  %.sroa.0.8.vec.extract.i18 = extractelement <2 x double> %i.dt, i64 1 ; 2 uses
  %i.dw = fcmp olt double %.sroa.0.8.vec.extract.i18, %i.dv
  %10 = extractelement <2 x double> %i.de, i64 1  ; 2 uses
  br i1 %i.dw, label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit21, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dx = extractelement <2 x double> %i.dt, i64 0
  %i.dy = fneg double %i.dx                       ; 2 uses
  %i.dz = fcmp olt double %10, %i.dy
  br i1 %i.dz, label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit21, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ea = fcmp une double %10, %i.dy
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
  %i.ek = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cs) #26, !srcloc !122 ; 3 uses
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
  %i.ev = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.eu) #26, !srcloc !122 ; 2 uses
  %i.ew = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ai) #26, !srcloc !122 ; 3 uses
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
  %i.fh = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fg) #26, !srcloc !122 ; 2 uses
  %i.fi = extractelement <2 x double> %i.ev, i64 0
  %i.fj = fneg double %i.fi                       ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.fh, i64 1 ; 2 uses
  %i.fk = fcmp olt double %.sroa.0.8.vec.extract.i.i.i, %i.fj
  %11 = extractelement <2 x double> %i.ev, i64 1  ; 2 uses
  br i1 %i.fk, label %_ZZN4CGAL11collinearC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S4_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_ENKUlvE_clEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fl = extractelement <2 x double> %i.fh, i64 0
  %i.fm = fneg double %i.fl                       ; 2 uses
  %i.fn = fcmp olt double %11, %i.fm
  br i1 %i.fn, label %_ZZN4CGAL11collinearC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S4_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_ENKUlvE_clEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fo = fcmp une double %11, %i.fm
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
declare <2 x double> @llvm.x86.sse2.min.pd(<2 x double>, <2 x double>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x double> @llvm.x86.sse2.max.pd(<2 x double>, <2 x double>) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4CGAL11collinearC3INS_9cpp_floatEEENS_8Equal_toIT_S3_E11result_typeERKS3_S7_S7_S7_S7_S7_S7_S7_S7_(ptr noundef nonnull align 16 dereferenceable(84) %0, ptr noundef nonnull align 16 dereferenceable(84) %1, ptr noundef nonnull align 16 dereferenceable(84) %2, ptr noundef nonnull align 16 dereferenceable(84) %3, ptr noundef nonnull align 16 dereferenceable(84) %4, ptr noundef nonnull align 16 dereferenceable(84) %5, ptr noundef nonnull align 16 dereferenceable(84) %6, ptr noundef nonnull align 16 dereferenceable(84) %7, ptr noundef nonnull align 16 dereferenceable(84) %8) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.CGAL::cpp_float", align 16  ; 14 uses
  %10 = alloca %"class.CGAL::cpp_float", align 16 ; 14 uses
  %11 = alloca %"class.CGAL::cpp_float", align 16 ; 14 uses
  %12 = alloca %"class.CGAL::cpp_float", align 16 ; 14 uses
  %13 = alloca %"class.CGAL::cpp_float", align 16 ; 14 uses
  %14 = alloca %"class.CGAL::cpp_float", align 16 ; 14 uses
  %15 = alloca %"class.CGAL::Uncertain", align 2  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %9, ptr noundef nonnull align 16 dereferenceable(84) %0, ptr noundef nonnull align 16 dereferenceable(84) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %10, ptr noundef nonnull align 16 dereferenceable(84) %3, ptr noundef nonnull align 16 dereferenceable(84) %6)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %11, ptr noundef nonnull align 16 dereferenceable(84) %1, ptr noundef nonnull align 16 dereferenceable(84) %7)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
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
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %13, ptr noundef nonnull align 16 dereferenceable(84) %2, ptr noundef nonnull align 16 dereferenceable(84) %8)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %14, ptr noundef nonnull align 16 dereferenceable(84) %5, ptr noundef nonnull align 16 dereferenceable(84) %8)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
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
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 73
  %i.p = load i8, ptr %i.o, align 1, !tbaa !72, !range !78, !noundef !79
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 74
  %i.s = load i8, ptr %i.r, align 2, !range !78
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i.i.i = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK4CGAL9UncertainIbEcvbEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i64, ptr %14, align 16
  %i.x = shl i64 %i.w, 3
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.x) #31
  br label %_ZN4CGAL9cpp_floatD2Ev.exit

_ZN4CGAL9cpp_floatD2Ev.exit:                      ; preds = %_ZNK4CGAL9UncertainIbEcvbEv.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 73
  %i.z = load i8, ptr %i.y, align 1, !tbaa !72, !range !78, !noundef !79
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 74
  %i.ac = load i8, ptr %i.ab, align 2, !range !78
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i.i.i32 = select i1 %i.aa, i1 true, i1 %i.ad
  br i1 %or.cond.i.i.i32, label %_ZN4CGAL9cpp_floatD2Ev.exit33, label %bb.q

bb.q:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load i64, ptr %13, align 16
  %i.ah = shl i64 %i.ag, 3
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ah) #31
  br label %_ZN4CGAL9cpp_floatD2Ev.exit33

_ZN4CGAL9cpp_floatD2Ev.exit33:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
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
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 73
  %i.an = load i8, ptr %i.am, align 1, !tbaa !72, !range !78, !noundef !79
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 74
  %i.aq = load i8, ptr %i.ap, align 2, !range !78
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i.i.i34 = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond.i.i.i34, label %_ZN4CGAL9cpp_floatD2Ev.exit35, label %bb.w
end_hunk_0
begin_hunk_1_@_ZNK4CGAL8internal25Static_filters_predicates13Orientation_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_3IS6_EESE_SE_SE_:bb.a
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
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_3IST_EES16_S16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.m = load <2 x double>, ptr %1, align 8, !tbaa !15, !noalias !205 ; 3 uses
  %i.n = fneg <2 x double> %i.m                   ; 2 uses
  %i.o = shufflevector <2 x double> %i.n, <2 x double> %i.m, <2 x i32> <i32 2, i32 0>
  %i.p = shufflevector <2 x double> %i.n, <2 x double> %i.m, <2 x i32> <i32 3, i32 1>
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !15, !noalias !205 ; 2 uses
  %i.s = fneg double %i.r
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.s, i64 1
  %i.v = load double, ptr %2, align 8, !tbaa !15, !noalias !208 ; 2 uses
  %i.w = fneg double %i.v
  %i.x = insertelement <2 x double> poison, double %i.w, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.v, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load <2 x double>, ptr %i.z, align 8, !tbaa !15, !noalias !208 ; 3 uses
  %i.ab = fneg <2 x double> %i.aa                 ; 2 uses
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> %i.aa, <2 x i32> <i32 0, i32 2>
  %i.ad = shufflevector <2 x double> %i.ab, <2 x double> %i.aa, <2 x i32> <i32 1, i32 3>
  %i.ae = load <2 x double>, ptr %3, align 8, !tbaa !15, !noalias !211 ; 3 uses
  %i.af = fneg <2 x double> %i.ae                 ; 2 uses
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.ah = shufflevector <2 x double> %i.af, <2 x double> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !15, !noalias !211 ; 2 uses
  %i.ak = fneg double %i.aj
  %i.al = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.aj, i64 1
  %i.an = load double, ptr %4, align 8, !tbaa !15, !noalias !214 ; 2 uses
  %i.ao = fneg double %i.an
  %i.ap = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.an, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load <2 x double>, ptr %i.ar, align 8, !tbaa !15, !noalias !214 ; 3 uses
  %i.at = fneg <2 x double> %i.as                 ; 2 uses
  %i.au = shufflevector <2 x double> %i.at, <2 x double> %i.as, <2 x i32> <i32 0, i32 2>
  %i.av = shufflevector <2 x double> %i.at, <2 x double> %i.as, <2 x i32> <i32 1, i32 3>
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.aw = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.y) #26, !srcloc !122
  %i.ax = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.o) #25, !srcloc !123 ; 3 uses
  %i.ay = fadd <2 x double> %i.aw, %i.ax
  %i.az = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ay) #26, !srcloc !122
  store <2 x double> %i.az, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ba = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ag) #26, !srcloc !122
  %i.bb = fadd <2 x double> %i.ax, %i.ba
  %i.bc = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bb) #26, !srcloc !122
  store <2 x double> %i.bc, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.bd = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aq) #26, !srcloc !122
  %i.be = fadd <2 x double> %i.ax, %i.bd
  %i.bf = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.be) #26, !srcloc !122
  store <2 x double> %i.bf, ptr %7, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.bg = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ac) #26, !srcloc !122
  %i.bh = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.p) #25, !srcloc !123 ; 3 uses
  %i.bi = fadd <2 x double> %i.bg, %i.bh
  %i.bj = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bi) #26, !srcloc !122
  store <2 x double> %i.bj, ptr %8, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bk = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ah) #26, !srcloc !122
  %i.bl = fadd <2 x double> %i.bh, %i.bk
  %i.bm = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bl) #26, !srcloc !122
  store <2 x double> %i.bm, ptr %9, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.bn = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.au) #26, !srcloc !122
  %i.bo = fadd <2 x double> %i.bh, %i.bn
  %i.bp = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bo) #26, !srcloc !122
  store <2 x double> %i.bp, ptr %10, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.bq = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ad) #26, !srcloc !122
  %i.br = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u) #25, !srcloc !123 ; 3 uses
  %i.bs = fadd <2 x double> %i.bq, %i.br
  %i.bt = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bs) #26, !srcloc !122
  store <2 x double> %i.bt, ptr %11, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.bu = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.am) #26, !srcloc !122
  %i.bv = fadd <2 x double> %i.br, %i.bu
  %i.bw = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bv) #26, !srcloc !122
  store <2 x double> %i.bw, ptr %12, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.bx = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.av) #26, !srcloc !122
  %i.by = fadd <2 x double> %i.br, %i.bx
  %i.bz = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.by) #26, !srcloc !122
  store <2 x double> %i.bz, ptr %13, align 16
  %i.ca = invoke <2 x double> @_ZN4CGAL11determinantINS_11Interval_ntILb0EEEEET_RKS3_S5_S5_S5_S5_S5_S5_S5_S5_(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %13)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.cb = extractelement <2 x double> %i.ca, i64 0 ; 2 uses
  %i.cc = fneg double %i.cb
  %i.cd = fcmp olt double %i.cb, 0.000000e+00
  %14 = extractelement <2 x double> %i.ca, i64 1  ; 2 uses
  br i1 %i.cd, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.ce = fcmp olt double %14, 0.000000e+00
  br i1 %i.ce, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cf = fcmp oeq double %14, %i.cc
  br i1 %i.cf, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.b, %bb.c, %bb.d
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ 8589934591, %bb.d ], [ 4294967297, %.noexc ], [ -1, %bb.b ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.5.0.i.i.i.i.i.i to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.cg = icmp ne i32 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.ch = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.327 = extractvalue { ptr, i32 } %i.ch, 1
  %i.ci = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #26
  %i.cj = icmp eq i32 %.327, %i.ci
  br i1 %i.cj, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %.323 = extractvalue { ptr, i32 } %i.ch, 0
  %i.ck = call ptr @__cxa_begin_catch(ptr %.323) #26 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.e, %bb.g
  %.119 = phi i1 [ true, %bb.g ], [ %i.cg, %bb.e ]
  %.2 = phi i32 [ undef, %bb.g ], [ %.sroa.0.0.extract.trunc.i, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.cl = load i32, ptr %i.c, align 4
  %i.cm = and i32 %i.cl, -24577
  %i.cn = or disjoint i32 %i.cm, %i.i
  store i32 %i.cn, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.119, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.co = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.merged = phi { ptr, i32 } [ %i.cp, %bb.j ], [ %i.ch, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.cq = load i32, ptr %i.a, align 4
  %i.cr = and i32 %i.cq, -24577
  %i.cs = or disjoint i32 %i.cr, %i.i
  store i32 %i.cs, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %.merged

bb.l:                                             ; preds = %bb.h, %bb.i
  %.3 = phi i32 [ %i.co, %bb.i ], [ %.2, %bb.h ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.CGAL::Point_3.101", align 16 ; 18 uses
  %6 = alloca %"class.CGAL::Point_3.101", align 16 ; 18 uses
  %7 = alloca %"class.CGAL::Point_3.101", align 16 ; 18 uses
  %8 = alloca %"class.CGAL::Point_3.101", align 16 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.101") align 16 %5, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.101") align 16 %6, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.101") align 16 %7, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.101") align 16 %8, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
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
  %i.k = load i8, ptr %i.j, align 1, !tbaa !72, !range !78, !noundef !79
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 266
  %i.n = load i8, ptr %i.m, align 2, !range !78
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.l, i1 true, i1 %i.o
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK4CGAL23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_S9_S9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 200
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i64, ptr %i.h, align 16
  %i.s = shl i64 %i.r, 3
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.s) #31
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i:                ; preds = %bb.e, %_ZNK4CGAL23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_S9_S9_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 169
  %i.u = load i8, ptr %i.t, align 1, !tbaa !72, !range !78, !noundef !79
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 170
  %i.x = load i8, ptr %i.w, align 2, !range !78
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond.i.i.i.1.i.i.i = select i1 %i.v, i1 true, i1 %i.y
  br i1 %or.cond.i.i.i.1.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load i64, ptr %i.g, align 16
  %i.ac = shl i64 %i.ab, 3
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #31
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i:              ; preds = %bb.f, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 73
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !72, !range !78, !noundef !79
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 74
  %i.ah = load i8, ptr %i.ag, align 2, !range !78
  %i.ai = trunc nuw i8 %i.ah to i1
  %or.cond.i.i.i.2.i.i.i = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %or.cond.i.i.i.2.i.i.i, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load i64, ptr %8, align 16
  %i.am = shl i64 %i.al, 3
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.am) #31
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 265
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !72, !range !78, !noundef !79
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 266
  %i.ar = load i8, ptr %i.aq, align 2, !range !78
  %i.as = trunc nuw i8 %i.ar to i1
  %or.cond.i.i.i.i.i.i12 = select i1 %i.ap, i1 true, i1 %i.as
  br i1 %or.cond.i.i.i.i.i.i12, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i13, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 200
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = load i64, ptr %i.f, align 16
  %i.aw = shl i64 %i.av, 3
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.aw) #31
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i13

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i13:              ; preds = %bb.h, %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 169
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !72, !range !78, !noundef !79
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 170
  %i.bb = load i8, ptr %i.ba, align 2, !range !78
  %i.bc = trunc nuw i8 %i.bb to i1
  %or.cond.i.i.i.1.i.i.i14 = select i1 %i.az, i1 true, i1 %i.bc
  br i1 %or.cond.i.i.i.1.i.i.i14, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i15, label %bb.i

bb.i:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i13
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 104
end_hunk_1
