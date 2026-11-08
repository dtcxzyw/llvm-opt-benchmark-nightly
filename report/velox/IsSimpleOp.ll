Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/IsSimpleOp?download=true
inline.NumInlined: 1074
inline.NumDeleted: 540
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4geos9operation5valid10IsSimpleOp20getNonSimpleLocationERKNS_4geom8GeometryE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  store i8 0, ptr %i.j, align 2, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.k, i8 0, i64 25, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.l = invoke noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp13computeSimpleERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN4geos9operation5valid10IsSimpleOp7computeEv.exit.ithread-pre-split unwind label %bb.c

_ZN4geos9operation5valid10IsSimpleOp7computeEv.exit.ithread-pre-split: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = zext i1 %i.l to i8
  store i8 %i.n, ptr %i.j, align 2, !tbaa !86, !noalias !188
  store i8 1, ptr %i.m, align 8, !tbaa !87, !noalias !188
  %.pr.pre = load ptr, ptr %i.k, align 8, !tbaa !88, !noalias !188 ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !91, !noalias !188
  %i.o = icmp eq ptr %.pre, %.pr.pre
  br i1 %i.o, label %_ZN4geos9operation5valid10IsSimpleOp20getNonSimpleLocationEv.exit, label %_ZN4geos9operation5valid10IsSimpleOp20getNonSimpleLocationEv.exit.thread

_ZN4geos9operation5valid10IsSimpleOp20getNonSimpleLocationEv.exit.thread: ; preds = %_ZN4geos9operation5valid10IsSimpleOp7computeEv.exit.ithread-pre-split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.pr.pre, i64 24, i1 false), !tbaa.struct !95
  br label %bb.b

_ZN4geos9operation5valid10IsSimpleOp20getNonSimpleLocationEv.exit: ; preds = %_ZN4geos9operation5valid10IsSimpleOp7computeEv.exit.ithread-pre-split
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> splat (double +qnan), ptr %0, align 8, !tbaa !94, !alias.scope !188
  store double +qnan, ptr %i.p, align 8, !tbaa !97, !alias.scope !188
  %.not.i.i.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i.i, label %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4geos9operation5valid10IsSimpleOp20getNonSimpleLocationEv.exit.thread, %_ZN4geos9operation5valid10IsSimpleOp20getNonSimpleLocationEv.exit
  call void @_ZdlPv(ptr noundef nonnull %.pr.pre) #21
  br label %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit

_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit:    ; preds = %_ZN4geos9operation5valid10IsSimpleOp20getNonSimpleLocationEv.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i2, label %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.r) #21
  br label %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit3

_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit3:   ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation5valid10IsSimpleOp20getNonSimpleLocationEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.geos::geom::Coordinate") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) local_unnamed_addr #2 align 2 !guid !189 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !87, !range !89, !noundef !90
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN4geos9operation5valid10IsSimpleOp7computeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !88
  %.not.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i, label %bb.c, label %_ZN4geos9operation5valid10IsSimpleOp7computeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !92, !nonnull !90, !align !93
  %i.i = tail call noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp13computeSimpleERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.k = zext i1 %i.i to i8
  store i8 %i.k, ptr %i.j, align 2, !tbaa !86
  store i8 1, ptr %i.a, align 8, !tbaa !87
  br label %_ZN4geos9operation5valid10IsSimpleOp7computeEv.exit

_ZN4geos9operation5valid10IsSimpleOp7computeEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !91
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !88   ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE2atEm.exit

bb.d:                                             ; preds = %_ZN4geos9operation5valid10IsSimpleOp7computeEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> splat (double +qnan), ptr %0, align 8, !tbaa !94
  store double +qnan, ptr %i.q, align 8, !tbaa !97
  br label %bb.e

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE2atEm.exit: ; preds = %_ZN4geos9operation5valid10IsSimpleOp7computeEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !tbaa.struct !95
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE2atEm.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9operation5valid10IsSimpleOp19setFindAllLocationsEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(41) initializes((9, 10)) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 !guid !190 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.a, ptr %i.b, align 1, !tbaa !85
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation5valid10IsSimpleOp7computeEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #2 align 2 !guid !191 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !87, !range !89, !noundef !90
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !88
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !92, !nonnull !90, !align !93
  %i.i = tail call noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp13computeSimpleERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = zext i1 %i.i to i8
  store i8 %i.k, ptr %i.j, align 2, !tbaa !86
  store i8 1, ptr %i.a, align 8, !tbaa !87
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4geos9operation5valid10IsSimpleOp21getNonSimpleLocationsEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #2 align 2 !guid !192 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !87, !range !89, !noundef !90
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN4geos9operation5valid10IsSimpleOp7computeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !88
  %.not.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i, label %bb.c, label %_ZN4geos9operation5valid10IsSimpleOp7computeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !92, !nonnull !90, !align !93
  %i.i = tail call noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp13computeSimpleERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = zext i1 %i.i to i8
  store i8 %i.k, ptr %i.j, align 2, !tbaa !86
  store i8 1, ptr %i.a, align 8, !tbaa !87
  br label %_ZN4geos9operation5valid10IsSimpleOp7computeEv.exit

_ZN4geos9operation5valid10IsSimpleOp7computeEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.l
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp13computeSimpleERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !guid !193 {
bb.a:
  %2 = alloca %"class.std::vector.27", align 8    ; 9 uses
  %3 = alloca %"class.std::vector.27", align 8    ; 9 uses
  %4 = alloca %"class.std::vector.27", align 8    ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.d, label %_ZN4geos9operation5valid10IsSimpleOp26isSimpleGeometryCollectionERKNS_4geom8GeometryE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(40) %1)
  switch i32 %i.h, label %_ZN4geos9operation5valid10IsSimpleOp26isSimpleGeometryCollectionERKNS_4geom8GeometryE.exit [
    i32 4, label %bb.c
    i32 1, label %bb.f
    i32 5, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.o
    i32 6, label %bb.v
    i32 7, label %.preheader
  ]

.preheader:                                       ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(40) %1), !inline_history !194
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %_ZN4geos9operation5valid10IsSimpleOp26isSimpleGeometryCollectionERKNS_4geom8GeometryE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %bb.ac

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom10MultiPointE, i64 0) #20 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_bad_cast() #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp18isSimpleMultiPointERKNS_4geom10MultiPointE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.m)
  br label %_ZN4geos9operation5valid10IsSimpleOp26isSimpleGeometryCollectionERKNS_4geom8GeometryE.exit

bb.f:                                             ; preds = %bb.b
  %i.p = tail call noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp22isSimpleLinearGeometryERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %_ZN4geos9operation5valid10IsSimpleOp26isSimpleGeometryCollectionERKNS_4geom8GeometryE.exit

bb.g:                                             ; preds = %bb.b
  %i.q = tail call noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp22isSimpleLinearGeometryERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %_ZN4geos9operation5valid10IsSimpleOp26isSimpleGeometryCollectionERKNS_4geom8GeometryE.exit

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN4geos4geom4util24LinearComponentExtracter8getLinesERKNS0_8GeometryERSt6vectorIPKNS0_10LineStringESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %4, align 8, !tbaa !100    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !100  ; 2 uses
  %.not20.i = icmp eq ptr %i.r, %i.t
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %bb.j

bb.j:                                             ; preds = %.thread.i, %.lr.ph.i
  %.01022.i = phi i1 [ true, %.lr.ph.i ], [ %.219.i, %.thread.i ]
  %.sroa.014.021.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.aa, %.thread.i ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.014.021.i, align 8, !tbaa !102
  %i.w = invoke noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp22isSimpleLinearGeometryERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  br i1 %i.w, label %.thread.i, label %bb.l

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.h
  %lpad.loopexit.split-lp93 = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %4, align 8, !tbaa !104    ; 2 uses
  %.not.i.i.i12.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i12.i, label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13.i, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %i.u, align 1, !tbaa !85, !range !89, !noundef !90
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.thread.i, label %._crit_edge.loopexit.i

.thread.i:                                        ; preds = %bb.l, %bb.k
  %.219.i = phi i1 [ false, %bb.l ], [ %.01022.i, %bb.k ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.014.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, %i.t
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.j

._crit_edge.loopexit.i:                           ; preds = %.thread.i, %bb.l
  %.3.ph.i = phi i1 [ false, %bb.l ], [ %.219.i, %.thread.i ]
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !104
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.i
  %i.ab = phi ptr [ %i.r, %bb.i ], [ %.pre.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.3.i = phi i1 [ true, %bb.i ], [ %.3.ph.i, %._crit_edge.loopexit.i ]
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZN4geos9operation5valid10IsSimpleOp17isSimplePolygonalERKNS_4geom8GeometryE.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #21
  br label %_ZN4geos9operation5valid10IsSimpleOp17isSimplePolygonalERKNS_4geom8GeometryE.exit

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef nonnull %i.x) #21
  br label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13.i

common.resume:                                    ; preds = %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13.i33, %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13.i15, %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp93, %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13.i ], [ %lpad.loopexit.split-lp95, %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13.i15 ], [ %lpad.loopexit.split-lp98, %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13.i33 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13.i: ; preds = %bb.n, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %common.resume

_ZN4geos9operation5valid10IsSimpleOp17isSimplePolygonalERKNS_4geom8GeometryE.exit: ; preds = %._crit_edge.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZN4geos9operation5valid10IsSimpleOp26isSimpleGeometryCollectionERKNS_4geom8GeometryE.exit

bb.o:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN4geos4geom4util24LinearComponentExtracter8getLinesERKNS0_8GeometryERSt6vectorIPKNS0_10LineStringESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.i12.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.ac = load ptr, ptr %3, align 8, !tbaa !100   ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !100 ; 2 uses
  %.not20.i16 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not20.i16, label %._crit_edge.i23, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %bb.q

bb.q:                                             ; preds = %.thread.i26, %.lr.ph.i17
  %.01022.i18 = phi i1 [ true, %.lr.ph.i17 ], [ %.219.i27, %.thread.i26 ]
  %.sroa.014.021.i19 = phi ptr [ %i.ac, %.lr.ph.i17 ], [ %i.al, %.thread.i26 ] ; 2 uses
  %i.ag = load ptr, ptr %.sroa.014.021.i19, align 8, !tbaa !102
  %i.ah = invoke noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp22isSimpleLinearGeometryERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ag)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.i12.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  br i1 %i.ah, label %.thread.i26, label %bb.s

.loopexit.split-lp.loopexit.split-lp.i12.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.o
  %lpad.loopexit.split-lp95 = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %3, align 8, !tbaa !104   ; 2 uses
  %.not.i.i.i12.i14 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i12.i14, label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13.i15, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.aj = load i8, ptr %i.af, align 1, !tbaa !85, !range !89, !noundef !90
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.thread.i26, label %._crit_edge.loopexit.i20

.thread.i26:                                      ; preds = %bb.s, %bb.r
  %.219.i27 = phi i1 [ false, %bb.s ], [ %.01022.i18, %bb.r ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.014.021.i19, i64 8 ; 2 uses
  %.not.i28 = icmp eq ptr %i.al, %i.ae
  br i1 %.not.i28, label %._crit_edge.loopexit.i20, label %bb.q

._crit_edge.loopexit.i20:                         ; preds = %.thread.i26, %bb.s
  %.3.ph.i21 = phi i1 [ false, %bb.s ], [ %.219.i27, %.thread.i26 ]
  %.pre.i22 = load ptr, ptr %3, align 8, !tbaa !104
  br label %._crit_edge.i23

._crit_edge.i23:                                  ; preds = %._crit_edge.loopexit.i20, %bb.p
  %i.am = phi ptr [ %i.ac, %bb.p ], [ %.pre.i22, %._crit_edge.loopexit.i20 ] ; 2 uses
  %.3.i24 = phi i1 [ true, %bb.p ], [ %.3.ph.i21, %._crit_edge.loopexit.i20 ]
  %.not.i.i.i.i25 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i25, label %_ZN4geos9operation5valid10IsSimpleOp17isSimplePolygonalERKNS_4geom8GeometryE.exit29, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i23
  call void @_ZdlPv(ptr noundef nonnull %i.am) #21
  br label %_ZN4geos9operation5valid10IsSimpleOp17isSimplePolygonalERKNS_4geom8GeometryE.exit29

bb.u:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i12.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef nonnull %i.ai) #21
  br label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13.i15

_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13.i15: ; preds = %bb.u, %.loopexit.split-lp.loopexit.split-lp.i12.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %common.resume

_ZN4geos9operation5valid10IsSimpleOp17isSimplePolygonalERKNS_4geom8GeometryE.exit29: ; preds = %._crit_edge.i23, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN4geos9operation5valid10IsSimpleOp26isSimpleGeometryCollectionERKNS_4geom8GeometryE.exit

bb.v:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN4geos4geom4util24LinearComponentExtracter8getLinesERKNS0_8GeometryERSt6vectorIPKNS0_10LineStringESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.an = load ptr, ptr %2, align 8, !tbaa !100   ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !100 ; 2 uses
  %.not20.i34 = icmp eq ptr %i.an, %i.ap
  br i1 %.not20.i34, label %._crit_edge.i41, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %bb.x

bb.x:                                             ; preds = %.thread.i44, %.lr.ph.i35
  %.01022.i36 = phi i1 [ true, %.lr.ph.i35 ], [ %.219.i45, %.thread.i44 ]
  %.sroa.014.021.i37 = phi ptr [ %i.an, %.lr.ph.i35 ], [ %i.aw, %.thread.i44 ] ; 2 uses
  %i.ar = load ptr, ptr %.sroa.014.021.i37, align 8, !tbaa !102
  %i.as = invoke noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp22isSimpleLinearGeometryERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ar)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  br i1 %i.as, label %.thread.i44, label %bb.z

.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.v
  %lpad.loopexit.split-lp98 = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %2, align 8, !tbaa !104   ; 2 uses
  %.not.i.i.i12.i32 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i12.i32, label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13.i33, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !85, !range !89, !noundef !90
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %.thread.i44, label %._crit_edge.loopexit.i38

.thread.i44:                                      ; preds = %bb.z, %bb.y
  %.219.i45 = phi i1 [ false, %bb.z ], [ %.01022.i36, %bb.y ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.014.021.i37, i64 8 ; 2 uses
  %.not.i46 = icmp eq ptr %i.aw, %i.ap
  br i1 %.not.i46, label %._crit_edge.loopexit.i38, label %bb.x

._crit_edge.loopexit.i38:                         ; preds = %.thread.i44, %bb.z
  %.3.ph.i39 = phi i1 [ false, %bb.z ], [ %.219.i45, %.thread.i44 ]
  %.pre.i40 = load ptr, ptr %2, align 8, !tbaa !104
  br label %._crit_edge.i41

._crit_edge.i41:                                  ; preds = %._crit_edge.loopexit.i38, %bb.w
  %i.ax = phi ptr [ %i.an, %bb.w ], [ %.pre.i40, %._crit_edge.loopexit.i38 ] ; 2 uses
  %.3.i42 = phi i1 [ true, %bb.w ], [ %.3.ph.i39, %._crit_edge.loopexit.i38 ]
  %.not.i.i.i.i43 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i43, label %_ZN4geos9operation5valid10IsSimpleOp17isSimplePolygonalERKNS_4geom8GeometryE.exit47, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i41
  call void @_ZdlPv(ptr noundef nonnull %i.ax) #21
  br label %_ZN4geos9operation5valid10IsSimpleOp17isSimplePolygonalERKNS_4geom8GeometryE.exit47

bb.ab:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef nonnull %i.at) #21
  br label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13.i33

_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13.i33: ; preds = %bb.ab, %.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %common.resume

_ZN4geos9operation5valid10IsSimpleOp17isSimplePolygonalERKNS_4geom8GeometryE.exit47: ; preds = %._crit_edge.i41, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZN4geos9operation5valid10IsSimpleOp26isSimpleGeometryCollectionERKNS_4geom8GeometryE.exit

bb.ac:                                            ; preds = %.lr.ph, %.thread
  %.08.i59 = phi i64 [ 0, %.lr.ph ], [ %i.bf, %.thread ] ; 2 uses
  %.09.i58 = phi i1 [ true, %.lr.ph ], [ %.2.i51, %.thread ]
  %i.ay = load ptr, ptr %1, align 8, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.08.i59), !inline_history !194
  %i.bc = tail call noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp13computeSimpleERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.bb), !inline_history !194
  br i1 %i.bc, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bd = load i8, ptr %5, align 1, !tbaa !85, !range !89, !noundef !90
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %.thread, label %_ZN4geos9operation5valid10IsSimpleOp26isSimpleGeometryCollectionERKNS_4geom8GeometryE.exit

.thread:                                          ; preds = %bb.ac, %bb.ad
  %.2.i51 = phi i1 [ false, %bb.ad ], [ %.09.i58, %bb.ac ] ; 2 uses
  %i.bf = add nuw i64 %.08.i59, 1                 ; 2 uses
  %i.bg = load ptr, ptr %1, align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef i64 %i.bi(ptr noundef nonnull align 8 dereferenceable(40) %1), !inline_history !194
  %i.bk = icmp ult i64 %i.bf, %i.bj
  br i1 %i.bk, label %bb.ac, label %_ZN4geos9operation5valid10IsSimpleOp26isSimpleGeometryCollectionERKNS_4geom8GeometryE.exit, !llvm.loop !1

_ZN4geos9operation5valid10IsSimpleOp26isSimpleGeometryCollectionERKNS_4geom8GeometryE.exit: ; preds = %.thread, %bb.ad, %.preheader, %bb.b, %bb.a, %_ZN4geos9operation5valid10IsSimpleOp17isSimplePolygonalERKNS_4geom8GeometryE.exit47, %_ZN4geos9operation5valid10IsSimpleOp17isSimplePolygonalERKNS_4geom8GeometryE.exit29, %_ZN4geos9operation5valid10IsSimpleOp17isSimplePolygonalERKNS_4geom8GeometryE.exit, %bb.g, %bb.f, %bb.e
  %.0 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.o, %bb.e ], [ %i.p, %bb.f ], [ %i.q, %bb.g ], [ %.3.i, %_ZN4geos9operation5valid10IsSimpleOp17isSimplePolygonalERKNS_4geom8GeometryE.exit ], [ %.3.i24, %_ZN4geos9operation5valid10IsSimpleOp17isSimplePolygonalERKNS_4geom8GeometryE.exit29 ], [ %.3.i42, %_ZN4geos9operation5valid10IsSimpleOp17isSimplePolygonalERKNS_4geom8GeometryE.exit47 ], [ true, %.preheader ], [ %.2.i51, %.thread ], [ false, %bb.ad ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp18isSimpleMultiPointERKNS_4geom10MultiPointE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !guid !199 {
bb.a:
  %2 = alloca %"class.std::unordered_set", align 8 ; 14 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(64) %1)
  br i1 %i.d, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !112
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 1, ptr %i.f, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 8, !tbaa !200
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %bb.c

bb.c:                                             ; preds = %select.unfold, %bb.b
  %.025 = phi i64 [ 0, %bb.b ], [ %i.bd, %select.unfold ] ; 3 uses
  %.016 = phi i1 [ true, %bb.b ], [ %.3.ph, %select.unfold ] ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ult i64 %.025, %i.q
  br i1 %i.r, label %bb.e, label %_ZNSt13unordered_setIN4geos4geom10CoordinateENS2_8HashCodeESt8equal_toIS2_ESaIS2_EE7emplaceIJRKS2_EEESt4pairINSt8__detail14_Node_iteratorIS2_Lb1ELb1EEEbEDpOT_.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %1, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %.025)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(82) %i.v)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  br i1 %i.z, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(82) %i.v)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.i:                                             ; preds = %bb.h
  %i.ae = invoke ptr @_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_ZNSt13unordered_setIN4geos4geom10CoordinateENS2_8HashCodeESt8equal_toIS2_ESaIS2_EE4findERKS2_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt13unordered_setIN4geos4geom10CoordinateENS2_8HashCodeESt8equal_toIS2_ESaIS2_EE4findERKS2_.exit: ; preds = %bb.i
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZNSt13unordered_setIN4geos4geom10CoordinateENS2_8HashCodeESt8equal_toIS2_ESaIS2_EE4findERKS2_.exit
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !91  ; 5 uses
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !114
  %.not.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !tbaa.struct !95
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !91
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ai, ptr %i.k, align 8, !tbaa !91
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !88  ; 5 uses
  %i.ak = ptrtoint ptr %i.af to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.m, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.ao = sdiv exact i64 %i.am, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = call i64 @llvm.umin.i64(i64 %i.ap, i64 384307168202282325)
  %i.as = select i1 %i.aq, i64 384307168202282325, i64 %i.ar ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.as, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.at = mul nuw nsw i64 %i.as, 24
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #23
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !tbaa.struct !95
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.af
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc29, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %i.au, %.noexc29 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i ], [ %i.aj, %.noexc29 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !95, !alias.scope !201
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.af
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc29
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.au, %.noexc29 ], [ %i.ax, %.lr.ph.i.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i23.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aj) #21
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.au, ptr %i.j, align 8, !tbaa !88
  store ptr %i.ay, ptr %i.k, align 8, !tbaa !91
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.as
  store ptr %i.az, ptr %i.l, align 8, !tbaa !114
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.k
  %i.ba = load i8, ptr %i.m, align 1, !tbaa !85, !range !89, !noundef !90
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %select.unfold, label %_ZNSt13unordered_setIN4geos4geom10CoordinateENS2_8HashCodeESt8equal_toIS2_ESaIS2_EE7emplaceIJRKS2_EEESt4pairINSt8__detail14_Node_iteratorIS2_Lb1ELb1EEEbEDpOT_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.c, %bb.f, %bb.e, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.o, %bb.i, %bb.m
  %lpad.loopexit.split-lp41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_setIN4geos4geom10CoordinateENS2_8HashCodeESt8equal_toIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %lpad.loopexit.split-lp41

bb.o:                                             ; preds = %_ZNSt13unordered_setIN4geos4geom10CoordinateENS2_8HashCodeESt8equal_toIS2_ESaIS2_EE4findERKS2_.exit
  %i.bc = invoke { ptr, i8 } @_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJRKS2_EEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %select.unfold unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

select.unfold:                                    ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit, %bb.g, %bb.o
  %.3.ph = phi i1 [ %.016, %bb.g ], [ %.016, %bb.o ], [ false, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit ]
  %i.bd = add nuw i64 %.025, 1
  br label %bb.c, !llvm.loop !198

_ZNSt13unordered_setIN4geos4geom10CoordinateENS2_8HashCodeESt8equal_toIS2_ESaIS2_EE7emplaceIJRKS2_EEESt4pairINSt8__detail14_Node_iteratorIS2_Lb1ELb1EEEbEDpOT_.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit, %bb.d
  %.4 = phi i1 [ %.016, %bb.d ], [ false, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit ]
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !115 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN4geos9operation5valid10IsSimpleOp22isSimpleLinearGeometryERKNS_4geom8GeometryE:bb.a
bb.n:                                             ; preds = %_ZN4geos6noding12MCIndexNoderD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #21
  br label %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit: ; preds = %_ZN4geos6noding12MCIndexNoderD2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bm = load ptr, ptr %3, align 8, !tbaa !135   ; 3 uses
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !136 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bm, %i.bn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bs, %_ZSt8_DestroyISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.bm, %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit ] ; 2 uses
  %i.bo = load ptr, ptr %.05.i.i.i, align 8, !tbaa !119 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos6noding13SegmentStringEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos6noding13SegmentStringEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !51
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #20, !inline_history !202
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos6noding13SegmentStringEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bs, %i.bn
  br i1 %.not.i.i.i21, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPSt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !135
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit
  %i.bt = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.bm, %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bt) #21
  br label %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bu = load ptr, ptr %2, align 8, !tbaa !139   ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !140 ; 2 uses
  %.not4.i.i.i22 = icmp eq ptr %i.bu, %i.bw
  br i1 %.not4.i.i.i22, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i24 = phi ptr [ %i.cb, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.bu, %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit ] ; 2 uses
  %i.bx = load ptr, ptr %.05.i.i.i24, align 8, !tbaa !142 ; 3 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i25, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom23CoordinateArraySequenceEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom23CoordinateArraySequenceEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i23
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !51
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(40) %i.bx) #20, !inline_history !203
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom23CoordinateArraySequenceEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i23
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 8 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.cb, %i.bw
  br i1 %.not.i.i.i26, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i23, !llvm.loop !5

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i27 = load ptr, ptr %2, align 8, !tbaa !139
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %i.cc = phi ptr [ %.pr.i27, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.bu, %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i28 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i1.i28, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.cc) #21
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.t

bb.q:                                             ; preds = %._crit_edge
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4geos6noding12MCIndexNoderD2Ev(ptr noundef nonnull align 8 dead_on_return(161) dereferenceable(161) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.pre = load ptr, ptr %4, align 8, !tbaa !209
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.q
  %i.ce = phi ptr [ %.pre, %bb.q ], [ %i.k, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn16 = phi { ptr, i32 } [ %i.cd, %bb.q ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i29 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit30, label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp
  call void @_ZdlPv(ptr noundef nonnull %i.ce) #21
  br label %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit30

_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit30: ; preds = %.loopexit.split-lp, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit30, %bb.d
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit30 ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn16.pn

bb.t:                                             ; preds = %bb.a, %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %.113 = phi i1 [ %.not35, %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EED2Ev.exit ], [ true, %bb.a ]
  ret i1 %.113
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp17isSimplePolygonalERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !guid !216 {
bb.a:
  %2 = alloca %"class.std::vector.27", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN4geos4geom4util24LinearComponentExtracter8getLinesERKNS0_8GeometryERSt6vectorIPKNS0_10LineStringESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !100    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  %.not20 = icmp eq ptr %i.a, %i.c
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.thread
  %.01022 = phi i1 [ true, %.lr.ph ], [ %.219, %.thread ]
  %.sroa.014.021 = phi ptr [ %i.a, %.lr.ph ], [ %i.j, %.thread ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.014.021, align 8, !tbaa !102
  %i.f = invoke noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp22isSimpleLinearGeometryERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  br i1 %i.f, label %.thread, label %bb.e

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.a
  %lpad.loopexit.split-lp30 = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %2, align 8, !tbaa !104    ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = load i8, ptr %i.d, align 1, !tbaa !85, !range !89, !noundef !90
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.thread, label %._crit_edge.loopexit

.thread:                                          ; preds = %bb.d, %bb.e
  %.219 = phi i1 [ false, %bb.e ], [ %.01022, %bb.d ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.014.021, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.c
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c

._crit_edge.loopexit:                             ; preds = %.thread, %bb.e
  %.3.ph = phi i1 [ false, %bb.e ], [ %.219, %.thread ]
  %.pre = load ptr, ptr %2, align 8, !tbaa !104
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.k = phi ptr [ %i.a, %bb.b ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.3 = phi i1 [ true, %bb.b ], [ %.3.ph, %._crit_edge.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef nonnull %i.k) #21
  br label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i1 %.3

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef nonnull %i.g) #21
  br label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13

_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %lpad.loopexit.split-lp30
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp26isSimpleGeometryCollectionERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 align 2 !guid !217 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %.0814 = phi i64 [ 0, %.lr.ph ], [ %i.l, %.thread ] ; 2 uses
  %.0913 = phi i1 [ true, %.lr.ph ], [ %.212, %.thread ]
  %i.e = load ptr, ptr %1, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.0814)
  %i.i = tail call noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp13computeSimpleERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  br i1 %i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %2, align 1, !tbaa !85, !range !89, !noundef !90
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.thread, label %._crit_edge

.thread:                                          ; preds = %bb.b, %bb.c
  %.212 = phi i1 [ false, %bb.c ], [ %.0913, %bb.b ] ; 2 uses
  %i.l = add nuw i64 %.0814, 1                    ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.q = icmp ult i64 %i.l, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.c, %.thread, %bb.a
  %.3 = phi i1 [ true, %bb.a ], [ %.212, %.thread ], [ false, %bb.c ]
  ret i1 %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setIN4geos4geom10CoordinateENS2_8HashCodeESt8equal_toIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !guid !218 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !116 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #21
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !113
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !112    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.h) #21
  br label %_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

declare void @_ZN4geos4geom4util24LinearComponentExtracter8getLinesERKNS0_8GeometryERSt6vectorIPKNS0_10LineStringESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation5valid10IsSimpleOp17removeRepeatedPtsERKNS_4geom8GeometryE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.40") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !guid !230 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.59", align 8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader:                                       ; preds = %bb.a
  %.not32 = icmp eq i64 %i.d, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.bz, %.thread ] ; 15 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.ca, %.thread ] ; 7 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.cb, %.thread ] ; 5 uses
  %.01331 = phi i64 [ 0, %.lr.ph ], [ %i.cc, %.thread ] ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.01331)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread, label %bb.d

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.o = call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom10LineStringE, i64 0) #20 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.p = invoke noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4geos9operation5valid20RepeatedPointRemover20removeRepeatedPointsEPKNS_4geom18CoordinateSequenceE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.59") align 8 %2, ptr noundef %i.p)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %2, align 8, !tbaa !142    ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !142
  %.not.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.q, ptr %i.i, align 8, !tbaa !142
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.e, align 8, !tbaa !140
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.s = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.t = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
          to label %.noexc unwind label %.loopexit.split-lp27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #23
          to label %.noexc19 unwind label %.loopexit.split-lp27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 13 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  store ptr %i.q, ptr %i.ad, align 8, !tbaa !142
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc19
  %i.ae = add i64 %i.s, -8
  %i.af = sub i64 %i.ae, %i.t                     ; 3 uses
  %i.ag = lshr i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.af, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ai = add i64 %i.s, -8
  %i.aj = sub i64 %i.ai, %i.t
  %i.ak = and i64 %i.aj, -8
  %i.al = add i64 %i.ak, 8                        ; 2 uses
  %i.am = getelementptr i8, ptr %i.ac, i64 %i.al
  %i.an = getelementptr i8, ptr %i.g, i64 %i.al
  %bound0 = icmp ult ptr %i.ac, %i.an
  %bound1 = icmp ult ptr %i.g, %i.am
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check52 = icmp ult i64 %i.af, 120
  br i1 %min.iters.check52, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %i.ah, 12
  %n.vec = and i64 %i.ah, 4611686018427387888     ; 4 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ac, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %i.g, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.as ; 4 uses
  %next.gep53 = getelementptr i8, ptr %i.g, i64 %i.as ; 8 uses
end_hunk_1
