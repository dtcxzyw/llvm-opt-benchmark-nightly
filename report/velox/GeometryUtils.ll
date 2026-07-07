inline.NumInlined: 1539
inline.NumDeleted: 799
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8facebook5velox9functions10geospatial18isPointOrRectangleERKN4geos4geom8GeometryE:bb.a
  %i.bd = invoke noundef double @_ZNK4geos4geom5Point4getYEv(ptr noundef nonnull align 8 dereferenceable(82) %i.bb)
          to label %bb.g unwind label %bb.w

bb.g:                                             ; preds = %bb.f
  %i.be = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bc, i64 1
  %i.bg = fptosi <2 x double> %i.bf to <2 x i32>
  store <2 x i32> %i.bg, ptr %1, align 8, !tbaa !3
  %i.bh = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr nonnull %i.aj, ptr nonnull %i.at, ptr nonnull align 4 dereferenceable(8) %1)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.1 unwind label %bb.x

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.1: ; preds = %bb.g
  %.not193 = icmp eq ptr %i.bh, %i.at
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.not193, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.1
  %i.bi = load ptr, ptr %0, align 8, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 88
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = invoke noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 2)
          to label %bb.i unwind label %bb.u       ; 2 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.bm = invoke noundef double @_ZNK4geos4geom5Point4getXEv(ptr noundef nonnull align 8 dereferenceable(82) %i.bl)
          to label %bb.j unwind label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.bn = invoke noundef double @_ZNK4geos4geom5Point4getYEv(ptr noundef nonnull align 8 dereferenceable(82) %i.bl)
          to label %bb.k unwind label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.bo = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.bm, i64 1
  %i.bq = fptosi <2 x double> %i.bp to <2 x i32>
  store <2 x i32> %i.bq, ptr %1, align 8, !tbaa !3
  %i.br = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr nonnull %i.aj, ptr nonnull %i.at, ptr nonnull align 4 dereferenceable(8) %1)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.2 unwind label %bb.x

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.2: ; preds = %bb.k
  %.not194 = icmp eq ptr %i.br, %i.at
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.not194, label %.critedge, label %bb.l

bb.l:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.2
  %i.bs = load ptr, ptr %0, align 8, !tbaa !32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = invoke noundef ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 3)
          to label %bb.m unwind label %bb.u       ; 2 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.bw = invoke noundef double @_ZNK4geos4geom5Point4getXEv(ptr noundef nonnull align 8 dereferenceable(82) %i.bv)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.bx = invoke noundef double @_ZNK4geos4geom5Point4getYEv(ptr noundef nonnull align 8 dereferenceable(82) %i.bv)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.by = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bw, i64 1
  %i.ca = fptosi <2 x double> %i.bz to <2 x i32>
  store <2 x i32> %i.ca, ptr %1, align 8, !tbaa !3
  %i.cb = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr nonnull %i.aj, ptr nonnull %i.at, ptr nonnull align 4 dereferenceable(8) %1)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.3 unwind label %bb.x

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.3: ; preds = %bb.o
  %.not195 = icmp ne ptr %i.cb, %i.at
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %.critedge

bb.p:                                             ; preds = %_ZNKSt6vectorISt5tupleIJiiEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  br label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EED2Ev.exit56

bb.q:                                             ; preds = %_ZNKSt6vectorISt5tupleIJiiEESaIS1_EE12_M_check_lenEmPKc.exit.i80
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  br label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EED2Ev.exit56

bb.r:                                             ; preds = %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE12emplace_backIJddEEERS1_DpOT_.exit53
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.cg = invoke noundef double @_ZNK4geos4geom5Point4getXEv(ptr noundef nonnull align 8 dereferenceable(82) %i.ax)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ch = invoke noundef double @_ZNK4geos4geom5Point4getYEv(ptr noundef nonnull align 8 dereferenceable(82) %i.ax)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ci = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.cg, i64 1
  %i.ck = fptosi <2 x double> %i.cj to <2 x i32>
  store <2 x i32> %i.ck, ptr %1, align 8, !tbaa !3
  %i.cl = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr nonnull %i.aj, ptr nonnull %i.at, ptr nonnull align 4 dereferenceable(8) %1)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit unwind label %bb.x

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit: ; preds = %bb.t
  %.not192 = icmp eq ptr %i.cl, %i.at
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.not192, label %.critedge, label %bb.d

bb.u:                                             ; preds = %bb.l, %bb.h, %bb.d, %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE12emplace_backIJddEEERS1_DpOT_.exit53
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EED2Ev.exit56

bb.v:                                             ; preds = %bb.m, %bb.i, %bb.e, %bb.r
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.w:                                             ; preds = %bb.n, %bb.j, %bb.f, %bb.s
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.o, %bb.k, %bb.g, %bb.t
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.x
  %.pn38 = phi { ptr, i32 } [ %i.cp, %bb.x ], [ %i.co, %bb.w ], [ %i.cn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EED2Ev.exit56

.critedge:                                        ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.3, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.1, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.2
  %.lcssa = phi i1 [ false, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.2 ], [ false, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit ], [ false, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.1 ], [ %.not195, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.3 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 32) #27
  br label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EED2Ev.exit

_ZNSt6vectorISt5tupleIJiiEESaIS1_EED2Ev.exit56:   ; preds = %bb.p, %bb.q, %bb.y, %bb.u
  %.sroa.37.0.ph = phi ptr [ %i.ao, %bb.u ], [ %i.ao, %bb.y ], [ %i.cd, %bb.p ], [ %i.cf, %bb.q ]
  %.sroa.0140.0.ph = phi ptr [ %i.aj, %bb.u ], [ %i.aj, %bb.y ], [ %i.u, %bb.p ], [ %i.ab, %bb.q ] ; 2 uses
  %.pn38.pn.pn.ph = phi { ptr, i32 } [ %i.cm, %bb.u ], [ %.pn38, %bb.y ], [ %i.cc, %bb.p ], [ %i.ce, %bb.q ]
  %i.cq = ptrtoint ptr %.sroa.37.0.ph to i64
  %i.cr = ptrtoint ptr %.sroa.0140.0.ph to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0140.0.ph, i64 noundef %i.cs) #27
  resume { ptr, i32 } %.pn38.pn.pn.ph

_ZNSt6vectorISt5tupleIJiiEESaIS1_EED2Ev.exit:     ; preds = %.critedge, %bb.c, %bb.b, %bb.a
  %.5 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ false, %bb.c ], [ %.lcssa, %.critedge ]
  ret i1 %.5
}

declare noundef double @_ZNK4geos4geom5Point4getXEv(ptr noundef nonnull align 8 dereferenceable(82)) local_unnamed_addr #5

declare noundef double @_ZNK4geos4geom5Point4getYEv(ptr noundef nonnull align 8 dereferenceable(82)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define { double, double } @_ZN8facebook5velox9functions10geospatial24computeSphericalCentroidERKN4geos4geom10MultiPointE(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.168", align 16 ; 6 uses
  %2 = alloca %"class.facebook::velox::functions::geospatial::CartesianPoint", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.facebook::velox::functions::geospatial::CartesianPoint", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(64) %0)
  br i1 %i.d, label %bb.b, label %bb.c, !prof !110

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions10geospatial24computeSphericalCentroidERKN4geos4geom10MultiPointEE18veloxCheckFailArgs, ptr noundef nonnull @.str.21) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 2 uses
  switch i64 %i.h, label %.lr.ph [
    i64 1, label %bb.d
    i64 0, label %._crit_edge
  ]

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0) ; 2 uses
  %i.n = tail call noundef double @_ZNK4geos4geom5Point4getXEv(ptr noundef nonnull align 8 dereferenceable(82) %i.m)
  %i.o = tail call noundef double @_ZNK4geos4geom5Point4getYEv(ptr noundef nonnull align 8 dereferenceable(82) %i.m)
  br label %bb.l

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.0.lcssa = phi double [ 0.000000e+00, %bb.c ], [ %i.af, %bb.e ] ; 4 uses
  %i.p = phi <2 x double> [ zeroinitializer, %bb.c ], [ %i.ad, %bb.e ] ; 5 uses
  %i.q = fmul <2 x double> %i.p, %i.p             ; 2 uses
  %shift = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.q, %shift
  %i.r = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.s = fmul double %.0.lcssa, %.0.lcssa
  %i.t = fadd double %i.r, %i.s                   ; 2 uses
  %i.u = fcmp oeq double %i.t, 0.000000e+00
  br i1 %i.u, label %bb.f, label %bb.k, !prof !110

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.050 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.af, %bb.e ]
  %i.v = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ad, %bb.e ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %indvars.iv) ; 2 uses
  %i.aa = call noundef double @_ZNK4geos4geom5Point4getXEv(ptr noundef nonnull align 8 dereferenceable(82) %i.z)
  %i.ab = call noundef double @_ZNK4geos4geom5Point4getYEv(ptr noundef nonnull align 8 dereferenceable(82) %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN8facebook5velox9functions10geospatial14CartesianPointC1Edd(ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef %i.aa, double noundef %i.ab)
  %i.ac = load <2 x double>, ptr %2, align 16, !tbaa !81
  %i.ad = fadd <2 x double> %i.v, %i.ac           ; 2 uses
  %i.ae = load double, ptr %i.i, align 16, !tbaa !239
  %i.af = fadd double %.050, %i.ae                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !241

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26, !noalias !242
  %i.ag = extractelement <2 x double> %i.p, i64 0
  store double %i.ag, ptr %1, align 16, !tbaa !63, !noalias !242
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = extractelement <2 x double> %i.p, i64 1
  store double %i.ai, ptr %i.ah, align 16, !tbaa !63, !noalias !242
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %.0.lcssa, ptr %i.aj, align 16, !tbaa !63, !noalias !242
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.23, i64 65, i64 2730, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26, !noalias !242
  invoke void @_ZN8facebook5velox12errorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %4, align 8, !tbaa !58    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.an = load i64, ptr %i.al, align 8, !tbaa !63
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions10geospatial24computeSphericalCentroidERKN4geos4geom10MultiPointEE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %3) #25
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %4, align 8, !tbaa !58    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.i
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !63
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.j
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !63
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn = phi { ptr, i32 } [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.av, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %._crit_edge
  %sqrt = call double @llvm.sqrt.f64(double %i.t) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %6 = insertelement <2 x double> poison, double %sqrt, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = fdiv <2 x double> %i.p, %7                 ; 2 uses
  %i.bb = fdiv double %.0.lcssa, %sqrt
  %9 = extractelement <2 x double> %8, i64 0
  %10 = extractelement <2 x double> %8, i64 1
  call void @_ZN8facebook5velox9functions10geospatial14CartesianPointC1Eddd(ptr noundef nonnull align 8 dereferenceable(24) %5, double noundef %9, double noundef %10, double noundef %i.bb)
  %i.bc = load double, ptr %5, align 8, !tbaa !245 ; 3 uses
  %i.bd = fmul double %i.bc, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bf = load double, ptr %i.be, align 8, !tbaa !246 ; 3 uses
  %i.bg = fmul double %i.bf, %i.bf
  %i.bh = fadd double %i.bd, %i.bg
  %sqrt.i = call double @llvm.sqrt.f64(double %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !239
  %i.bk = call double @atan2(double noundef %sqrt.i, double noundef %i.bj) #26, !tbaa !3
  %i.bl = call double @atan2(double noundef %i.bf, double noundef %i.bc) #26, !tbaa !3
  %11 = insertelement <2 x double> poison, double %i.bk, i64 0
  %12 = insertelement <2 x double> %11, double %i.bl, i64 1
  %13 = fmul <2 x double> %12, splat (double 1.800000e+02)
  %14 = fdiv <2 x double> %13, splat (double f0x400921FB54442D18) ; 2 uses
  %15 = extractelement <2 x double> %14, i64 0
  %16 = fsub double 9.000000e+01, %15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %17 = extractelement <2 x double> %14, i64 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.0.0 = phi double [ %i.n, %bb.d ], [ %17, %bb.k ]
  %.sroa.3.0 = phi double [ %i.o, %bb.d ], [ %16, %bb.k ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.3.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define { double, double } @_ZNK8facebook5velox9functions10geospatial14CartesianPoint16toSphericalPointEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !245 ; 3 uses
  %i.b = fmul double %i.a, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !246 ; 3 uses
  %i.e = fmul double %i.d, %i.d
  %i.f = fadd double %i.b, %i.e
  %sqrt = tail call double @llvm.sqrt.f64(double %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !239
  %i.i = tail call double @atan2(double noundef %sqrt, double noundef %i.h) #26, !tbaa !3
  %i.j = tail call double @atan2(double noundef %i.d, double noundef %i.a) #26, !tbaa !3
  %1 = insertelement <2 x double> poison, double %i.i, i64 0
  %2 = insertelement <2 x double> %1, double %i.j, i64 1
  %3 = fmul <2 x double> %2, splat (double 1.800000e+02)
  %4 = fdiv <2 x double> %3, splat (double f0x400921FB54442D18) ; 2 uses
  %5 = extractelement <2 x double> %4, i64 0
  %6 = fsub double 9.000000e+01, %5
  %7 = extractelement <2 x double> %4, i64 1
  %.fca.0.insert = insertvalue { double, double } poison, double %7, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %6, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @_ZN8facebook5velox9functions10geospatial14CartesianPointC2Edd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, double noundef %1, double noundef %2) unnamed_addr #12 align 2 {
bb.a:
  %i.a = fsub double 9.000000e+01, %2
  %i.b = insertelement <2 x double> poison, double %i.a, i64 0
  %i.c = insertelement <2 x double> %i.b, double %1, i64 1
  %i.d = fmul <2 x double> %i.c, splat (double f0x400921FB54442D18)
  %i.e = fdiv <2 x double> %i.d, splat (double 1.800000e+02) ; 2 uses
  %i.f = extractelement <2 x double> %i.e, i64 0  ; 2 uses
  %i.g = tail call double @sin(double noundef %i.f) #26, !tbaa !3
  %i.h = fmul double %i.g, 6.371010e+03           ; 2 uses
  %i.i = extractelement <2 x double> %i.e, i64 1  ; 2 uses
  %i.j = tail call double @cos(double noundef %i.i) #26, !tbaa !3
  %i.k = fmul double %i.h, %i.j
  store double %i.k, ptr %0, align 8, !tbaa !245
  %i.l = tail call double @sin(double noundef %i.i) #26, !tbaa !3
  %i.m = fmul double %i.h, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.m, ptr %i.n, align 8, !tbaa !246
  %i.o = tail call double @cos(double noundef %i.f) #26, !tbaa !3
  %i.p = fmul double %i.o, 6.371010e+03
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.p, ptr %i.q, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN8facebook5velox9functions10geospatial14CartesianPointC2Eddd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #14 align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !245
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.a, align 8, !tbaa !246
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.b, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define noundef double @_ZN8facebook5velox9functions10geospatial18getSphericalLengthERKN4geos4geom10LineStringE(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 0) ; 2 uses
  %i.i = icmp ugt i64 %i.d, 1
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.59.0.copyload = load double, ptr %.sroa.59.0..sroa_idx, align 8, !tbaa !81
  %.sroa.08.0.copyload = load double, ptr %i.h, align 8, !tbaa !81
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.o, %.lr.ph ]
  ret double %.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.020 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.o, %.lr.ph ]
  %.sroa.59.019 = phi double [ %.sroa.59.0.copyload, %.lr.ph.preheader ], [ %.sroa.5.0.copyload, %.lr.ph ]
  %.sroa.08.017 = phi double [ %.sroa.08.0.copyload, %.lr.ph.preheader ], [ %.sroa.0.0.copyload, %.lr.ph ]
  %i.j = load ptr, ptr %0, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 464
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %indvars.iv) ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.m, align 8, !tbaa !81 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !81 ; 2 uses
  %i.n = tail call noundef double @_ZN8facebook5velox12BingTileType19greatCircleDistanceEdddd(double noundef %.sroa.59.019, double noundef %.sroa.08.017, double noundef %.sroa.5.0.copyload, double noundef %.sroa.0.0.copyload)
  %i.o = fadd double %.020, %i.n                  ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !247
}

declare noundef double @_ZN8facebook5velox12BingTileType19greatCircleDistanceEdddd(double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef double @_ZN8facebook5velox9functions10geospatial22computeSphericalExcessERKN4geos4geom7PolygonE(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.99", align 8 ; 7 uses
  %2 = alloca %"class.std::unique_ptr.99", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = tail call noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.99") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.e = load ptr, ptr %1, align 8, !tbaa !248
  %i.f = invoke fastcc noundef double @_ZN12_GLOBAL__N_125SphericalExcessCalculator21excessFromCoordinatesERKN4geos4geom18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef double @llvm.fabs.f64(double %i.f) ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !248    ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #26, !inline_history !250
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.l = call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit
  %.010.lcssa = phi double [ %i.g, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit ], [ %i.y, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20 ]
  ret double %.010.lcssa

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %1, align 8, !tbaa !248    ; 3 uses
  %.not.i15 = icmp eq ptr %i.n, null
  br i1 %.not.i15, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i16

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i16: ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #26, !inline_history !250
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17: ; preds = %bb.c, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.f

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20 ], [ 0, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %.01025 = phi double [ %i.y, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20 ], [ %i.g, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.r = call noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %indvars.iv) ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.99") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.r)
  %i.v = load ptr, ptr %2, align 8, !tbaa !248
  %i.w = invoke fastcc noundef double @_ZN12_GLOBAL__N_125SphericalExcessCalculator21excessFromCoordinatesERKN4geos4geom18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.x = call noundef double @llvm.fabs.f64(double %i.w)
  %i.y = fsub double %.01025, %i.x                ; 2 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !248    ; 3 uses
  %.not.i18 = icmp eq ptr %i.z, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i19

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i19: ; preds = %bb.d
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #26, !inline_history !250
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20: ; preds = %bb.d, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !251

bb.e:                                             ; preds = %.lr.ph
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %2, align 8, !tbaa !248   ; 3 uses
  %.not.i21 = icmp eq ptr %i.ae, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit23, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i22

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i22: ; preds = %bb.e
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ae) #26, !inline_history !250
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit23

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit23: ; preds = %bb.e, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.f
end_hunk_0
