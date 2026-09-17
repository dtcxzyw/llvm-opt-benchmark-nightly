Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41207
inline.NumDeleted: 6299
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZN6duckdbL24ToSpatialGeometryAnalyzeERNS_12_GLOBAL__N_122ToSpatialGeometryStateE:bb.a
._crit_edge.i147:                                 ; preds = %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadINS_8VertexXYELb1EEET_v.exit.i, %.lr.ph48.i
  %i.mn = add nuw i32 %.03246.i, 1                ; 2 uses
  %exitcond56.not.i = icmp eq i32 %i.mn, %i.mh
  br i1 %exitcond56.not.i, label %._crit_edge49.i, label %.lr.ph48.i, !llvm.loop !3481

bb.cf:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadINS_8VertexXYELb1EEET_v.exit.i, %.lr.ph.i144
  %i.mo = phi ptr [ %.promoted.i145, %.lr.ph.i144 ], [ %i.mp, %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadINS_8VertexXYELb1EEET_v.exit.i ] ; 2 uses
  %.03145.i = phi i32 [ 0, %.lr.ph.i144 ], [ %i.nl, %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadINS_8VertexXYELb1EEET_v.exit.i ]
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16 ; 3 uses
  %i.mq = icmp ugt ptr %i.mp, %i.mm
  br i1 %i.mq, label %bb.cg, label %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadINS_8VertexXYELb1EEET_v.exit.i

bb.cg:                                            ; preds = %bb.cf
  %i.mr = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.348, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.ch unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i149

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.ms = load ptr, ptr %i.f, align 8, !tbaa !736
  %i.mt = load ptr, ptr %i.e, align 8, !tbaa !735
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = ptrtoint ptr %i.mt to i64
  %i.mw = sub i64 %i.mu, %i.mv
  store i64 %i.mw, ptr %i.a, align 8, !tbaa !245
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.mr, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  invoke void @__cxa_throw(ptr nonnull %i.mr, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ck unwind label %bb.cj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i149: ; preds = %bb.cg
  %i.mx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br label %common.resume.sink.split

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.04.i.i = phi i1 [ false, %bb.ci ], [ true, %bb.ch ] ; 2 uses
  %i.my = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.mz = load ptr, ptr %1, align 8, !tbaa !235   ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nb = icmp eq ptr %i.mz, %i.na
  br i1 %i.nb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i155: ; preds = %bb.cj
  call void @_ZdlPv(ptr noundef %i.mz) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.04.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i156: ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.04.i.i, label %common.resume.sink.split, label %common.resume

bb.ck:                                            ; preds = %bb.ci
  unreachable

_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadINS_8VertexXYELb1EEET_v.exit.i: ; preds = %bb.cf
  %i.nc = load <2 x double>, ptr %i.mo, align 1   ; 4 uses
  store ptr %i.mp, ptr %i.f, align 8, !tbaa !736
  %i.nd = load <2 x double>, ptr %0, align 8, !tbaa !477 ; 2 uses
  %i.ne = fcmp olt <2 x double> %i.nd, %i.nc
  %i.nf = select <2 x i1> %i.ne, <2 x double> %i.nd, <2 x double> %i.nc
  store <2 x double> %i.nf, ptr %0, align 8, !tbaa !477
  %i.ng = load <2 x double>, ptr %i.l, align 8, !tbaa !477 ; 2 uses
  %i.nh = fcmp ogt <2 x double> %i.ng, %i.nc
  %i.ni = select <2 x i1> %i.nh, <2 x double> %i.ng, <2 x double> %i.nc
  store <2 x double> %i.ni, ptr %i.l, align 8, !tbaa !477
  %i.nj = load i32, ptr %i.k, align 4, !tbaa !740
  %i.nk = add i32 %i.nj, 16
  store i32 %i.nk, ptr %i.k, align 4, !tbaa !740
  %i.nl = add nuw i32 %.03145.i, 1                ; 2 uses
  %exitcond.not.i146 = icmp eq i32 %i.nl, %i.ml
  br i1 %exitcond.not.i146, label %._crit_edge.i147, label %bb.cf, !llvm.loop !3482

bb.cl:                                            ; preds = %._crit_edge49.i
  %i.nm = load i32, ptr %i.k, align 4, !tbaa !740
  %i.nn = add i32 %i.nm, 4
  store i32 %i.nn, ptr %i.k, align 4, !tbaa !740
  br label %_ZN6duckdbL32ToSpatialGeometryAnalyzeInternalINS_10VertexXYZMEEEvNS_12GeometryTypeERNS_12_GLOBAL__N_122ToSpatialGeometryStateE.exit

bb.cm:                                            ; preds = %bb.ca, %bb.ca, %bb.ca, %bb.ca
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_110BlobReader4SkipEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 4)
  br label %_ZN6duckdbL32ToSpatialGeometryAnalyzeInternalINS_10VertexXYZMEEEvNS_12GeometryTypeERNS_12_GLOBAL__N_122ToSpatialGeometryStateE.exit

bb.cn:                                            ; preds = %bb.ca
  %i.no = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.425, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.co unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i157

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.no, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.cp unwind label %bb.cq

bb.cp:                                            ; preds = %bb.co
  invoke void @__cxa_throw(ptr nonnull %i.no, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.cr unwind label %bb.cq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i157: ; preds = %bb.cn
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %common.resume.sink.split

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.0.i158 = phi i1 [ false, %bb.cp ], [ true, %bb.co ] ; 2 uses
  %i.nq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.nr = load ptr, ptr %3, align 8, !tbaa !235   ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nt = icmp eq ptr %i.nr, %i.ns
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159: ; preds = %bb.cq
  call void @_ZdlPv(ptr noundef %i.nr) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br i1 %.0.i158, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i160: ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br i1 %.0.i158, label %common.resume.sink.split, label %common.resume

bb.cr:                                            ; preds = %bb.cp
  unreachable

_ZN6duckdbL32ToSpatialGeometryAnalyzeInternalINS_10VertexXYZMEEEvNS_12GeometryTypeERNS_12_GLOBAL__N_122ToSpatialGeometryStateE.exit: ; preds = %.lr.ph47.i136, %.lr.ph52.i, %.lr.ph47.i101, %.lr.ph47.i, %bb.cm, %bb.cl, %._crit_edge49.i, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.bu, %bb.bt, %._crit_edge44.i124, %bb.bm, %bb.bl, %bb.bk, %bb.ba, %bb.az, %._crit_edge44.i89, %bb.as, %bb.ar, %bb.aq, %bb.ag, %bb.af, %._crit_edge44.i, %bb.y, %bb.x, %bb.w
  %.val = load ptr, ptr %i.f, align 8, !tbaa !736
  %.val67 = load ptr, ptr %i.g, align 8, !tbaa !754
  %.not170 = icmp ult ptr %.val, %.val67
  br i1 %.not170, label %bb.b, label %._crit_edge, !llvm.loop !3483

._crit_edge:                                      ; preds = %_ZN6duckdbL32ToSpatialGeometryAnalyzeInternalINS_10VertexXYZMEEEvNS_12GeometryTypeERNS_12_GLOBAL__N_122ToSpatialGeometryStateE.exit, %bb.a
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !740
  %i.nw = add i32 %i.nv, 8                        ; 2 uses
  store i32 %i.nw, ptr %i.nu, align 4, !tbaa !740
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ny = load i8, ptr %i.nx, align 8, !tbaa !853
  %.not = icmp eq i8 %i.ny, 1
  br i1 %.not, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %._crit_edge
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !854, !range !334, !noundef !227
  %i.ob = or disjoint i8 %i.oa, 2
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.od = load i8, ptr %i.oc, align 2, !tbaa !855, !range !334, !noundef !227
  %narrow = add nuw nsw i8 %i.ob, %i.od
  %i.oe = shl nuw nsw i8 %narrow, 3
  %i.of = zext nneg i8 %i.oe to i32
  %i.og = add i32 %i.nw, %i.of
  store i32 %i.og, ptr %i.nu, align 4, !tbaa !740
  br label %bb.ct

bb.ct:                                            ; preds = %._crit_edge, %bb.cs
  %.sink = phi i8 [ 1, %bb.cs ], [ 0, %._crit_edge ]
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 91
  store i8 %.sink, ptr %i.oh, align 1, !tbaa !856
  ret void

bb.cu:                                            ; preds = %bb.q, %bb.l, %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL24ToSpatialGeometryConvertERNS_12_GLOBAL__N_122ToSpatialGeometryStateERNS0_19FixedSizeBlobWriterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %.sroa.0 = alloca <4 x double>, align 16        ; 5 uses
  %16 = alloca %"class.duckdb::(anonymous namespace)::FixedSizeBlobWriter", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 89 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !854, !range !334, !noundef !227
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 3 uses
  %i.k = load i8, ptr %i.j, align 2, !tbaa !855, !range !334, !noundef !227
  %i.l = shl nuw nsw i8 %i.k, 1
  %spec.select = or disjoint i8 %i.l, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 91 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !856, !range !334, !noundef !227
  %i.o = shl nuw nsw i8 %i.n, 2
  %.1174 = or disjoint i8 %spec.select, %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load i8, ptr %i.p, align 8, !tbaa !853
  %i.r = add i8 %i.q, -1
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 %i.r)
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 %.1174)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !743  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !744
  %i.x = icmp ugt ptr %i.u, %i.w
  br i1 %i.x, label %bb.b, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteItEEvRKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.y = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.350, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #46
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !743
  %i.aa = load ptr, ptr %1, align 8, !tbaa !742
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  store i64 %i.ad, ptr %i.f, align 8, !tbaa !245
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.f unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br label %common.resume.sink.split

bb.e:                                             ; preds = %bb.d, %bb.c
  %.04.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  %i.ag = load ptr, ptr %12, align 8, !tbaa !235  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.ag) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br i1 %.04.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br i1 %.04.i, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.hr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ], [ %i.hc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i153 ], [ %i.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i149 ], [ %i.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i143 ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i139 ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i136 ], [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i138 ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137 ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i142 ], [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141 ], [ %i.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148 ], [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147 ], [ %i.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i152 ], [ %i.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151 ], [ %i.hc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i156 ], [ %i.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i155 ], [ %i.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157 ], [ %i.hr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.thread ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ], [ %i.hi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i153 ], [ %i.gs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i149 ], [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i143 ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i139 ], [ %i.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i136 ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i138 ], [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137 ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i142 ], [ %i.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141 ], [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148 ], [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147 ], [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i152 ], [ %i.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151 ], [ %i.hj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i156 ], [ %i.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i155 ], [ %i.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157 ], [ %i.hs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.thread ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #46
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i155 ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137 ], [ %i.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141 ], [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147 ], [ %i.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151 ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.hj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i156 ], [ %i.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i138 ], [ %i.ht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i142 ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148 ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i152 ], [ %i.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteItEEvRKT_.exit: ; preds = %bb.a
  store i16 0, ptr %i.t, align 1
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !743
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !743
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 0)
  %i.al = load i8, ptr %i.m, align 1, !tbaa !856, !range !334, !noundef !227
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.ai

bb.g:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteItEEvRKT_.exit
  %i.an = load double, ptr %0, align 8, !tbaa !3493 ; 4 uses
  %i.ao = fcmp ogt double %i.an, f0x47EFFFFFE0000000
  br i1 %i.ao, label %_ZN6duckdbL17DoubleToFloatDownEd.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = fcmp ugt double %i.an, f0xC7EFFFFFE0000000
  br i1 %i.ap, label %bb.i, label %_ZN6duckdbL17DoubleToFloatDownEd.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = fptrunc double %i.an to float           ; 3 uses
  %i.ar = fpext float %i.aq to double
  %i.as = fcmp ult double %i.an, %i.ar
  br i1 %i.as, label %bb.j, label %_ZN6duckdbL17DoubleToFloatDownEd.exit

bb.j:                                             ; preds = %bb.i
  %i.at = tail call noundef float @nextafterf(float noundef %i.aq, float noundef f0xFF7FFFFF) #46, !tbaa !165
  br label %_ZN6duckdbL17DoubleToFloatDownEd.exit

_ZN6duckdbL17DoubleToFloatDownEd.exit:            ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.1.i = phi float [ %i.aq, %bb.i ], [ f0x7F7FFFFF, %bb.g ], [ %i.at, %bb.j ], [ f0xFF7FFFFF, %bb.h ]
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIfEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, float %.1.i)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !3494 ; 4 uses
  %i.aw = fcmp ogt double %i.av, f0x47EFFFFFE0000000
  br i1 %i.aw, label %_ZN6duckdbL17DoubleToFloatDownEd.exit124, label %bb.k

bb.k:                                             ; preds = %_ZN6duckdbL17DoubleToFloatDownEd.exit
  %i.ax = fcmp ugt double %i.av, f0xC7EFFFFFE0000000
  br i1 %i.ax, label %bb.l, label %_ZN6duckdbL17DoubleToFloatDownEd.exit124

bb.l:                                             ; preds = %bb.k
  %i.ay = fptrunc double %i.av to float           ; 3 uses
  %i.az = fpext float %i.ay to double
  %i.ba = fcmp ult double %i.av, %i.az
  br i1 %i.ba, label %bb.m, label %_ZN6duckdbL17DoubleToFloatDownEd.exit124

bb.m:                                             ; preds = %bb.l
  %i.bb = tail call noundef float @nextafterf(float noundef %i.ay, float noundef f0xFF7FFFFF) #46, !tbaa !165
  br label %_ZN6duckdbL17DoubleToFloatDownEd.exit124

_ZN6duckdbL17DoubleToFloatDownEd.exit124:         ; preds = %_ZN6duckdbL17DoubleToFloatDownEd.exit, %bb.k, %bb.l, %bb.m
  %.1.i123 = phi float [ %i.ay, %bb.l ], [ f0x7F7FFFFF, %_ZN6duckdbL17DoubleToFloatDownEd.exit ], [ %i.bb, %bb.m ], [ f0xFF7FFFFF, %bb.k ]
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIfEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, float %.1.i123)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !3495 ; 4 uses
  %i.be = fcmp ult double %i.bd, f0x47EFFFFFE0000000
  br i1 %i.be, label %bb.n, label %_ZN6duckdbL15DoubleToFloatUpEd.exit

bb.n:                                             ; preds = %_ZN6duckdbL17DoubleToFloatDownEd.exit124
  %i.bf = fcmp olt double %i.bd, f0xC7EFFFFFE0000000
  br i1 %i.bf, label %_ZN6duckdbL15DoubleToFloatUpEd.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = fptrunc double %i.bd to float           ; 3 uses
  %i.bh = fpext float %i.bg to double
  %i.bi = fcmp ugt double %i.bd, %i.bh
  br i1 %i.bi, label %bb.p, label %_ZN6duckdbL15DoubleToFloatUpEd.exit

bb.p:                                             ; preds = %bb.o
  %i.bj = tail call noundef float @nextafterf(float noundef %i.bg, float noundef f0x7F7FFFFF) #46, !tbaa !165
  br label %_ZN6duckdbL15DoubleToFloatUpEd.exit

_ZN6duckdbL15DoubleToFloatUpEd.exit:              ; preds = %_ZN6duckdbL17DoubleToFloatDownEd.exit124, %bb.n, %bb.o, %bb.p
  %.1.i125 = phi float [ %i.bg, %bb.o ], [ f0x7F7FFFFF, %_ZN6duckdbL17DoubleToFloatDownEd.exit124 ], [ %i.bj, %bb.p ], [ f0xFF7FFFFF, %bb.n ]
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIfEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, float %.1.i125)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !3496 ; 4 uses
  %i.bm = fcmp ult double %i.bl, f0x47EFFFFFE0000000
  br i1 %i.bm, label %bb.q, label %_ZN6duckdbL15DoubleToFloatUpEd.exit127

bb.q:                                             ; preds = %_ZN6duckdbL15DoubleToFloatUpEd.exit
  %i.bn = fcmp olt double %i.bl, f0xC7EFFFFFE0000000
  br i1 %i.bn, label %_ZN6duckdbL15DoubleToFloatUpEd.exit127, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = fptrunc double %i.bl to float           ; 3 uses
  %i.bp = fpext float %i.bo to double
  %i.bq = fcmp ugt double %i.bl, %i.bp
  br i1 %i.bq, label %bb.s, label %_ZN6duckdbL15DoubleToFloatUpEd.exit127

bb.s:                                             ; preds = %bb.r
  %i.br = tail call noundef float @nextafterf(float noundef %i.bo, float noundef f0x7F7FFFFF) #46, !tbaa !165
  br label %_ZN6duckdbL15DoubleToFloatUpEd.exit127

_ZN6duckdbL15DoubleToFloatUpEd.exit127:           ; preds = %_ZN6duckdbL15DoubleToFloatUpEd.exit, %bb.q, %bb.r, %bb.s
  %.1.i126 = phi float [ %i.bo, %bb.r ], [ f0x7F7FFFFF, %_ZN6duckdbL15DoubleToFloatUpEd.exit ], [ %i.br, %bb.s ], [ f0xFF7FFFFF, %bb.q ]
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIfEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, float %.1.i126)
  %i.bs = load i8, ptr %i.h, align 1, !tbaa !854, !range !334, !noundef !227
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %_ZN6duckdbL15DoubleToFloatUpEd.exit127
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !3497 ; 4 uses
  %i.bw = fcmp ogt double %i.bv, f0x47EFFFFFE0000000
  br i1 %i.bw, label %_ZN6duckdbL17DoubleToFloatDownEd.exit129, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = fcmp ugt double %i.bv, f0xC7EFFFFFE0000000
  br i1 %i.bx, label %bb.v, label %_ZN6duckdbL17DoubleToFloatDownEd.exit129

bb.v:                                             ; preds = %bb.u
  %i.by = fptrunc double %i.bv to float           ; 3 uses
  %i.bz = fpext float %i.by to double
  %i.ca = fcmp ult double %i.bv, %i.bz
  br i1 %i.ca, label %bb.w, label %_ZN6duckdbL17DoubleToFloatDownEd.exit129

bb.w:                                             ; preds = %bb.v
  %i.cb = tail call noundef float @nextafterf(float noundef %i.by, float noundef f0xFF7FFFFF) #46, !tbaa !165
  br label %_ZN6duckdbL17DoubleToFloatDownEd.exit129

_ZN6duckdbL17DoubleToFloatDownEd.exit129:         ; preds = %bb.t, %bb.u, %bb.v, %bb.w
  %.1.i128 = phi float [ %i.by, %bb.v ], [ f0x7F7FFFFF, %bb.t ], [ %i.cb, %bb.w ], [ f0xFF7FFFFF, %bb.u ]
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIfEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, float %.1.i128)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !3498 ; 4 uses
  %i.ce = fcmp ult double %i.cd, f0x47EFFFFFE0000000
  br i1 %i.ce, label %bb.x, label %_ZN6duckdbL15DoubleToFloatUpEd.exit131

bb.x:                                             ; preds = %_ZN6duckdbL17DoubleToFloatDownEd.exit129
  %i.cf = fcmp olt double %i.cd, f0xC7EFFFFFE0000000
  br i1 %i.cf, label %_ZN6duckdbL15DoubleToFloatUpEd.exit131, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = fptrunc double %i.cd to float           ; 3 uses
  %i.ch = fpext float %i.cg to double
  %i.ci = fcmp ugt double %i.cd, %i.ch
  br i1 %i.ci, label %bb.z, label %_ZN6duckdbL15DoubleToFloatUpEd.exit131

bb.z:                                             ; preds = %bb.y
  %i.cj = tail call noundef float @nextafterf(float noundef %i.cg, float noundef f0x7F7FFFFF) #46, !tbaa !165
  br label %_ZN6duckdbL15DoubleToFloatUpEd.exit131

_ZN6duckdbL15DoubleToFloatUpEd.exit131:           ; preds = %_ZN6duckdbL17DoubleToFloatDownEd.exit129, %bb.x, %bb.y, %bb.z
  %.1.i130 = phi float [ %i.cg, %bb.y ], [ f0x7F7FFFFF, %_ZN6duckdbL17DoubleToFloatDownEd.exit129 ], [ %i.cj, %bb.z ], [ f0xFF7FFFFF, %bb.x ]
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIfEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, float %.1.i130)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6duckdbL15DoubleToFloatUpEd.exit131, %_ZN6duckdbL15DoubleToFloatUpEd.exit127
  %i.ck = load i8, ptr %i.j, align 2, !tbaa !855, !range !334, !noundef !227
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !3499 ; 4 uses
  %i.co = fcmp ogt double %i.cn, f0x47EFFFFFE0000000
  br i1 %i.co, label %_ZN6duckdbL17DoubleToFloatDownEd.exit133, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = fcmp ugt double %i.cn, f0xC7EFFFFFE0000000
  br i1 %i.cp, label %bb.ad, label %_ZN6duckdbL17DoubleToFloatDownEd.exit133

bb.ad:                                            ; preds = %bb.ac
  %i.cq = fptrunc double %i.cn to float           ; 3 uses
  %i.cr = fpext float %i.cq to double
  %i.cs = fcmp ult double %i.cn, %i.cr
  br i1 %i.cs, label %bb.ae, label %_ZN6duckdbL17DoubleToFloatDownEd.exit133

bb.ae:                                            ; preds = %bb.ad
  %i.ct = tail call noundef float @nextafterf(float noundef %i.cq, float noundef f0xFF7FFFFF) #46, !tbaa !165
  br label %_ZN6duckdbL17DoubleToFloatDownEd.exit133

_ZN6duckdbL17DoubleToFloatDownEd.exit133:         ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.1.i132 = phi float [ %i.cq, %bb.ad ], [ f0x7F7FFFFF, %bb.ab ], [ %i.ct, %bb.ae ], [ f0xFF7FFFFF, %bb.ac ]
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIfEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, float %.1.i132)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !3500 ; 4 uses
  %i.cw = fcmp ult double %i.cv, f0x47EFFFFFE0000000
  br i1 %i.cw, label %bb.af, label %_ZN6duckdbL15DoubleToFloatUpEd.exit135

bb.af:                                            ; preds = %_ZN6duckdbL17DoubleToFloatDownEd.exit133
  %i.cx = fcmp olt double %i.cv, f0xC7EFFFFFE0000000
  br i1 %i.cx, label %_ZN6duckdbL15DoubleToFloatUpEd.exit135, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cy = fptrunc double %i.cv to float           ; 3 uses
  %i.cz = fpext float %i.cy to double
  %i.da = fcmp ugt double %i.cv, %i.cz
  br i1 %i.da, label %bb.ah, label %_ZN6duckdbL15DoubleToFloatUpEd.exit135

bb.ah:                                            ; preds = %bb.ag
  %i.db = tail call noundef float @nextafterf(float noundef %i.cy, float noundef f0x7F7FFFFF) #46, !tbaa !165
  br label %_ZN6duckdbL15DoubleToFloatUpEd.exit135

_ZN6duckdbL15DoubleToFloatUpEd.exit135:           ; preds = %_ZN6duckdbL17DoubleToFloatDownEd.exit133, %bb.af, %bb.ag, %bb.ah
  %.1.i134 = phi float [ %i.cy, %bb.ag ], [ f0x7F7FFFFF, %_ZN6duckdbL17DoubleToFloatDownEd.exit133 ], [ %i.db, %bb.ah ], [ f0xFF7FFFFF, %bb.af ]
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIfEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, float %.1.i134)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aa, %_ZN6duckdbL15DoubleToFloatUpEd.exit135, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteItEEvRKT_.exit
  %i.dc = load i8, ptr %i.h, align 1, !tbaa !854, !range !334, !noundef !227
  %i.dd = or disjoint i8 %i.dc, 2
  %i.de = load i8, ptr %i.j, align 2, !tbaa !855, !range !334, !noundef !227
  %narrow = add nuw nsw i8 %i.dd, %i.de
  %i.df = shl nuw nsw i8 %narrow, 3
  %i.dg = zext nneg i8 %i.df to i64               ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %.val203 = load ptr, ptr %i.dh, align 8, !tbaa !736
  %.val102204 = load ptr, ptr %i.di, align 8, !tbaa !754
  %.not181205 = icmp ult ptr %.val203, %.val102204
  br i1 %.not181205, label %.lr.ph207, label %._crit_edge208

.lr.ph207:                                        ; preds = %bb.ai
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 16
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph207, %bb.cd
  %i.dl = tail call fastcc noundef zeroext i8 @_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIhLb1EEET_v(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  %.not = icmp eq i8 %i.dl, 1
  br i1 %.not, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dm = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.429, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.dm, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ce unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.ak
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  br label %common.resume.sink.split

bb.an:                                            ; preds = %bb.am, %bb.al
  %.090 = phi i1 [ false, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dp = load ptr, ptr %14, align 8, !tbaa !235  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.an
  call void @_ZdlPv(ptr noundef %i.dp) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  br i1 %.090, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  br i1 %.090, label %common.resume.sink.split, label %common.resume

bb.ao:                                            ; preds = %bb.aj
  %i.ds = tail call fastcc noundef i32 @_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjLb1EEET_v(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.dt = urem i32 %i.ds, 1000                    ; 2 uses
  %i.du = trunc i32 %i.dt to i8
  %i.dv = and i32 %i.dt, 255
  %i.dw = add nsw i32 %i.dv, -1
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 %i.dw)
  switch i8 %i.du, label %bb.cd [
    i8 1, label %bb.ap
    i8 2, label %bb.as
    i8 3, label %bb.at
    i8 4, label %bb.by
    i8 5, label %bb.by
    i8 6, label %bb.by
    i8 7, label %bb.by
    i8 0, label %bb.bz
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.dx = tail call fastcc noundef ptr @_ZN6duckdb12_GLOBAL__N_110BlobReader7ReserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.dg) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store <4 x double> splat (double +qnan), ptr %.sroa.0, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(1) %i.dx, i64 %i.dg, i1 false)
  %.sroa.0.0..sroa.0.0. = load <4 x double>, ptr %.sroa.0, align 16
  %.fr = freeze <4 x double> %.sroa.0.0..sroa.0.0.
  %i.dy = fcmp ord <4 x double> %.fr, zeroinitializer
  %i.dz = bitcast <4 x i1> %i.dy to i4
  %i.ea = icmp eq i4 %i.dz, 0
  br i1 %i.ea, label %.critedge.loopexit, label %bb.aq

.critedge.loopexit:                               ; preds = %bb.ap
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 0)
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 1)
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.dx, i64 noundef %i.dg)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.critedge.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.cd

bb.as:                                            ; preds = %bb.ao
  %i.eb = tail call fastcc noundef i32 @_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjLb1EEET_v(ptr noundef nonnull align 8 dereferenceable(24) %i.g) ; 2 uses
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 %i.eb)
  %i.ec = zext i32 %i.eb to i64
  %i.ed = mul nuw nsw i64 %i.ec, %i.dg            ; 2 uses
  %i.ee = tail call fastcc noundef ptr @_ZN6duckdb12_GLOBAL__N_110BlobReader7ReserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ed)
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.ee, i64 noundef %i.ed)
  br label %bb.cd

bb.at:                                            ; preds = %bb.ao
  %i.ef = tail call fastcc noundef i32 @_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjLb1EEET_v(ptr noundef nonnull align 8 dereferenceable(24) %i.g) ; 6 uses
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 %i.ef)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !3501
  %i.eg = zext i32 %i.ef to i64
  %i.eh = shl nuw nsw i64 %i.eg, 2
  %i.ei = shl i32 %i.ef, 2
  %i.ej = and i32 %i.ei, 4
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = load ptr, ptr %i.s, align 8, !tbaa !743
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.eh
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ek ; 2 uses
  %i.eo = load ptr, ptr %i.v, align 8, !tbaa !744
  %i.ep = icmp ugt ptr %i.en, %i.eo
  br i1 %i.ep, label %bb.au, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter4SkipEm.exit

bb.au:                                            ; preds = %bb.at
  %i.eq = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.349, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.av unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i136

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  %i.er = load ptr, ptr %i.s, align 8, !tbaa !743
  %i.es = load ptr, ptr %1, align 8, !tbaa !742
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  store i64 %i.ev, ptr %i.e, align 8, !tbaa !245
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  invoke void @__cxa_throw(ptr nonnull %i.eq, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ay unwind label %bb.ax

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i136: ; preds = %bb.au
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br label %common.resume.sink.split

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.0.i = phi i1 [ false, %bb.aw ], [ true, %bb.av ] ; 2 uses
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  %i.ey = load ptr, ptr %10, align 8, !tbaa !235  ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137: ; preds = %bb.ax
  call void @_ZdlPv(ptr noundef %i.ey) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i138: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

bb.ay:                                            ; preds = %bb.aw
  unreachable

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter4SkipEm.exit: ; preds = %bb.at
  store ptr %i.en, ptr %i.s, align 8, !tbaa !743
  %.not209 = icmp eq i32 %i.ef, 0
  br i1 %.not209, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter4SkipEm.exit
  %i.fb = load ptr, ptr %i.dk, align 8
  %.promoted = load ptr, ptr %i.dj, align 8
  br label %bb.ba

bb.az:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteEPKcm.exit
  store ptr %i.fu, ptr %i.dj, align 8
  %i.fc = and i32 %i.ef, 1
  %.not97 = icmp eq i32 %i.fc, 0
  br i1 %.not97, label %.thread, label %bb.bx

bb.ba:                                            ; preds = %.lr.ph, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteEPKcm.exit
  %i.fd = phi ptr [ %.promoted, %.lr.ph ], [ %i.fu, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteEPKcm.exit ] ; 3 uses
  %.082192 = phi i32 [ 0, %.lr.ph ], [ %i.hp, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteEPKcm.exit ]
  %i.fe = load ptr, ptr %i.dh, align 8, !tbaa !736 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4 ; 2 uses
  %i.fg = load ptr, ptr %i.di, align 8, !tbaa !754
  %i.fh = icmp ugt ptr %i.ff, %i.fg
  br i1 %i.fh, label %bb.bb, label %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjLb1EEET_v.exit

bb.bb:                                            ; preds = %bb.ba
  %i.fi = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.348, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i139

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  %i.fj = load ptr, ptr %i.dh, align 8, !tbaa !736
  %i.fk = load ptr, ptr %i.g, align 8, !tbaa !735
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  store i64 %i.fn, ptr %i.d, align 8, !tbaa !245
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  invoke void @__cxa_throw(ptr nonnull %i.fi, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.bf unwind label %bb.be

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i139: ; preds = %bb.bb
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  br label %common.resume.sink.split

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0.i140 = phi i1 [ false, %bb.bd ], [ true, %bb.bc ] ; 2 uses
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  %i.fq = load ptr, ptr %8, align 8, !tbaa !235   ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141: ; preds = %bb.be
  call void @_ZdlPv(ptr noundef %i.fq) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  br i1 %.0.i140, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i142: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  br i1 %.0.i140, label %common.resume.sink.split, label %common.resume

bb.bf:                                            ; preds = %bb.bd
  unreachable

_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjLb1EEET_v.exit: ; preds = %bb.ba
  %i.ft = load i32, ptr %i.fe, align 1            ; 3 uses
  store ptr %i.ff, ptr %i.dh, align 8, !tbaa !736
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fd, i64 4 ; 3 uses
  %i.fv = icmp ugt ptr %i.fu, %i.fb
  br i1 %i.fv, label %bb.bg, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit

bb.bg:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjLb1EEET_v.exit
  %i.fw = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.350, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.bh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i143

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  %i.fx = load ptr, ptr %16, align 8, !tbaa !742
  %i.fy = ptrtoint ptr %i.fd to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  store i64 %i.ga, ptr %i.c, align 8, !tbaa !245
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.bi unwind label %bb.bj

end_hunk_0
