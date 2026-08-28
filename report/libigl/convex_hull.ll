Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/convex_hull?download=true
inline.NumInlined: 9951
inline.NumDeleted: 3256
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZN4CGAL13Convex_hull_38internal19ch_quickhull_3_scanINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS7_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISF_NS_28Triangulation_ds_face_base_2IvEEEEEESF_EEvRT_RNSt7__cxx114listINSP_11Face_handleESaIST_EEERKT0_:bb.a
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
  %i.ki = extractelement <2 x double> %i.ke, i64 1 ; 2 uses
  br i1 %i.kh, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.noexc110
  %i.kj = fcmp olt double %i.ki, 0.000000e+00
  br i1 %i.kj, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.kk = fcmp oeq double %i.ki, %i.kg
  br i1 %i.kk, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %.noexc110
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ 8589934591, %bb.e ], [ 4294967297, %.noexc110 ], [ -1, %bb.c ], [ 0, %bb.d ] ; 2 uses
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
  br i1 %.not, label %.noexc, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ku = invoke noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors31Less_signed_distance_to_plane_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_S16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEEbDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f, %bb.g
  %.3.i = phi i1 [ %i.kq, %bb.f ], [ %i.ku, %bb.g ]
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
          to label %.preheader252 unwind label %bb.i

.preheader252:                                    ; preds = %.loopexit253
  %.sroa.0174.0270 = load ptr, ptr %5, align 8, !tbaa !286 ; 2 uses
  %.not245271 = icmp eq ptr %.sroa.0174.0270, %5
  br i1 %.not245271, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader252, %bb.l
  %.sroa.0174.0272 = phi ptr [ %.sroa.0174.0, %bb.l ], [ %.sroa.0174.0270, %.preheader252 ] ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0174.0272, i64 16 ; 3 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !322 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 64 ; 3 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !286 ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.lc
  br i1 %i.le, label %bb.j, label %_ZNSt7__cxx114listIN4CGAL7Point_3INS1_5EpickEEESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_S8_S8_.exit

_ZNSt7__cxx114listIN4CGAL7Point_3INS1_5EpickEEESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_S8_S8_.exit: ; preds = %.lr.ph
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 80 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !287
  %i.lh = load i64, ptr %i.i, align 8, !tbaa !289
  %i.li = add i64 %i.lh, %i.lg
  store i64 %i.li, ptr %i.i, align 8, !tbaa !289
  store i64 0, ptr %i.lf, align 8, !tbaa !289
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.ld, ptr noundef nonnull %i.lc) #28
  %.pre308.a = load ptr, ptr %i.la, align 8, !tbaa !322
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %.loopexit253
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EED2Ev.exit90

bb.j:                                             ; preds = %_ZNSt7__cxx114listIN4CGAL7Point_3INS1_5EpickEEESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_S8_S8_.exit, %.lr.ph
  %i.ll = phi ptr [ %.pre308.a, %_ZNSt7__cxx114listIN4CGAL7Point_3INS1_5EpickEEESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_S8_S8_.exit ], [ %i.lb, %.lr.ph ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 56
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !340 ; 3 uses
  %.not247 = icmp eq ptr %i.ln, %1
  br i1 %.not247, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.lo = load i64, ptr %i.v, align 8, !tbaa !581
  %i.lp = add i64 %i.lo, -1
  store i64 %i.lp, ptr %i.v, align 8, !tbaa !581
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.ln, i64 noundef 24) #38
  %.pre309.a = load ptr, ptr %i.la, align 8, !tbaa !322
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.lq = phi ptr [ %.pre309.a, %bb.k ], [ %i.ll, %bb.j ]
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 52
  store i32 0, ptr %i.lr, align 4, !tbaa !25
  %.sroa.0174.0 = load ptr, ptr %.sroa.0174.0272, align 8, !tbaa !286 ; 2 uses
  %.not245 = icmp eq ptr %.sroa.0174.0, %5
  br i1 %.not245, label %._crit_edge, label %.lr.ph, !llvm.loop !1421

._crit_edge:                                      ; preds = %bb.l, %.preheader252
  %i.ls = load i64, ptr %i.n, align 8, !tbaa !1404 ; 4 uses
  %i.lt = icmp ugt i64 %i.ls, 576460752303423487
  br i1 %i.lt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #39
          to label %.noexc57 unwind label %.thread.loopexit.split-lp

.noexc57:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %._crit_edge
  %.not246 = icmp eq i64 %i.ls, 0
  br i1 %.not246, label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE7reserveEm.exit.thread, label %_ZNSt12_Vector_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE11_M_allocateEm.exit.i

_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE7reserveEm.exit.thread: ; preds = %bb.n
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

_ZNSt12_Vector_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.ly = shl nuw nsw i64 %i.ls, 4
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
  %.idx = shl nuw nsw i64 %i.ls, 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 %.idx
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
  %.sroa.14.0..sroa_idx130.a = getelementptr inbounds nuw i8, ptr %i.lx, i64 12
  store i32 %.sroa.14.0.copyload221, ptr %.sroa.14.0..sroa_idx130.a, align 4
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
  %.sroa.0138.5.pn276 = phi ptr [ %.0.lcssa.i.i.i.i.i76.pn, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit81 ], [ %.sroa.0138.5, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit ] ; 4 uses
  %.sroa.0138.0275 = phi ptr [ %.sroa.0138.6, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit81 ], [ %.sroa.0138.5, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit ] ; 9 uses
  %.sroa.0138.5.pn276381 = ptrtoaddr ptr %.sroa.0138.5.pn276 to i64
  %i.mj = sext i32 %.sroa.12.0278 to i64
  %i.mk = getelementptr inbounds [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE7ccw_mapE, i64 %i.mj
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !25
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr inbounds [8 x i8], ptr %.sroa.0113.0279, i64 %i.mm
  %.sroa.0.0.copyload.i62 = load ptr, ptr %i.mn, align 8, !tbaa !333 ; 2 uses
  %i.mo = load ptr, ptr %i.k, align 8, !tbaa !1401 ; 2 uses
  %.not10.i.i.i63 = icmp eq ptr %i.mo, null
  br i1 %.not10.i.i.i63, label %_ZNSt3mapIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairINS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiESt4lessISU_ESaISV_IKSU_S10_EEE4findERS13_.exit, label %.lr.ph.i.i.i64

.lr.ph.i.i.i64:                                   ; preds = %.lr.ph281, %.lr.ph.i.i.i64
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i64 ], [ %i.mo, %.lr.ph281 ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i64 ], [ %i.j, %.lr.ph281 ] ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !1422
  %i.mr = icmp ult ptr %i.mq, %.sroa.0.0.copyload.i62 ; 3 uses
  %.19.i.i.i = select i1 %i.mr, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.mr, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !1424 ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i65, label %_ZNSt8_Rb_treeIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairIKSU_SV_INS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiEESt10_Select1stIS12_ESt4lessISU_ESaIS12_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS12_EPSt18_Rb_tree_node_baseRSW_.exit.i.i, label %.lr.ph.i.i.i64, !llvm.loop !1425

_ZNSt8_Rb_treeIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairIKSU_SV_INS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiEESt10_Select1stIS12_ESt4lessISU_ESaIS12_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS12_EPSt18_Rb_tree_node_baseRSW_.exit.i.i: ; preds = %.lr.ph.i.i.i64
  %i.ms = icmp eq ptr %.19.i.i.i, %i.j
  br i1 %i.ms, label %_ZNSt3mapIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairINS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiESt4lessISU_ESaISV_IKSU_S10_EEE4findERS13_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt8_Rb_treeIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairIKSU_SV_INS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiEESt10_Select1stIS12_ESt4lessISU_ESaIS12_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS12_EPSt18_Rb_tree_node_baseRSW_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.mr, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.mt = load ptr, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1422
  %i.mu = icmp ult ptr %.sroa.0.0.copyload.i62, %i.mt
  %spec.select.i.i = select i1 %i.mu, ptr %i.j, ptr %.19.i.i.i
  br label %_ZNSt3mapIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairINS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiESt4lessISU_ESaISV_IKSU_S10_EEE4findERS13_.exit

_ZNSt3mapIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairINS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiESt4lessISU_ESaISV_IKSU_S10_EEE4findERS13_.exit: ; preds = %bb.o, %_ZNSt8_Rb_treeIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairIKSU_SV_INS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiEESt10_Select1stIS12_ESt4lessISU_ESaIS12_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS12_EPSt18_Rb_tree_node_baseRSW_.exit.i.i, %.lr.ph281
  %.sroa.0.0.i.i = phi ptr [ %i.j, %.lr.ph281 ], [ %i.j, %_ZNSt8_Rb_treeIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairIKSU_SV_INS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiEESt10_Select1stIS12_ESt4lessISU_ESaIS12_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS12_EPSt18_Rb_tree_node_baseRSW_.exit.i.i ], [ %spec.select.i.i, %bb.o ] ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !342
  %i.mx = inttoptr i64 %i.mw to ptr               ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 48
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !1426 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 52
  store i32 0, ptr %i.na, align 4, !tbaa !25
  %.not.i66 = icmp eq ptr %.sroa.15.0280, %.sroa.28.0277
  br i1 %.not.i66, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt3mapIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairINS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiESt4lessISU_ESaISV_IKSU_S10_EEE4findERS13_.exit
  store ptr %i.mx, ptr %.sroa.15.0280, align 8
  %.sroa.12.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %.sroa.0138.5.pn276, i64 24
  store i32 %i.mz, ptr %.sroa.12.0..sroa_idx124, align 8
  %.sroa.14.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %.sroa.0138.5.pn276, i64 28
  store i32 %.sroa.14.0.copyload231, ptr %.sroa.14.0..sroa_idx132, align 4
  br label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit81

bb.q:                                             ; preds = %_ZNSt3mapIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairINS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiESt4lessISU_ESaISV_IKSU_S10_EEE4findERS13_.exit
  %i.nb = ptrtoint ptr %.sroa.15.0280 to i64
  %i.nc = ptrtoint ptr %.sroa.0138.0275 to i64    ; 2 uses
  %i.nd = sub i64 %i.nb, %i.nc                    ; 4 uses
  %i.ne = icmp eq i64 %i.nd, 9223372036854775792
  br i1 %i.ne, label %bb.r, label %_ZNKSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE12_M_check_lenEmPKc.exit.i.i67

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #39
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc79:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE12_M_check_lenEmPKc.exit.i.i67: ; preds = %bb.q
  %i.nf = ashr exact i64 %i.nd, 4                 ; 3 uses
  %.sroa.speculated.i.i.i68 = call i64 @llvm.umax.i64(i64 %i.nf, i64 1)
  %i.ng = add nsw i64 %.sroa.speculated.i.i.i68, %i.nf ; 2 uses
  %i.nh = icmp ult i64 %i.ng, %i.nf
  %i.ni = call i64 @llvm.umin.i64(i64 %i.ng, i64 576460752303423487)
  %i.nj = select i1 %i.nh, i64 576460752303423487, i64 %i.ni ; 3 uses
  %.not.i.i.i69 = icmp ne i64 %i.nj, 0
  call void @llvm.assume(i1 %.not.i.i.i69)
  %i.nk = shl nuw nsw i64 %i.nj, 4
  %i.nl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nk) #40
          to label %.noexc80 unwind label %.loopexit251 ; 6 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE12_M_check_lenEmPKc.exit.i.i67
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nd ; 3 uses
  store ptr %i.mx, ptr %i.nm, align 8
  %.sroa.12.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  store i32 %i.mz, ptr %.sroa.12.0..sroa_idx126, align 8
  %.sroa.14.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %i.nm, i64 12
  store i32 %.sroa.14.0.copyload231, ptr %.sroa.14.0..sroa_idx134, align 4
  %.not10.i.i.i.i.i70 = icmp eq ptr %.sroa.0138.0275, %.sroa.15.0280
  br i1 %.not10.i.i.i.i.i70, label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE17_M_realloc_insertIJRKSW_EEEvN9__gnu_cxx17__normal_iteratorIPSW_SY_EEDpOT_.exit.i78.a, label %.lr.ph.i.i.i.i.i71.preheader

.lr.ph.i.i.i.i.i71.preheader:                     ; preds = %.noexc80
  %i.nn = sub i64 %.sroa.0138.5.pn276381, %i.nc   ; 2 uses
  %i.no = lshr i64 %i.nn, 4
  %i.np = add nuw nsw i64 %i.no, 1
  %xtraiter = and i64 %i.np, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i71.prol.loopexit, label %.lr.ph.i.i.i.i.i71.prol

.lr.ph.i.i.i.i.i71.prol:                          ; preds = %.lr.ph.i.i.i.i.i71.preheader, %.lr.ph.i.i.i.i.i71.prol
  %.012.i.i.i.i.i72.prol = phi ptr [ %i.nr, %.lr.ph.i.i.i.i.i71.prol ], [ %i.nl, %.lr.ph.i.i.i.i.i71.preheader ] ; 2 uses
  %.0911.i.i.i.i.i73.prol = phi ptr [ %i.nq, %.lr.ph.i.i.i.i.i71.prol ], [ %.sroa.0138.0275, %.lr.ph.i.i.i.i.i71.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i71.prol ], [ 0, %.lr.ph.i.i.i.i.i71.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i72.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i73.prol, i64 16, i1 false), !alias.scope !1428
  %i.nq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i73.prol, i64 16 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i72.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i71.prol.loopexit, label %.lr.ph.i.i.i.i.i71.prol, !llvm.loop !1432

.lr.ph.i.i.i.i.i71.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i71.prol, %.lr.ph.i.i.i.i.i71.preheader
  %.lcssa371.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i71.preheader ], [ %i.nr, %.lr.ph.i.i.i.i.i71.prol ]
  %.012.i.i.i.i.i72.unr = phi ptr [ %i.nl, %.lr.ph.i.i.i.i.i71.preheader ], [ %i.nr, %.lr.ph.i.i.i.i.i71.prol ]
  %.0911.i.i.i.i.i73.unr = phi ptr [ %.sroa.0138.0275, %.lr.ph.i.i.i.i.i71.preheader ], [ %i.nq, %.lr.ph.i.i.i.i.i71.prol ]
  %i.ns = icmp ult i64 %i.nn, 48
  br i1 %i.ns, label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE17_M_realloc_insertIJRKSW_EEEvN9__gnu_cxx17__normal_iteratorIPSW_SY_EEDpOT_.exit.i78.a, label %.lr.ph.i.i.i.i.i71

.lr.ph.i.i.i.i.i71:                               ; preds = %.lr.ph.i.i.i.i.i71.prol.loopexit, %.lr.ph.i.i.i.i.i71
  %.012.i.i.i.i.i72 = phi ptr [ %i.oa, %.lr.ph.i.i.i.i.i71 ], [ %.012.i.i.i.i.i72.unr, %.lr.ph.i.i.i.i.i71.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i73 = phi ptr [ %i.nz, %.lr.ph.i.i.i.i.i71 ], [ %.0911.i.i.i.i.i73.unr, %.lr.ph.i.i.i.i.i71.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i72, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i73, i64 16, i1 false), !alias.scope !1428
  %i.nt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i73, i64 16
  %i.nu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i72, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nu, ptr noundef nonnull align 8 dereferenceable(16) %i.nt, i64 16, i1 false), !alias.scope !1428
  %i.nv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i73, i64 32
  %i.nw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i72, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nw, ptr noundef nonnull align 8 dereferenceable(16) %i.nv, i64 16, i1 false), !alias.scope !1428
  %i.nx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i73, i64 48 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i72, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ny, ptr noundef nonnull align 8 dereferenceable(16) %i.nx, i64 16, i1 false), !alias.scope !1428
  %i.nz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i73, i64 64
  %i.oa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i72, i64 64 ; 2 uses
  %.not.i.i.i.i.i74.3 = icmp eq ptr %i.nx, %.sroa.0138.5.pn276
  br i1 %.not.i.i.i.i.i74.3, label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE17_M_realloc_insertIJRKSW_EEEvN9__gnu_cxx17__normal_iteratorIPSW_SY_EEDpOT_.exit.i78.a, label %.lr.ph.i.i.i.i.i71, !llvm.loop !1433

_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE17_M_realloc_insertIJRKSW_EEEvN9__gnu_cxx17__normal_iteratorIPSW_SY_EEDpOT_.exit.i78.a: ; preds = %.lr.ph.i.i.i.i.i71.prol.loopexit, %.lr.ph.i.i.i.i.i71, %.noexc80
  %.0.lcssa.i.i.i.i.i76 = phi ptr [ %i.nl, %.noexc80 ], [ %.lcssa371.unr, %.lr.ph.i.i.i.i.i71.prol.loopexit ], [ %i.oa, %.lr.ph.i.i.i.i.i71 ]
  %.not.i23.i.i77 = icmp eq ptr %.sroa.0138.0275, null
  br i1 %.not.i23.i.i77, label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE17_M_realloc_insertIJRKSW_EEEvN9__gnu_cxx17__normal_iteratorIPSW_SY_EEDpOT_.exit.i78, label %9

9:                                                ; preds = %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE17_M_realloc_insertIJRKSW_EEEvN9__gnu_cxx17__normal_iteratorIPSW_SY_EEDpOT_.exit.i78.a
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0138.0275, i64 noundef %i.nd) #38
  br label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE17_M_realloc_insertIJRKSW_EEEvN9__gnu_cxx17__normal_iteratorIPSW_SY_EEDpOT_.exit.i78

_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE17_M_realloc_insertIJRKSW_EEEvN9__gnu_cxx17__normal_iteratorIPSW_SY_EEDpOT_.exit.i78: ; preds = %9, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE17_M_realloc_insertIJRKSW_EEEvN9__gnu_cxx17__normal_iteratorIPSW_SY_EEDpOT_.exit.i78.a
  %10 = getelementptr inbounds nuw [16 x i8], ptr %i.nl, i64 %i.nj
  br label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit81

_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit81: ; preds = %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE17_M_realloc_insertIJRKSW_EEEvN9__gnu_cxx17__normal_iteratorIPSW_SY_EEDpOT_.exit.i78, %bb.p
  %.sroa.0138.6 = phi ptr [ %i.nl, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE17_M_realloc_insertIJRKSW_EEEvN9__gnu_cxx17__normal_iteratorIPSW_SY_EEDpOT_.exit.i78 ], [ %.sroa.0138.0275, %bb.p ] ; 2 uses
  %.0.lcssa.i.i.i.i.i76.pn = phi ptr [ %.0.lcssa.i.i.i.i.i76, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE17_M_realloc_insertIJRKSW_EEEvN9__gnu_cxx17__normal_iteratorIPSW_SY_EEDpOT_.exit.i78 ], [ %.sroa.15.0280, %bb.p ] ; 2 uses
  %.sroa.28.6 = phi ptr [ %10, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE17_M_realloc_insertIJRKSW_EEEvN9__gnu_cxx17__normal_iteratorIPSW_SY_EEDpOT_.exit.i78 ], [ %.sroa.28.0277, %bb.p ] ; 2 uses
  %i.ob = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.0.0.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.ob, i64 noundef 56) #38
  %i.oc = load i64, ptr %i.n, align 8, !tbaa !1404
  %.sroa.15.0 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i76.pn, i64 16 ; 2 uses
  %storemerge = add i64 %i.oc, -1                 ; 2 uses
  store i64 %storemerge, ptr %i.n, align 8, !tbaa !1404
  %i.od = icmp eq i64 %storemerge, 0
  br i1 %i.od, label %._crit_edge282, label %.lr.ph281

.thread.loopexit:                                 ; preds = %_ZNSt12_Vector_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE11_M_allocateEm.exit.i
  %lpad.loopexit254 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EED2Ev.exit90

.thread.loopexit.split-lp:                        ; preds = %bb.m
  %lpad.loopexit.split-lp255 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EED2Ev.exit90

.loopexit251:                                     ; preds = %_ZNKSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE12_M_check_lenEmPKc.exit.i.i67
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.thread:                        ; preds = %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE7reserveEm.exit.thread
  %lpad.loopexit257 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.r
  %lpad.loopexit.split-lp258 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge282:                                   ; preds = %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit81, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit
  %.sroa.0138.0.lcssa = phi ptr [ %.sroa.0138.5, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit ], [ %.sroa.0138.6, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit81 ] ; 6 uses
  %.sroa.28.0.lcssa = phi ptr [ %.sroa.28.5, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit ], [ %.sroa.28.6, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit81 ] ; 3 uses
  %.sroa.15.0.lcssa = phi ptr [ %.sroa.15.0273, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit ], [ %.sroa.15.0, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE9push_backERKSW_.exit81 ] ; 2 uses
  %i.oe = load i64, ptr %i.g, align 8, !tbaa !581 ; 2 uses
  %i.of = ptrtoint ptr %.sroa.15.0.lcssa to i64
  %i.og = ptrtoint ptr %.sroa.0138.0.lcssa to i64 ; 2 uses
  %i.oh = sub i64 %i.of, %i.og
  %i.oi = ashr exact i64 %i.oh, 4                 ; 2 uses
  %i.oj = sub i64 %i.oe, %i.oi                    ; 3 uses
  %i.ok = icmp slt i64 %i.oj, 0
  br i1 %i.ok, label %.preheader, label %.preheader249

.preheader249:                                    ; preds = %._crit_edge282
  %.not291 = icmp eq i64 %i.oe, %i.oi
  br i1 %.not291, label %.loopexit248, label %.lr.ph286

.preheader:                                       ; preds = %._crit_edge282
  %i.ol = sub i64 0, %i.oj
  %smax = call i64 @llvm.smax.i64(i64 %i.ol, i64 1)
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %bb.v
  %indvars.iv304 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next305, %bb.v ]
  %i.om = load ptr, ptr %i.w, align 8, !tbaa !332 ; 2 uses
  %i.on = icmp eq ptr %i.om, null
  br i1 %i.on, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4CGAL17Compact_containerINS_23Convex_hull_face_base_2INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS3_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3ISB_EENS_30Triangulation_ds_vertex_base_2IvEEEENS1_ISB_NSC_IvEEEEEEEEEENS_7DefaultESP_SP_E18allocate_new_blockEv(ptr noundef nonnull align 8 dereferenceable(88) %i.y)
          to label %.noexc82 unwind label %bb.w

.noexc82:                                         ; preds = %bb.t
  %.pre.i.i = load ptr, ptr %i.w, align 8, !tbaa !332
  br label %bb.u

bb.u:                                             ; preds = %.noexc82, %bb.s
  %i.oo = phi ptr [ %.pre.i.i, %.noexc82 ], [ %i.om, %bb.s ] ; 8 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 24
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !322
  %i.or = ptrtoint ptr %i.oq to i64
  %i.os = and i64 %i.or, -4
  %i.ot = inttoptr i64 %i.os to ptr
  store ptr %i.ot, ptr %i.w, align 8, !tbaa !332
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.oo, i8 0, i64 49, i1 false)
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oo, i64 52
  store i32 0, ptr %i.ou, align 4, !tbaa !334
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oo, i64 56
  store ptr null, ptr %i.ov, align 8, !tbaa !340
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oo, i64 64 ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oo, i64 72
  store ptr %i.ow, ptr %i.ox, align 8, !tbaa !283
  store ptr %i.ow, ptr %i.ow, align 8, !tbaa !286
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oo, i64 80
  store i64 0, ptr %i.oy, align 8, !tbaa !287
  %i.oz = load i64, ptr %i.x, align 8, !tbaa !341
  %i.pa = add i64 %i.oz, 1
  store i64 %i.pa, ptr %i.x, align 8, !tbaa !341
  %i.pb = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #40
          to label %bb.v unwind label %bb.w       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %i.pd = ptrtoint ptr %i.oo to i64
  store i64 %i.pd, ptr %i.pc, align 8, !tbaa !342
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.pb, ptr noundef nonnull align 8 dereferenceable(24) %5) #28
  %i.pe = load i64, ptr %i.g, align 8, !tbaa !581
  %i.pf = add i64 %i.pe, 1
  store i64 %i.pf, ptr %i.g, align 8, !tbaa !581
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %exitcond307.not = icmp eq i64 %indvars.iv.next305, %smax
  br i1 %exitcond307.not, label %.loopexit248, label %bb.s, !llvm.loop !1434

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph286:                                        ; preds = %.preheader249, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ 0, %.preheader249 ]
  %i.ph = load ptr, ptr %i.f, align 8, !tbaa !283 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %.sroa.04.0.copyload = load ptr, ptr %i.pi, align 8, !tbaa !342 ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 64 ; 3 uses
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !286 ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.pk, %i.pj
  br i1 %.not8.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i84

.lr.ph.i.i.i.i.i84:                               ; preds = %.lr.ph286, %.lr.ph.i.i.i.i.i84
  %.09.i.i.i.i.i = phi ptr [ %i.pl, %.lr.ph.i.i.i.i.i84 ], [ %i.pk, %.lr.ph286 ] ; 2 uses
  %i.pl = load ptr, ptr %.09.i.i.i.i.i, align 8, !tbaa !286 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i, i64 noundef 40) #38
  %.not.i.i.i.i.i85 = icmp eq ptr %i.pl, %i.pj
  br i1 %.not.i.i.i.i.i85, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i84, !llvm.loop !293

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.i.i.i84
  %.pre310.a = load ptr, ptr %i.f, align 8, !tbaa !283
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph286
  %i.pm = phi ptr [ %.pre310.a, %.loopexit.loopexit ], [ %i.ph, %.lr.ph286 ] ; 2 uses
  %i.pn = load ptr, ptr %i.w, align 8, !tbaa !332
  %i.po = ptrtoint ptr %i.pn to i64
  %i.pp = and i64 %i.po, -4
  %i.pq = or disjoint i64 %i.pp, 2
  %i.pr = inttoptr i64 %i.pq to ptr
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 24
  store ptr %i.pr, ptr %i.ps, align 8, !tbaa !322
  store ptr %.sroa.04.0.copyload, ptr %i.w, align 8, !tbaa !332
  %i.pt = load i64, ptr %i.x, align 8, !tbaa !341
  %i.pu = add i64 %i.pt, -1
  store i64 %i.pu, ptr %i.x, align 8, !tbaa !341
  %i.pv = load i64, ptr %i.g, align 8, !tbaa !581
  %i.pw = add i64 %i.pv, -1
  store i64 %i.pw, ptr %i.g, align 8, !tbaa !581
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pm) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.pm, i64 noundef 24) #38
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.oj
  br i1 %exitcond.not, label %.loopexit248, label %.lr.ph286, !llvm.loop !1435

.loopexit248:                                     ; preds = %.loopexit, %bb.v, %.preheader249
  %i.px = load ptr, ptr %5, align 8, !tbaa !286
  %i.py = load ptr, ptr %i.z, align 8, !tbaa !320 ; 2 uses
  %i.pz = icmp eq ptr %i.py, null
  br i1 %i.pz, label %bb.x, label %_ZN4CGAL30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISC_NS_28Triangulation_ds_face_base_2IvEEEEE13create_vertexEv.exit.i

bb.x:                                             ; preds = %.loopexit248
  invoke void @_ZN4CGAL17Compact_containerINS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS1_ISD_NSE_IvEEEENS_23Convex_hull_face_base_2ISC_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_7DefaultESP_SP_E18allocate_new_blockEv(ptr noundef nonnull align 8 dereferenceable(88) %i.aa)
          to label %.noexc86 unwind label %bb.y

.noexc86:                                         ; preds = %bb.x
  %.pre.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !320
  br label %_ZN4CGAL30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISC_NS_28Triangulation_ds_face_base_2IvEEEEE13create_vertexEv.exit.i

_ZN4CGAL30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISC_NS_28Triangulation_ds_face_base_2IvEEEEE13create_vertexEv.exit.i: ; preds = %.noexc86, %.loopexit248
  %i.qa = phi ptr [ %.pre.i.i.i, %.noexc86 ], [ %i.py, %.loopexit248 ] ; 5 uses
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !322
  %i.qc = ptrtoint ptr %i.qb to i64
  %i.qd = and i64 %i.qc, -4
  %i.qe = inttoptr i64 %i.qd to ptr
  store ptr %i.qe, ptr %i.z, align 8, !tbaa !320
  store ptr null, ptr %i.qa, align 8, !tbaa !322
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  store i32 0, ptr %i.qf, align 8, !tbaa !324
  %i.qg = load i64, ptr %i.ab, align 8, !tbaa !321
  %i.qh = add i64 %i.qg, 1
  store i64 %i.qh, ptr %i.ab, align 8, !tbaa !321
  invoke void @_ZN4CGAL30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISC_NS_28Triangulation_ds_face_base_2IvEEEEE9star_holeIN9__gnu_cxx17__normal_iteratorIPSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSH_ISC_NSI_ISL_EEEENS_7DefaultESV_SV_EELb0EEEiESt6vectorISY_SaISY_EEEESt14_List_iteratorISX_EEEvNSR_INSS_INS1_ISD_NSE_ISL_EEEESV_SV_SV_EELb0EEET_S1A_T0_S1B_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr nonnull %i.qa, ptr %.sroa.0138.0.lcssa, ptr nonnull %.sroa.15.0.lcssa, ptr %i.px, ptr nonnull %5)
          to label %_ZN4CGAL30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISC_NS_28Triangulation_ds_face_base_2IvEEEEE9star_holeIN9__gnu_cxx17__normal_iteratorIPSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSH_ISC_NSI_ISL_EEEENS_7DefaultESV_SV_EELb0EEEiESt6vectorISY_SaISY_EEEESt14_List_iteratorISX_EEENSR_INSS_INS1_ISD_NSE_ISL_EEEESV_SV_SV_EELb0EEET_S1A_T0_S1B_.exit unwind label %bb.y

_ZN4CGAL30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISC_NS_28Triangulation_ds_face_base_2IvEEEEE9star_holeIN9__gnu_cxx17__normal_iteratorIPSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSH_ISC_NSI_ISL_EEEENS_7DefaultESV_SV_EELb0EEEiESt6vectorISY_SaISY_EEEESt14_List_iteratorISX_EEENSR_INSS_INS1_ISD_NSE_ISL_EEEESV_SV_SV_EELb0EEET_S1A_T0_S1B_.exit: ; preds = %_ZN4CGAL30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISC_NS_28Triangulation_ds_face_base_2IvEEEEE13create_vertexEv.exit.i
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qi, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  invoke void @_ZN4CGAL13Convex_hull_38internal22partition_outside_setsINS_8internal11CC_iteratorINS_17Compact_containerINS_23Convex_hull_face_base_2INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS8_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3ISG_EENS_30Triangulation_ds_vertex_base_2IvEEEENS6_ISG_NSH_IvEEEEEEEEEENS_7DefaultESU_SU_EELb0EEESG_NS_7Point_3IS8_EEEEvRKNSt7__cxx114listIT_SaIS11_EEERNS10_IT1_SaIS16_EEERS13_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %11 unwind label %bb.y

11:                                               ; preds = %_ZN4CGAL30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISC_NS_28Triangulation_ds_face_base_2IvEEEEE9star_holeIN9__gnu_cxx17__normal_iteratorIPSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSH_ISC_NSI_ISL_EEEENS_7DefaultESV_SV_EELb0EEEiESt6vectorISY_SaISY_EEEESt14_List_iteratorISX_EEENSR_INSS_INS1_ISD_NSE_ISL_EEEESV_SV_SV_EELb0EEET_S1A_T0_S1B_.exit
  %.not.i.i.i88 = icmp eq ptr %.sroa.0138.0.lcssa, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EED2Ev.exit, label %12

12:                                               ; preds = %11
  %13 = ptrtoint ptr %.sroa.28.0.lcssa to i64
  %14 = sub i64 %13, %i.og
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0138.0.lcssa, i64 noundef %14) #38
  br label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EED2Ev.exit

_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EED2Ev.exit: ; preds = %11, %12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.qj = load ptr, ptr %1, align 8, !tbaa !286   ; 2 uses
  %i.qk = icmp eq ptr %i.qj, %1
  br i1 %i.qk, label %._crit_edge290.loopexit, label %bb.b, !llvm.loop !1436

bb.y:                                             ; preds = %_ZN4CGAL30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISC_NS_28Triangulation_ds_face_base_2IvEEEEE13create_vertexEv.exit.i, %bb.x, %_ZN4CGAL30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISC_NS_28Triangulation_ds_face_base_2IvEEEEE9star_holeIN9__gnu_cxx17__normal_iteratorIPSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSH_ISC_NSI_ISL_EEEENS_7DefaultESV_SV_EELb0EEEiESt6vectorISY_SaISY_EEEESt14_List_iteratorISX_EEENSR_INSS_INS1_ISD_NSE_ISL_EEEESV_SV_SV_EELb0EEET_S1A_T0_S1B_.exit
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit251, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.thread, %bb.y, %bb.w
  %.sroa.0134.2 = phi ptr [ %.sroa.0138.0.lcssa, %bb.y ], [ %.sroa.0138.0.lcssa, %bb.w ], [ %.sroa.0138.0275, %.loopexit251 ], [ null, %.loopexit.split-lp.thread ], [ %.sroa.0138.0275, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.28.2 = phi ptr [ %.sroa.28.0.lcssa, %bb.y ], [ %.sroa.28.0.lcssa, %bb.w ], [ %.sroa.15.0280, %.loopexit251 ], [ null, %.loopexit.split-lp.thread ], [ %.sroa.15.0280, %.loopexit.split-lp.loopexit.split-lp ]
  %.pn49 = phi { ptr, i32 } [ %i.ql, %bb.y ], [ %i.pg, %bb.w ], [ %lpad.loopexit, %.loopexit251 ], [ %lpad.loopexit257, %.loopexit.split-lp.thread ], [ %lpad.loopexit.split-lp258, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %.sroa.0134.2, null
  br i1 %.not.i.i.i89, label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EED2Ev.exit90, label %.thread237

.thread237:                                       ; preds = %.loopexit.split-lp
  %i.qm = ptrtoint ptr %.sroa.28.2 to i64
  %i.qn = ptrtoint ptr %.sroa.0134.2 to i64
  %i.qo = sub i64 %i.qm, %i.qn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0134.2, i64 noundef %i.qo) #38
  br label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EED2Ev.exit90

_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EED2Ev.exit90: ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %.thread237, %.loopexit.split-lp, %bb.i
  %.pn49.pn.pn = phi { ptr, i32 } [ %i.lk, %bb.i ], [ %.pn49, %.thread237 ], [ %.pn49, %.loopexit.split-lp ], [ %lpad.loopexit254, %.thread.loopexit ], [ %lpad.loopexit.split-lp255, %.thread.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.body

.body:                                            ; preds = %bb.h, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EED2Ev.exit90
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EED2Ev.exit90 ], [ %i.lj, %bb.h ]
  call void @_ZNSt3mapIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairINS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiESt4lessISU_ESaISV_IKSU_S10_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.qp = load ptr, ptr %6, align 8, !tbaa !286   ; 2 uses
  %.not8.i.i91 = icmp eq ptr %i.qp, %6
  br i1 %.not8.i.i91, label %_ZNSt7__cxx1110_List_baseIN4CGAL7Point_3INS1_5EpickEEESaIS4_EED2Ev.exit, label %.lr.ph.i.i92

.lr.ph.i.i92:                                     ; preds = %.body, %.lr.ph.i.i92
  %.09.i.i93 = phi ptr [ %i.qq, %.lr.ph.i.i92 ], [ %i.qp, %.body ] ; 2 uses
  %i.qq = load ptr, ptr %.09.i.i93, align 8, !tbaa !286 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i93, i64 noundef 40) #38
  %.not.i.i94 = icmp eq ptr %i.qq, %6
  br i1 %.not.i.i94, label %_ZNSt7__cxx1110_List_baseIN4CGAL7Point_3INS1_5EpickEEESaIS4_EED2Ev.exit, label %.lr.ph.i.i92, !llvm.loop !293

_ZNSt7__cxx1110_List_baseIN4CGAL7Point_3INS1_5EpickEEESaIS4_EED2Ev.exit: ; preds = %.lr.ph.i.i92, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.qr = load ptr, ptr %5, align 8, !tbaa !286   ; 2 uses
  %.not8.i.i95 = icmp eq ptr %i.qr, %5
  br i1 %.not8.i.i95, label %_ZNSt7__cxx1110_List_baseIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEESaISV_EED2Ev.exit, label %.lr.ph.i.i96

.lr.ph.i.i96:                                     ; preds = %_ZNSt7__cxx1110_List_baseIN4CGAL7Point_3INS1_5EpickEEESaIS4_EED2Ev.exit, %.lr.ph.i.i96
  %.09.i.i97 = phi ptr [ %i.qs, %.lr.ph.i.i96 ], [ %i.qr, %_ZNSt7__cxx1110_List_baseIN4CGAL7Point_3INS1_5EpickEEESaIS4_EED2Ev.exit ] ; 2 uses
  %i.qs = load ptr, ptr %.09.i.i97, align 8, !tbaa !286 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i97, i64 noundef 24) #38
  %.not.i.i98 = icmp eq ptr %i.qs, %5
  br i1 %.not.i.i98, label %_ZNSt7__cxx1110_List_baseIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEESaISV_EED2Ev.exit, label %.lr.ph.i.i96, !llvm.loop !585

_ZNSt7__cxx1110_List_baseIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEESaISV_EED2Ev.exit: ; preds = %.lr.ph.i.i96, %_ZNSt7__cxx1110_List_baseIN4CGAL7Point_3INS1_5EpickEEESaIS4_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn49.pn.pn.pn

._crit_edge290.loopexit:                          ; preds = %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EED2Ev.exit
  %.pre311 = load ptr, ptr %i.k, align 8, !tbaa !1401
  br label %._crit_edge290

._crit_edge290:                                   ; preds = %._crit_edge290.loopexit, %bb.a
  %i.qt = phi ptr [ %.pre311, %._crit_edge290.loopexit ], [ null, %bb.a ]
  invoke void @_ZNSt8_Rb_treeIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairIKSU_SV_INS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiEESt10_Select1stIS12_ESt4lessISU_ESaIS12_EE8_M_eraseEPSt13_Rb_tree_nodeIS12_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.qt)
          to label %_ZNSt3mapIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairINS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiESt4lessISU_ESaISV_IKSU_S10_EEED2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %._crit_edge290
  %i.qu = landingpad { ptr, i32 }
          catch ptr null
  %i.qv = extractvalue { ptr, i32 } %i.qu, 0
  call void @__clang_call_terminate(ptr %i.qv) #42
  unreachable

_ZNSt3mapIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairINS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiESt4lessISU_ESaISV_IKSU_S10_EEED2Ev.exit: ; preds = %._crit_edge290
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.qw = load ptr, ptr %6, align 8, !tbaa !286   ; 2 uses
  %.not8.i.i99 = icmp eq ptr %i.qw, %6
  br i1 %.not8.i.i99, label %_ZNSt7__cxx1110_List_baseIN4CGAL7Point_3INS1_5EpickEEESaIS4_EED2Ev.exit103, label %.lr.ph.i.i100

.lr.ph.i.i100:                                    ; preds = %_ZNSt3mapIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairINS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiESt4lessISU_ESaISV_IKSU_S10_EEED2Ev.exit, %.lr.ph.i.i100
  %.09.i.i101 = phi ptr [ %i.qx, %.lr.ph.i.i100 ], [ %i.qw, %_ZNSt3mapIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairINS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiESt4lessISU_ESaISV_IKSU_S10_EEED2Ev.exit ] ; 2 uses
  %i.qx = load ptr, ptr %.09.i.i101, align 8, !tbaa !286 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i101, i64 noundef 40) #38
  %.not.i.i102 = icmp eq ptr %i.qx, %6
  br i1 %.not.i.i102, label %_ZNSt7__cxx1110_List_baseIN4CGAL7Point_3INS1_5EpickEEESaIS4_EED2Ev.exit103, label %.lr.ph.i.i100, !llvm.loop !293

_ZNSt7__cxx1110_List_baseIN4CGAL7Point_3INS1_5EpickEEESaIS4_EED2Ev.exit103: ; preds = %.lr.ph.i.i100, %_ZNSt3mapIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairINS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiESt4lessISU_ESaISV_IKSU_S10_EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.qy = load ptr, ptr %5, align 8, !tbaa !286   ; 2 uses
  %.not8.i.i104 = icmp eq ptr %i.qy, %5
  br i1 %.not8.i.i104, label %_ZNSt7__cxx1110_List_baseIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEESaISV_EED2Ev.exit108, label %.lr.ph.i.i105

.lr.ph.i.i105:                                    ; preds = %_ZNSt7__cxx1110_List_baseIN4CGAL7Point_3INS1_5EpickEEESaIS4_EED2Ev.exit103, %.lr.ph.i.i105
  %.09.i.i106 = phi ptr [ %i.qz, %.lr.ph.i.i105 ], [ %i.qy, %_ZNSt7__cxx1110_List_baseIN4CGAL7Point_3INS1_5EpickEEESaIS4_EED2Ev.exit103 ] ; 2 uses
  %i.qz = load ptr, ptr %.09.i.i106, align 8, !tbaa !286 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i106, i64 noundef 24) #38
  %.not.i.i107 = icmp eq ptr %i.qz, %5
  br i1 %.not.i.i107, label %_ZNSt7__cxx1110_List_baseIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEESaISV_EED2Ev.exit108, label %.lr.ph.i.i105, !llvm.loop !585

_ZNSt7__cxx1110_List_baseIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_23Convex_hull_face_base_2INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS7_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3ISF_EENS1_30Triangulation_ds_vertex_base_2IvEEEENS5_ISF_NSG_IvEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEESaISV_EED2Ev.exit108: ; preds = %.lr.ph.i.i105, %_ZNSt7__cxx1110_List_baseIN4CGAL7Point_3INS1_5EpickEEESaIS4_EED2Ev.exit103
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL19Cartesian_converterINS_5EpickENS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEENS_12NT_converterIdSF_EEEclERKNS_7Point_3IS1_EE(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_3.414") align 16 %0, ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::multiprecision::number", align 16 ; 16 uses
  %4 = alloca %"class.boost::multiprecision::number", align 16 ; 16 uses
  %5 = alloca %"class.boost::multiprecision::number", align 16 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %3)
  %i.a = load double, ptr %2, align 8, !tbaa !36, !noalias !1437
  %i.b = fpext double %i.a to x86_fp80
  %i.c = invoke noundef nonnull align 16 dereferenceable(64) ptr @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEaSIeEENSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueERS8_E4typeESB_(ptr noundef nonnull align 16 dereferenceable(64) %3, x86_fp80 noundef %i.b)
          to label %bb.c unwind label %bb.b       ; 0 uses

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %3) #28
  br label %common.resume

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %4)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !36, !noalias !1440
  %i.g = fpext double %i.f to x86_fp80
  %i.h = invoke noundef nonnull align 16 dereferenceable(64) ptr @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEaSIeEENSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueERS8_E4typeESB_(ptr noundef nonnull align 16 dereferenceable(64) %4, x86_fp80 noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %4) #28
  br label %.body

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %5)
          to label %.noexc10 unwind label %bb.o

.noexc10:                                         ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !36, !noalias !1443
  %i.l = fpext double %i.k to x86_fp80
  %i.m = invoke noundef nonnull align 16 dereferenceable(64) ptr @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEaSIeEENSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueERS8_E4typeESB_(ptr noundef nonnull align 16 dereferenceable(64) %5, x86_fp80 noundef %i.l)
          to label %_ZNK4CGAL12NT_converterIdN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEclERKd.exit13 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %.noexc10
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %5) #28
  br label %.body11

_ZNK4CGAL12NT_converterIdN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEclERKd.exit13: ; preds = %.noexc10
  invoke void @_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ISE_SE_SE_EEOT_OT0_OT1_(ptr noundef nonnull align 16 dereferenceable(192) %0, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(64) %5)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %_ZNK4CGAL12NT_converterIdN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEclERKd.exit13
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 57
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9, !range !13, !noundef !14
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 58
  %i.s = load i8, ptr %i.r, align 2, !range !13
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i1.i.i = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond.i1.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load i64, ptr %i.u, align 16
  %i.y = shl i64 %i.x, 3
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.y) #38
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i: ; preds = %bb.h, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 25
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9, !range !13, !noundef !14
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.ad = load i8, ptr %i.ac, align 2, !range !13
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i.i.i = select i1 %i.ab, i1 true, i1 %i.ae
  br i1 %or.cond.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = load i64, ptr %5, align 16
  %i.ai = shl i64 %i.ah, 3
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ai) #38
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 57
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !9, !range !13, !noundef !14
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 58
  %i.an = load i8, ptr %i.am, align 2, !range !13
  %i.ao = trunc nuw i8 %i.an to i1
  %or.cond.i1.i.i14 = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond.i1.i.i14, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i15, label %bb.j

bb.j:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load i64, ptr %i.ap, align 16
  %i.at = shl i64 %i.as, 3
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.at) #38
end_hunk_0
begin_hunk_1_@_ZN4CGAL13Convex_hull_38internal16find_visible_setINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS7_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISF_NS_28Triangulation_ds_face_base_2IvEEEEEESF_EEvRT_RKNT0_7Point_3ENSP_11Face_handleERNSt7__cxx114listISV_SaISV_EEERSt3mapINSP_13Vertex_handleENSP_4EdgeESt4lessIS12_ESaISt4pairIKS12_S13_EEERKSR_:_ZNSt12_Vector_baseIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESaISU_EE11_M_allocateEm.exit.i

bb.ae:                                            ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.kc = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.kd = load ptr, ptr %i.kc, align 8
  %i.ke = load i64, ptr %i.kb, align 16
  %i.kf = shl i64 %i.ke, 3
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kf) #38
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2.i: ; preds = %bb.ae, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.fo, i64 25
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !9, !range !13, !noundef !14
  %i.ki = trunc nuw i8 %i.kh to i1
  %i.kj = getelementptr inbounds nuw i8, ptr %i.fo, i64 26
  %i.kk = load i8, ptr %i.kj, align 2, !range !13
  %i.kl = trunc nuw i8 %i.kk to i1
  %or.cond.i.i.i.2.i = select i1 %i.ki, i1 true, i1 %i.kl
  br i1 %or.cond.i.i.i.2.i, label %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = load i64, ptr %i.fo, align 16
  %i.kp = shl i64 %i.ko, 3
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kp) #38
  br label %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit

_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2.i, %bb.af
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef 384) #38
  br label %_ZN4CGAL13Convex_hull_38internal30Is_on_positive_side_of_plane_3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEESB_ED2Ev.exit

_ZN4CGAL13Convex_hull_38internal30Is_on_positive_side_of_plane_3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEESB_ED2Ev.exit: ; preds = %bb.s, %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.an

.body:                                            ; preds = %.loopexit288, %.loopexit.split-lp, %bb.r, %_ZNSt8_Rb_treeIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairIKSU_SV_INS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiEESt10_Select1stIS12_ESt4lessISU_ESaIS12_EE10_Auto_nodeD2Ev.exit.i, %bb.k
  %.sroa.34.1340364 = phi ptr [ %.sroa.34.1340, %bb.k ], [ %.sroa.34.1340, %_ZNSt8_Rb_treeIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairIKSU_SV_INS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiEESt10_Select1stIS12_ESt4lessISU_ESaIS12_EE10_Auto_nodeD2Ev.exit.i ], [ %.sroa.34.1340, %bb.r ], [ %.sroa.18.1341, %.loopexit288 ], [ %.sroa.18.1341, %.loopexit.split-lp ]
  %.pn40 = phi { ptr, i32 } [ %i.ec, %bb.k ], [ %i.fm, %_ZNSt8_Rb_treeIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairIKSU_SV_INS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiEESt10_Select1stIS12_ESt4lessISU_ESaIS12_EE10_Auto_nodeD2Ev.exit.i ], [ %i.fn, %bb.r ], [ %lpad.loopexit, %.loopexit288 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4CGAL13Convex_hull_38internal30Is_on_positive_side_of_plane_3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEESB_ED2Ev(ptr noundef nonnull align 16 dead_on_return(216) dereferenceable(216) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZNSt6vectorIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESaISU_EED2Ev.exit132

bb.ag:                                            ; preds = %bb.b
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i89, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !322
  %i.ks = icmp eq ptr %i.ap, %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i89, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = icmp eq ptr %i.ap, %i.ku
  %..i107 = select i1 %i.kv, i32 1, i32 2
  %.0.i108 = select i1 %i.ks, i32 0, i32 %..i107  ; 2 uses
  %i.kw = zext nneg i32 %.0.i108 to i64           ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE6cw_mapE, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !25
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i89, i64 %i.kz
  %.sroa.0.0.copyload.i109 = load ptr, ptr %i.la, align 8, !tbaa !333 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i109, i64 8
  store i32 2, ptr %i.lb, align 4, !tbaa !25
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE7ccw_mapE, i64 %i.kw
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !25
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i89, i64 %i.le
  %.sroa.0.0.copyload.i110 = load ptr, ptr %i.lf, align 8, !tbaa !333
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i110, i64 8
  store i32 2, ptr %i.lg, align 4, !tbaa !25
  %i.lh = ptrtoint ptr %.sroa.0.0.copyload.i89 to i64
  %i.li = ptrtoint ptr %.sroa.0.0.copyload.i109 to i64
  %i.lj = load ptr, ptr %i.w, align 8, !tbaa !1401 ; 2 uses
  %.not10.i.i.i.i112 = icmp eq ptr %i.lj, null
  br i1 %.not10.i.i.i.i112, label %.critedge.i126, label %.lr.ph.i.i.i.i113

.lr.ph.i.i.i.i113:                                ; preds = %bb.ag, %.lr.ph.i.i.i.i113
  %.012.i.i.i.i114 = phi ptr [ %.1.i.i.i.i119, %.lr.ph.i.i.i.i113 ], [ %i.lj, %bb.ag ] ; 3 uses
  %.0811.i.i.i.i115 = phi ptr [ %.19.i.i.i.i116, %.lr.ph.i.i.i.i113 ], [ %i.x, %bb.ag ]
  %i.lk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i114, i64 32
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !1422
  %i.lm = icmp ult ptr %i.ll, %.sroa.0.0.copyload.i109 ; 2 uses
  %.19.i.i.i.i116 = select i1 %i.lm, ptr %.0811.i.i.i.i115, ptr %.012.i.i.i.i114 ; 5 uses
  %.1.in.v.i.i.i.i117 = select i1 %i.lm, i64 24, i64 16
  %.1.in.i.i.i.i118 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i114, i64 %.1.in.v.i.i.i.i117
  %.1.i.i.i.i119 = load ptr, ptr %.1.in.i.i.i.i118, align 8, !tbaa !1424 ; 2 uses
  %.not.i.i.i.i120 = icmp eq ptr %.1.i.i.i.i119, null
  br i1 %.not.i.i.i.i120, label %_ZNSt3mapIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairINS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiESt4lessISU_ESaISV_IKSU_S10_EEE11lower_boundERS13_.exit.i121, label %.lr.ph.i.i.i.i113, !llvm.loop !1425

_ZNSt3mapIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairINS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiESt4lessISU_ESaISV_IKSU_S10_EEE11lower_boundERS13_.exit.i121: ; preds = %.lr.ph.i.i.i.i113
  %i.ln = icmp eq ptr %.19.i.i.i.i116, %i.x
  br i1 %i.ln, label %.critedge.i126, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt3mapIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairINS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiESt4lessISU_ESaISV_IKSU_S10_EEE11lower_boundERS13_.exit.i121
  %i.lo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i116, i64 32
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !1422
  %i.lq = icmp ult ptr %.sroa.0.0.copyload.i109, %i.lp
  br i1 %i.lq, label %.critedge.i126, label %bb.an

.critedge.i126:                                   ; preds = %bb.ah, %_ZNSt3mapIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairINS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiESt4lessISU_ESaISV_IKSU_S10_EEE11lower_boundERS13_.exit.i121, %bb.ag
  %.08.lcssa.i.i.i14.i127 = phi ptr [ %.19.i.i.i.i116, %bb.ah ], [ %.19.i.i.i.i116, %_ZNSt3mapIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairINS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiESt4lessISU_ESaISV_IKSU_S10_EEE11lower_boundERS13_.exit.i121 ], [ %i.x, %bb.ag ]
  %i.lr = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #40
          to label %.noexc154 unwind label %bb.am ; 6 uses

.noexc154:                                        ; preds = %.critedge.i126
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 32 ; 3 uses
  store i64 %i.li, ptr %i.ls, align 8, !tbaa !333
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 40
  store i64 %i.lh, ptr %i.lt, align 8
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lr, i64 48
  store i32 %.0.i108, ptr %.sroa.8.8..sroa_idx, align 8
  %i.lu = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairIKSU_SV_INS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiEESt10_Select1stIS12_ESt4lessISU_ESaIS12_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS12_ERSW_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr %.08.lcssa.i.i.i14.i127, ptr noundef nonnull align 8 dereferenceable(8) %i.ls)
          to label %bb.ai unwind label %_ZNSt8_Rb_treeIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairIKSU_SV_INS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiEESt10_Select1stIS12_ESt4lessISU_ESaIS12_EE10_Auto_nodeD2Ev.exit.i148 ; 2 uses

bb.ai:                                            ; preds = %.noexc154
  %i.lv = extractvalue { ptr, ptr } %i.lu, 1      ; 4 uses
  %.not.i149 = icmp eq ptr %i.lv, null
  br i1 %.not.i149, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.lw = extractvalue { ptr, ptr } %i.lu, 0
  %.not.i.i.i150 = icmp ne ptr %i.lw, null
  %i.lx = icmp eq ptr %i.lv, %i.x
  %or.cond.i.i.i151 = select i1 %.not.i.i.i150, i1 true, i1 %i.lx
  br i1 %or.cond.i.i.i151, label %.thread.i152, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 32
  %i.lz = load ptr, ptr %i.ls, align 8, !tbaa !1422
  %i.ma = load ptr, ptr %i.ly, align 8, !tbaa !1422
  %i.mb = icmp ult ptr %i.lz, %i.ma
  br label %.thread.i152

.thread.i152:                                     ; preds = %bb.ak, %bb.aj
  %i.mc = phi i1 [ %i.mb, %bb.ak ], [ true, %bb.aj ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.mc, ptr noundef nonnull %i.lr, ptr noundef nonnull %i.lv, ptr noundef nonnull align 8 dereferenceable(32) %i.x) #28
  %i.md = load i64, ptr %i.y, align 8, !tbaa !1404
  %i.me = add i64 %i.md, 1
  store i64 %i.me, ptr %i.y, align 8, !tbaa !1404
  br label %bb.an

_ZNSt8_Rb_treeIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairIKSU_SV_INS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiEESt10_Select1stIS12_ESt4lessISU_ESaIS12_EE10_Auto_nodeD2Ev.exit.i148: ; preds = %.noexc154
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.lr, i64 noundef 56) #38
  br label %_ZNSt6vectorIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESaISU_EED2Ev.exit132

bb.al:                                            ; preds = %bb.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.lr, i64 noundef 56) #38
  br label %bb.an

bb.am:                                            ; preds = %.critedge.i126
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESaISU_EED2Ev.exit132

bb.an:                                            ; preds = %.thread.i152, %bb.al, %bb.ah, %bb.b, %_ZN4CGAL13Convex_hull_38internal30Is_on_positive_side_of_plane_3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEESB_ED2Ev.exit
  %.sroa.34.4 = phi ptr [ %.sroa.34.3, %_ZN4CGAL13Convex_hull_38internal30Is_on_positive_side_of_plane_3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEESB_ED2Ev.exit ], [ %.sroa.34.1340, %bb.b ], [ %.sroa.34.1340, %bb.ah ], [ %.sroa.34.1340, %bb.al ], [ %.sroa.34.1340, %.thread.i152 ] ; 4 uses
  %.sroa.18.4 = phi ptr [ %.sroa.18.3, %_ZN4CGAL13Convex_hull_38internal30Is_on_positive_side_of_plane_3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEESB_ED2Ev.exit ], [ %.sroa.18.1341, %bb.b ], [ %.sroa.18.1341, %bb.ah ], [ %.sroa.18.1341, %bb.al ], [ %.sroa.18.1341, %.thread.i152 ] ; 4 uses
  %.sroa.0225.4 = phi ptr [ %.sroa.0225.3, %_ZN4CGAL13Convex_hull_38internal30Is_on_positive_side_of_plane_3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEESB_ED2Ev.exit ], [ %.sroa.0225.1342, %bb.b ], [ %.sroa.0225.1342, %bb.ah ], [ %.sroa.0225.1342, %bb.al ], [ %.sroa.0225.1342, %.thread.i152 ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !1520

_ZNSt6vectorIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESaISU_EED2Ev.exit: ; preds = %bb.ar, %.preheader
  %.sroa.0225.0.lcssa391 = phi ptr [ %.sroa.0225.4, %.preheader ], [ %.sroa.0225.0.lcssa390, %bb.ar ] ; 2 uses
  %.sroa.34.0.lcssa388 = phi ptr [ %.sroa.34.4, %.preheader ], [ %.sroa.34.0.lcssa387, %bb.ar ]
  %i.mh = ptrtoint ptr %.sroa.34.0.lcssa388 to i64
  %i.mi = ptrtoint ptr %.sroa.0225.0.lcssa391 to i64
  %i.mj = sub i64 %i.mh, %i.mi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0225.0.lcssa391, i64 noundef %i.mj) #38
  ret void

bb.ao:                                            ; preds = %.lr.ph, %bb.ar
  %.sroa.0158.0353 = phi ptr [ %.sroa.0225.0.lcssa390, %.lr.ph ], [ %i.mu, %bb.ar ] ; 2 uses
  %i.mk = load ptr, ptr %.sroa.0158.0353, align 8, !tbaa !1422 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !25
  %.not = icmp eq i32 %i.mm, 2
  br i1 %.not, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mn = load ptr, ptr %i.am, align 8, !tbaa !320
  %i.mo = ptrtoint ptr %i.mn to i64
  %i.mp = and i64 %i.mo, -4
  %i.mq = or disjoint i64 %i.mp, 2
  %i.mr = inttoptr i64 %i.mq to ptr
  store ptr %i.mr, ptr %i.mk, align 8, !tbaa !322
  store ptr %i.mk, ptr %i.am, align 8, !tbaa !320
  %i.ms = load i64, ptr %i.an, align 8, !tbaa !321
  %i.mt = add i64 %i.ms, -1
  store i64 %i.mt, ptr %i.an, align 8, !tbaa !321
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  store i32 0, ptr %i.ml, align 4, !tbaa !25
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0158.0353, i64 8 ; 2 uses
  %.not286 = icmp eq ptr %i.mu, %.sroa.18.0.lcssa389
  br i1 %.not286, label %_ZNSt6vectorIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESaISU_EED2Ev.exit, label %bb.ao, !llvm.loop !1521

_ZNSt6vectorIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESaISU_EED2Ev.exit132: ; preds = %bb.a, %bb.am, %_ZNSt8_Rb_treeIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairIKSU_SV_INS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiEESt10_Select1stIS12_ESt4lessISU_ESaIS12_EE10_Auto_nodeD2Ev.exit.i148, %.body
  %.pn40.pn.pn.pn.pn273 = phi { ptr, i32 } [ %i.ao, %bb.a ], [ %.pn40, %.body ], [ %i.mg, %bb.am ], [ %i.mf, %_ZNSt8_Rb_treeIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairIKSU_SV_INS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiEESt10_Select1stIS12_ESt4lessISU_ESaIS12_EE10_Auto_nodeD2Ev.exit.i148 ]
  %.sroa.0225.6272 = phi ptr [ %i.a, %bb.a ], [ %.sroa.0225.1342, %.body ], [ %.sroa.0225.1342, %bb.am ], [ %.sroa.0225.1342, %_ZNSt8_Rb_treeIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairIKSU_SV_INS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiEESt10_Select1stIS12_ESt4lessISU_ESaIS12_EE10_Auto_nodeD2Ev.exit.i148 ] ; 2 uses
  %.sroa.34.6271 = phi ptr [ %i.b, %bb.a ], [ %.sroa.34.1340364, %.body ], [ %.sroa.34.1340, %bb.am ], [ %.sroa.34.1340, %_ZNSt8_Rb_treeIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_ISG_NSH_IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEESt4pairIKSU_SV_INS2_INS3_INSL_ISF_NSM_ISP_EEEESS_SS_SS_EELb0EEEiEESt10_Select1stIS12_ESt4lessISU_ESaIS12_EE10_Auto_nodeD2Ev.exit.i148 ]
  %i.mv = ptrtoint ptr %.sroa.34.6271 to i64
  %i.mw = ptrtoint ptr %.sroa.0225.6272 to i64
  %i.mx = sub i64 %i.mv, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0225.6272, i64 noundef %i.mx) #38
  resume { ptr, i32 } %.pn40.pn.pn.pn.pn273
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL13Convex_hull_38internal22partition_outside_setsINS_8internal11CC_iteratorINS_17Compact_containerINS_23Convex_hull_face_base_2INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS8_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3ISG_EENS_30Triangulation_ds_vertex_base_2IvEEEENS6_ISG_NSH_IvEEEEEEEEEENS_7DefaultESU_SU_EELb0EEESG_NS_7Point_3IS8_EEEEvRKNSt7__cxx114listIT_SaIS11_EEERNS10_IT1_SaIS16_EEERS13_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #29 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.CGAL::Convex_hull_3::internal::Is_on_positive_side_of_plane_3", align 16 ; 19 uses
  %.sroa.046.058 = load ptr, ptr %0, align 8, !tbaa !286 ; 3 uses
  %.not59 = icmp eq ptr %.sroa.046.058, %0
  br i1 %.not59, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 112
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4CGAL13Convex_hull_38internal30Is_on_positive_side_of_plane_3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEESB_ED2Ev.exit
  %.sroa.046.060 = phi ptr [ %.sroa.046.058, %.lr.ph ], [ %.sroa.046.0, %_ZN4CGAL13Convex_hull_38internal30Is_on_positive_side_of_plane_3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEESB_ED2Ev.exit ] ; 3 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !286    ; 2 uses
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.046.060, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !342  ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %.sroa.0.0.copyload.i23 = load ptr, ptr %i.t, align 8, !tbaa !333 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i23, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i24 = load ptr, ptr %i.v, align 8, !tbaa !333
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i24, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.0.0.copyload.i25 = load ptr, ptr %i.x, align 8, !tbaa !333
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i25, i64 16
  store ptr %i.u, ptr %i.a, align 8, !tbaa !561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  store <2 x double> <double -0.000000e+00, double +inf>, ptr %i.d, align 16
  store <2 x double> <double -0.000000e+00, double 0.000000e+00>, ptr %.sroa.4.0..sroa_idx.i, align 16
  store <2 x double> <double -0.000000e+00, double 0.000000e+00>, ptr %.sroa.5.0..sroa_idx.i, align 16
  %i.z = load double, ptr %i.f, align 16, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i23, i64 32
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %i.ac = fsub double %i.z, %i.ab                 ; 2 uses
  %i.ad = load double, ptr %i.g, align 8, !tbaa !36
  %i.ae = fsub double %i.ad, %i.ab                ; 2 uses
  %i.af = fneg double %i.ac
  %i.ag = load <2 x double>, ptr %i.b, align 16, !tbaa !36
  %i.ah = load <2 x double>, ptr %i.u, align 8, !tbaa !36 ; 2 uses
  %i.ai = fsub <2 x double> %i.ag, %i.ah          ; 4 uses
  %i.aj = load <2 x double>, ptr %i.c, align 8, !tbaa !36
  %i.ak = fsub <2 x double> %i.aj, %i.ah          ; 4 uses
  %i.al = insertelement <2 x double> poison, double %i.af, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x double> %i.ak, %i.am
  %i.ao = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ap, <2 x double> %i.an)
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ar, ptr %i.h, align 8, !tbaa !36
  %i.as = extractelement <2 x double> %i.ai, i64 1
  %i.at = fneg double %i.as
  %i.au = extractelement <2 x double> %i.ak, i64 0
  %i.av = fmul double %i.au, %i.at
  %i.aw = extractelement <2 x double> %i.ai, i64 0
  %i.ax = extractelement <2 x double> %i.ak, i64 1
  %i.ay = call double @llvm.fmuladd.f64(double %i.aw, double %i.ax, double %i.av)
  store double %i.ay, ptr %i.i, align 8, !tbaa !563
  %i.az = call noundef double @llvm.fabs.f64(double %i.ae) ; 2 uses
  %i.ba = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ak) ; 2 uses
  %i.bb = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ai) ; 2 uses
  %i.bc = fcmp olt <2 x double> %i.bb, %i.ba
  %i.bd = select <2 x i1> %i.bc, <2 x double> %i.ba, <2 x double> %i.bb
  store <2 x double> %i.bd, ptr %i.j, align 16, !tbaa !36
  %i.be = call noundef double @llvm.fabs.f64(double %i.ac) ; 2 uses
  %i.bf = fcmp olt double %i.be, %i.az
  %storemerge13.i = select i1 %i.bf, double %i.az, double %i.be
  store double %storemerge13.i, ptr %i.k, align 16, !tbaa !578
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt7__cxx114listIN4CGAL7Point_3INS1_5EpickEEESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_S8_.exit
  %.sroa.042.057 = phi ptr [ %i.p, %bb.c ], [ %i.bk, %_ZNSt7__cxx114listIN4CGAL7Point_3INS1_5EpickEEESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_S8_.exit ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.042.057, i64 16
  %i.bj = invoke noundef zeroext i1 @_ZNK4CGAL13Convex_hull_38internal30Is_on_positive_side_of_plane_3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEESB_EclERKNS_7Point_3IS4_EE(ptr noundef nonnull align 16 dereferenceable(216) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %bb.e unwind label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.bk = load ptr, ptr %.sroa.042.057, align 8, !tbaa !286 ; 4 uses
  br i1 %i.bj, label %bb.f, label %_ZNSt7__cxx114listIN4CGAL7Point_3INS1_5EpickEEESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_S8_.exit

bb.f:                                             ; preds = %bb.e
  %i.bl = icmp eq ptr %i.bg, %.sroa.042.057
  %i.bm = icmp eq ptr %i.bg, %i.bk
  %or.cond.i.i = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %or.cond.i.i, label %_ZNSt7__cxx114listIN4CGAL7Point_3INS1_5EpickEEESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_S8_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull %.sroa.042.057, ptr noundef %i.bk) #28
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !289
  %i.bo = add i64 %i.bn, 1
  store i64 %i.bo, ptr %i.bh, align 8, !tbaa !289
  %i.bp = load i64, ptr %i.l, align 8, !tbaa !289
  %i.bq = add i64 %i.bp, -1
  store i64 %i.bq, ptr %i.l, align 8, !tbaa !289
  br label %_ZNSt7__cxx114listIN4CGAL7Point_3INS1_5EpickEEESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_S8_.exit

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4CGAL13Convex_hull_38internal30Is_on_positive_side_of_plane_3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEESB_ED2Ev(ptr noundef nonnull align 16 dead_on_return(216) dereferenceable(216) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %lpad.phi

_ZNSt7__cxx114listIN4CGAL7Point_3INS1_5EpickEEESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_S8_.exit: ; preds = %bb.e, %bb.g, %bb.f
  %.not53 = icmp eq ptr %i.bk, %1
  br i1 %.not53, label %bb.i, label %bb.d, !llvm.loop !1522

bb.i:                                             ; preds = %_ZNSt7__cxx114listIN4CGAL7Point_3INS1_5EpickEEESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_S8_.exit
  %i.br = load ptr, ptr %i.bg, align 8, !tbaa !286
  %i.bs = icmp eq ptr %i.br, %i.bg
  br i1 %i.bs, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #40
          to label %.lr.ph.i unwind label %.loopexit.split-lp ; 2 uses

.lr.ph.i:                                         ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 %i.s, ptr %i.bu, align 8, !tbaa !342
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %2) #28
  %i.bv = load i64, ptr %i.m, align 8, !tbaa !581
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.m, align 8, !tbaa !581
  %i.bx = load ptr, ptr %i.o, align 8, !tbaa !283
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %.lr.ph.i
  %.sink = phi ptr [ %i.bx, %.lr.ph.i ], [ %2, %bb.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store ptr %.sink, ptr %i.by, align 8, !tbaa !584
  %i.bz = load ptr, ptr %i.n, align 16, !tbaa !579 ; 4 uses
  %.not.i26 = icmp eq ptr %i.bz, null
  br i1 %.not.i26, label %_ZN4CGAL13Convex_hull_38internal30Is_on_positive_side_of_plane_3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEESB_ED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 192
  call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.ca) #28
  call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(384) %i.bz) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef 384) #38
  br label %_ZN4CGAL13Convex_hull_38internal30Is_on_positive_side_of_plane_3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEESB_ED2Ev.exit

_ZN4CGAL13Convex_hull_38internal30Is_on_positive_side_of_plane_3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEESB_ED2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.sroa.046.0 = load ptr, ptr %.sroa.046.060, align 8, !tbaa !286 ; 3 uses
  %.not = icmp eq ptr %.sroa.046.0, %0
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !1523

.critedge:                                        ; preds = %bb.b, %_ZN4CGAL13Convex_hull_38internal30Is_on_positive_side_of_plane_3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEESB_ED2Ev.exit, %bb.a
  %.sroa.046.0.lcssa = phi ptr [ %.sroa.046.058, %bb.a ], [ %.sroa.046.0, %_ZN4CGAL13Convex_hull_38internal30Is_on_positive_side_of_plane_3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEESB_ED2Ev.exit ], [ %.sroa.046.060, %bb.b ] ; 2 uses
  %.not5463 = icmp eq ptr %.sroa.046.0.lcssa, %0
  br i1 %.not5463, label %._crit_edge, label %.lr.ph65

.lr.ph65:                                         ; preds = %.critedge, %.lr.ph65
  %.sroa.046.164 = phi ptr [ %i.ce, %.lr.ph65 ], [ %.sroa.046.0.lcssa, %.critedge ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.046.164, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !322
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  store ptr %2, ptr %i.cd, align 8, !tbaa !584
end_hunk_1
begin_hunk_2_@_ZN4CGAL8internal20copy_face_graph_implINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS6_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISE_NS_28Triangulation_ds_face_base_2IvEEEEEESB_NS_17Emptyset_iteratorESO_SO_NS0_21TDS2_vertex_point_mapISI_SM_EENS0_14Point_accessorINS0_22In_place_list_iteratorINS_31HalfedgeDS_in_place_list_vertexINS_19I_Polyhedron_vertexINS_22HalfedgeDS_vertex_baseINS_21HalfedgeDS_list_typesIS6_NS_28I_Polyhedron_derived_items_3IS8_EESA_EESD_NS_7Point_3IS6_EEEEEEEESaIS14_EEES11_RS11_Lb0EEEEEvRKT_RT0_T1_T2_T3_T4_T5_:bb.a
  %i.akk = phi ptr [ %i.aki, %bb.ff ], [ %i.akt, %bb.fh ] ; 4 uses
  %i.akl = icmp eq i64 %i.akb, %i.akj
  br i1 %i.akl, label %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.i.i.i.i.i547, label %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.thread.i.i.i.i.i528

_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.i.i.i.i.i547: ; preds = %bb.fg
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akk, i64 8
  %i.akn = load ptr, ptr %i.akm, align 8, !tbaa !322
  %i.ako = icmp eq ptr %.sroa.0.0.copyload.i.i523, %i.akn
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akk, i64 16
  %i.akq = load i32, ptr %i.akp, align 8
  %i.akr = icmp eq i32 %i.ajo, %i.akq
  %i.aks = select i1 %i.ako, i1 %i.akr, i1 false
  br i1 %i.aks, label %_ZNSt13unordered_mapIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEENS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS10_EEESt4hashISP_ESt8equal_toISP_ESaISt4pairIKSP_S12_EEE4findERS18_.exit.i548, label %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.thread.i.i.i.i.i528

_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.thread.i.i.i.i.i528: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.i.i.i.i.i547, %bb.fg
  %i.akt = load ptr, ptr %i.akk, align 8, !tbaa !1574 ; 3 uses
  %.not18.i.i.i.i.i529 = icmp eq ptr %i.akt, null
  br i1 %.not18.i.i.i.i.i529, label %.loopexit.i531, label %bb.fh

bb.fh:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.thread.i.i.i.i.i528
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 32
  %i.akv = load i64, ptr %i.aku, align 8, !tbaa !1575 ; 2 uses
  %i.akw = urem i64 %i.akv, %i.akd
  %.not19.i.i.i.i.i530 = icmp eq i64 %i.akw, %i.ake
  br i1 %.not19.i.i.i.i.i530, label %bb.fg, label %.loopexit.i531, !llvm.loop !1577

.loopexit.loopexit.i553:                          ; preds = %bb.fc
  %.phi.trans.insert.i554 = getelementptr inbounds nuw i8, ptr %i.ajq, i64 8
  %.pre.i555 = load i64, ptr %.phi.trans.insert.i554, align 8, !tbaa !1541 ; 2 uses
  %.pre31.i556 = load ptr, ptr %i.ajq, align 8, !tbaa !1533
  %.pre33.i558 = lshr i64 %i.ajp, 6               ; 2 uses
  %.pre35.i559 = urem i64 %.pre33.i558, %.pre.i555 ; 2 uses
  %.phi.trans.insert1798 = getelementptr inbounds nuw [8 x i8], ptr %.pre31.i556, i64 %.pre35.i559
  %.pre1799 = load ptr, ptr %.phi.trans.insert1798, align 8, !tbaa !1573
  br label %.loopexit.i531

.loopexit.i531:                                   ; preds = %bb.fh, %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.thread.i.i.i.i.i528, %.loopexit.loopexit.i553
  %i.akx = phi ptr [ %.pre1799, %.loopexit.loopexit.i553 ], [ %i.akh, %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.thread.i.i.i.i.i528 ], [ %i.akh, %bb.fh ] ; 2 uses
  %.pre-phi36.i532 = phi i64 [ %.pre35.i559, %.loopexit.loopexit.i553 ], [ %i.ake, %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.thread.i.i.i.i.i528 ], [ %i.ake, %bb.fh ] ; 4 uses
  %.pre-phi34.i533 = phi i64 [ %.pre33.i558, %.loopexit.loopexit.i553 ], [ %i.akb, %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.thread.i.i.i.i.i528 ], [ %i.akb, %bb.fh ] ; 4 uses
  %i.aky = phi i64 [ %.pre.i555, %.loopexit.loopexit.i553 ], [ %i.akd, %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.thread.i.i.i.i.i528 ], [ %i.akd, %bb.fh ]
  %.not.i.i.i.i8.i534 = icmp eq ptr %i.akx, null
  br i1 %.not.i.i.i.i8.i534, label %.loopexit.i.i.i540, label %bb.fi

bb.fi:                                            ; preds = %.loopexit.i531
  %i.akz = load ptr, ptr %i.akx, align 8, !tbaa !1574 ; 2 uses
  %.phi.trans.insert.i.i.i.i9.i535 = getelementptr inbounds nuw i8, ptr %i.akz, i64 32
  %.pre.i.i.i.i10.i536 = load i64, ptr %.phi.trans.insert.i.i.i.i9.i535, align 8, !tbaa !1575
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fk, %bb.fi
  %i.ala = phi i64 [ %.pre.i.i.i.i10.i536, %bb.fi ], [ %i.alm, %bb.fk ]
  %i.alb = phi ptr [ %i.akz, %bb.fi ], [ %i.alk, %bb.fk ] ; 4 uses
  %i.alc = icmp eq i64 %.pre-phi34.i533, %i.ala
  br i1 %i.alc, label %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.i.i.i.i14.i546, label %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.thread.i.i.i.i11.i537

_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.i.i.i.i14.i546: ; preds = %bb.fj
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !322
  %i.alf = icmp eq ptr %.sroa.0.0.copyload.i.i523, %i.ale
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alb, i64 16
  %i.alh = load i32, ptr %i.alg, align 8
  %i.ali = icmp eq i32 %i.ajo, %i.alh
  %i.alj = select i1 %i.alf, i1 %i.ali, i1 false
  br i1 %i.alj, label %_ZNSt13unordered_mapIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEENS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS10_EEESt4hashISP_ESt8equal_toISP_ESaISt4pairIKSP_S12_EEEixERS18_.exit.i542, label %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.thread.i.i.i.i11.i537

_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.thread.i.i.i.i11.i537: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.i.i.i.i14.i546, %bb.fj
  %i.alk = load ptr, ptr %i.alb, align 8, !tbaa !1574 ; 3 uses
  %.not18.i.i.i.i12.i538 = icmp eq ptr %i.alk, null
  br i1 %.not18.i.i.i.i12.i538, label %.loopexit.i.i.i540, label %bb.fk

bb.fk:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.thread.i.i.i.i11.i537
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 32
  %i.alm = load i64, ptr %i.all, align 8, !tbaa !1575 ; 2 uses
  %i.aln = urem i64 %i.alm, %i.aky
  %.not19.i.i.i.i13.i539 = icmp eq i64 %i.aln, %.pre-phi36.i532
  br i1 %.not19.i.i.i.i13.i539, label %bb.fj, label %.loopexit.i.i.i540, !llvm.loop !1577

.loopexit.i.i.i540:                               ; preds = %bb.fk, %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.thread.i.i.i.i11.i537, %bb.fe, %.loopexit.i531
  %.pre-phi34.i5331882 = phi i64 [ %i.akb, %bb.fe ], [ %.pre-phi34.i533, %.loopexit.i531 ], [ %.pre-phi34.i533, %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.thread.i.i.i.i11.i537 ], [ %.pre-phi34.i533, %bb.fk ]
  %.pre-phi36.i5321881 = phi i64 [ %i.ake, %bb.fe ], [ %.pre-phi36.i532, %.loopexit.i531 ], [ %.pre-phi36.i532, %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.thread.i.i.i.i11.i537 ], [ %.pre-phi36.i532, %bb.fk ]
  %i.alo = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %.noexc560 unwind label %bb.fm ; 6 uses

.noexc560:                                        ; preds = %.loopexit.i.i.i540
  store ptr null, ptr %i.alo, align 8, !tbaa !1574
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 8
  store ptr %.sroa.0.0.copyload.i.i523, ptr %i.alp, align 8
  %.sroa.7616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alo, i64 16
  store i32 %i.ajo, ptr %.sroa.7616.0..sroa_idx, align 8
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alo, i64 24
  store ptr null, ptr %i.alq, align 8, !tbaa !60
  %i.alr = invoke ptr @_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS17_10_Hash_nodeIS15_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ajq, i64 noundef %.pre-phi36.i5321881, i64 noundef %.pre-phi34.i5331882, ptr noundef nonnull %i.alo, i64 noundef 1)
          to label %_ZNSt13unordered_mapIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEENS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS10_EEESt4hashISP_ESt8equal_toISP_ESaISt4pairIKSP_S12_EEEixERS18_.exit.i542 unwind label %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i541

_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i541: ; preds = %.noexc560
  %i.als = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.alo, i64 noundef 40) #38
  br label %.body561

_ZNSt13unordered_mapIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEENS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS10_EEESt4hashISP_ESt8equal_toISP_ESaISt4pairIKSP_S12_EEEixERS18_.exit.i542: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.i.i.i.i14.i546, %.noexc560
  %.pn.i.i.i543 = phi ptr [ %i.alr, %.noexc560 ], [ %i.alb, %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.i.i.i.i14.i546 ]
  %.1.i.i.i544 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i543, i64 24
  %i.alt = load i64, ptr %i.r, align 8            ; 2 uses
  store i64 %i.alt, ptr %.1.i.i.i544, align 8, !tbaa !274
  %i.alu = inttoptr i64 %i.alt to ptr
  br label %bb.fl

_ZNSt13unordered_mapIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEENS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS10_EEESt4hashISP_ESt8equal_toISP_ESaISt4pairIKSP_S12_EEE4findERS18_.exit.i548: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.i.i.i.i.i547, %bb.fd
  %.sroa.06.1.i.i.i549 = phi ptr [ %.sroa.06.0.i.i.i551, %bb.fd ], [ %i.akk, %_ZNKSt8__detail15_Hashtable_baseIN4CGAL8internal24TDS2_halfedge_descriptorINS1_30Triangulation_data_structure_2INS1_25Convex_hull_vertex_base_2INS1_11GT3_for_CH3INS1_20Convex_hull_traits_3INS1_5EpickENS1_12Polyhedron_3IS8_NS1_18Polyhedron_items_3ENS1_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS1_30Triangulation_ds_vertex_base_2IvEEEENS1_23Convex_hull_face_base_2ISG_NS1_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSQ_NS2_22In_place_list_iteratorINS1_33HalfedgeDS_in_place_list_halfedgeINS1_21I_Polyhedron_halfedgeINS1_24HalfedgeDS_halfedge_baseINS1_21HalfedgeDS_list_typesIS8_NS1_28I_Polyhedron_derived_items_3ISA_EESC_EESF_SF_SF_EEEEEESaIS13_EEEENS_10_Select1stESt8equal_toISQ_ESt4hashISQ_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERSS_mRKNS_16_Hash_node_valueIS16_Lb1EEE.exit.i.i.i.i.i547 ]
  %i.alv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i549, i64 24
  %.sroa.08.0.copyload.pre = load ptr, ptr %i.alv, align 8, !tbaa !274
  br label %bb.fl

bb.fl:                                            ; preds = %_ZNSt13unordered_mapIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEENS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS10_EEESt4hashISP_ESt8equal_toISP_ESaISt4pairIKSP_S12_EEEixERS18_.exit.i542, %_ZNSt13unordered_mapIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEENS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS10_EEESt4hashISP_ESt8equal_toISP_ESaISt4pairIKSP_S12_EEE4findERS18_.exit.i548
  %.sroa.08.0.copyload = phi ptr [ %i.alu, %_ZNSt13unordered_mapIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEENS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS10_EEESt4hashISP_ESt8equal_toISP_ESaISt4pairIKSP_S12_EEEixERS18_.exit.i542 ], [ %.sroa.08.0.copyload.pre, %_ZNSt13unordered_mapIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEENS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS10_EEESt4hashISP_ESt8equal_toISP_ESaISt4pairIKSP_S12_EEE4findERS18_.exit.i548 ]
  %i.alw = getelementptr inbounds nuw i8, ptr %.sroa.08.0.copyload, i64 24
  %.sroa.0.0.copyload.i.i564 = load ptr, ptr %i.alw, align 8, !tbaa !586
  %i.alx = icmp eq ptr %.sroa.0621.01462, null
  br i1 %i.alx, label %.loopexit, label %_ZNK4CGAL31Halfedge_around_target_iteratorINS_12Polyhedron_3INS_5EpickENS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEEEneERKS7_.exit.thread

bb.fm:                                            ; preds = %.loopexit.i599, %.loopexit.i.i.i540
  %i.aly = landingpad { ptr, i32 }
          cleanup
  br label %.body561

_ZNK4CGAL31Halfedge_around_target_iteratorINS_12Polyhedron_3INS_5EpickENS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEEEneERKS7_.exit.thread: ; preds = %bb.fl, %_ZNK4CGAL31Halfedge_around_target_iteratorINS_12Polyhedron_3INS_5EpickENS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEEEneERKS7_.exit.thread
  %.sroa.5607.01459 = phi ptr [ %.sroa.0.0.copyload.i.i3.i, %_ZNK4CGAL31Halfedge_around_target_iteratorINS_12Polyhedron_3INS_5EpickENS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEEEneERKS7_.exit.thread ], [ %.sroa.0621.01462, %bb.fl ] ; 2 uses
  %.sroa.10.01458 = phi i32 [ %spec.select1012, %_ZNK4CGAL31Halfedge_around_target_iteratorINS_12Polyhedron_3INS_5EpickENS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEEEneERKS7_.exit.thread ], [ 0, %bb.fl ]
  %i.alz = getelementptr inbounds nuw i8, ptr %.sroa.5607.01459, i64 24
  store ptr %.sroa.0.0.copyload.i.i564, ptr %i.alz, align 8, !tbaa !586
  %i.ama = getelementptr inbounds nuw i8, ptr %.sroa.5607.01459, i64 8
  %.sroa.0.0.copyload.i.i.i567 = load ptr, ptr %i.ama, align 8, !tbaa !274
  %.sroa.0.0.copyload.i.i3.i = load ptr, ptr %.sroa.0.0.copyload.i.i.i567, align 8, !tbaa !274 ; 3 uses
  %i.amb = icmp eq ptr %.sroa.0.0.copyload.i.i3.i, %.sroa.0621.01462
  %i.amc = zext i1 %i.amb to i32
  %spec.select1012 = add nuw nsw i32 %.sroa.10.01458, %i.amc ; 2 uses
  %i.amd = icmp ne ptr %.sroa.0.0.copyload.i.i3.i, %.sroa.0621.01462
  %i.ame = icmp ne i32 %spec.select1012, 1
  %or.cond1011 = select i1 %i.amd, i1 true, i1 %i.ame
  br i1 %or.cond1011, label %_ZNK4CGAL31Halfedge_around_target_iteratorINS_12Polyhedron_3INS_5EpickENS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEEEneERKS7_.exit.thread, label %.loopexit

.loopexit:                                        ; preds = %_ZNK4CGAL31Halfedge_around_target_iteratorINS_12Polyhedron_3INS_5EpickENS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEEEneERKS7_.exit.thread, %bb.fl, %bb.eo
  br i1 %i.agl, label %bb.eo, label %bb.en, !llvm.loop !1652

._crit_edge1466:                                  ; preds = %bb.en, %.preheader1023
  %i.amf = load ptr, ptr %i.acr, align 8, !tbaa !1548 ; 8 uses
  %.not.i.i.i569 = icmp eq ptr %i.amf, null
  br i1 %.not.i.i.i569, label %_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit, label %bb.fn

bb.fn:                                            ; preds = %._crit_edge1466
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 8 ; 4 uses
  %i.amh = load atomic i64, ptr %i.amg acquire, align 8 ; 2 uses
  %i.ami = icmp eq i64 %i.amh, 4294967297
  %i.amj = trunc i64 %i.amh to i32                ; 2 uses
  br i1 %i.ami, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  store i32 0, ptr %i.amg, align 8, !tbaa !1549
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amf, i64 12
  store i32 0, ptr %i.amk, align 4, !tbaa !1551
  %i.aml = load ptr, ptr %i.amf, align 8, !tbaa !20
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 16
  %i.amn = load ptr, ptr %i.amm, align 8
  call void %i.amn(ptr noundef nonnull align 8 dereferenceable(16) %i.amf) #28, !inline_history !1653
  %i.amo = load ptr, ptr %i.amf, align 8, !tbaa !20
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 24
  %i.amq = load ptr, ptr %i.amp, align 8
  call void %i.amq(ptr noundef nonnull align 8 dereferenceable(16) %i.amf) #28, !inline_history !1653
  br label %_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit

bb.fp:                                            ; preds = %bb.fn
  %i.amr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !146
  %.not.i.i.i.i570 = icmp eq i8 %i.amr, 0
  br i1 %.not.i.i.i.i570, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.ams = add nsw i32 %i.amj, -1
  store i32 %i.ams, ptr %i.amg, align 8, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.fr:                                            ; preds = %bb.fp
  %i.amt = atomicrmw volatile add ptr %i.amg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.fr, %bb.fq
  %.0.i.i.i.i.i = phi i32 [ %i.amj, %bb.fq ], [ %i.amt, %bb.fr ]
  %i.amu = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.amu, label %bb.fs, label %_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit, !prof !218

bb.fs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.amf) #28
  br label %_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit

_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit: ; preds = %._crit_edge1466, %bb.fo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.loopexit1028

.body561:                                         ; preds = %bb.fm, %_ZNSt10_HashtableIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESt4pairIKSJ_NS1_24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3IS7_NS0_12Polyhedron_3IS7_S9_NS0_18HalfedgeDS_defaultESB_EESE_EEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISU_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISJ_ESt4hashISJ_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i541, %bb.em
  %.pn188.pn.pn.pn = phi { ptr, i32 } [ %i.aiu, %_ZNSt10_HashtableIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESt4pairIKSJ_NS1_24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3IS7_NS0_12Polyhedron_3IS7_S9_NS0_18HalfedgeDS_defaultESB_EESE_EEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISU_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISJ_ESt4hashISJ_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i ], [ %i.agj, %bb.em ], [ %i.aly, %bb.fm ], [ %i.als, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i541 ] ; 4 uses
  %i.amv = load ptr, ptr %i.acr, align 8, !tbaa !1548 ; 8 uses
  %.not.i.i.i571 = icmp eq ptr %i.amv, null
  br i1 %.not.i.i.i571, label %_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit575, label %bb.ft

bb.ft:                                            ; preds = %.body561
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 8 ; 4 uses
  %i.amx = load atomic i64, ptr %i.amw acquire, align 8 ; 2 uses
  %i.amy = icmp eq i64 %i.amx, 4294967297
  %i.amz = trunc i64 %i.amx to i32                ; 2 uses
  br i1 %i.amy, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  store i32 0, ptr %i.amw, align 8, !tbaa !1549
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amv, i64 12
  store i32 0, ptr %i.ana, align 4, !tbaa !1551
  %i.anb = load ptr, ptr %i.amv, align 8, !tbaa !20
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 16
  %i.and = load ptr, ptr %i.anc, align 8
  call void %i.and(ptr noundef nonnull align 8 dereferenceable(16) %i.amv) #28, !inline_history !1653
  %i.ane = load ptr, ptr %i.amv, align 8, !tbaa !20
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 24
  %i.ang = load ptr, ptr %i.anf, align 8
  call void %i.ang(ptr noundef nonnull align 8 dereferenceable(16) %i.amv) #28, !inline_history !1653
  br label %_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit575

bb.fv:                                            ; preds = %bb.ft
  %i.anh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !146
  %.not.i.i.i.i572 = icmp eq i8 %i.anh, 0
  br i1 %.not.i.i.i.i572, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ani = add nsw i32 %i.amz, -1
  store i32 %i.ani, ptr %i.amw, align 8, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i573

bb.fx:                                            ; preds = %bb.fv
  %i.anj = atomicrmw volatile add ptr %i.amw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i573

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i573: ; preds = %bb.fx, %bb.fw
  %.0.i.i.i.i.i574 = phi i32 [ %i.amz, %bb.fw ], [ %i.anj, %bb.fx ]
  %i.ank = icmp eq i32 %.0.i.i.i.i.i574, 1
  br i1 %i.ank, label %bb.fy, label %_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit575, !prof !218

bb.fy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i573
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.amv) #28
  br label %_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit575

_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit575: ; preds = %bb.fy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i573, %bb.fu, %.body561, %bb.ef
  %.pn188.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aeo, %bb.ef ], [ %.pn188.pn.pn.pn, %.body561 ], [ %.pn188.pn.pn.pn, %bb.fu ], [ %.pn188.pn.pn.pn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i573 ], [ %.pn188.pn.pn.pn, %bb.fy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.body409

bb.fz:                                            ; preds = %bb.dt
  %i.anl = getelementptr inbounds nuw i8, ptr %.sroa.0662.01452, i64 8 ; 2 uses
  %.not1016 = icmp eq ptr %i.anl, %.sroa.12918.0.lcssa
  br i1 %.not1016, label %.loopexit1028, label %.lr.ph1453, !llvm.loop !1654

.loopexit1028:                                    ; preds = %bb.fz, %.preheader1027, %_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit
  %.not.i.i.i576 = icmp eq ptr %.sroa.0892.0.lcssa, null
  br i1 %.not.i.i.i576, label %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit, label %bb.ga

bb.ga:                                            ; preds = %.loopexit1028
  %i.anm = ptrtoint ptr %.sroa.24904.0.lcssa to i64
  %i.ann = ptrtoint ptr %.sroa.0892.0.lcssa to i64
  %i.ano = sub i64 %i.anm, %i.ann
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0892.0.lcssa, i64 noundef %i.ano) #38
  br label %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit

_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit: ; preds = %.loopexit1028, %bb.ga
  %.not.i.i.i577 = icmp eq ptr %.sroa.0912.0.lcssa, null
  br i1 %.not.i.i.i577, label %_ZNSt6vectorIN4CGAL8internal8HDS_edgeINS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESF_SF_EEEEEESaISI_EEEEESaISL_EED2Ev.exit, label %bb.gb

bb.gb:                                            ; preds = %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit
  %i.anp = ptrtoint ptr %.sroa.20923.0.lcssa to i64
  %i.anq = ptrtoint ptr %.sroa.0912.0.lcssa to i64
  %i.anr = sub i64 %i.anp, %i.anq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0912.0.lcssa, i64 noundef %i.anr) #38
  br label %_ZNSt6vectorIN4CGAL8internal8HDS_edgeINS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESF_SF_EEEEEESaISI_EEEEESaISL_EED2Ev.exit

_ZNSt6vectorIN4CGAL8internal8HDS_edgeINS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESF_SF_EEEEEESaISI_EEEEESaISL_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit, %bb.gb
  %.not.i.i.i578 = icmp eq ptr %.sroa.0932.0.lcssa, null
  br i1 %.not.i.i.i578, label %_ZNSt6vectorIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESaISP_EED2Ev.exit, label %bb.gc

bb.gc:                                            ; preds = %_ZNSt6vectorIN4CGAL8internal8HDS_edgeINS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESF_SF_EEEEEESaISI_EEEEESaISL_EED2Ev.exit
  %i.ans = ptrtoint ptr %.sroa.19941.0.lcssa to i64
  %i.ant = ptrtoint ptr %.sroa.0932.0.lcssa to i64
  %i.anu = sub i64 %i.ans, %i.ant
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0932.0.lcssa, i64 noundef %i.anu) #38
  br label %_ZNSt6vectorIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESaISP_EED2Ev.exit

_ZNSt6vectorIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESaISP_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL8internal8HDS_edgeINS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESF_SF_EEEEEESaISI_EEEEESaISL_EED2Ev.exit, %bb.gc
  %.not.i.i.i579 = icmp eq ptr %.sroa.0947.0.lcssa, null
  br i1 %.not.i.i.i579, label %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit580, label %bb.gd

bb.gd:                                            ; preds = %_ZNSt6vectorIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESaISP_EED2Ev.exit
  %i.anv = ptrtoint ptr %.sroa.19956.0.lcssa to i64
  %i.anw = sub i64 %i.anv, %i.vf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0947.0.lcssa, i64 noundef %i.anw) #38
  br label %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit580

_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit580: ; preds = %_ZNSt6vectorIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESaISP_EED2Ev.exit, %bb.gd
  %i.anx = load ptr, ptr %i.g, align 8, !tbaa !1548 ; 8 uses
  %.not.i.i.i581 = icmp eq ptr %i.anx, null
  br i1 %.not.i.i.i581, label %_ZN4CGAL8internal20Dynamic_property_mapINS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS7_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISF_NS_28Triangulation_ds_face_base_2IvEEEEEEEENS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesIS7_NS_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS10_EEEED2Ev.exit, label %bb.ge

bb.ge:                                            ; preds = %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit580
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 8 ; 4 uses
  %i.anz = load atomic i64, ptr %i.any acquire, align 8 ; 2 uses
  %i.aoa = icmp eq i64 %i.anz, 4294967297
  %i.aob = trunc i64 %i.anz to i32                ; 2 uses
  br i1 %i.aoa, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  store i32 0, ptr %i.any, align 8, !tbaa !1549
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anx, i64 12
  store i32 0, ptr %i.aoc, align 4, !tbaa !1551
  %i.aod = load ptr, ptr %i.anx, align 8, !tbaa !20
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 16
  %i.aof = load ptr, ptr %i.aoe, align 8
  call void %i.aof(ptr noundef nonnull align 8 dereferenceable(16) %i.anx) #28, !inline_history !1655
  %i.aog = load ptr, ptr %i.anx, align 8, !tbaa !20
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 24
  %i.aoi = load ptr, ptr %i.aoh, align 8
  call void %i.aoi(ptr noundef nonnull align 8 dereferenceable(16) %i.anx) #28, !inline_history !1655
  br label %_ZN4CGAL8internal20Dynamic_property_mapINS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS7_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISF_NS_28Triangulation_ds_face_base_2IvEEEEEEEENS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesIS7_NS_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS10_EEEED2Ev.exit

bb.gg:                                            ; preds = %bb.ge
  %i.aoj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !146
  %.not.i.i.i.i582 = icmp eq i8 %i.aoj, 0
  br i1 %.not.i.i.i.i582, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.aok = add nsw i32 %i.aob, -1
  store i32 %i.aok, ptr %i.any, align 8, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i583

bb.gi:                                            ; preds = %bb.gg
  %i.aol = atomicrmw volatile add ptr %i.any, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i583

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i583: ; preds = %bb.gi, %bb.gh
  %.0.i.i.i.i.i584 = phi i32 [ %i.aob, %bb.gh ], [ %i.aol, %bb.gi ]
  %i.aom = icmp eq i32 %.0.i.i.i.i.i584, 1
  br i1 %i.aom, label %bb.gj, label %_ZN4CGAL8internal20Dynamic_property_mapINS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS7_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISF_NS_28Triangulation_ds_face_base_2IvEEEEEEEENS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesIS7_NS_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS10_EEEED2Ev.exit, !prof !218

bb.gj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i583
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.anx) #28
  br label %_ZN4CGAL8internal20Dynamic_property_mapINS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS7_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISF_NS_28Triangulation_ds_face_base_2IvEEEEEEEENS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesIS7_NS_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS10_EEEED2Ev.exit

_ZN4CGAL8internal20Dynamic_property_mapINS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS7_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISF_NS_28Triangulation_ds_face_base_2IvEEEEEEEENS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesIS7_NS_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS10_EEEED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit580, %bb.gf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i583, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

.body409:                                         ; preds = %.loopexit1054, %.loopexit.split-lp1055, %.loopexit1049, %.loopexit.split-lp1050, %.loopexit1040, %.loopexit.split-lp1041, %.loopexit1039, %.loopexit.split-lp, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i286, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i441, %bb.dq, %bb.cs, %bb.de, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i401, %bb.ct, %_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit575
  %.sroa.24904.6 = phi ptr [ %.sroa.24904.0.lcssa, %bb.de ], [ %.sroa.24904.0.lcssa, %bb.cs ], [ %.sroa.24904.0.lcssa, %bb.dq ], [ %.sroa.24904.0.lcssa, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i401 ], [ %.sroa.24904.0.lcssa, %_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit575 ], [ %.sroa.24904.0.lcssa, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i441 ], [ %.sroa.24904.0.lcssa, %bb.ct ], [ %.sroa.24904.01409, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i286 ], [ %.sroa.24904.01409, %.loopexit.split-lp1041 ], [ %.sroa.24904.01409, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ], [ %.sroa.14899.01410, %.loopexit.split-lp1050 ], [ %.sroa.24904.01409, %.loopexit.split-lp ], [ %.sroa.24904.01409, %.loopexit1039 ], [ %.sroa.24904.01409, %.loopexit1040 ], [ %.sroa.24904.01409.lcssa1537, %.loopexit1049 ], [ %.sroa.24904.1, %.loopexit1054 ], [ %.sroa.24904.1, %.loopexit.split-lp1055 ]
  %.sroa.0892.6 = phi ptr [ %.sroa.0892.0.lcssa, %bb.de ], [ %.sroa.0892.0.lcssa, %bb.cs ], [ %.sroa.0892.0.lcssa, %bb.dq ], [ %.sroa.0892.0.lcssa, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i401 ], [ %.sroa.0892.0.lcssa, %_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit575 ], [ %.sroa.0892.0.lcssa, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i441 ], [ %.sroa.0892.0.lcssa, %bb.ct ], [ %.sroa.0892.01411, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i286 ], [ %.sroa.0892.01411, %.loopexit.split-lp1041 ], [ %.sroa.0892.01411, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ], [ %.sroa.0892.01411, %.loopexit.split-lp1050 ], [ %.sroa.0892.01411, %.loopexit.split-lp ], [ %.sroa.0892.01411, %.loopexit1039 ], [ %.sroa.0892.01411, %.loopexit1040 ], [ %.sroa.0892.01411, %.loopexit1049 ], [ %.sroa.0892.1, %.loopexit1054 ], [ %.sroa.0892.1, %.loopexit.split-lp1055 ] ; 3 uses
  %.sroa.20923.3 = phi ptr [ %.sroa.20923.0.lcssa, %bb.de ], [ %.sroa.20923.0.lcssa, %bb.cs ], [ %.sroa.20923.0.lcssa, %bb.dq ], [ %.sroa.20923.0.lcssa, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i401 ], [ %.sroa.20923.0.lcssa, %_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit575 ], [ %.sroa.20923.0.lcssa, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i441 ], [ %.sroa.20923.0.lcssa, %bb.ct ], [ %.sroa.20923.5, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i286 ], [ %.sroa.20923.5, %.loopexit.split-lp1041 ], [ %.sroa.20923.5, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ], [ %.sroa.20923.5, %.loopexit.split-lp1050 ], [ %.sroa.12918.01413, %.loopexit.split-lp ], [ %.sroa.20923.01412.lcssa, %.loopexit1039 ], [ %.sroa.20923.5, %.loopexit1040 ], [ %.sroa.20923.5, %.loopexit1049 ], [ %.sroa.20923.5, %.loopexit1054 ], [ %.sroa.20923.5, %.loopexit.split-lp1055 ] ; 2 uses
  %.sroa.0912.3 = phi ptr [ %.sroa.0912.0.lcssa, %bb.de ], [ %.sroa.0912.0.lcssa, %bb.cs ], [ %.sroa.0912.0.lcssa, %bb.dq ], [ %.sroa.0912.0.lcssa, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i401 ], [ %.sroa.0912.0.lcssa, %_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit575 ], [ %.sroa.0912.0.lcssa, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i441 ], [ %.sroa.0912.0.lcssa, %bb.ct ], [ %.sroa.0912.5, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i286 ], [ %.sroa.0912.5, %.loopexit.split-lp1041 ], [ %.sroa.0912.5, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ], [ %.sroa.0912.5, %.loopexit.split-lp1050 ], [ %.sroa.0912.01414, %.loopexit.split-lp ], [ %.sroa.0912.01414, %.loopexit1039 ], [ %.sroa.0912.5, %.loopexit1040 ], [ %.sroa.0912.5, %.loopexit1049 ], [ %.sroa.0912.5, %.loopexit1054 ], [ %.sroa.0912.5, %.loopexit.split-lp1055 ] ; 2 uses
  %.sroa.19941.6 = phi ptr [ %.sroa.19941.0.lcssa, %bb.de ], [ %.sroa.19941.0.lcssa, %bb.cs ], [ %.sroa.19941.0.lcssa, %bb.dq ], [ %.sroa.19941.0.lcssa, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i401 ], [ %.sroa.19941.0.lcssa, %_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit575 ], [ %.sroa.19941.0.lcssa, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i441 ], [ %.sroa.19941.0.lcssa, %bb.ct ], [ %.sroa.19941.01415, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i286 ], [ %.sroa.19941.1.ph1042, %.loopexit.split-lp1041 ], [ %.sroa.19941.01415, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ], [ %.sroa.19941.3, %.loopexit.split-lp1050 ], [ %.sroa.19941.01415, %.loopexit.split-lp ], [ %.sroa.19941.01415, %.loopexit1039 ], [ %.sroa.19941.1.ph, %.loopexit1040 ], [ %.sroa.19941.3, %.loopexit1049 ], [ %.sroa.19941.3, %.loopexit1054 ], [ %.sroa.19941.3, %.loopexit.split-lp1055 ] ; 2 uses
  %.sroa.0932.6 = phi ptr [ %.sroa.0932.0.lcssa, %bb.de ], [ %.sroa.0932.0.lcssa, %bb.cs ], [ %.sroa.0932.0.lcssa, %bb.dq ], [ %.sroa.0932.0.lcssa, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i401 ], [ %.sroa.0932.0.lcssa, %_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit575 ], [ %.sroa.0932.0.lcssa, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i441 ], [ %.sroa.0932.0.lcssa, %bb.ct ], [ %.sroa.0932.01417, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i286 ], [ %.sroa.0932.1.ph1043, %.loopexit.split-lp1041 ], [ %.sroa.0932.01417, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ], [ %.sroa.0932.3, %.loopexit.split-lp1050 ], [ %.sroa.0932.01417, %.loopexit.split-lp ], [ %.sroa.0932.01417, %.loopexit1039 ], [ %.sroa.0932.1.ph, %.loopexit1040 ], [ %.sroa.0932.3, %.loopexit1049 ], [ %.sroa.0932.3, %.loopexit1054 ], [ %.sroa.0932.3, %.loopexit.split-lp1055 ] ; 2 uses
  %.sroa.19956.6 = phi ptr [ %.sroa.19956.0.lcssa, %bb.de ], [ %.sroa.19956.0.lcssa, %bb.cs ], [ %.sroa.19956.0.lcssa, %bb.dq ], [ %.sroa.19956.0.lcssa, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i401 ], [ %.sroa.19956.0.lcssa, %_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit575 ], [ %.sroa.19956.0.lcssa, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i441 ], [ %.sroa.19956.0.lcssa, %bb.ct ], [ %.sroa.19956.01418, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i286 ], [ %.sroa.19956.1.ph1044, %.loopexit.split-lp1041 ], [ %.sroa.19956.01418, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ], [ %.sroa.19956.3, %.loopexit.split-lp1050 ], [ %.sroa.19956.01418, %.loopexit.split-lp ], [ %.sroa.19956.01418, %.loopexit1039 ], [ %.sroa.19956.1.ph, %.loopexit1040 ], [ %.sroa.19956.3, %.loopexit1049 ], [ %.sroa.19956.3, %.loopexit1054 ], [ %.sroa.19956.3, %.loopexit.split-lp1055 ] ; 2 uses
  %.sroa.0947.6 = phi ptr [ %.sroa.0947.0.lcssa, %bb.de ], [ %.sroa.0947.0.lcssa, %bb.cs ], [ %.sroa.0947.0.lcssa, %bb.dq ], [ %.sroa.0947.0.lcssa, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i401 ], [ %.sroa.0947.0.lcssa, %_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit575 ], [ %.sroa.0947.0.lcssa, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i441 ], [ %.sroa.0947.0.lcssa, %bb.ct ], [ %.sroa.0947.01420, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i286 ], [ %.sroa.0947.1.ph1045, %.loopexit.split-lp1041 ], [ %.sroa.0947.01420, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ], [ %.sroa.0947.3, %.loopexit.split-lp1050 ], [ %.sroa.0947.01420, %.loopexit.split-lp ], [ %.sroa.0947.01420, %.loopexit1039 ], [ %.sroa.0947.1.ph, %.loopexit1040 ], [ %.sroa.0947.3, %.loopexit1049 ], [ %.sroa.0947.3, %.loopexit1054 ], [ %.sroa.0947.3, %.loopexit.split-lp1055 ] ; 2 uses
  %.pn219.pn.pn = phi { ptr, i32 } [ %i.yw, %bb.de ], [ %i.wf, %bb.cs ], [ %i.abz, %bb.dq ], [ %i.yi, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i401 ], [ %.pn188.pn.pn.pn.pn, %_ZN4CGAL8internal20Dynamic_property_mapINS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesINS_5EpickENS_28I_Polyhedron_derived_items_3INS_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEENS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3IS7_NS_12Polyhedron_3IS7_S9_NS_18HalfedgeDS_defaultESB_EESE_EEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISS_NS_28Triangulation_ds_face_base_2IvEEEEEEEEED2Ev.exit575 ], [ %i.abl, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i441 ], [ %i.wg, %bb.ct ], [ %i.lv, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i286 ], [ %lpad.loopexit.split-lp1047, %.loopexit.split-lp1041 ], [ %i.ks, %_ZNSt10_HashtableIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESt4pairIKSP_NS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesIS7_NS0_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS12_EEEESaIS15_ENSt8__detail10_Select1stESt8equal_toISP_ESt4hashISP_ENS17_18_Mod_range_hashingENS17_20_Default_ranged_hashENS17_20_Prime_rehash_policyENS17_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ], [ %lpad.loopexit.split-lp1052, %.loopexit.split-lp1050 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit1039 ], [ %lpad.loopexit1046, %.loopexit1040 ], [ %lpad.loopexit1051, %.loopexit1049 ], [ %lpad.loopexit1056, %.loopexit1054 ], [ %lpad.loopexit.split-lp1057, %.loopexit.split-lp1055 ] ; 2 uses
  %.not.i.i.i585 = icmp eq ptr %.sroa.0892.6, null
  br i1 %.not.i.i.i585, label %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit586, label %.body409.thread986

.body409.thread986:                               ; preds = %.body409
  %i.aon = ptrtoint ptr %.sroa.24904.6 to i64
  %i.aoo = ptrtoint ptr %.sroa.0892.6 to i64
  %i.aop = sub i64 %i.aon, %i.aoo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0892.6, i64 noundef %i.aop) #38
  br label %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit586

_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit586: ; preds = %.body409.thread, %.body409, %.body409.thread986
  %.pn219.pn.pn985 = phi { ptr, i32 } [ %i.gs, %.body409.thread ], [ %.pn219.pn.pn, %.body409 ], [ %.pn219.pn.pn, %.body409.thread986 ] ; 2 uses
  %.sroa.0947.6984 = phi ptr [ null, %.body409.thread ], [ %.sroa.0947.6, %.body409 ], [ %.sroa.0947.6, %.body409.thread986 ] ; 3 uses
  %.sroa.19956.6983 = phi ptr [ null, %.body409.thread ], [ %.sroa.19956.6, %.body409 ], [ %.sroa.19956.6, %.body409.thread986 ]
  %.sroa.0932.6982 = phi ptr [ null, %.body409.thread ], [ %.sroa.0932.6, %.body409 ], [ %.sroa.0932.6, %.body409.thread986 ] ; 3 uses
  %.sroa.19941.6981 = phi ptr [ null, %.body409.thread ], [ %.sroa.19941.6, %.body409 ], [ %.sroa.19941.6, %.body409.thread986 ]
  %.sroa.0912.3980 = phi ptr [ %.sroa.0912.1, %.body409.thread ], [ %.sroa.0912.3, %.body409 ], [ %.sroa.0912.3, %.body409.thread986 ] ; 3 uses
  %.sroa.20923.3979 = phi ptr [ %.sroa.20923.1, %.body409.thread ], [ %.sroa.20923.3, %.body409 ], [ %.sroa.20923.3, %.body409.thread986 ]
  %.not.i.i.i587 = icmp eq ptr %.sroa.0912.3980, null
  br i1 %.not.i.i.i587, label %_ZNSt6vectorIN4CGAL8internal8HDS_edgeINS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESF_SF_EEEEEESaISI_EEEEESaISL_EED2Ev.exit588, label %bb.gk

bb.gk:                                            ; preds = %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit586
  %i.aoq = ptrtoint ptr %.sroa.20923.3979 to i64
  %i.aor = ptrtoint ptr %.sroa.0912.3980 to i64
  %i.aos = sub i64 %i.aoq, %i.aor
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0912.3980, i64 noundef %i.aos) #38
  br label %_ZNSt6vectorIN4CGAL8internal8HDS_edgeINS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESF_SF_EEEEEESaISI_EEEEESaISL_EED2Ev.exit588

_ZNSt6vectorIN4CGAL8internal8HDS_edgeINS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESF_SF_EEEEEESaISI_EEEEESaISL_EED2Ev.exit588: ; preds = %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit586, %bb.gk
  %.not.i.i.i589 = icmp eq ptr %.sroa.0932.6982, null
  br i1 %.not.i.i.i589, label %_ZNSt6vectorIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESaISP_EED2Ev.exit590, label %bb.gl

bb.gl:                                            ; preds = %_ZNSt6vectorIN4CGAL8internal8HDS_edgeINS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESF_SF_EEEEEESaISI_EEEEESaISL_EED2Ev.exit588
  %i.aot = ptrtoint ptr %.sroa.19941.6981 to i64
  %i.aou = ptrtoint ptr %.sroa.0932.6982 to i64
  %i.aov = sub i64 %i.aot, %i.aou
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0932.6982, i64 noundef %i.aov) #38
  br label %_ZNSt6vectorIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESaISP_EED2Ev.exit590

_ZNSt6vectorIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESaISP_EED2Ev.exit590: ; preds = %_ZNSt6vectorIN4CGAL8internal8HDS_edgeINS1_22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESF_SF_EEEEEESaISI_EEEEESaISL_EED2Ev.exit588, %bb.gl
  %.not.i.i.i591 = icmp eq ptr %.sroa.0947.6984, null
  br i1 %.not.i.i.i591, label %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit592, label %bb.gm

bb.gm:                                            ; preds = %_ZNSt6vectorIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESaISP_EED2Ev.exit590
  %i.aow = ptrtoint ptr %.sroa.19956.6983 to i64
  %i.aox = ptrtoint ptr %.sroa.0947.6984 to i64
  %i.aoy = sub i64 %i.aow, %i.aox
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0947.6984, i64 noundef %i.aoy) #38
  br label %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit592

_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit592: ; preds = %_ZNSt6vectorIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESaISP_EED2Ev.exit590.thread, %_ZNSt6vectorIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESaISP_EED2Ev.exit590, %bb.gm
  %.pn219.pn.pn.pn18911896 = phi { ptr, i32 } [ %i.gr, %_ZNSt6vectorIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESaISP_EED2Ev.exit590.thread ], [ %.pn219.pn.pn985, %_ZNSt6vectorIN4CGAL8internal24TDS2_halfedge_descriptorINS0_30Triangulation_data_structure_2INS0_25Convex_hull_vertex_base_2INS0_11GT3_for_CH3INS0_20Convex_hull_traits_3INS0_5EpickENS0_12Polyhedron_3IS7_NS0_18Polyhedron_items_3ENS0_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS0_30Triangulation_ds_vertex_base_2IvEEEENS0_23Convex_hull_face_base_2ISF_NS0_28Triangulation_ds_face_base_2IvEEEEEEEESaISP_EED2Ev.exit590 ], [ %.pn219.pn.pn985, %bb.gm ]
  %i.aoz = load ptr, ptr %i.g, align 8, !tbaa !1548 ; 8 uses
  %.not.i.i.i593 = icmp eq ptr %i.aoz, null
  br i1 %.not.i.i.i593, label %_ZN4CGAL8internal20Dynamic_property_mapINS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS7_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISF_NS_28Triangulation_ds_face_base_2IvEEEEEEEENS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesIS7_NS_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS10_EEEED2Ev.exit597, label %bb.gn

bb.gn:                                            ; preds = %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit592
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoz, i64 8 ; 4 uses
  %i.apb = load atomic i64, ptr %i.apa acquire, align 8 ; 2 uses
  %i.apc = icmp eq i64 %i.apb, 4294967297
  %i.apd = trunc i64 %i.apb to i32                ; 2 uses
  br i1 %i.apc, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  store i32 0, ptr %i.apa, align 8, !tbaa !1549
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aoz, i64 12
  store i32 0, ptr %i.ape, align 4, !tbaa !1551
  %i.apf = load ptr, ptr %i.aoz, align 8, !tbaa !20
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apf, i64 16
  %i.aph = load ptr, ptr %i.apg, align 8
  call void %i.aph(ptr noundef nonnull align 8 dereferenceable(16) %i.aoz) #28, !inline_history !1655
  %i.api = load ptr, ptr %i.aoz, align 8, !tbaa !20
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 24
  %i.apk = load ptr, ptr %i.apj, align 8
  call void %i.apk(ptr noundef nonnull align 8 dereferenceable(16) %i.aoz) #28, !inline_history !1655
  br label %_ZN4CGAL8internal20Dynamic_property_mapINS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS7_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISF_NS_28Triangulation_ds_face_base_2IvEEEEEEEENS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesIS7_NS_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS10_EEEED2Ev.exit597

bb.gp:                                            ; preds = %bb.gn
  %i.apl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !146
  %.not.i.i.i.i594 = icmp eq i8 %i.apl, 0
  br i1 %.not.i.i.i.i594, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.apm = add nsw i32 %i.apd, -1
  store i32 %i.apm, ptr %i.apa, align 8, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i595

bb.gr:                                            ; preds = %bb.gp
  %i.apn = atomicrmw volatile add ptr %i.apa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i595

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i595: ; preds = %bb.gr, %bb.gq
  %.0.i.i.i.i.i596 = phi i32 [ %i.apd, %bb.gq ], [ %i.apn, %bb.gr ]
  %i.apo = icmp eq i32 %.0.i.i.i.i.i596, 1
  br i1 %i.apo, label %bb.gs, label %_ZN4CGAL8internal20Dynamic_property_mapINS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS7_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISF_NS_28Triangulation_ds_face_base_2IvEEEEEEEENS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesIS7_NS_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS10_EEEED2Ev.exit597, !prof !218

bb.gs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i595
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aoz) #28
  br label %_ZN4CGAL8internal20Dynamic_property_mapINS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS7_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISF_NS_28Triangulation_ds_face_base_2IvEEEEEEEENS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesIS7_NS_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS10_EEEED2Ev.exit597

_ZN4CGAL8internal20Dynamic_property_mapINS0_24TDS2_halfedge_descriptorINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS7_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISF_NS_28Triangulation_ds_face_base_2IvEEEEEEEENS0_22In_place_list_iteratorINS_33HalfedgeDS_in_place_list_halfedgeINS_21I_Polyhedron_halfedgeINS_24HalfedgeDS_halfedge_baseINS_21HalfedgeDS_list_typesIS7_NS_28I_Polyhedron_derived_items_3IS9_EESB_EESE_SE_SE_EEEEEESaIS10_EEEED2Ev.exit597: ; preds = %_ZNSt6vectorIN4CGAL8internal22In_place_list_iteratorINS0_33HalfedgeDS_in_place_list_halfedgeINS0_21I_Polyhedron_halfedgeINS0_24HalfedgeDS_halfedge_baseINS0_21HalfedgeDS_list_typesINS0_5EpickENS0_28I_Polyhedron_derived_items_3INS0_18Polyhedron_items_3EEESaIiEEESt17integral_constantIbLb1EESE_SE_EEEEEESaISH_EEESaISJ_EED2Ev.exit592, %bb.go, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i595, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4CGAL8internal15exact_num_edgesINS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS6_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISE_NS_28Triangulation_ds_face_base_2IvEEEEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !298, !noalias !1656 ; 3 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !560, !noalias !1656 ; 2 uses
  br label %_ZN4CGAL5edgesINS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISC_NS_28Triangulation_ds_face_base_2IvEEEEEENS_14Iterator_rangeIN5boost12graph_traitsINS_30Triangulation_data_structure_2IT_T0_EEE13edge_iteratorEEERKSR_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !341, !noalias !1656
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !560, !noalias !1656
  br label %_ZN4CGAL17Compact_containerINS_23Convex_hull_face_base_2INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS3_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3ISB_EENS_30Triangulation_ds_vertex_base_2IvEEEENS1_ISB_NSC_IvEEEEEEEEEENS_7DefaultESP_SP_E5beginEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !558, !noalias !1656 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4CGAL17Compact_containerINS_23Convex_hull_face_base_2INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS3_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3ISB_EENS_30Triangulation_ds_vertex_base_2IvEEEENS1_ISB_NSC_IvEEEEEEEEEENS_7DefaultESP_SP_E5beginEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 88 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !322, !noalias !1656
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 3
  %i.r = icmp eq i64 %i.q, 2
  br i1 %i.r, label %.preheader.i.i.i.i.i, label %_ZN4CGAL17Compact_containerINS_23Convex_hull_face_base_2INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS3_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3ISB_EENS_30Triangulation_ds_vertex_base_2IvEEEENS1_ISB_NSC_IvEEEEEEEEEENS_7DefaultESP_SP_E5beginEv.exit.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.f, %.preheader.i.i.i.i.i.backedge
  %i.s = phi ptr [ %.be123, %.preheader.i.i.i.i.i.backedge ], [ %i.m, %bb.f ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !322, !noalias !1656
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = and i32 %i.x, 3
  switch i32 %i.y, label %.preheader.i.i.i.i.i.unreachabledefault [
    i32 0, label %_ZN4CGAL17Compact_containerINS_23Convex_hull_face_base_2INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS3_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3ISB_EENS_30Triangulation_ds_vertex_base_2IvEEEENS1_ISB_NSC_IvEEEEEEEEEENS_7DefaultESP_SP_E5beginEv.exit.i.i.i
    i32 3, label %_ZN4CGAL17Compact_containerINS_23Convex_hull_face_base_2INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS3_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3ISB_EENS_30Triangulation_ds_vertex_base_2IvEEEENS1_ISB_NSC_IvEEEEEEEEEENS_7DefaultESP_SP_E5beginEv.exit.i.i.i
    i32 1, label %bb.g
    i32 2, label %.preheader.i.i.i.i.i.backedge
  ]

bb.g:                                             ; preds = %.preheader.i.i.i.i.i
  %i.z = and i64 %i.w, -4
  %i.aa = inttoptr i64 %i.z to ptr
  br label %.preheader.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.backedge:                    ; preds = %bb.g, %.preheader.i.i.i.i.i
  %.be123 = phi ptr [ %i.aa, %bb.g ], [ %i.t, %.preheader.i.i.i.i.i ]
  br label %.preheader.i.i.i.i.i, !llvm.loop !559

.preheader.i.i.i.i.i.unreachabledefault:          ; preds = %.preheader.i.i.i.i.i
  unreachable

default.unreachable:                              ; preds = %.preheader.i, %.preheader, %.split.us.i.i.us.i.us
  unreachable

_ZN4CGAL17Compact_containerINS_23Convex_hull_face_base_2INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS3_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3ISB_EENS_30Triangulation_ds_vertex_base_2IvEEEENS1_ISB_NSC_IvEEEEEEEEEENS_7DefaultESP_SP_E5beginEv.exit.i.i.i: ; preds = %.preheader.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.f, %bb.e, %bb.d
  %i.ab = phi ptr [ %i.i, %bb.d ], [ null, %bb.e ], [ %i.m, %bb.f ], [ %i.t, %.preheader.i.i.i.i.i ], [ %i.t, %.preheader.i.i.i.i.i ] ; 6 uses
  %i.ac = icmp eq i32 %i.a, 1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !560, !noalias !1661 ; 5 uses
  br i1 %i.ac, label %_ZN4CGAL5edgesINS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISC_NS_28Triangulation_ds_face_base_2IvEEEEEENS_14Iterator_rangeIN5boost12graph_traitsINS_30Triangulation_data_structure_2IT_T0_EEE13edge_iteratorEEERKSR_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL17Compact_containerINS_23Convex_hull_face_base_2INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS3_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEENS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3ISB_EENS_30Triangulation_ds_vertex_base_2IvEEEENS1_ISB_NSC_IvEEEEEEEEEENS_7DefaultESP_SP_E5beginEv.exit.i.i.i
  %.not57.i.i.i = icmp eq ptr %i.ab, %.pre.i
  br i1 %.not57.i.i.i, label %_ZN4CGAL5edgesINS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISC_NS_28Triangulation_ds_face_base_2IvEEEEEENS_14Iterator_rangeIN5boost12graph_traitsINS_30Triangulation_data_structure_2IT_T0_EEE13edge_iteratorEEERKSR_.exit, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS5_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISD_NS_28Triangulation_ds_face_base_2IvEEEEEEE15associated_edgeEv.exit.i.i.i

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS5_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISD_NS_28Triangulation_ds_face_base_2IvEEEEEEE15associated_edgeEv.exit.i.i.i: ; preds = %bb.h, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS5_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISD_NS_28Triangulation_ds_face_base_2IvEEEEEEE9incrementEv.exit.i.i.i
  %.sroa.910.0.i = phi i32 [ %.sroa.910.1.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS5_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISD_NS_28Triangulation_ds_face_base_2IvEEEEEEE9incrementEv.exit.i.i.i ], [ 0, %bb.h ] ; 4 uses
  %.sroa.48.0.i = phi ptr [ %.sroa.48.1.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS5_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISD_NS_28Triangulation_ds_face_base_2IvEEEEEEE9incrementEv.exit.i.i.i ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ad = phi ptr [ %i.at, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS5_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISD_NS_28Triangulation_ds_face_base_2IvEEEEEEE9incrementEv.exit.i.i.i ], [ %i.ab, %bb.h ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = zext nneg i32 %.sroa.910.0.i to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.af
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !342, !noalias !1656
  %i.ah = icmp ugt ptr %.sroa.0.0.copyload.i.i.i.i.i, %i.ad
  br i1 %i.ah, label %_ZN4CGAL5edgesINS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS4_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISC_NS_28Triangulation_ds_face_base_2IvEEEEEENS_14Iterator_rangeIN5boost12graph_traitsINS_30Triangulation_data_structure_2IT_T0_EEE13edge_iteratorEEERKSR_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_25Convex_hull_vertex_base_2INS_11GT3_for_CH3INS_20Convex_hull_traits_3INS_5EpickENS_12Polyhedron_3IS5_NS_18Polyhedron_items_3ENS_18HalfedgeDS_defaultESaIiEEESt17integral_constantIbLb1EEEEEENS_30Triangulation_ds_vertex_base_2IvEEEENS_23Convex_hull_face_base_2ISD_NS_28Triangulation_ds_face_base_2IvEEEEEEE15associated_edgeEv.exit.i.i.i
  %i.ai = icmp eq i32 %.sroa.910.0.i, 2
  br i1 %i.ai, label %.preheader.i, label %bb.k

.preheader.i:                                     ; preds = %bb.i, %.preheader.i.backedge
end_hunk_2
