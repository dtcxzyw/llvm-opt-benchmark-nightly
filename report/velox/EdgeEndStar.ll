Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/EdgeEndStar?download=true
inline.NumInlined: 349
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0

$_ZTIN4geos4util13GEOSExceptionE = comdat any

$_ZTSN4geos4util13GEOSExceptionE = comdat any

$_ZTVN4geos4util17TopologyExceptionE = comdat any

$_ZTVN4geos4util13GEOSExceptionE = comdat any

@_ZTVN4geos9geomgraph11EdgeEndStarE = constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr @_ZTIN4geos9geomgraph11EdgeEndStarE, ptr @_ZN4geos9geomgraph11EdgeEndStarD2Ev, ptr @_ZN4geos9geomgraph11EdgeEndStarD0Ev, ptr @__cxa_pure_virtual, ptr @_ZN4geos9geomgraph11EdgeEndStar13getCoordinateEv, ptr @_ZN4geos9geomgraph11EdgeEndStar9getDegreeEv, ptr @_ZN4geos9geomgraph11EdgeEndStar5beginEv, ptr @_ZN4geos9geomgraph11EdgeEndStar3endEv, ptr @_ZN4geos9geomgraph11EdgeEndStar6rbeginEv, ptr @_ZN4geos9geomgraph11EdgeEndStar4rendEv, ptr @_ZNK4geos9geomgraph11EdgeEndStar5beginEv, ptr @_ZNK4geos9geomgraph11EdgeEndStar3endEv, ptr @_ZN4geos9geomgraph11EdgeEndStar8getEdgesEv, ptr @_ZN4geos9geomgraph11EdgeEndStar9getNextCWEPNS0_7EdgeEndE, ptr @_ZN4geos9geomgraph11EdgeEndStar16computeLabellingEPSt6vectorIPNS0_13GeometryGraphESaIS4_EE, ptr @_ZN4geos9geomgraph11EdgeEndStar22isAreaLabelsConsistentERKNS0_13GeometryGraphE, ptr @_ZN4geos9geomgraph11EdgeEndStar19propagateSideLabelsEj, ptr @_ZN4geos9geomgraph11EdgeEndStar4findEPNS0_7EdgeEndE, ptr @_ZNK4geos9geomgraph11EdgeEndStar5printB5cxx11Ev, ptr @_ZN4geos9geomgraph11EdgeEndStar13insertEdgeEndEPNS0_7EdgeEndE, ptr @_ZN4geos9geomgraph11EdgeEndStar11getLocationEjRKNS_4geom10CoordinateEPSt6vectorIPNS0_13GeometryGraphESaIS8_EE, ptr @_ZN4geos9geomgraph11EdgeEndStar20computeEdgeEndLabelsERKNS_9algorithm16BoundaryNodeRuleE, ptr @_ZN4geos9geomgraph11EdgeEndStar25checkAreaLabelsConsistentEj] }, align 8
@_ZZN4geos9geomgraph11EdgeEndStar13getCoordinateEvE9nullCoord = internal global %"class.geos::geom::Coordinate" zeroinitializer, align 16
@_ZGVZN4geos9geomgraph11EdgeEndStar13getCoordinateEvE9nullCoord = internal global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"side location conflict at \00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c". This can occur if the input geometry is invalid.\00", align 1
@_ZTIN4geos4util17TopologyExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util17TopologyExceptionE, ptr @_ZTIN4geos4util13GEOSExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos4util17TopologyExceptionE = linkonce_odr constant [32 x i8] c"N4geos4util17TopologyExceptionE\00", comdat, align 1
@_ZTIN4geos4util13GEOSExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util13GEOSExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN4geos4util13GEOSExceptionE = linkonce_odr constant [28 x i8] c"N4geos4util13GEOSExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.2 = private unnamed_addr constant [16 x i8] c"EdgeEndStar:   \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTIN4geos9geomgraph11EdgeEndStarE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4geos9geomgraph11EdgeEndStarE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4geos9geomgraph11EdgeEndStarE = constant [31 x i8] c"N4geos9geomgraph11EdgeEndStarE\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"TopologyException\00", align 1
@_ZTVN4geos4util17TopologyExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util17TopologyExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util17TopologyExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVN4geos4util13GEOSExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util13GEOSExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util13GEOSExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9geomgraph11EdgeEndStarC2Ev(ptr noundef nonnull align 8 dereferenceable(58) initializes((0, 32)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN4geos9geomgraph11EdgeEndStarE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.b, ptr %i.d, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 -1, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 -1, ptr %i.g, align 1, !tbaa !19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4geos9geomgraph11EdgeEndStar13getCoordinateEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4geos9geomgraph11EdgeEndStar13getCoordinateEvE9nullCoord acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !75

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4geos9geomgraph11EdgeEndStar13getCoordinateEvE9nullCoord) #20
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store <2 x double> splat (double +qnan), ptr @_ZZN4geos9geomgraph11EdgeEndStar13getCoordinateEvE9nullCoord, align 16, !tbaa !76
  store double +qnan, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4geos9geomgraph11EdgeEndStar13getCoordinateEvE9nullCoord, i64 16), align 16, !tbaa !22
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4geos9geomgraph11EdgeEndStar13getCoordinateEvE9nullCoord) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %0, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call ptr %i.i(ptr noundef nonnull align 8 dereferenceable(58) %0)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(100) %i.l)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi ptr [ %i.p, %bb.e ], [ @_ZZN4geos9geomgraph11EdgeEndStar13getCoordinateEvE9nullCoord, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4geos9geomgraph11EdgeEndStar13getCoordinateEv(ptr noundef nonnull align 8 dereferenceable(58) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(58) %0)
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4geos9geomgraph11EdgeEndStar9getNextCWEPNS0_7EdgeEndE(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr %i.c(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef %1) ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr %i.g(ptr noundef nonnull align 8 dereferenceable(58) %0)
  %i.i = icmp eq ptr %i.d, %i.h
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr %i.l(ptr noundef nonnull align 8 dereferenceable(58) %0)
  %i.n = icmp eq ptr %i.d, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %0, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call ptr %i.q(ptr noundef nonnull align 8 dereferenceable(58) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi ptr [ %i.r, %bb.c ], [ %i.d, %bb.b ]
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %.sink) #21
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.u, %bb.d ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9geomgraph11EdgeEndStar16computeLabellingEPSt6vectorIPNS0_13GeometryGraphESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !28
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.e = load ptr, ptr %0, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef nonnull align 1 %i.d)
  %i.h = load ptr, ptr %0, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(58) %0, i32 noundef 0)
  %i.k = load ptr, ptr %0, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(58) %0, i32 noundef 1)
  %i.n = load ptr, ptr %0, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call ptr %i.p(ptr noundef nonnull align 8 dereferenceable(58) %0) ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call ptr %i.t(ptr noundef nonnull align 8 dereferenceable(58) %0) ; 2 uses
  %.not43.a = icmp eq ptr %i.q, %i.u
  br i1 %.not43.a, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.c
  %2 = trunc nuw i8 %.sroa.0.2 to i1
  %3 = trunc nuw i8 %.sroa.5.2 to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.5.0 = phi i1 [ false, %bb.a ], [ %3, %._crit_edge.loopexit ]
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %2, %._crit_edge.loopexit ]
  %i.v = load ptr, ptr %0, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call ptr %i.x(ptr noundef nonnull align 8 dereferenceable(58) %0) ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(58) %0) ; 2 uses
  %.not4047 = icmp eq ptr %i.y, %i.ac
  br i1 %.not4047, label %._crit_edge51, label %.lr.ph50

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.5.1 = phi i8 [ %.sroa.5.2, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.1 = phi i8 [ %.sroa.0.2, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.036.044 = phi ptr [ %i.ar, %bb.c ], [ %i.q, %bb.a ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.036.044, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !24 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 19
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !63
  %i.ah = icmp eq i8 %i.ag, 1
  br i1 %i.ah, label %_ZNK4geos9geomgraph5Label11getLocationEj.exit, label %bb.b

_ZNK4geos9geomgraph5Label11getLocationEj.exit:    ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !19
  %i.ak = icmp eq i8 %i.aj, 1
  %spec.select = select i1 %i.ak, i8 1, i8 %.sroa.0.1
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4geos9geomgraph5Label11getLocationEj.exit, %.lr.ph
  %.sroa.0.2 = phi i8 [ %.sroa.0.1, %.lr.ph ], [ %spec.select, %_ZNK4geos9geomgraph5Label11getLocationEj.exit ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 23
  %i.am = load i8, ptr %i.al, align 1, !tbaa !63
  %i.an = icmp eq i8 %i.am, 1
  br i1 %i.an, label %_ZNK4geos9geomgraph5Label11getLocationEj.exit.1, label %bb.c

_ZNK4geos9geomgraph5Label11getLocationEj.exit.1:  ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !19
  %i.aq = icmp eq i8 %i.ap, 1
  %spec.select84 = select i1 %i.aq, i8 1, i8 %.sroa.5.1
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4geos9geomgraph5Label11getLocationEj.exit.1, %bb.b
  %.sroa.5.2 = phi i8 [ %.sroa.5.1, %bb.b ], [ %spec.select84, %_ZNK4geos9geomgraph5Label11getLocationEj.exit.1 ] ; 2 uses
  %i.ar = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.036.044) #21 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.u
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge51:                                    ; preds = %_ZN4geos9geomgraph5Label21setAllLocationsIfNullEjNS_4geom8LocationE.exit.1, %._crit_edge
  ret void

.lr.ph50:                                         ; preds = %._crit_edge, %_ZN4geos9geomgraph5Label21setAllLocationsIfNullEjNS_4geom8LocationE.exit.1
  %.sroa.032.048 = phi ptr [ %i.tk, %_ZN4geos9geomgraph5Label21setAllLocationsIfNullEjNS_4geom8LocationE.exit.1 ], [ %i.y, %._crit_edge ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.048, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !24 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 74 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 19 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !63  ; 2 uses
  %i.ax = zext i8 %i.aw to i64                    ; 2 uses
  %.not.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i, label %_ZN4geos9geomgraph5Label21setAllLocationsIfNullEjNS_4geom8LocationE.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ay = add nuw nsw i64 %.058.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ay, %i.ax
  br i1 %exitcond.not.i.i, label %_ZN4geos9geomgraph5Label21setAllLocationsIfNullEjNS_4geom8LocationE.exit, label %.lr.ph.i.i, !llvm.loop !77

.lr.ph.i.i:                                       ; preds = %.lr.ph50, %bb.d
  %.058.i.i = phi i64 [ %i.ay, %bb.d ], [ 0, %.lr.ph50 ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %.058.i.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !19
  %i.bb = icmp eq i8 %i.ba, -1
  br i1 %i.bb, label %_ZNK4geos9geomgraph5Label9isAnyNullEj.exit, label %bb.d

_ZNK4geos9geomgraph5Label9isAnyNullEj.exit:       ; preds = %.lr.ph.i.i
  br i1 %.sroa.0.0, label %iter.check377, label %bb.e

bb.e:                                             ; preds = %_ZNK4geos9geomgraph5Label9isAnyNullEj.exit
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.be(ptr noundef nonnull align 8 dereferenceable(100) %i.at)
  %i.bg = load ptr, ptr %0, align 8, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 152
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef signext i8 %i.bi(ptr noundef nonnull align 8 dereferenceable(58) %0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull %1)
  %.pre = load i8, ptr %i.av, align 1, !tbaa !63  ; 2 uses
  %.pre57 = zext i8 %.pre to i64
  %i.bk = icmp eq i8 %.pre, 0
  br i1 %i.bk, label %_ZN4geos9geomgraph5Label21setAllLocationsIfNullEjNS_4geom8LocationE.exit, label %iter.check377

iter.check377:                                    ; preds = %_ZNK4geos9geomgraph5Label9isAnyNullEj.exit, %bb.e
  %.075 = phi i8 [ %i.bj, %bb.e ], [ 2, %_ZNK4geos9geomgraph5Label9isAnyNullEj.exit ] ; 73 uses
  %.pre-phi5874 = phi i64 [ %.pre57, %bb.e ], [ %i.ax, %_ZNK4geos9geomgraph5Label9isAnyNullEj.exit ] ; 8 uses
  %min.iters.check236 = icmp samesign ult i64 %.pre-phi5874, 8
  br i1 %min.iters.check236, label %.lr.ph.i.i30.preheader, label %vector.main.loop.iter.check237

vector.main.loop.iter.check237:                   ; preds = %iter.check377
  %min.iters.check238 = icmp samesign ult i64 %.pre-phi5874, 64
  br i1 %min.iters.check238, label %vec.epilog.ph381, label %vector.ph239

vector.ph239:                                     ; preds = %vector.main.loop.iter.check237
  %i.bl = and i64 %.pre-phi5874, 56
  %n.vec240 = and i64 %.pre-phi5874, 192          ; 4 uses
  br label %vector.body241

vector.body241:                                   ; preds = %vector.ph239, %pred.store.continue372
  %index242 = phi i64 [ 0, %vector.ph239 ], [ %index.next373, %pred.store.continue372 ] ; 65 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 %index242 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %wide.load243 = load <32 x i8>, ptr %i.bm, align 1, !tbaa !19
  %wide.load244 = load <32 x i8>, ptr %i.bn, align 1, !tbaa !19
  %i.bo = icmp eq <32 x i8> %wide.load243, splat (i8 -1) ; 32 uses
  %i.bp = icmp eq <32 x i8> %wide.load244, splat (i8 -1) ; 32 uses
  %i.bq = extractelement <32 x i1> %i.bo, i64 0
  br i1 %i.bq, label %pred.store.if245, label %pred.store.continue246

pred.store.if245:                                 ; preds = %vector.body241
  store i8 %.075, ptr %i.bm, align 1, !tbaa !19
  br label %pred.store.continue246

pred.store.continue246:                           ; preds = %pred.store.if245, %vector.body241
  %i.br = extractelement <32 x i1> %i.bo, i64 1
  br i1 %i.br, label %pred.store.if247, label %pred.store.continue248

pred.store.if247:                                 ; preds = %pred.store.continue246
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 %index242
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store i8 %.075, ptr %i.bt, align 1, !tbaa !19
  br label %pred.store.continue248

pred.store.continue248:                           ; preds = %pred.store.if247, %pred.store.continue246
  %i.bu = extractelement <32 x i1> %i.bo, i64 2
  br i1 %i.bu, label %pred.store.if249, label %pred.store.continue250

pred.store.if249:                                 ; preds = %pred.store.continue248
  %i.bv = getelementptr inbounds nuw i8, ptr %i.au, i64 %index242
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store i8 %.075, ptr %i.bw, align 1, !tbaa !19
  br label %pred.store.continue250

pred.store.continue250:                           ; preds = %pred.store.if249, %pred.store.continue248
  %i.bx = extractelement <32 x i1> %i.bo, i64 3
  br i1 %i.bx, label %pred.store.if251, label %pred.store.continue252

pred.store.if251:                                 ; preds = %pred.store.continue250
  %i.by = getelementptr inbounds nuw i8, ptr %i.au, i64 %index242
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  store i8 %.075, ptr %i.bz, align 1, !tbaa !19
  br label %pred.store.continue252

pred.store.continue252:                           ; preds = %pred.store.if251, %pred.store.continue250
  %i.ca = extractelement <32 x i1> %i.bo, i64 4
  br i1 %i.ca, label %pred.store.if253, label %pred.store.continue254

pred.store.if253:                                 ; preds = %pred.store.continue252
  %i.cb = getelementptr inbounds nuw i8, ptr %i.au, i64 %index242
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i8 %.075, ptr %i.cc, align 1, !tbaa !19
  br label %pred.store.continue254

pred.store.continue254:                           ; preds = %pred.store.if253, %pred.store.continue252
  %i.cd = extractelement <32 x i1> %i.bo, i64 5
  br i1 %i.cd, label %pred.store.if255, label %pred.store.continue256

pred.store.if255:                                 ; preds = %pred.store.continue254
  %i.ce = getelementptr inbounds nuw i8, ptr %i.au, i64 %index242
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 5
  store i8 %.075, ptr %i.cf, align 1, !tbaa !19
  br label %pred.store.continue256

pred.store.continue256:                           ; preds = %pred.store.if255, %pred.store.continue254
  %i.cg = extractelement <32 x i1> %i.bo, i64 6
  br i1 %i.cg, label %pred.store.if257, label %pred.store.continue258

pred.store.if257:                                 ; preds = %pred.store.continue256
  %i.ch = getelementptr inbounds nuw i8, ptr %i.au, i64 %index242
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 6
  store i8 %.075, ptr %i.ci, align 1, !tbaa !19
  br label %pred.store.continue258

pred.store.continue258:                           ; preds = %pred.store.if257, %pred.store.continue256
  %i.cj = extractelement <32 x i1> %i.bo, i64 7
  br i1 %i.cj, label %pred.store.if259, label %pred.store.continue260

pred.store.if259:                                 ; preds = %pred.store.continue258
  %i.ck = getelementptr inbounds nuw i8, ptr %i.au, i64 %index242
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 7
  store i8 %.075, ptr %i.cl, align 1, !tbaa !19
  br label %pred.store.continue260

pred.store.continue260:                           ; preds = %pred.store.if259, %pred.store.continue258
  %i.cm = extractelement <32 x i1> %i.bo, i64 8
  br i1 %i.cm, label %pred.store.if261, label %pred.store.continue262

pred.store.if261:                                 ; preds = %pred.store.continue260
  %i.cn = getelementptr inbounds nuw i8, ptr %i.au, i64 %index242
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i8 %.075, ptr %i.co, align 1, !tbaa !19
  br label %pred.store.continue262

pred.store.continue262:                           ; preds = %pred.store.if261, %pred.store.continue260
  %i.cp = extractelement <32 x i1> %i.bo, i64 9
  br i1 %i.cp, label %pred.store.if263, label %pred.store.continue264

pred.store.if263:                                 ; preds = %pred.store.continue262
  %i.cq = getelementptr inbounds nuw i8, ptr %i.au, i64 %index242
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 9
  store i8 %.075, ptr %i.cr, align 1, !tbaa !19
  br label %pred.store.continue264

pred.store.continue264:                           ; preds = %pred.store.if263, %pred.store.continue262
  %i.cs = extractelement <32 x i1> %i.bo, i64 10
  br i1 %i.cs, label %pred.store.if265, label %pred.store.continue266

pred.store.if265:                                 ; preds = %pred.store.continue264
  %i.ct = getelementptr inbounds nuw i8, ptr %i.au, i64 %index242
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 10
  store i8 %.075, ptr %i.cu, align 1, !tbaa !19
  br label %pred.store.continue266

pred.store.continue266:                           ; preds = %pred.store.if265, %pred.store.continue264
  %i.cv = extractelement <32 x i1> %i.bo, i64 11
  br i1 %i.cv, label %pred.store.if267, label %pred.store.continue268

pred.store.if267:                                 ; preds = %pred.store.continue266
  %i.cw = getelementptr inbounds nuw i8, ptr %i.au, i64 %index242
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 11
  store i8 %.075, ptr %i.cx, align 1, !tbaa !19
  br label %pred.store.continue268

pred.store.continue268:                           ; preds = %pred.store.if267, %pred.store.continue266
  %i.cy = extractelement <32 x i1> %i.bo, i64 12
  br i1 %i.cy, label %pred.store.if269, label %pred.store.continue270

pred.store.if269:                                 ; preds = %pred.store.continue268
  %i.cz = getelementptr inbounds nuw i8, ptr %i.au, i64 %index242
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  store i8 %.075, ptr %i.da, align 1, !tbaa !19
  br label %pred.store.continue270

pred.store.continue270:                           ; preds = %pred.store.if269, %pred.store.continue268
  %i.db = extractelement <32 x i1> %i.bo, i64 13
  br i1 %i.db, label %pred.store.if271, label %pred.store.continue272

pred.store.if271:                                 ; preds = %pred.store.continue270
  %i.dc = getelementptr inbounds nuw i8, ptr %i.au, i64 %index242
end_hunk_0
