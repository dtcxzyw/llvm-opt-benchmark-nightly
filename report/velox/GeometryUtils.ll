Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/GeometryUtils?download=true
inline.NumInlined: 1537
inline.NumDeleted: 798
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8facebook5velox9functions10geospatial18isPointOrRectangleERKN4geos4geom8GeometryE:bb.a
          to label %bb.e unwind label %bb.u       ; 2 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.bc = invoke noundef double @_ZNK4geos4geom5Point4getXEv(ptr noundef nonnull align 8 dereferenceable(82) %i.bb)
          to label %bb.f unwind label %bb.v

bb.f:                                             ; preds = %bb.e
  %i.bd = invoke noundef double @_ZNK4geos4geom5Point4getYEv(ptr noundef nonnull align 8 dereferenceable(82) %i.bb)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %bb.f
  %i.be = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bc, i64 1
  %i.bg = fptosi <2 x double> %i.bf to <2 x i32>
  store <2 x i32> %i.bg, ptr %1, align 8, !tbaa !121
  %i.bh = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr nonnull %i.aj, ptr nonnull %i.at, ptr nonnull align 4 dereferenceable(8) %1)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.1 unwind label %bb.v

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.1: ; preds = %bb.g
  %.not191 = icmp eq ptr %i.bh, %i.at
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.not191, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.1
  %i.bi = load ptr, ptr %0, align 8, !tbaa !33
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
          to label %bb.k unwind label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.bo = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.bm, i64 1
  %i.bq = fptosi <2 x double> %i.bp to <2 x i32>
  store <2 x i32> %i.bq, ptr %1, align 8, !tbaa !121
  %i.br = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr nonnull %i.aj, ptr nonnull %i.at, ptr nonnull align 4 dereferenceable(8) %1)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.2 unwind label %bb.v

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.2: ; preds = %bb.k
  %.not192 = icmp eq ptr %i.br, %i.at
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.not192, label %.critedge, label %bb.l

bb.l:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.2
  %i.bs = load ptr, ptr %0, align 8, !tbaa !33
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
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.by = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bw, i64 1
  %i.ca = fptosi <2 x double> %i.bz to <2 x i32>
  store <2 x i32> %i.ca, ptr %1, align 8, !tbaa !121
  %i.cb = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr nonnull %i.aj, ptr nonnull %i.at, ptr nonnull align 4 dereferenceable(8) %1)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.3 unwind label %bb.v

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.3: ; preds = %bb.o
  %.not193 = icmp ne ptr %i.cb, %i.at
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
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ci = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.cg, i64 1
  %i.ck = fptosi <2 x double> %i.cj to <2 x i32>
  store <2 x i32> %i.ck, ptr %1, align 8, !tbaa !121
  %i.cl = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr nonnull %i.aj, ptr nonnull %i.at, ptr nonnull align 4 dereferenceable(8) %1)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit unwind label %bb.v

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit: ; preds = %bb.t
  %.not190 = icmp eq ptr %i.cl, %i.at
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.not190, label %.critedge, label %bb.d

bb.u:                                             ; preds = %bb.l, %bb.h, %bb.d, %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE12emplace_backIJddEEERS1_DpOT_.exit53
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EED2Ev.exit56

bb.v:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.s, %bb.r, %bb.t
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EED2Ev.exit56

.critedge:                                        ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.3, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.1, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.2
  %.lcssa = phi i1 [ false, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.2 ], [ false, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit ], [ false, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.1 ], [ %.not193, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.3 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 32) #27
  br label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EED2Ev.exit

_ZNSt6vectorISt5tupleIJiiEESaIS1_EED2Ev.exit56:   ; preds = %bb.p, %bb.q, %bb.v, %bb.u
  %.sroa.37.0.ph = phi ptr [ %i.ao, %bb.u ], [ %i.ao, %bb.v ], [ %i.cd, %bb.p ], [ %i.cf, %bb.q ]
  %.sroa.0140.0.ph = phi ptr [ %i.aj, %bb.u ], [ %i.aj, %bb.v ], [ %i.u, %bb.p ], [ %i.ab, %bb.q ] ; 2 uses
  %.pn38.pn.pn.ph = phi { ptr, i32 } [ %i.cm, %bb.u ], [ %i.cn, %bb.v ], [ %i.cc, %bb.p ], [ %i.ce, %bb.q ]
  %i.co = ptrtoint ptr %.sroa.37.0.ph to i64
  %i.cp = ptrtoint ptr %.sroa.0140.0.ph to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0140.0.ph, i64 noundef %i.cq) #27
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(64) %0)
  br i1 %i.d, label %bb.b, label %bb.c, !prof !56

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions10geospatial24computeSphericalCentroidERKN4geos4geom10MultiPointEE18veloxCheckFailArgs, ptr noundef nonnull @.str.21) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !33
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
  %i.j = load ptr, ptr %0, align 8, !tbaa !33
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
  br i1 %i.u, label %bb.f, label %bb.k, !prof !56

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.050 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.af, %bb.e ]
  %i.v = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ad, %bb.e ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %indvars.iv) ; 2 uses
  %i.aa = call noundef double @_ZNK4geos4geom5Point4getXEv(ptr noundef nonnull align 8 dereferenceable(82) %i.z)
  %i.ab = call noundef double @_ZNK4geos4geom5Point4getYEv(ptr noundef nonnull align 8 dereferenceable(82) %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN8facebook5velox9functions10geospatial14CartesianPointC1Edd(ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef %i.aa, double noundef %i.ab)
  %i.ac = load <2 x double>, ptr %2, align 16, !tbaa !44
  %i.ad = fadd <2 x double> %i.v, %i.ac           ; 2 uses
  %i.ae = load double, ptr %i.i, align 16, !tbaa !123
  %i.af = fadd double %.050, %i.ae                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !236

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26, !noalias !239
  %i.ag = extractelement <2 x double> %i.p, i64 0
  store double %i.ag, ptr %1, align 16, !tbaa !41, !noalias !239
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = extractelement <2 x double> %i.p, i64 1
  store double %i.ai, ptr %i.ah, align 16, !tbaa !41, !noalias !239
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %.0.lcssa, ptr %i.aj, align 16, !tbaa !41, !noalias !239
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.23, i64 65, i64 2730, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26, !noalias !239
  invoke void @_ZN8facebook5velox12errorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.an = load i64, ptr %i.al, align 8, !tbaa !41
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
  %i.aq = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.i
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !41
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.j
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !41
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
  %i.bb = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = fdiv <2 x double> %i.p, %i.bc           ; 2 uses
  %i.be = fdiv double %.0.lcssa, %sqrt
  %i.bf = extractelement <2 x double> %i.bd, i64 0
  %i.bg = extractelement <2 x double> %i.bd, i64 1
  call void @_ZN8facebook5velox9functions10geospatial14CartesianPointC1Eddd(ptr noundef nonnull align 8 dereferenceable(24) %5, double noundef %i.bf, double noundef %i.bg, double noundef %i.be)
  %i.bh = load double, ptr %5, align 8, !tbaa !124 ; 3 uses
  %i.bi = fmul double %i.bh, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !125 ; 3 uses
  %i.bl = fmul double %i.bk, %i.bk
  %i.bm = fadd double %i.bi, %i.bl
  %sqrt.i = call double @llvm.sqrt.f64(double %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !123
  %i.bp = call double @atan2(double noundef %sqrt.i, double noundef %i.bo) #26
  %i.bq = call double @atan2(double noundef %i.bk, double noundef %i.bh) #26
  %i.br = fmul double %i.bp, 1.800000e+02
  %i.bs = fdiv double %i.br, f0x400921FB54442D18
  %i.bt = fsub double 9.000000e+01, %i.bs
  %i.bu = fmul double %i.bq, 1.800000e+02
  %i.bv = fdiv double %i.bu, f0x400921FB54442D18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.0.0 = phi double [ %i.n, %bb.d ], [ %i.bv, %bb.k ]
  %.sroa.3.0 = phi double [ %i.o, %bb.d ], [ %i.bt, %bb.k ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.3.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define { double, double } @_ZNK8facebook5velox9functions10geospatial14CartesianPoint16toSphericalPointEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !124 ; 3 uses
  %i.b = fmul double %i.a, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !125 ; 3 uses
  %i.e = fmul double %i.d, %i.d
  %i.f = fadd double %i.b, %i.e
  %sqrt = tail call double @llvm.sqrt.f64(double %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !123
  %i.i = tail call double @atan2(double noundef %sqrt, double noundef %i.h) #26
  %i.j = tail call double @atan2(double noundef %i.d, double noundef %i.a) #26
  %i.k = insertelement <2 x double> poison, double %i.i, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.j, i64 1
  %i.m = fmul <2 x double> %i.l, splat (double 1.800000e+02)
  %i.n = fdiv <2 x double> %i.m, splat (double f0x400921FB54442D18) ; 2 uses
  %i.o = extractelement <2 x double> %i.n, i64 0
  %i.p = fsub double 9.000000e+01, %i.o
  %i.q = extractelement <2 x double> %i.n, i64 1
  %.fca.0.insert = insertvalue { double, double } poison, double %i.q, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.p, 1
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
  %i.g = tail call double @sin(double noundef %i.f) #26
  %i.h = fmul double %i.g, 6.371010e+03           ; 2 uses
  %i.i = extractelement <2 x double> %i.e, i64 1  ; 2 uses
  %i.j = tail call double @cos(double noundef %i.i) #26
  %i.k = fmul double %i.h, %i.j
  store double %i.k, ptr %0, align 8, !tbaa !124
  %i.l = tail call double @sin(double noundef %i.i) #26
  %i.m = fmul double %i.h, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.m, ptr %i.n, align 8, !tbaa !125
  %i.o = tail call double @cos(double noundef %i.f) #26
  %i.p = fmul double %i.o, 6.371010e+03
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.p, ptr %i.q, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN8facebook5velox9functions10geospatial14CartesianPointC2Eddd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #14 align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !124
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.a, align 8, !tbaa !125
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.b, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define noundef double @_ZN8facebook5velox9functions10geospatial18getSphericalLengthERKN4geos4geom10LineStringE(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 0) ; 2 uses
  %i.i = icmp ugt i64 %i.d, 1
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.59.0.copyload = load double, ptr %.sroa.59.0..sroa_idx, align 8, !tbaa !44
  %.sroa.08.0.copyload = load double, ptr %i.h, align 8, !tbaa !44
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.o, %.lr.ph ]
  ret double %.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.020 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.o, %.lr.ph ]
  %.sroa.08.018 = phi double [ %.sroa.08.0.copyload, %.lr.ph.preheader ], [ %.sroa.0.0.copyload, %.lr.ph ]
  %.sroa.59.017 = phi double [ %.sroa.59.0.copyload, %.lr.ph.preheader ], [ %.sroa.5.0.copyload, %.lr.ph ]
  %i.j = load ptr, ptr %0, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 464
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %indvars.iv) ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.m, align 8, !tbaa !44 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !44 ; 2 uses
  %i.n = tail call noundef double @_ZN8facebook5velox12BingTileType19greatCircleDistanceEdddd(double noundef %.sroa.59.017, double noundef %.sroa.08.018, double noundef %.sroa.5.0.copyload, double noundef %.sroa.0.0.copyload)
  %i.o = fadd double %.020, %i.n                  ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !240
}

declare noundef double @_ZN8facebook5velox12BingTileType19greatCircleDistanceEdddd(double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef double @_ZN8facebook5velox9functions10geospatial22computeSphericalExcessERKN4geos4geom7PolygonE(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.99", align 8 ; 7 uses
  %2 = alloca %"class.std::unique_ptr.99", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = tail call noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.99") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.e = load ptr, ptr %1, align 8, !tbaa !244
  %i.f = invoke fastcc noundef double @_ZN12_GLOBAL__N_125SphericalExcessCalculator21excessFromCoordinatesERKN4geos4geom18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef double @llvm.fabs.f64(double %i.f) ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !244    ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #26, !inline_history !241
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.l = call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit
  %.012.lcssa = phi double [ %i.g, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit ], [ %i.y, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20 ]
  ret double %.012.lcssa

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %1, align 8, !tbaa !244    ; 3 uses
  %.not.i15 = icmp eq ptr %i.n, null
  br i1 %.not.i15, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i16

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i16: ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #26, !inline_history !241
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17: ; preds = %bb.c, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.f

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20 ], [ 0, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %.01225 = phi double [ %i.y, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20 ], [ %i.g, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.r = call noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %indvars.iv) ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.99") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.r)
  %i.v = load ptr, ptr %2, align 8, !tbaa !244
  %i.w = invoke fastcc noundef double @_ZN12_GLOBAL__N_125SphericalExcessCalculator21excessFromCoordinatesERKN4geos4geom18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.x = call noundef double @llvm.fabs.f64(double %i.w)
  %i.y = fsub double %.01225, %i.x                ; 2 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !244    ; 3 uses
  %.not.i18 = icmp eq ptr %i.z, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i19

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i19: ; preds = %bb.d
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #26, !inline_history !241
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20: ; preds = %bb.d, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !242

bb.e:                                             ; preds = %.lr.ph
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %2, align 8, !tbaa !244   ; 3 uses
  %.not.i21 = icmp eq ptr %i.ae, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit23, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i22

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i22: ; preds = %bb.e
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #26, !inline_history !241
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit23

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit23: ; preds = %bb.e, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit23, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17
  %.pn = phi { ptr, i32 } [ %i.ad, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit23 ], [ %i.m, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef double @_ZN12_GLOBAL__N_125SphericalExcessCalculator21excessFromCoordinatesERKN4geos4geom18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !245 ; 2 uses
  %i.e = add i64 %i.d, -1                         ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.e)
  %i.j = load ptr, ptr %0, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 0)
  %i.n = load <2 x double>, ptr %i.i, align 8
  %i.o = load <2 x double>, ptr %i.m, align 8
  %i.p = fcmp oeq <2 x double> %i.n, %i.o         ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  %i.r = extractelement <2 x i1> %i.p, i64 1
  %.0.i.i = select i1 %i.q, i1 %i.r, i1 false
  %spec.select = select i1 %.0.i.i, i64 %i.e, i64 %i.d ; 3 uses
  %i.s = icmp ult i64 %spec.select, 3
  br i1 %i.s, label %bb.b, label %.peel.begin, !prof !56

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN12_GLOBAL__N_125SphericalExcessCalculator21excessFromCoordinatesERKN4geos4geom18CoordinateSequenceEE18veloxCheckFailArgs, ptr noundef nonnull @.str.39) #25
  unreachable

.peel.begin:                                      ; preds = %bb.a
  %i.t = add i64 %spec.select, -1
  %i.u = load ptr, ptr %0, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.t)
  %i.y = load <2 x double>, ptr %i.x, align 8, !tbaa !44
  %i.z = fmul <2 x double> %i.y, splat (double f0x400921FB54442D18)
  %i.aa = fdiv <2 x double> %i.z, splat (double 1.800000e+02) ; 3 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 1 ; 3 uses
  %i.ac = tail call double @sin(double noundef %i.ab) #26
  %i.ad = tail call double @cos(double noundef %i.ab) #26 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIlSaIlEE15_M_range_insertISt23_Rb_tree_const_iteratorIlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EET_S9_St20forward_iterator_tag:bb.a
bb.y:                                             ; preds = %bb.x
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.cl, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.cm) #27
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.bt, ptr %0, align 8, !tbaa !47
  store ptr %i.cj, ptr %i.g, align 8, !tbaa !48
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bq
  store ptr %i.cn, ptr %i.e, align 8, !tbaa !49
  br label %_ZSt4copyISt23_Rb_tree_const_iteratorIlEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SA_S9_.exit

_ZSt4copyISt23_Rb_tree_const_iteratorIlEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i53, %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit52, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !295
  tail call void @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !296  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !294

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr i64 %i.c, 5                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !121  ; 4 uses
  %i.h = load i32, ptr %2, align 4                ; 4 uses
  %i.i = and i64 %i.c, -32
  %scevgep = getelementptr i8, ptr %0, i64 %i.i   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.052 = phi i64 [ %i.d, %.lr.ph ], [ %i.al, %bb.f ] ; 2 uses
  %.sroa.032.051 = phi ptr [ %0, %.lr.ph ], [ %i.ak, %bb.f ] ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !121
  %i.l = icmp eq i32 %i.k, %i.g
  %i.m = load i32, ptr %.sroa.032.051, align 4
  %i.n = icmp eq i32 %i.m, %i.h
  %i.o = select i1 %i.l, i1 %i.n, i1 false
  br i1 %i.o, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !121
  %i.s = icmp eq i32 %i.r, %i.g
  %i.t = load i32, ptr %i.p, align 4
  %i.u = icmp eq i32 %i.t, %i.h
  %i.v = select i1 %i.s, i1 %i.u, i1 false
  br i1 %i.v, label %.loopexit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !121
  %i.z = icmp eq i32 %i.y, %i.g
  %i.aa = load i32, ptr %i.w, align 4
  %i.ab = icmp eq i32 %i.aa, %i.h
  %i.ac = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %i.ac, label %.loopexit.loopexit.split.loop.exit65, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !121
  %i.ag = icmp eq i32 %i.af, %i.g
  %i.ah = load i32, ptr %i.ad, align 4
  %i.ai = icmp eq i32 %i.ah, %i.h
  %i.aj = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %i.aj, label %.loopexit.loopexit.split.loop.exit67, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 32
  %i.al = add nsw i64 %.052, -1
  %i.am = icmp sgt i64 %.052, 1
  br i1 %i.am, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !297

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre62 = ptrtoint ptr %scevgep to i64
  %.pre63 = sub i64 %i.a, %.pre62
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi64 = phi i64 [ %.pre63, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.032.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 6 uses
  %i.an = ashr exact i64 %.pre-phi64, 3
  switch i64 %i.an, label %.loopexit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge58
  ]

._crit_edge._crit_edge58:                         ; preds = %._crit_edge
  %.phi.trans.insert59 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre60 = load i32, ptr %.phi.trans.insert59, align 4, !tbaa !121
  %.pre61 = load i32, ptr %2, align 4
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !121
  %.pre57 = load i32, ptr %2, align 4
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !121
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !121 ; 2 uses
  %i.as = icmp eq i32 %i.ap, %i.ar
  %i.at = load i32, ptr %.sroa.032.0.lcssa, align 4
  %i.au = load i32, ptr %2, align 4               ; 2 uses
  %i.av = icmp eq i32 %i.at, %i.au
  %i.aw = select i1 %i.as, i1 %i.av, i1 false
  br i1 %i.aw, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa, i64 8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %bb.h
  %i.ay = phi i32 [ %i.au, %bb.h ], [ %.pre57, %._crit_edge._crit_edge ] ; 2 uses
  %i.az = phi i32 [ %i.ar, %bb.h ], [ %.pre, %._crit_edge._crit_edge ] ; 2 uses
  %.sroa.032.1 = phi ptr [ %i.ax, %bb.h ], [ %.sroa.032.0.lcssa, %._crit_edge._crit_edge ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.032.1, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !121
  %i.bc = icmp eq i32 %i.bb, %i.az
  %i.bd = load i32, ptr %.sroa.032.1, align 4
  %i.be = icmp eq i32 %i.bd, %i.ay
  %i.bf = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %i.bf, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.032.1, i64 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge58, %bb.j
  %i.bh = phi i32 [ %i.ay, %bb.j ], [ %.pre61, %._crit_edge._crit_edge58 ]
  %i.bi = phi i32 [ %i.az, %bb.j ], [ %.pre60, %._crit_edge._crit_edge58 ]
  %.sroa.032.2 = phi ptr [ %i.bg, %bb.j ], [ %.sroa.032.0.lcssa, %._crit_edge._crit_edge58 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.2, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !121
  %i.bl = icmp eq i32 %i.bk, %i.bi
  %i.bm = load i32, ptr %.sroa.032.2, align 4
  %i.bn = icmp eq i32 %i.bm, %i.bh
  %i.bo = select i1 %i.bl, i1 %i.bn, i1 false
  %spec.select = select i1 %i.bo, ptr %.sroa.032.2, ptr %1
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  br label %.loopexit

.loopexit.loopexit.split.loop.exit65:             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 16
  br label %.loopexit

.loopexit.loopexit.split.loop.exit67:             ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 24
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit65, %.loopexit.loopexit.split.loop.exit67, %bb.k, %._crit_edge, %bb.i, %bb.g
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.032.1, %bb.i ], [ %spec.select, %bb.k ], [ %1, %._crit_edge ], [ %.sroa.032.0.lcssa, %bb.g ], [ %i.br, %.loopexit.loopexit.split.loop.exit67 ], [ %i.bp, %.loopexit.loopexit.split.loop.exit ], [ %i.bq, %.loopexit.loopexit.split.loop.exit65 ], [ %.sroa.032.051, %bb.b ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #13

declare void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef align 8) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 2305843009213693951
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !28
  %i.ag = load ptr, ptr %0, align 8, !tbaa !23
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #28 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !26
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aq = load ptr, ptr %1, align 8, !tbaa !13
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !13
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !31
  store ptr %i.am, ptr %i.o, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !34
  store ptr %i.am, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !28   ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !23
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !120

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !26
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !26
  br label %_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !120

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !26
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !26
  br label %_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_allocate_mapEm.exit, !prof !56

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #28 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !24  ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.o, label %bb.p, !prof !120

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.q, label %_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit24

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !26
  store ptr %i.be, ptr %i.av, align 8, !tbaa !26
  br label %_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit24

_ZSt4copyIPPPKN4geos4geom8GeometryES6_ET0_T_S8_S7_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bf = load ptr, ptr %0, align 8, !tbaa !23
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !28
end_hunk_1
begin_hunk_2_@"_ZZN8facebook5velox9functions10geospatial33getDissolvedTilesCoveringGeometryERKN4geos4geom8GeometryEiENK3$_0clEll":bb.a
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit
  %i.s = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.s)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit
  %i.t = load i64, ptr %i.q, align 8, !tbaa !41
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre, i64 noundef %i.u) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.v = load ptr, ptr %2, align 8, !tbaa !39     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !41
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ab = load ptr, ptr %2, align 8, !tbaa !39    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.e
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !41
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.aa

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ]
  ret i1 %.0
}

declare void @_ZN8facebook5velox12BingTileType17bingTileToQuadKeyB5cxx11Em(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJOS8_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::BadExpectedAccess.162", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !39     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !39
  %i.i = load i64, ptr %i.c, align 8, !tbaa !41
  store i64 %i.i, ptr %i.a, align 8, !tbaa !41
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi ptr [ %i.a, %bb.b ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.k = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.c, ptr %0, align 8, !tbaa !39
  store i64 0, ptr %i.l, align 8, !tbaa !40
  store i8 0, ptr %i.c, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %1, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !42
  %i.p = icmp eq ptr %i.j, %i.a
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.r, i1 false)
  br label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.j, ptr %i.n, align 8, !tbaa !39
  %i.s = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.s, ptr %i.o, align 8, !tbaa !41
  br label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit

_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.k, ptr %i.t, align 8, !tbaa !40
  store ptr %i.a, ptr %2, align 8, !tbaa !39
  store i64 0, ptr %i.m, align 8, !tbaa !40
  store i8 0, ptr %i.a, align 8, !tbaa !41
  invoke void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %1) #7
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit
  unreachable

bb.e:                                             ; preds = %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %1, align 8, !tbaa !33
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.o
  br i1 %i.w, label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.o, align 8, !tbaa !41
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #27, !inline_history !127
  br label %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %1) #26, !inline_history !127
  %i.z = load ptr, ptr %2, align 8, !tbaa !39     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !41
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.u
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { noreturn }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = distinct !{!2, !27}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTSN4geos4geom8GeometryE", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any p2 pointer", !11, i64 0}
!15 = !{!"any p3 pointer", !14, i64 0}
!16 = !{!"p3 _ZTSN4geos4geom8GeometryE", !15, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"p2 _ZTSN4geos4geom8GeometryE", !14, i64 0}
!19 = !{!"_ZTSSt15_Deque_iteratorIPKN4geos4geom8GeometryERS4_PS4_E", !18, i64 0, !18, i64 8, !18, i64 16, !16, i64 24}
!20 = !{!"_ZTSNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_Deque_impl_dataE", !16, i64 0, !17, i64 8, !19, i64 16, !19, i64 48}
!21 = !{!20, !18, i64 48}
!22 = !{!20, !18, i64 64}
!23 = !{!20, !16, i64 0}
!24 = !{!20, !16, i64 40}
!25 = !{!20, !16, i64 72}
!26 = !{!18, !18, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!20, !17, i64 8}
!29 = !{!19, !18, i64 0}
!30 = !{!19, !18, i64 8}
!31 = !{!19, !16, i64 24}
!32 = !{!"vtable pointer", !6, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!19, !18, i64 16}
!35 = !{!"bool", !7, i64 0}
!36 = !{!"p1 omnipotent char", !11, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !36, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !37, i64 0, !17, i64 8, !7, i64 16}
!39 = !{!38, !36, i64 0}
!40 = !{!38, !17, i64 8}
!41 = !{!7, !7, i64 0}
!42 = !{!37, !36, i64 0}
!43 = !{!"double", !7, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"p1 long", !11, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!46, !45, i64 0}
!48 = !{!46, !45, i64 8}
!49 = !{!46, !45, i64 16}
!50 = !{!17, !17, i64 0}
!51 = !{!"_ZTSN5folly15expected_detail5WhichE", !7, i64 0}
!52 = !{!"_ZTSN5folly15expected_detail13ExpectedUnionISt6vectorImSaImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !7, i64 0, !51, i64 32}
!53 = !{!52, !51, i64 32}
!54 = !{!"branch_weights", i32 1000, i32 2001000, i32 -292967296}
!55 = !{!45, !45, i64 0}
!56 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!57 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!58 = !{!57, !45, i64 0}
!59 = !{!57, !45, i64 16}
!60 = !{!"p1 _ZTSN4geos4geom8EnvelopeE", !11, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"_ZTSSt22_Optional_payload_baseISt6vectorIlSaIlEEE", !7, i64 0, !35, i64 24}
!63 = !{!62, !35, i64 24}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!67 = !{!"p2 _ZTSN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryE", !14, i64 0}
!68 = !{!"p1 _ZTSN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryE", !11, i64 0}
!69 = !{!"_ZTSSt15_Deque_iteratorIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryERS5_PS5_E", !68, i64 0, !68, i64 8, !68, i64 16, !67, i64 24}
!70 = !{!"_ZTSNSt11_Deque_baseIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE16_Deque_impl_dataE", !67, i64 0, !17, i64 8, !69, i64 16, !69, i64 48}
!71 = !{!70, !17, i64 8}
!72 = !{!70, !67, i64 0}
!73 = !{!68, !68, i64 0}
!74 = !{!69, !67, i64 24}
!75 = !{!69, !68, i64 8}
!76 = !{!69, !68, i64 16}
!77 = !{!70, !68, i64 48}
!78 = !{!"p1 _ZTSSt10unique_ptrIN4geos4geom15GeometryFactoryENS2_22GeometryFactoryDeleterEE", !11, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"p2 _ZTSN4geos4geom8EnvelopeE", !14, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!"p1 _ZTSSt10unique_ptrIN4geos4geom4prep16PreparedGeometryESt14default_deleteIS3_EE", !11, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!"p1 _ZTSSt5stackIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESt5dequeIS5_SaIS5_EEE", !11, i64 0}
!85 = !{!84, !84, i64 0}
!86 = !{!69, !68, i64 0}
!87 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8EnvelopeELb0EE", !60, i64 0}
!88 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !87, i64 0}
!89 = !{!"_ZTSSt5tupleIJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !88, i64 0}
!90 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !89, i64 0}
!91 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8EnvelopeESt14default_deleteIS2_ELb1ELb1EE", !90, i64 0}
!92 = !{!"_ZTSSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !91, i64 0}
!93 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8GeometryELb0EE", !12, i64 0}
!94 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8GeometryESt14default_deleteIS2_EEE", !93, i64 0}
!95 = !{!"_ZTSSt5tupleIJPN4geos4geom8GeometryESt14default_deleteIS2_EEE", !94, i64 0}
!96 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8GeometryESt14default_deleteIS2_EE", !95, i64 0}
!97 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8GeometryESt14default_deleteIS2_ELb1ELb1EE", !96, i64 0}
!98 = !{!"_ZTSSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE", !97, i64 0}
!99 = !{!"_ZTSN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryE", !17, i64 0, !92, i64 8, !98, i64 16}
!100 = !{!99, !17, i64 0}
!101 = !{!70, !67, i64 72}
!102 = !{!"p1 _ZTSN4geos4geom4prep16PreparedGeometryE", !11, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!"p1 _ZTSN4geos4geom15GeometryFactoryE", !11, i64 0}
!105 = !{!104, !104, i64 0}
!106 = !{!"_ZTSN4geos4geom8EnvelopeE", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!107 = !{!106, !43, i64 16}
!108 = !{!106, !43, i64 8}
!109 = !{!"_ZTSN5folly15expected_detail13ExpectedUnionImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !7, i64 0, !51, i64 32}
!110 = !{!109, !51, i64 32}
!111 = !{!106, !43, i64 24}
!112 = !{!106, !43, i64 0}
!113 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!114 = !{!"branch_weights", i32 1, i32 4001}
!115 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!116 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!117 = !{!"_ZTSSt18_Rb_tree_node_base", !115, i64 0, !116, i64 8, !116, i64 16, !116, i64 24}
!118 = !{!"_ZTSSt15_Rb_tree_header", !117, i64 0, !17, i64 32}
!119 = !{!118, !116, i64 8}
!120 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!121 = !{!8, !8, i64 0}
!122 = !{!"_ZTSN8facebook5velox9functions10geospatial14CartesianPointE", !43, i64 0, !43, i64 8, !43, i64 16}
!123 = !{!122, !43, i64 16}
!124 = !{!122, !43, i64 0}
!125 = !{!122, !43, i64 8}
!126 = !{!70, !67, i64 40}
!127 = !{ptr @_ZN5folly17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev}
!128 = distinct !{!128, i1 true, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv"}
!129 = distinct !{!129, !128, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv: argument 0"}
!130 = distinct !{!130, !27}
!131 = !{!129}
!132 = !{!20, !18, i64 56}
!133 = distinct !{!133, i1 true, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv"}
!134 = distinct !{!134, !133, !"_ZNSt5dequeIPKN4geos4geom8GeometryESaIS4_EE3endEv: argument 0"}
!135 = !{!134}
!136 = distinct !{!136, !27}
!137 = distinct !{!137, i1 true, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOS9_"}
!138 = distinct !{!138, !137, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!139 = distinct !{null}
!140 = distinct !{!140, i1 true, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_"}
!141 = distinct !{!141, !140, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!142 = distinct !{!142, i1 true, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt17basic_string_viewIcS5_ERdSB_EEES7_NS0_7fstringIJDpT_EE1tEDpOSD_"}
!143 = distinct !{!143, !142, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt17basic_string_viewIcS5_ERdSB_EEES7_NS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!144 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !7, i64 0, !35, i64 32}
!145 = !{!144, !35, i64 32}
!146 = !{!"p1 _ZTSN4geos9operation5valid23TopologyValidationErrorE", !11, i64 0}
!147 = !{!"_ZTSSt10_Head_baseILm0EPN4geos9operation5valid23TopologyValidationErrorELb0EE", !146, i64 0}
!148 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EEE", !147, i64 0}
!149 = !{!"_ZTSSt5tupleIJPN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EEE", !148, i64 0}
!150 = !{!"_ZTSSt15__uniq_ptr_implIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EE", !149, i64 0}
!151 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_ELb1ELb1EE", !150, i64 0}
!152 = !{!"_ZTSSt10unique_ptrIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EE", !151, i64 0}
!153 = !{!"_ZTSN4geos9operation5valid9IsValidOpE", !12, i64 0, !35, i64 8, !152, i64 16}
!154 = !{!153, !12, i64 0}
!155 = !{!153, !35, i64 8}
!156 = !{!147, !146, i64 0}
!157 = !{!138}
!158 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !11, i64 0}
!159 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !158, i64 0, !158, i64 8, !158, i64 16}
!160 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE12_Vector_implE", !159, i64 0}
!161 = !{!"_ZTSSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE", !160, i64 0}
!162 = !{!"_ZTSSt6vectorIN4geos4geom10CoordinateESaIS2_EE", !161, i64 0}
!163 = !{!"_ZTSN4geos9operation5valid10IsSimpleOpE", !12, i64 0, !35, i64 8, !35, i64 9, !35, i64 10, !162, i64 16, !35, i64 40}
!164 = !{!163, !35, i64 8}
!165 = !{!163, !35, i64 9}
!166 = !{!163, !35, i64 10}
!167 = !{!141}
!168 = !{!143}
!169 = !{!159, !158, i64 0}
!170 = !{!159, !158, i64 16}
!171 = !{!146, !146, i64 0}
!172 = distinct !{!172, i1 true, !"_ZN3fmt3v116formatIJRKdS3_S3_S3_RdS4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!173 = distinct !{!173, !172, !"_ZN3fmt3v116formatIJRKdS3_S3_S3_RdS4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!174 = distinct !{!174, i1 true, !"_ZN8facebook5velox6Status2OKEv"}
!175 = distinct !{!175, !174, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!176 = !{!"branch_weights", i32 11189848, i32 -569676999}
!177 = !{!173}
end_hunk_2
