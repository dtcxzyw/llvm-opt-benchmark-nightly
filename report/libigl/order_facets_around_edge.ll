Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/order_facets_around_edge?download=true
inline.NumInlined: 10255
inline.NumDeleted: 2799
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN4CGAL13orientationC2INS_9cpp_floatEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS4_S8_S8_S8_S8_S8_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.a = invoke noundef i32 @_ZN4CGAL19sign_of_determinantINS_9cpp_floatEEENS_3SgnIT_E11result_typeERKS3_S7_S7_S7_(ptr noundef nonnull align 16 dereferenceable(84) %6, ptr noundef nonnull align 16 dereferenceable(84) %7, ptr noundef nonnull align 16 dereferenceable(84) %8, ptr noundef nonnull align 16 dereferenceable(84) %9)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 73
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 74
  %i.f = load i8, ptr %i.e, align 2, !range !13
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond.i.i.i = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i64, ptr %9, align 16
  %i.k = shl i64 %i.j, 3
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.k) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit

_ZN4CGAL9cpp_floatD2Ev.exit:                      ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 73
  %i.m = load i8, ptr %i.l, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 74
  %i.p = load i8, ptr %i.o, align 2, !range !13
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i.i.i15 = select i1 %i.n, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i15, label %_ZN4CGAL9cpp_floatD2Ev.exit16, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load i64, ptr %8, align 16
  %i.u = shl i64 %i.t, 3
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.u) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit16

_ZN4CGAL9cpp_floatD2Ev.exit16:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 73
  %i.w = load i8, ptr %i.v, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 74
  %i.z = load i8, ptr %i.y, align 2, !range !13
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond.i.i.i17 = select i1 %i.x, i1 true, i1 %i.aa
  br i1 %or.cond.i.i.i17, label %_ZN4CGAL9cpp_floatD2Ev.exit18, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit16
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load i64, ptr %7, align 16
  %i.ae = shl i64 %i.ad, 3
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ae) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit18

_ZN4CGAL9cpp_floatD2Ev.exit18:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit16, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 73
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 74
  %i.aj = load i8, ptr %i.ai, align 2, !range !13
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond.i.i.i19 = select i1 %i.ah, i1 true, i1 %i.ak
  br i1 %or.cond.i.i.i19, label %_ZN4CGAL9cpp_floatD2Ev.exit20, label %bb.i

bb.i:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit18
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load i64, ptr %6, align 16
  %i.ao = shl i64 %i.an, 3
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ao) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit20

_ZN4CGAL9cpp_floatD2Ev.exit20:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit18, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret i32 %i.a

bb.j:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4CGAL9cpp_floatD2Ev.exit26

bb.k:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4CGAL9cpp_floatD2Ev.exit24

bb.l:                                             ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4CGAL9cpp_floatD2Ev.exit22

bb.m:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 73
  %i.au = load i8, ptr %i.at, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 74
  %i.ax = load i8, ptr %i.aw, align 2, !range !13
  %i.ay = trunc nuw i8 %i.ax to i1
  %or.cond.i.i.i21 = select i1 %i.av, i1 true, i1 %i.ay
  br i1 %or.cond.i.i.i21, label %_ZN4CGAL9cpp_floatD2Ev.exit22, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load i64, ptr %9, align 16
  %i.bc = shl i64 %i.bb, 3
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bc) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit22

_ZN4CGAL9cpp_floatD2Ev.exit22:                    ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %i.as, %bb.m ], [ %i.as, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 73
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 74
  %i.bh = load i8, ptr %i.bg, align 2, !range !13
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i.i.i23 = select i1 %i.bf, i1 true, i1 %i.bi
  br i1 %or.cond.i.i.i23, label %_ZN4CGAL9cpp_floatD2Ev.exit24, label %bb.o

bb.o:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit22
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load i64, ptr %8, align 16
  %i.bm = shl i64 %i.bl, 3
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bm) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit24

_ZN4CGAL9cpp_floatD2Ev.exit24:                    ; preds = %bb.o, %_ZN4CGAL9cpp_floatD2Ev.exit22, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %.pn, %_ZN4CGAL9cpp_floatD2Ev.exit22 ], [ %.pn, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 73
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 74
  %i.br = load i8, ptr %i.bq, align 2, !range !13
  %i.bs = trunc nuw i8 %i.br to i1
  %or.cond.i.i.i25 = select i1 %i.bp, i1 true, i1 %i.bs
  br i1 %or.cond.i.i.i25, label %_ZN4CGAL9cpp_floatD2Ev.exit26, label %bb.p

bb.p:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit24
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = load i64, ptr %7, align 16
  %i.bw = shl i64 %i.bv, 3
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bw) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit26

_ZN4CGAL9cpp_floatD2Ev.exit26:                    ; preds = %bb.p, %_ZN4CGAL9cpp_floatD2Ev.exit24, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %.pn.pn, %_ZN4CGAL9cpp_floatD2Ev.exit24 ], [ %.pn.pn, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 73
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 74
  %i.cb = load i8, ptr %i.ca, align 2, !range !13
  %i.cc = trunc nuw i8 %i.cb to i1
  %or.cond.i.i.i27 = select i1 %i.bz, i1 true, i1 %i.cc
  br i1 %or.cond.i.i.i27, label %_ZN4CGAL9cpp_floatD2Ev.exit28, label %bb.q

bb.q:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit26
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = load i64, ptr %6, align 16
  %i.cg = shl i64 %i.cf, 3
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.cg) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit28

_ZN4CGAL9cpp_floatD2Ev.exit28:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit26, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors17Construct_plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_15Return_base_tagENS_7Point_3IS1_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Plane_3") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %class.anon.461, align 8            ; 5 uses
  %7 = alloca %class.anon.460, align 8            ; 4 uses
  %8 = alloca %class.anon.461, align 8            ; 5 uses
  %9 = alloca %class.anon.460, align 8            ; 4 uses
  %10 = alloca %class.anon.461, align 8           ; 5 uses
  %11 = alloca %class.anon.460, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %12 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %13 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %14 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %15 = alloca %"class.CGAL::PlaneC3", align 16   ; 7 uses
  %.sroa.0.i = alloca [4 x %"class.CGAL::Interval_nt"], align 16 ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.CGAL::PlaneC3.596", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #36
          to label %bb.b unwind label %bb.e       ; 12 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.n = load ptr, ptr %3, align 8, !tbaa !20     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %4, align 8, !tbaa !20     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %5, align 8, !tbaa !20     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22, !noalias !1437
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22, !noalias !1440
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22, !noalias !1440
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22, !noalias !1440
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  invoke void @_ZN4CGAL19plane_from_pointsC3INS_11Interval_ntILb0EEEEEvRKT_S5_S5_S5_S5_S5_S5_S5_S5_RS3_S6_S6_S6_(ptr noundef nonnull align 16 dereferenceable(48) %i.o, ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.v, ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull align 16 dereferenceable(48) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %i.x, ptr noundef nonnull align 16 dereferenceable(16) %i.y, ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 16 dereferenceable(16) %14)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull align 16 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !792, !noalias !1437
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, ptr noundef nonnull align 16 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !792, !noalias !1437
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, ptr noundef nonnull align 16 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !792, !noalias !1437
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !1440
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22, !noalias !1440
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !1440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(64) %15, i64 64, i1 false), !tbaa.struct !1059
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22, !noalias !1437
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.ac, align 4, !tbaa !897
  %17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %17, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i, i64 64, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %17, ptr %i.ad, align 16, !tbaa !1443
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i32 0, ptr %i.ae, align 8, !tbaa !902
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors17Construct_plane_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_7Point_3INS_5EpeckEEESX_SX_EEE, i64 16), ptr %i.m, align 16, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ag = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  store ptr %i.ag, ptr %i.af, align 16, !tbaa !20
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.aj = load atomic i32, ptr %i.ai monotonic, align 4
  %i.ak = add nsw i32 %i.aj, 1
  store atomic i32 %i.ak, ptr %i.ai monotonic, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.am = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load atomic i32, ptr %i.an monotonic, align 4
  %i.ap = add nsw i32 %i.ao, 1
  store atomic i32 %i.ap, ptr %i.an monotonic, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.ar = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  store ptr %i.ar, ptr %i.aq, align 16, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.at = load atomic i32, ptr %i.as monotonic, align 4
  %i.au = add nsw i32 %i.at, 1
  store atomic i32 %i.au, ptr %i.as monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %.noexc
  %i.av = atomicrmw add ptr %i.ai, i32 1 monotonic, align 4 ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.ax = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = atomicrmw add ptr %i.ay, i32 1 monotonic, align 4 ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.bb = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  store ptr %i.bb, ptr %i.ba, align 16, !tbaa !20
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = atomicrmw add ptr %i.bc, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.be = load i32, ptr %i.c, align 4
  %i.bf = and i32 %i.be, -24577
  %i.bg = or disjoint i32 %i.bf, %i.i
  store i32 %i.bg, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.z

bb.e:                                             ; preds = %bb.a
  %i.bh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.bi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 128) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.f ], [ %i.bh, %bb.e ] ; 3 uses
  %.014 = extractvalue { ptr, i32 } %.pn, 1
  %i.bj = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #22
  %i.bk = icmp eq i32 %.014, %i.bj
  br i1 %i.bk, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.bl = call ptr @__cxa_begin_catch(ptr %.0) #22 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.v

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.bm = load i32, ptr %i.c, align 4
  %i.bn = and i32 %i.bm, -24577
  %i.bo = or disjoint i32 %i.bn, %i.i
  store i32 %i.bo, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bp = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.bq = load ptr, ptr %3, align 8, !tbaa !20    ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.bq, ptr %11, align 8, !tbaa !959
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %11, ptr %10, align 8, !tbaa !907
  %i.bs = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 9 uses
  store ptr %10, ptr %i.bs, align 8, !tbaa !907
  %i.bt = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 9 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.bt, align 8, !tbaa !907
  %i.bu = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.br, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.l ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bu) #35
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bs, align 8, !tbaa !907
  store ptr null, ptr %i.bt, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.body

bb.m:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.bs, align 8, !tbaa !907
  store ptr null, ptr %i.bt, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bx = load atomic ptr, ptr %i.bw monotonic, align 8
  %i.by = load ptr, ptr %4, align 8, !tbaa !20    ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %i.by, ptr %9, align 8, !tbaa !959
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %9, ptr %8, align 8, !tbaa !907
  store ptr %8, ptr %i.bs, align 8, !tbaa !907
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.bt, align 8, !tbaa !907
  %i.ca = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bz, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22 unwind label %bb.p ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22:        ; preds = %bb.m
  %.not.i.i.i.i23 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i23, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ca) #35
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.cb = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bs, align 8, !tbaa !907
  store ptr null, ptr %i.bt, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.body

bb.q:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  store ptr null, ptr %i.bs, align 8, !tbaa !907
  store ptr null, ptr %i.bt, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.cd = load atomic ptr, ptr %i.cc monotonic, align 8
  %i.ce = load ptr, ptr %5, align 8, !tbaa !20    ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.ce, ptr %7, align 8, !tbaa !959
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %7, ptr %6, align 8, !tbaa !907
  store ptr %6, ptr %i.bs, align 8, !tbaa !907
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.bt, align 8, !tbaa !907
  %i.cg = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.cf, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27 unwind label %bb.t ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27:        ; preds = %bb.q
  %.not.i.i.i.i28 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i.i28, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.cg) #35
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.ch = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bs, align 8, !tbaa !907
  store ptr null, ptr %i.bt, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
end_hunk_0
