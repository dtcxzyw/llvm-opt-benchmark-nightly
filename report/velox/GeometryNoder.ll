inline.NumInlined: 378
inline.NumDeleted: 265
begin_hunk_0
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN4geos6noding13IteratedNoderE = external unnamed_addr constant { [6 x ptr] }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1

@_ZN4geos6noding13GeometryNoderC1ERKNS_4geom8GeometryE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4geos6noding13GeometryNoderC2ERKNS_4geom8GeometryE

; Function Attrs: mustprogress uwtable
define void @_ZN4geos6noding13GeometryNoder4nodeERKNS_4geom8GeometryE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos::noding::GeometryNoder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN4geos6noding13GeometryNoderC1ERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %1)
  invoke void @_ZN4geos6noding13GeometryNoder8getNodedEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4geos6noding5NoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4geos6noding5NoderEEclEPS2_.exit.i.i: ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #19, !inline_history !12
  br label %_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4geos6noding5NoderEEclEPS2_.exit.i.i, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN4geos6noding13GeometryNoderD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.g) #20
  br label %_ZN4geos6noding13GeometryNoderD2Ev.exit

_ZN4geos6noding13GeometryNoderD2Ev.exit:          ; preds = %_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.d:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !7    ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.j, null
  br i1 %.not.i.i2, label %_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit.i4, label %_ZNKSt14default_deleteIN4geos6noding5NoderEEclEPS2_.exit.i.i3

_ZNKSt14default_deleteIN4geos6noding5NoderEEclEPS2_.exit.i.i3: ; preds = %bb.d
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.j) #19, !inline_history !12
  br label %_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit.i4

_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit.i4: ; preds = %_ZNKSt14default_deleteIN4geos6noding5NoderEEclEPS2_.exit.i.i3, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i5, label %_ZN4geos6noding13GeometryNoderD2Ev.exit6, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit.i4
  call void @_ZdlPv(ptr noundef nonnull %i.o) #20
  br label %_ZN4geos6noding13GeometryNoderD2Ev.exit6

_ZN4geos6noding13GeometryNoderD2Ev.exit6:         ; preds = %_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit.i4, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos6noding13GeometryNoder8getNodedEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos::noding::(anonymous namespace)::SegmentStringExtractor", align 8 ; 5 uses
  %3 = alloca %"class.std::vector.5", align 8     ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !17, !nonnull !29, !align !30 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !17, !nonnull !29, !align !30 ; 4 uses
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10, !noalias !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.i = load ptr, ptr %i.h, align 8, !noalias !31
  %i.j = invoke noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_ZNK4geos4geom8Geometry5cloneEv.exit unwind label %bb.d, !inline_history !34

_ZNK4geos4geom8Geometry5cloneEv.exit:             ; preds = %bb.c
  store ptr %i.j, ptr %0, align 8, !tbaa !35, !alias.scope !31
  br label %.loopexitthread-pre-split

bb.d:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4geos6noding12_GLOBAL__N_122SegmentStringExtractorE, i64 16), ptr %2, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %3, ptr %i.l, align 8, !tbaa !36
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull %2)
          to label %bb.f unwind label %bb.d, !inline_history !38

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !7    ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EE5resetEPS2_.exit.i, label %._ZN4geos6noding13GeometryNoder8getNoderEv.exit_crit_edge

._ZN4geos6noding13GeometryNoder8getNoderEv.exit_crit_edge: ; preds = %bb.f
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !10
  br label %_ZN4geos6noding13GeometryNoder8getNoderEv.exit

_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EE5resetEPS2_.exit.i: ; preds = %bb.f
  %i.r = load ptr, ptr %1, align 8, !tbaa !17, !nonnull !29, !align !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.u = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #21
          to label %.noexc unwind label %bb.i     ; 12 uses

.noexc:                                           ; preds = %_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EE5resetEPS2_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos6noding13IteratedNoderE, i64 16), ptr %i.u, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !49
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.v, ptr %i.x, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 0, ptr %i.y, align 8, !tbaa !57
  %.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.i.i.i, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.z, align 8, !tbaa !58
  %.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i.i.i, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.aa, align 8, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  store i8 0, ptr %i.ab, align 8, !tbaa !61
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  store i32 5, ptr %i.ac, align 8, !tbaa !62
  store ptr %i.u, ptr %i.p, align 8, !tbaa !7
  br label %_ZN4geos6noding13GeometryNoder8getNoderEv.exit

_ZN4geos6noding13GeometryNoder8getNoderEv.exit:   ; preds = %._ZN4geos6noding13GeometryNoder8getNoderEv.exit_crit_edge, %.noexc
  %i.ad = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos6noding13IteratedNoderE, i64 16), %.noexc ], [ %.pre, %._ZN4geos6noding13GeometryNoder8getNoderEv.exit_crit_edge ]
  %i.ae = phi ptr [ %i.u, %.noexc ], [ %i.q, %._ZN4geos6noding13GeometryNoder8getNoderEv.exit_crit_edge ] ; 3 uses
  %i.af = load ptr, ptr %i.ad, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %3)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZN4geos6noding13GeometryNoder8getNoderEv.exit
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %bb.h unwind label %bb.j       ; 5 uses

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4geos6noding13GeometryNoder10toGeometryERSt6vectorIPNS0_13SegmentStringESaIS4_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %bb.o unwind label %bb.q

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EE5resetEPS2_.exit.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.j:                                             ; preds = %bb.g, %_ZN4geos6noding13GeometryNoder8getNoderEv.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.am = extractvalue { ptr, i32 } %i.al, 1
  %i.an = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.k, label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.ap = extractvalue { ptr, i32 } %i.al, 0
  %i.aq = call ptr @__cxa_begin_catch(ptr %i.ap) #19 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !63 ; 2 uses
  %i.at = load ptr, ptr %3, align 8, !tbaa !13    ; 3 uses
  %.not51 = icmp eq ptr %i.as, %i.at
  br i1 %.not51, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.m, %bb.k
  invoke void @__cxa_rethrow() #22
          to label %bb.z unwind label %bb.n

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %4 = phi ptr [ %5, %bb.m ], [ %i.at, %.lr.ph.preheader ] ; 2 uses
  %.02342 = phi i64 [ %i.be, %bb.m ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.02342
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !64 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.az) #19
  %.pre52 = load ptr, ptr %3, align 8, !tbaa !13
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %5 = phi ptr [ %4, %.lr.ph ], [ %.pre52, %bb.l ]
  %i.be = add nuw i64 %.02342, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %i.ax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

bb.n:                                             ; preds = %._crit_edge
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.y

bb.o:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr %i.aj, align 8, !tbaa !68 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !68 ; 2 uses
  %.not43 = icmp eq ptr %i.bg, %i.bi
  br i1 %.not43, label %._crit_edge47, label %.lr.ph46

._crit_edge47.loopexit:                           ; preds = %bb.s
  %.pre52.a = load ptr, ptr %i.aj, align 8, !tbaa !13
  br label %._crit_edge47

._crit_edge47:                                    ; preds = %._crit_edge47.loopexit, %bb.o
  %i.bj = phi ptr [ %.pre52.a, %._crit_edge47.loopexit ], [ %i.bg, %bb.o ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge47
  call void @_ZdlPv(ptr noundef nonnull %i.bj) #20
  br label %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit: ; preds = %._crit_edge47, %bb.p
  call void @_ZdlPv(ptr noundef nonnull %i.aj) #20
  %i.bk = load ptr, ptr %3, align 8, !tbaa !68    ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !68 ; 2 uses
  %.not4148 = icmp eq ptr %i.bk, %i.bm
  br i1 %.not4148, label %.loopexit, label %.lr.ph50

bb.q:                                             ; preds = %bb.h
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.lr.ph46:                                         ; preds = %bb.o, %bb.s
  %.sroa.038.044 = phi ptr [ %i.bt, %bb.s ], [ %i.bg, %bb.o ] ; 2 uses
  %i.bo = load ptr, ptr %.sroa.038.044, align 8, !tbaa !64 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph46
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bo) #19
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph46
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.038.044, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bt, %i.bi
  br i1 %.not, label %._crit_edge47.loopexit, label %.lr.ph46

.lr.ph50:                                         ; preds = %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit, %bb.u
  %.sroa.034.049 = phi ptr [ %i.bz, %bb.u ], [ %i.bk, %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit ] ; 2 uses
  %i.bu = load ptr, ptr %.sroa.034.049, align 8, !tbaa !64 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph50
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bu) #19
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph50
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.034.049, i64 8 ; 2 uses
  %.not41 = icmp eq ptr %i.bz, %i.bm
  br i1 %.not41, label %.loopexitthread-pre-split, label %.lr.ph50

.loopexitthread-pre-split:                        ; preds = %bb.u, %_ZNK4geos4geom8Geometry5cloneEv.exit
  %.pr = load ptr, ptr %3, align 8, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexitthread-pre-split, %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit
  %i.ca = phi ptr [ %.pr, %.loopexitthread-pre-split ], [ %i.bk, %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit ] ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit31, label %bb.v

bb.v:                                             ; preds = %.loopexit
  call void @_ZdlPv(ptr noundef nonnull %i.ca) #20
  br label %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit31

_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit31: ; preds = %.loopexit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.w:                                             ; preds = %bb.i, %bb.n, %bb.q, %bb.j, %bb.d
  %.merged = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.ak, %bb.i ], [ %i.bn, %bb.q ], [ %i.al, %bb.j ], [ %i.bf, %bb.n ]
  %i.cb = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit33, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdlPv(ptr noundef nonnull %i.cb) #20
  br label %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit33

_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit33: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.merged

bb.y:                                             ; preds = %bb.n
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #23
  unreachable

bb.z:                                             ; preds = %._crit_edge
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos6noding13GeometryNoderC2ERKNS_4geom8GeometryE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos6noding13GeometryNoder10toGeometryERSt6vectorIPNS0_13SegmentStringESaIS4_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::set", align 8          ; 11 uses
  %4 = alloca %"class.std::vector.31", align 8    ; 16 uses
  %5 = alloca %"class.geos::noding::OrientedCoordinateArray", align 8 ; 6 uses
  %6 = alloca %"class.std::unique_ptr.36", align 8 ; 8 uses
  %7 = alloca %"class.std::unique_ptr.44", align 8 ; 7 uses
  %8 = alloca %"class.std::unique_ptr.52", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !17, !nonnull !29, !align !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.d, ptr %i.f, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.d, ptr %i.g, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63   ; 4 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !13     ; 4 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp ugt i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #22
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %.not70 = icmp eq ptr %i.j, %i.k
  br i1 %.not70, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21
          to label %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i unwind label %bb.d ; 3 uses

_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.q, ptr %4, align 8, !tbaa !78
  store ptr %i.q, ptr %i.r, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  store ptr %i.s, ptr %i.p, align 8, !tbaa !82
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, %bb.c
  %.not48 = icmp eq ptr %i.k, %i.j
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
end_hunk_0
