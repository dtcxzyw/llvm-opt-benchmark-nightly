Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/exact_geodesic?download=true
inline.NumInlined: 2805
inline.NumDeleted: 1107
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 23
begin_hunk_0

$_ZTSN3igl8geodesic22GeodesicAlgorithmExactE = comdat any

@.str = private unnamed_addr constant [6 x i8] c"exact\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"subdivision\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@_ZTVN3igl8geodesic21GeodesicAlgorithmBaseE = linkonce_odr dso_local constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN3igl8geodesic21GeodesicAlgorithmBaseE, ptr @_ZN3igl8geodesic21GeodesicAlgorithmBaseD2Ev, ptr @_ZN3igl8geodesic21GeodesicAlgorithmBaseD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN3igl8geodesic21GeodesicAlgorithmBase16print_statisticsEv, ptr @_ZN3igl8geodesic21GeodesicAlgorithmBase4nameB5cxx11Ev] }, comdat, align 8
@_ZTIN3igl8geodesic21GeodesicAlgorithmBaseE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3igl8geodesic21GeodesicAlgorithmBaseE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN3igl8geodesic21GeodesicAlgorithmBaseE = linkonce_odr dso_local constant [39 x i8] c"N3igl8geodesic21GeodesicAlgorithmBaseE\00", comdat, align 1
@_ZTVN3igl8geodesic22GeodesicAlgorithmExactE = linkonce_odr dso_local constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN3igl8geodesic22GeodesicAlgorithmExactE, ptr @_ZN3igl8geodesic22GeodesicAlgorithmExactD2Ev, ptr @_ZN3igl8geodesic22GeodesicAlgorithmExactD0Ev, ptr @_ZN3igl8geodesic22GeodesicAlgorithmExact9propagateERSt6vectorINS0_12SurfacePointESaIS3_EEdPS5_, ptr @_ZN3igl8geodesic22GeodesicAlgorithmExact10trace_backERNS0_12SurfacePointERSt6vectorIS2_SaIS2_EE, ptr @_ZN3igl8geodesic22GeodesicAlgorithmExact11best_sourceERNS0_12SurfacePointERd, ptr @_ZN3igl8geodesic22GeodesicAlgorithmExact16print_statisticsEv, ptr @_ZN3igl8geodesic21GeodesicAlgorithmBase4nameB5cxx11Ev] }, comdat, align 8
@_ZTIN3igl8geodesic22GeodesicAlgorithmExactE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3igl8geodesic22GeodesicAlgorithmExactE, ptr @_ZTIN3igl8geodesic21GeodesicAlgorithmBaseE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3igl8geodesic22GeodesicAlgorithmExactE = linkonce_odr dso_local constant [40 x i8] c"N3igl8geodesic22GeodesicAlgorithmExactE\00", comdat, align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"propagation step took \00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c" seconds \00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"uses about \00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Mb of memory\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c" total intervals, or \00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c" intervals per edge\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"maximum interval queue size is \00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"number of interval propagations is \00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8geodesic21GeodesicAlgorithmBase4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !248
  switch i32 %i.b, label %._crit_edge.i.i12 [
    i32 0, label %._crit_edge.i.i
    i32 1, label %._crit_edge.i.i4
    i32 2, label %._crit_edge.i.i8
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str, i64 5, i1 false)
  br label %bb.b

._crit_edge.i.i4:                                 ; preds = %bb.a
  store i64 7021802808096221540, ptr %i.c, align 8
  br label %bb.b

._crit_edge.i.i8:                                 ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.c, ptr noundef nonnull align 1 dereferenceable(11) @.str.4, i64 11, i1 false)
  br label %bb.b

._crit_edge.i.i12:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.c, ptr noundef nonnull align 1 dereferenceable(9) @.str.5, i64 9, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i12, %._crit_edge.i.i8, %._crit_edge.i.i4, %._crit_edge.i.i
  %.sink = phi i64 [ 9, %._crit_edge.i.i12 ], [ 11, %._crit_edge.i.i8 ], [ 8, %._crit_edge.i.i4 ], [ 5, %._crit_edge.i.i ]
  %.sink19 = phi i64 [ 25, %._crit_edge.i.i12 ], [ 27, %._crit_edge.i.i8 ], [ 24, %._crit_edge.i.i4 ], [ 21, %._crit_edge.i.i ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.d, align 8, !tbaa !250
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sink19
  store i8 0, ptr %i.e, align 1, !tbaa !34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8geodesic22GeodesicAlgorithmExact9propagateERSt6vectorINS0_12SurfacePointESaIS3_EEdPS5_(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca [2 x %"struct.igl::geodesic::IntervalWithStop"], align 16 ; 76 uses
  tail call void @_ZN3igl8geodesic21GeodesicAlgorithmBase19set_stop_conditionsEPSt6vectorINS0_12SurfacePointESaIS3_EEd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %3, double noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @_ZN3igl8geodesic13SortedSources10initializeERSt6vectorINS0_12SurfacePointESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1)
  tail call void @_ZN3igl8geodesic22GeodesicAlgorithmExact27initialize_propagation_dataEv(ptr noundef nonnull align 8 dereferenceable(512) %0)
  %i.c = tail call i64 @clock() #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 3 uses
  store i32 0, ptr %i.d, align 4, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %.2.i.ph.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !83   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.thread165, label %.lr.ph171

.lr.ph171:                                        ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 20 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 132 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 132
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 132
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 104
  br label %bb.a

.loopexit.loopexit:                               ; preds = %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_propagated_parametersEdddddddbbbbPNS0_16IntervalWithStopE.exit122
  %.pre190 = load i64, ptr %i.f, align 8, !tbaa !83
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %i.ap = phi i64 [ %.pre190, %.loopexit.loopexit ], [ %i.be, %bb.c ] ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.thread165, label %bb.a

bb.a:                                             ; preds = %.lr.ph171, %.loopexit
  %i.ar = phi i64 [ %i.g, %.lr.ph171 ], [ %i.ap, %.loopexit ]
  %i.as = trunc i64 %i.ar to i32
  %i.at = load i32, ptr %i.e, align 8, !tbaa !35
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.at, i32 %i.as)
  store i32 %.sroa.speculated, ptr %i.e, align 8, !tbaa !82
  %i.au = load i32, ptr %i.d, align 4, !tbaa !81
  %i.av = add i32 %i.au, 1                        ; 2 uses
  store i32 %i.av, ptr %i.d, align 4, !tbaa !81
  %i.aw = urem i32 %i.av, 10
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ay = call noundef zeroext i1 @_ZN3igl8geodesic22GeodesicAlgorithmExact21check_stop_conditionsERj(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.ay, label %bb.ca, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.az = load ptr, ptr %i.i, align 8, !tbaa !84  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !85 ; 10 uses
  %i.bc = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 40) #23
  %i.bd = load i64, ptr %i.f, align 8, !tbaa !83
  %i.be = add i64 %i.bd, -1                       ; 2 uses
  store i64 %i.be, ptr %i.f, align 8, !tbaa !83
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !86 ; 5 uses
  %i.bh = load double, ptr %i.bb, align 8, !tbaa !87
  %i.bi = fcmp oeq double %i.bh, 0.000000e+00     ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 40 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !85
  %i.bl = icmp eq ptr %i.bk, null                 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !90 ; 2 uses
  %.not172 = icmp eq i32 %i.bo, 0
  br i1 %.not172, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !93 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !95
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !97, !range !253, !noundef !254
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !95
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !97, !range !253, !noundef !254
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 60 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 48 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %or.cond5.i = and i1 %i.bl, %i.bu               ; 2 uses
  %or.cond3.i = and i1 %i.bi, %i.by               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 56 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.ch = icmp eq i32 %i.bo, 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_propagated_parametersEdddddddbbbbPNS0_16IntervalWithStopE.exit122
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_propagated_parametersEdddddddbbbbPNS0_16IntervalWithStopE.exit122 ] ; 3 uses
  %i.ci = phi i1 [ %i.ch, %.lr.ph ], [ false, %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_propagated_parametersEdddddddbbbbPNS0_16IntervalWithStopE.exit122 ]
  br i1 %i.ci, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cj = trunc nuw i64 %indvars.iv to i32
  switch i32 %i.cj, label %bb.h [
    i32 0, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ck = load i32, ptr %i.bz, align 4, !tbaa !98
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_propagated_parametersEdddddddbbbbPNS0_16IntervalWithStopE.exit122, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.cm = load i32, ptr %i.bz, align 4, !tbaa !98
  %i.cn = icmp eq i32 %i.cm, 1
  br i1 %i.cn, label %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_propagated_parametersEdddddddbbbbPNS0_16IntervalWithStopE.exit122, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g, %bb.d
  %i.co = load ptr, ptr %i.ca, align 8, !tbaa !99
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !101 ; 6 uses
  %i.cr = load ptr, ptr %i.bm, align 8, !tbaa !93 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !95
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !104 ; 5 uses
  %i.cv = load i32, ptr %i.cb, align 8, !tbaa !35 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !86 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !35
  %.not.i = icmp eq i32 %i.cv, %i.cz
  %.pre.pre.pre.pre = load i32, ptr %i.cw, align 4, !tbaa !35 ; 9 uses
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !93 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !95
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !35
  %i.df = icmp eq i32 %i.de, %.pre.pre.pre.pre
  br i1 %i.df, label %bb.o, label %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.i

_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.i: ; preds = %bb.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !95
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !35
  %i.dk = icmp eq i32 %i.dj, %.pre.pre.pre.pre
  br i1 %i.dk, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.i, %bb.h
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !86 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !35
  %.not.1.i = icmp eq i32 %i.cv, %i.do
  br i1 %.not.1.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !93 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !95
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !35
  %i.du = icmp eq i32 %i.dt, %.pre.pre.pre.pre
  br i1 %i.du, label %bb.o, label %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i

_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i: ; preds = %bb.k
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !95
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !35
  %i.dz = icmp eq i32 %i.dy, %.pre.pre.pre.pre
  br i1 %i.dz, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i, %bb.j
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !86 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !35
  %.not.2.i = icmp eq i32 %i.cv, %i.ed
  br i1 %.not.2.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !93 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !95
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !35
  %i.ej = icmp eq i32 %i.ei, %.pre.pre.pre.pre
  br i1 %i.ej, label %bb.o, label %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.2.i

_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.2.i: ; preds = %bb.m
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !95
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %i.en = load i32, ptr %i.em, align 4, !tbaa !35
  %i.eo = icmp eq i32 %i.en, %.pre.pre.pre.pre
  br i1 %i.eo, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.2.i, %bb.l
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.i, %bb.k, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i, %bb.m, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.2.i, %bb.n
  %i.ep = phi ptr [ null, %bb.n ], [ %i.cx, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.i ], [ %i.cx, %bb.i ], [ %i.dm, %bb.k ], [ %i.dm, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i ], [ %i.eb, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.2.i ], [ %i.eb, %bb.m ] ; 8 uses
  %5 = load <2 x double>, ptr %i.cc, align 8, !tbaa !87 ; 6 uses
  %6 = extractelement <2 x double> %5, i64 1      ; 6 uses
  %7 = extractelement <2 x double> %5, i64 0      ; 12 uses
  %i.eq = load double, ptr %i.ce, align 8, !tbaa !87 ; 7 uses
  %i.er = load double, ptr %i.bb, align 8, !tbaa !87 ; 3 uses
  %i.es = load ptr, ptr %i.bj, align 8, !tbaa !105 ; 2 uses
  %.not.i95 = icmp eq ptr %i.es, null
  %i.et = load ptr, ptr %i.bf, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %.in.i = select i1 %.not.i95, ptr %i.eu, ptr %i.es
  %i.ev = load double, ptr %.in.i, align 8, !tbaa !87 ; 9 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !93 ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !95
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !35
  %i.fb = icmp eq i32 %i.fa, %.pre.pre.pre.pre
  br i1 %i.fb, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !95
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !35
  %i.fg = icmp eq i32 %i.ff, %.pre.pre.pre.pre
  br i1 %i.fg, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !95
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !35
  %i.fl = icmp eq i32 %i.fk, %.pre.pre.pre.pre
  br i1 %i.fl, label %bb.r, label %_ZN3igl8geodesic4Face12vertex_angleEPNS0_6VertexE.exit

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.lcssa.i = phi i64 [ 0, %bb.o ], [ 1, %bb.p ], [ 2, %bb.q ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %.lcssa.i
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !87
  br label %_ZN3igl8geodesic4Face12vertex_angleEPNS0_6VertexE.exit

_ZN3igl8geodesic4Face12vertex_angleEPNS0_6VertexE.exit: ; preds = %bb.r, %bb.q
  %i.fp = phi double [ %i.fo, %bb.r ], [ 0.000000e+00, %bb.q ] ; 6 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ep, i64 56 ; 2 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !87 ; 13 uses
  %i.fs = call noundef double @llvm.fabs.f64(double %6)
  %i.ft = fcmp ugt double %i.fs, 1.000000e-30
  br i1 %i.ft, label %bb.y, label %bb.s

bb.s:                                             ; preds = %_ZN3igl8geodesic4Face12vertex_angleEPNS0_6VertexE.exit
  %i.fu = fcmp ole double %7, 0.000000e+00
  %or.cond.i = and i1 %i.bi, %i.fu
  br i1 %or.cond.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double 0.000000e+00, ptr %4, align 16, !tbaa !87
  store double %i.fr, ptr %i.k, align 16, !tbaa !87
  %i.fv = fsub double %i.eq, %7
  store double %i.fv, ptr %i.l, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br label %bb.aj

bb.u:                                             ; preds = %bb.s
  %i.fw = fcmp oge double %7, %i.ev
  %or.cond140.not.i = and i1 %i.bl, %i.fw
  br i1 %or.cond140.not.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store double 0.000000e+00, ptr %4, align 16, !tbaa !87
  store double %i.fr, ptr %i.k, align 16, !tbaa !87
  %i.fx = fadd double %7, %i.eq
  %i.fy = fsub double %i.fx, %i.ev
  store double %i.fy, ptr %i.l, align 8, !tbaa !87
  %i.fz = call double @cos(double noundef %i.fp) #22
  %i.ga = fmul double %i.ev, %i.fz
  store double %i.ga, ptr %i.m, align 16, !tbaa !87
  %i.gb = fneg double %i.ev
  %i.gc = call double @sin(double noundef %i.fp) #22
  %i.gd = fmul double %i.gc, %i.gb
  store double %i.gd, ptr %i.n, align 8, !tbaa !87
  br label %bb.aj

bb.w:                                             ; preds = %bb.u
  %i.ge = fcmp ult double %7, %i.er
  %i.gf = fcmp ugt double %7, %i.ev
  %or.cond141.i = or i1 %i.ge, %i.gf
  br i1 %or.cond141.i, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  store double %i.fr, ptr %i.k, align 16, !tbaa !87
  %i.gg = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.eq, i64 1
  store <2 x double> %i.gg, ptr %4, align 16, !tbaa !87
  %i.gh = call double @cos(double noundef %i.fp) #22
  %i.gi = fmul double %7, %i.gh
  store double %i.gi, ptr %i.m, align 16, !tbaa !87
  %i.gj = fneg double %7
  %i.gk = call double @sin(double noundef %i.fp) #22
  %i.gl = fmul double %i.gk, %i.gj
  store double %i.gl, ptr %i.n, align 8, !tbaa !87
  br label %bb.aj

bb.y:                                             ; preds = %_ZN3igl8geodesic4Face12vertex_angleEPNS0_6VertexE.exit
  %i.gm = call double @sin(double noundef %i.fp) #22 ; 7 uses
  %i.gn = call double @cos(double noundef %i.fp) #22 ; 6 uses
  %i.go = fsub double %7, %i.er
  %i.gp = fneg double %6                          ; 3 uses
  %i.gq = fmul double %i.gn, %i.gp                ; 2 uses
  %i.gr = call double @llvm.fmuladd.f64(double %i.gm, double %i.go, double %i.gq) ; 3 uses
  %i.gs = fcmp olt double %i.gr, 0.000000e+00
  br i1 %i.gs, label %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gt = fmul double %i.er, %i.gp                ; 2 uses
  %i.gu = fcmp olt double %i.gt, 1.000000e-30
  br i1 %i.gu, label %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gv = fcmp olt double %i.gr, 1.000000e-30
  br i1 %i.gv, label %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gw = fdiv double %i.gt, %i.gr
  br label %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit.i

_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit.i: ; preds = %bb.ab, %bb.z
  %.1.i.i = phi double [ 0.000000e+00, %bb.z ], [ %i.gw, %bb.ab ] ; 6 uses
  %i.gx = fcmp ult double %.1.i.i, %i.fr
  br i1 %i.gx, label %bb.ad, label %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit.thread.i

_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit.thread.i: ; preds = %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit.i, %bb.aa, %bb.y
  br i1 %or.cond3.i, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit.thread.i
  store double 0.000000e+00, ptr %4, align 16, !tbaa !87
  store double %i.fr, ptr %i.k, align 16, !tbaa !87
  %i.gy = fmul double %6, %6
  %i.gz = call double @llvm.fmuladd.f64(double %7, double %7, double %i.gy)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.gz)
  %i.ha = fadd double %i.eq, %sqrt.i
  store double %i.ha, ptr %i.l, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br label %bb.aj

bb.ad:                                            ; preds = %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit.i
  %i.hb = fsub double %7, %i.ev                   ; 3 uses
  %i.hc = call double @llvm.fmuladd.f64(double %i.gm, double %i.hb, double %i.gq) ; 3 uses
  %i.hd = fcmp olt double %i.hc, 0.000000e+00
  br i1 %i.hd, label %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit145.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.he = fmul double %i.ev, %i.gp                ; 2 uses
  %i.hf = fcmp olt double %i.he, 1.000000e-30
  br i1 %i.hf, label %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit145.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hg = fcmp olt double %i.hc, 1.000000e-30
  br i1 %i.hg, label %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit145.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hh = fdiv double %i.he, %i.hc
  br label %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit145.i

_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit145.i: ; preds = %bb.ag, %bb.ae
  %.1.i144.i = phi double [ 0.000000e+00, %bb.ae ], [ %i.hh, %bb.ag ] ; 5 uses
  %i.hi = fcmp ult double %.1.i144.i, %i.fr
  br i1 %i.hi, label %bb.ah, label %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit145.thread.i

_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit145.thread.i: ; preds = %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit145.i, %bb.af, %bb.ad
  store double %.1.i.i, ptr %4, align 16, !tbaa !87
  store double %i.fr, ptr %i.k, align 16, !tbaa !87
  store double %i.eq, ptr %i.l, align 8, !tbaa !87
  %8 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hj = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.hk = insertelement <2 x double> %i.hj, double %i.gn, i64 1
  %i.hl = fmul <2 x double> %8, %i.hk
  %i.hm = fneg double %i.gm
  %i.hn = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.ho = insertelement <2 x double> %i.hn, double %i.hm, i64 1
  %i.hp = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> %i.hp, <2 x double> %i.hl)
  store <2 x double> %i.hq, ptr %i.m, align 16, !tbaa !87
  br label %bb.aj

bb.ah:                                            ; preds = %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit145.i
  store double %.1.i.i, ptr %4, align 16, !tbaa !87
  store double %.1.i144.i, ptr %i.k, align 16, !tbaa !87
  store double %i.eq, ptr %i.l, align 8, !tbaa !87
  %9 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hr = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.hs = insertelement <2 x double> %i.hr, double %i.gn, i64 1
  %i.ht = fmul <2 x double> %9, %i.hs
  %i.hu = fneg double %i.gm
  %i.hv = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.hw = insertelement <2 x double> %i.hv, double %i.hu, i64 1
  %i.hx = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> %i.hx, <2 x double> %i.ht)
  store <2 x double> %i.hy, ptr %i.m, align 16, !tbaa !87
  br i1 %or.cond5.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store double %.1.i144.i, ptr %.2.i.ph.sroa.gep, align 8, !tbaa !87
  store double %i.fr, ptr %i.o, align 8, !tbaa !87
  %i.hz = fmul double %6, %6
  %i.ia = call double @llvm.fmuladd.f64(double %i.hb, double %i.hb, double %i.hz)
  %sqrt151.i = call double @llvm.sqrt.f64(double %i.ia)
  %i.ib = fadd double %i.eq, %sqrt151.i
  store double %i.ib, ptr %i.p, align 16, !tbaa !87
  %i.ic = fmul double %i.ev, %i.gn
  store double %i.ic, ptr %i.q, align 8, !tbaa !87
  %i.id = fneg double %i.ev
  %i.ie = fmul double %i.gm, %i.id
  store double %i.ie, ptr %i.r, align 16, !tbaa !87
  br label %bb.aj

bb.aj:                                            ; preds = %bb.t, %bb.v, %bb.x, %bb.ac, %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit145.thread.i, %bb.ai, %bb.ah
  %i.if = phi double [ %.1.i144.i, %bb.ah ], [ %.1.i144.i, %bb.ai ], [ %i.fr, %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit145.thread.i ], [ %i.fr, %bb.ac ], [ %i.fr, %bb.x ], [ %i.fr, %bb.v ], [ %i.fr, %bb.t ] ; 3 uses
  %i.ig = phi double [ %.1.i.i, %bb.ah ], [ %.1.i.i, %bb.ai ], [ %.1.i.i, %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit145.thread.i ], [ 0.000000e+00, %bb.ac ], [ 0.000000e+00, %bb.x ], [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %bb.t ] ; 6 uses
  %i.ih = phi i1 [ false, %bb.ah ], [ true, %bb.ai ], [ false, %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit145.thread.i ], [ false, %bb.ac ], [ false, %bb.x ], [ false, %bb.v ], [ false, %bb.t ]
  %i.ii = phi i64 [ 72, %bb.ah ], [ 144, %bb.ai ], [ 72, %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit145.thread.i ], [ 72, %bb.ac ], [ 72, %bb.x ], [ 72, %bb.v ], [ 72, %bb.t ]
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.ij, i64 -8
  %i.il = load double, ptr %i.ik, align 8, !tbaa !87
  %i.im = load double, ptr %i.fq, align 8, !tbaa !87 ; 10 uses
  %i.in = fcmp oeq double %i.il, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !93
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !95
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 48
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !35
  %i.it = load ptr, ptr %i.bm, align 8, !tbaa !93
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !95
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 48
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !35
  %.not = icmp eq i32 %i.is, %i.iw
  %i.ix = fmul double %i.im, f0x3EB0C6F7A0B5ED8D  ; 4 uses
  br i1 %i.ih, label %bb.ak, label %.thread.i

bb.ak:                                            ; preds = %bb.aj
  %i.iy = load double, ptr %.2.i.ph.sroa.gep, align 8, !tbaa !87 ; 5 uses
  %i.iz = fcmp olt double %i.iy, %i.ig
  %i.ja = select i1 %i.iz, double %i.iy, double %i.ig ; 4 uses
  %i.jb = load double, ptr %i.o, align 8, !tbaa !87 ; 3 uses
  %i.jc = fcmp olt double %i.if, %i.jb
  %i.jd = select i1 %i.jc, double %i.jb, double %i.if ; 2 uses
  %i.je = fsub double %i.if, %i.ig
  %i.jf = fcmp olt double %i.je, %i.ix
  br i1 %i.jf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %.2.i.ph.sroa.gep, i64 64, i1 false)
  store double %i.ja, ptr %4, align 16, !tbaa !87
  store double %i.jd, ptr %i.k, align 16, !tbaa !87
  br label %.thread.i

bb.am:                                            ; preds = %bb.ak
  %i.jg = fsub double %i.jb, %i.iy
  %i.jh = fcmp olt double %i.jg, %i.ix
  br i1 %i.jh, label %bb.an, label %thread-pre-split.thread.i

bb.an:                                            ; preds = %bb.am
  store double %i.ja, ptr %4, align 16, !tbaa !87
  store double %i.jd, ptr %i.k, align 16, !tbaa !87
  br label %.thread.i

thread-pre-split.thread.i:                        ; preds = %bb.am
  %i.ji = fcmp ugt double %i.ig, %i.iy            ; 3 uses
  %..i96 = select i1 %i.ji, ptr %.2.i.ph.sroa.gep, ptr %4
  %.93.i = select i1 %i.ji, ptr %4, ptr %.2.i.ph.sroa.gep
  %i.jj = select i1 %i.ji, double %i.iy, double %i.ig
  br label %.thread.i

.thread.i:                                        ; preds = %bb.aj, %thread-pre-split.thread.i, %bb.an, %bb.al
  %i.jk = phi i1 [ true, %thread-pre-split.thread.i ], [ false, %bb.al ], [ false, %bb.an ], [ false, %bb.aj ] ; 2 uses
  %.0 = phi i32 [ 2, %thread-pre-split.thread.i ], [ 1, %bb.al ], [ 1, %bb.an ], [ 1, %bb.aj ] ; 2 uses
  %i.jl = phi double [ %i.jj, %thread-pre-split.thread.i ], [ %i.ja, %bb.al ], [ %i.ja, %bb.an ], [ %i.ig, %bb.aj ]
  %.090.i = phi ptr [ %..i96, %thread-pre-split.thread.i ], [ %4, %bb.al ], [ %4, %bb.an ], [ %4, %bb.aj ]
  %.089.i = phi ptr [ %.93.i, %thread-pre-split.thread.i ], [ %4, %bb.al ], [ %4, %bb.an ], [ %4, %bb.aj ]
  %i.jm = fcmp olt double %i.jl, %i.ix
  br i1 %i.jm, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread.i
  store double 0.000000e+00, ptr %.090.i, align 8, !tbaa !87
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.thread.i
  %i.jn = getelementptr inbounds nuw i8, ptr %.089.i, i64 64 ; 2 uses
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !87
  %i.jp = fsub double %i.im, %i.jo
  %i.jq = fcmp olt double %i.jp, %i.ix
  br i1 %i.jq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store double %i.im, ptr %i.jn, align 8, !tbaa !87
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !99
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !101
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 48
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !35
  %i.jw = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !35
  %i.jy = icmp ne i32 %i.jv, %i.jx
  %i.jz = zext i1 %i.jy to i32                    ; 4 uses
  br i1 %.not, label %.lr.ph.i, label %.lr.ph101.i

.lr.ph.i:                                         ; preds = %bb.ar
  %.pre109.i = load i32, ptr %i.cf, align 8, !tbaa !35 ; 2 uses
  %i.ka = add nsw i32 %.0, -1                     ; 2 uses
  %i.kb = icmp eq i32 %i.ka, 0
  %i.kc = select i1 %i.kb, ptr null, ptr %.2.i.ph.sroa.gep
  store ptr %i.kc, ptr %i.s, align 8, !tbaa !85
  store ptr %i.ep, ptr %i.t, align 16, !tbaa !86
  store i32 %i.jz, ptr %i.u, align 4, !tbaa !98
  store i32 %.pre109.i, ptr %i.v, align 8, !tbaa !35
  store double 0.000000e+00, ptr %i.w, align 16, !tbaa !87
  br i1 %i.jk, label %_ZN3igl8geodesic22GeodesicAlgorithmExact30construct_propagated_intervalsEbPNS0_4EdgeEPNS0_4FaceEPNS0_16IntervalWithStopERjPNS0_8IntervalE.exit.loopexit.loopexit, label %_ZN3igl8geodesic22GeodesicAlgorithmExact30construct_propagated_intervalsEbPNS0_4EdgeEPNS0_4FaceEPNS0_16IntervalWithStopERjPNS0_8IntervalE.exit

.lr.ph101.i:                                      ; preds = %bb.ar
  store ptr null, ptr %i.s, align 8, !tbaa !85
  store ptr %i.ep, ptr %i.t, align 16, !tbaa !86
  store i32 %i.jz, ptr %i.u, align 4, !tbaa !98
  %i.kd = load i32, ptr %i.cf, align 8, !tbaa !35 ; 2 uses
  store i32 %i.kd, ptr %i.v, align 8, !tbaa !35
  %i.ke = load double, ptr %i.m, align 16, !tbaa !87
  %i.kf = fsub double %i.im, %i.ke
  store double %i.kf, ptr %i.m, align 16, !tbaa !87
  %i.kg = load double, ptr %i.k, align 16, !tbaa !87
  %i.kh = fsub double %i.im, %i.kg
  %i.ki = load double, ptr %4, align 16, !tbaa !87
  %i.kj = fsub double %i.im, %i.ki
  store double %i.kj, ptr %i.k, align 16, !tbaa !87
  store double %i.kh, ptr %4, align 16, !tbaa !87
  store double 0.000000e+00, ptr %i.w, align 16, !tbaa !87
  br i1 %i.jk, label %.peel.next.i, label %_ZN3igl8geodesic22GeodesicAlgorithmExact30construct_propagated_intervalsEbPNS0_4EdgeEPNS0_4FaceEPNS0_16IntervalWithStopERjPNS0_8IntervalE.exit

.peel.next.i:                                     ; preds = %.lr.ph101.i
  store ptr %4, ptr %i.x, align 16, !tbaa !85
  store ptr %i.ep, ptr %i.y, align 8, !tbaa !86
  store i32 %i.jz, ptr %i.z, align 4, !tbaa !98
  store i32 %i.kd, ptr %i.aa, align 16, !tbaa !35
  %i.kk = load double, ptr %i.q, align 8, !tbaa !87
  %i.kl = fsub double %i.im, %i.kk
  store double %i.kl, ptr %i.q, align 8, !tbaa !87
  %i.km = load double, ptr %i.o, align 8, !tbaa !87
  %i.kn = fsub double %i.im, %i.km
  %i.ko = load double, ptr %.2.i.ph.sroa.gep, align 8, !tbaa !87
  %i.kp = fsub double %i.im, %i.ko
  store double %i.kp, ptr %i.o, align 8, !tbaa !87
  store double %i.kn, ptr %.2.i.ph.sroa.gep, align 8, !tbaa !87
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !87
  br label %_ZN3igl8geodesic22GeodesicAlgorithmExact30construct_propagated_intervalsEbPNS0_4EdgeEPNS0_4FaceEPNS0_16IntervalWithStopERjPNS0_8IntervalE.exit, !llvm.loop !251

_ZN3igl8geodesic22GeodesicAlgorithmExact30construct_propagated_intervalsEbPNS0_4EdgeEPNS0_4FaceEPNS0_16IntervalWithStopERjPNS0_8IntervalE.exit.loopexit.loopexit: ; preds = %.lr.ph.i
  %i.kq = icmp eq i32 %i.ka, 1
  %i.kr = select i1 %i.kq, ptr null, ptr %i.ad
  store ptr %i.kr, ptr %i.ae, align 16, !tbaa !85
  store ptr %i.ep, ptr %i.af, align 8, !tbaa !86
  store i32 %i.jz, ptr %i.ag, align 4, !tbaa !98
  store i32 %.pre109.i, ptr %i.ah, align 16, !tbaa !35
  store double 0.000000e+00, ptr %i.ai, align 8, !tbaa !87
  br label %_ZN3igl8geodesic22GeodesicAlgorithmExact30construct_propagated_intervalsEbPNS0_4EdgeEPNS0_4FaceEPNS0_16IntervalWithStopERjPNS0_8IntervalE.exit

_ZN3igl8geodesic22GeodesicAlgorithmExact30construct_propagated_intervalsEbPNS0_4EdgeEPNS0_4FaceEPNS0_16IntervalWithStopERjPNS0_8IntervalE.exit: ; preds = %.lr.ph.i, %_ZN3igl8geodesic22GeodesicAlgorithmExact30construct_propagated_intervalsEbPNS0_4EdgeEPNS0_4FaceEPNS0_16IntervalWithStopERjPNS0_8IntervalE.exit.loopexit.loopexit, %.peel.next.i, %.lr.ph101.i
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !35
  %i.ku = zext i32 %i.kt to i64
  %i.kv = load ptr, ptr %i.ac, align 8, !tbaa !107
  %i.kw = getelementptr inbounds nuw [16 x i8], ptr %i.kv, i64 %i.ku
  call void @_ZN3igl8geodesic22GeodesicAlgorithmExact21update_list_and_queueEPNS0_12IntervalListEPNS0_16IntervalWithStopEj(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef %i.kw, ptr noundef nonnull %4, i32 noundef %.0)
  br i1 %i.in, label %..critedge_crit_edge, label %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_propagated_parametersEdddddddbbbbPNS0_16IntervalWithStopE.exit122

..critedge_crit_edge:                             ; preds = %_ZN3igl8geodesic22GeodesicAlgorithmExact30construct_propagated_intervalsEbPNS0_4EdgeEPNS0_4FaceEPNS0_16IntervalWithStopERjPNS0_8IntervalE.exit
  %.pre184 = load ptr, ptr %i.bm, align 8, !tbaa !93
  %.pre185 = load ptr, ptr %i.ct, align 8, !tbaa !104 ; 2 uses
  %.pre186 = load ptr, ptr %.pre185, align 8, !tbaa !86
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.w, %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit.thread.i
  %i.kx = phi ptr [ %.pre186, %..critedge_crit_edge ], [ %i.cx, %bb.w ], [ %i.cx, %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit.thread.i ] ; 4 uses
  %i.ky = phi ptr [ %.pre185, %..critedge_crit_edge ], [ %i.cu, %bb.w ], [ %i.cu, %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit.thread.i ] ; 2 uses
  %i.kz = phi ptr [ %.pre184, %..critedge_crit_edge ], [ %i.cr, %bb.w ], [ %i.cr, %_ZN3igl8geodesic22GeodesicAlgorithmExact29compute_positive_intersectionEddddd.exit.thread.i ]
  %i.la = load double, ptr %i.cg, align 8, !tbaa !87 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !95
  %i.ld = load i32, ptr %i.cb, align 8, !tbaa !35 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 48 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kx, i64 48
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !35
  %.not.i97 = icmp eq i32 %i.ld, %i.lg
  %.pre187.pre.pre.pre = load i32, ptr %i.le, align 4, !tbaa !35 ; 9 uses
  br i1 %.not.i97, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.critedge
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !93 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !95
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 48
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !35
  %i.lm = icmp eq i32 %i.ll, %.pre187.pre.pre.pre
  br i1 %i.lm, label %bb.ay, label %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.i98

end_hunk_0
