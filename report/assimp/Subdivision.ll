inline.NumInlined: 871
inline.NumDeleted: 477
begin_hunk_0_@_ZN22CatmullClarkSubdivider9SubdivideEPP6aiMeshmS2_jb:bb.a
  %.sroa.19.0.lcssa355 = phi ptr [ %.sroa.19.2, %._crit_edge ], [ null, %bb.e ] ; 3 uses
  %.sroa.0.0.lcssa353 = phi ptr [ %.sroa.0.2, %._crit_edge ], [ null, %bb.e ] ; 3 uses
  %.sroa.18.0.lcssa351 = phi ptr [ %.sroa.18.3, %._crit_edge ], [ null, %bb.e ] ; 3 uses
  %.sroa.0111.0.lcssa349 = phi ptr [ %.sroa.0111.3, %._crit_edge ], [ null, %bb.e ] ; 3 uses
  %i.cr = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ab unwind label %bb.f

bb.ab:                                            ; preds = %._crit_edge.thread
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.cr, ptr noundef nonnull @.str.1)
          to label %.loopexit unwind label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.cs = ptrtoint ptr %.sroa.13.1 to i64
  %i.ct = ptrtoint ptr %.sroa.0123.2 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 3
  invoke void @_ZN22CatmullClarkSubdivider15InternSubdivideEPKPK6aiMeshmPPS0_j(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.sroa.0123.2, i64 noundef %i.cv, ptr noundef nonnull %.sroa.0111.3, i32 noundef %4)
          to label %.preheader169 unwind label %bb.f

.preheader169:                                    ; preds = %bb.ac
  %i.cw = ptrtoint ptr %.sroa.12.1 to i64
  %i.cx = ptrtoint ptr %.sroa.0.2 to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 2
  %.not279 = icmp eq ptr %.sroa.12.1, %.sroa.0.2
  br i1 %.not279, label %._crit_edge270, label %.lr.ph269

._crit_edge270:                                   ; preds = %.lr.ph269, %.preheader169
  br i1 %5, label %.lr.ph272, label %.loopexit

.lr.ph269:                                        ; preds = %.preheader169, %.lr.ph269
  %i.da = phi i64 [ %i.di, %.lr.ph269 ], [ 0, %.preheader169 ] ; 2 uses
  %.048268 = phi i32 [ %i.dh, %.lr.ph269 ], [ 0, %.preheader169 ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0111.3, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.2, i64 %i.da
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.df
  store ptr %i.dc, ptr %i.dg, align 8
  %i.dh = add i32 %.048268, 1                     ; 2 uses
  %i.di = zext i32 %i.dh to i64                   ; 2 uses
  %i.dj = icmp ugt i64 %i.cz, %i.di
  br i1 %i.dj, label %.lr.ph269, label %._crit_edge270, !llvm.loop !17

.lr.ph272:                                        ; preds = %._crit_edge270, %bb.ae
  %.0271 = phi i64 [ %i.dn, %bb.ae ], [ 0, %._crit_edge270 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0271
  %i.dl = load ptr, ptr %i.dk, align 8            ; 3 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph272
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.dl) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef 1320) #20
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph272, %bb.ad
  %i.dn = add nuw i64 %.0271, 1                   ; 2 uses
  %exitcond325.not = icmp eq i64 %i.dn, %2
  br i1 %exitcond325.not, label %.loopexit, label %.lr.ph272, !llvm.loop !18

.loopexit:                                        ; preds = %bb.ae, %._crit_edge270, %bb.ab
  %.sroa.0123.0.lcssa359 = phi ptr [ %.sroa.0123.0.lcssa360, %bb.ab ], [ %.sroa.0123.2, %._crit_edge270 ], [ %.sroa.0123.2, %bb.ae ] ; 3 uses
  %.sroa.21.0.lcssa358 = phi ptr [ %.sroa.21.0.lcssa357, %bb.ab ], [ %.sroa.21.2, %._crit_edge270 ], [ %.sroa.21.2, %bb.ae ]
  %.sroa.19.0.lcssa356 = phi ptr [ %.sroa.19.0.lcssa355, %bb.ab ], [ %.sroa.19.2, %._crit_edge270 ], [ %.sroa.19.2, %bb.ae ]
  %.sroa.0.0.lcssa354 = phi ptr [ %.sroa.0.0.lcssa353, %bb.ab ], [ %.sroa.0.2, %._crit_edge270 ], [ %.sroa.0.2, %bb.ae ] ; 3 uses
  %.sroa.18.0.lcssa352 = phi ptr [ %.sroa.18.0.lcssa351, %bb.ab ], [ %.sroa.18.3, %._crit_edge270 ], [ %.sroa.18.3, %bb.ae ]
  %.sroa.0111.0.lcssa350 = phi ptr [ %.sroa.0111.0.lcssa349, %bb.ab ], [ %.sroa.0111.3, %._crit_edge270 ], [ %.sroa.0111.3, %bb.ae ] ; 3 uses
  %.not.i.i.i84 = icmp eq ptr %.sroa.0.0.lcssa354, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %.loopexit
  %i.do = ptrtoint ptr %.sroa.19.0.lcssa356 to i64
  %i.dp = ptrtoint ptr %.sroa.0.0.lcssa354 to i64
  %i.dq = sub i64 %i.do, %i.dp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa354, i64 noundef %i.dq) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %.loopexit, %bb.af
  %.not.i.i.i85 = icmp eq ptr %.sroa.0111.0.lcssa350, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.dr = ptrtoint ptr %.sroa.18.0.lcssa352 to i64
  %i.ds = ptrtoint ptr %.sroa.0111.0.lcssa350 to i64
  %i.dt = sub i64 %i.dr, %i.ds
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.0.lcssa350, i64 noundef %i.dt) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ag
  %.not.i.i.i86 = icmp eq ptr %.sroa.0123.0.lcssa359, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit87, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit
  %i.du = ptrtoint ptr %.sroa.21.0.lcssa358 to i64
  %i.dv = ptrtoint ptr %.sroa.0123.0.lcssa359 to i64
  %i.dw = sub i64 %i.du, %i.dv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0123.0.lcssa359, i64 noundef %i.dw) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit87

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit87:         ; preds = %.lr.ph274, %.lr.ph276.prol.loopexit, %.lr.ph276, %middle.block, %.preheader166, %.preheader, %bb.ah, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit
  ret void

bb.ai:                                            ; preds = %.loopexit176, %.loopexit.split-lp177, %.loopexit170, %.loopexit.split-lp, %.loopexit171, %.loopexit.split-lp172, %bb.f
  %.sroa.0111.5 = phi ptr [ %.sroa.0111.1, %bb.f ], [ %.sroa.0111.0251, %.loopexit.split-lp ], [ %.sroa.0111.7, %.loopexit.split-lp172 ], [ %.sroa.0111.2.ph, %.loopexit171 ], [ %.sroa.0111.0251, %.loopexit170 ], [ %.sroa.0111.7, %.loopexit176 ], [ %.sroa.0111.7, %.loopexit.split-lp177 ] ; 3 uses
  %.sroa.18.5 = phi ptr [ %.sroa.18.1, %bb.f ], [ %.sroa.18.0253, %.loopexit.split-lp ], [ %.sroa.18.7, %.loopexit.split-lp172 ], [ %.sroa.18.2.ph, %.loopexit171 ], [ %.sroa.18.0253, %.loopexit170 ], [ %.sroa.18.7, %.loopexit176 ], [ %.sroa.18.7, %.loopexit.split-lp177 ]
  %.sroa.0.3 = phi ptr [ %.sroa.0.1, %bb.f ], [ %.sroa.0.0254, %.loopexit.split-lp ], [ %.sroa.0.0254, %.loopexit.split-lp172 ], [ %.sroa.0.0254, %.loopexit171 ], [ %.sroa.0.0254, %.loopexit170 ], [ %.sroa.0.0254, %.loopexit176 ], [ %.sroa.0.0254, %.loopexit.split-lp177 ] ; 3 uses
  %.sroa.19.3 = phi ptr [ %.sroa.19.1, %bb.f ], [ %.sroa.19.0256, %.loopexit.split-lp ], [ %.sroa.19.0256, %.loopexit.split-lp172 ], [ %.sroa.19.0256, %.loopexit171 ], [ %.sroa.19.0256, %.loopexit170 ], [ %.sroa.19.0256, %.loopexit176 ], [ %.sroa.19.0256, %.loopexit.split-lp177 ]
  %.sroa.21.4 = phi ptr [ %.sroa.21.1, %bb.f ], [ %.sroa.21.0257, %.loopexit.split-lp ], [ %.sroa.13.0258, %.loopexit.split-lp172 ], [ %.sroa.21.0257.lcssa315, %.loopexit171 ], [ %.sroa.21.0257, %.loopexit170 ], [ %.sroa.21.6, %.loopexit176 ], [ %.sroa.21.6, %.loopexit.split-lp177 ]
  %.sroa.0123.4 = phi ptr [ %.sroa.0123.1, %bb.f ], [ %.sroa.0123.0259, %.loopexit.split-lp ], [ %.sroa.0123.0259, %.loopexit.split-lp172 ], [ %.sroa.0123.0259, %.loopexit171 ], [ %.sroa.0123.0259, %.loopexit170 ], [ %.sroa.0123.6, %.loopexit176 ], [ %.sroa.0123.6, %.loopexit.split-lp177 ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp174, %.loopexit.split-lp172 ], [ %lpad.loopexit173, %.loopexit171 ], [ %lpad.loopexit, %.loopexit170 ], [ %lpad.loopexit178, %.loopexit176 ], [ %lpad.loopexit.split-lp179, %.loopexit.split-lp177 ]
  %.not.i.i.i88 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorIjSaIjEED2Ev.exit89, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dx = ptrtoint ptr %.sroa.19.3 to i64
  %i.dy = ptrtoint ptr %.sroa.0.3 to i64
  %i.dz = sub i64 %i.dx, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3, i64 noundef %i.dz) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit89

_ZNSt6vectorIjSaIjEED2Ev.exit89:                  ; preds = %bb.ai, %bb.aj
  %.not.i.i.i90 = icmp eq ptr %.sroa.0111.5, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit91, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit89
  %i.ea = ptrtoint ptr %.sroa.18.5 to i64
  %i.eb = ptrtoint ptr %.sroa.0111.5 to i64
  %i.ec = sub i64 %i.ea, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.5, i64 noundef %i.ec) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit91

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit91:         ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit89, %bb.ak
  %.not.i.i.i92 = icmp eq ptr %.sroa.0123.4, null
  br i1 %.not.i.i.i92, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit93, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit91
  %i.ed = ptrtoint ptr %.sroa.21.4 to i64
  %i.ee = ptrtoint ptr %.sroa.0123.4 to i64
  %i.ef = sub i64 %i.ed, %i.ee
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0123.4, i64 noundef %i.ef) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit93

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit93:         ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit91, %bb.al
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @_ZN6Assimp13SceneCombiner4CopyEPP6aiMeshPKS1_(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #5

declare void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #5

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN22CatmullClarkSubdivider15InternSubdivideEPKPK6aiMeshmPPS0_j(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Assimp::Vertex", align 4   ; 4 uses
  %6 = alloca %"class.std::vector.0", align 8     ; 17 uses
  %7 = alloca %"class.Assimp::SpatialSort", align 8 ; 11 uses
  %8 = alloca %"struct.Assimp::Vertex", align 8   ; 29 uses
  %9 = alloca %"class.std::unordered_map", align 8 ; 24 uses
  %10 = alloca %"struct.Assimp::Vertex", align 8  ; 44 uses
  %11 = alloca %"struct.Assimp::Vertex", align 8  ; 44 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"struct.Assimp::Vertex", align 4  ; 5 uses
  %13 = alloca %"struct.Assimp::Vertex", align 8  ; 44 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.fa, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZN6Assimp11SpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(49) %7)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %2, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i64 %2, 0               ; 8 uses
  br i1 %.not.i.i.i.i, label %._crit_edge, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.d = shl nuw nsw i64 %2, 3                    ; 2 uses
  %i.e = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #18
          to label %.lr.ph.preheader unwind label %bb.f ; 5 uses

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.d, i1 false)
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.h = extractelement <2 x i32> %i.u, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.sink.i3991 = phi i64 [ 0, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.g, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.01957.03989 = phi ptr [ null, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.e, %._crit_edge.loopexit ] ; 12 uses
  %.02242.lcssa = phi i32 [ 0, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.h, %._crit_edge.loopexit ] ; 2 uses
  invoke void @_ZN6Assimp11SpatialSort8FinalizeEv(ptr noundef nonnull align 8 dereferenceable(49) %7)
          to label %bb.h unwind label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6Assimp11SpatialSortD2Ev.exit563

bb.f:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit561

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.03203043 = phi i64 [ %i.v, %bb.g ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.k = phi <2 x i32> [ %i.u, %bb.g ], [ zeroinitializer, %.lr.ph.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03203043
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  invoke void @_ZN6Assimp11SpatialSort6AppendEPK10aiVector3tIfEjjb(ptr noundef nonnull align 8 dereferenceable(49) %7, ptr noundef %i.o, i32 noundef %i.q, i32 noundef 12, i1 noundef zeroext false)
          to label %bb.g unwind label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559.thread

bb.g:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.03203043
  store <2 x i32> %i.k, ptr %i.r, align 4
  %i.s = load <2 x i32>, ptr %i.p, align 4
  %i.t = shufflevector <2 x i32> %i.s, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.u = add <2 x i32> %i.t, %i.k                 ; 2 uses
  %i.v = add nuw i64 %.03203043, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !19

_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559.thread: ; preds = %.lr.ph
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.h:                                             ; preds = %._crit_edge
  %i.x = invoke noundef float @_ZN6Assimp22ComputePositionEpsilonEPKPK6aiMeshm(ptr noundef %1, i64 noundef %2)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = invoke noundef i32 @_ZNK6Assimp11SpatialSort20GenerateMappingTableERSt6vectorIjSaIjEEf(ptr noundef nonnull align 8 dereferenceable(49) %7, ptr noundef nonnull align 8 dereferenceable(24) %6, float noundef %i.x)
          to label %bb.j unwind label %bb.l       ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.z = zext i32 %.02242.lcssa to i64            ; 2 uses
  %.not.i.i.i.i415 = icmp eq i32 %.02242.lcssa, 0
  br i1 %.not.i.i.i.i415, label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.preheader.i.i.i.i.i416

.lr.ph.preheader.i.i.i.i.i416:                    ; preds = %bb.j
  %i.aa = mul nuw nsw i64 %i.z, 272               ; 2 uses
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #18
          to label %.noexc420 unwind label %bb.m  ; 3 uses

.noexc420:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i416
  %i.ac = getelementptr inbounds nuw [272 x i8], ptr %i.ab, i64 %i.z
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ab, i8 0, i64 %i.aa, i1 false)
  %i.ad = ptrtoint ptr %i.ac to i64
  br label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EEC2EmRKS2_.exit

_ZNSt6vectorIN6Assimp6VertexESaIS1_EEC2EmRKS2_.exit: ; preds = %.noexc420, %bb.j
  %.sroa.01941.0 = phi ptr [ %i.ab, %.noexc420 ], [ null, %bb.j ] ; 10 uses
  %.sink.i418 = phi i64 [ %i.ad, %.noexc420 ], [ 0, %bb.j ] ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge3061, label %.lr.ph3060

.lr.ph3060:                                       ; preds = %_ZNSt6vectorIN6Assimp6VertexESaIS1_EEC2EmRKS2_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 108
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 116
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 132
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 140
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 168
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 176
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 184
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 200
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 208
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 216
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 232
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 240
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 248
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 256
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 264
  br label %bb.n

._crit_edge3061:                                  ; preds = %._crit_edge3054, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EEC2EmRKS2_.exit
  %.0323.lcssa = phi i32 [ 0, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EEC2EmRKS2_.exit ], [ %.1324.lcssa, %._crit_edge3054 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  store ptr %i.bc, ptr %9, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 10 uses
  store i64 1, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  br i1 %.not.i.i.i.i, label %._crit_edge3074.thread, label %.lr.ph3073

._crit_edge3074.thread:                           ; preds = %._crit_edge3061
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  br label %._crit_edge3079.thread

.lr.ph3073:                                       ; preds = %._crit_edge3061
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 36
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 60
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 68
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 68
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 84
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 84
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 92
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 92
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 108
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 108
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 116
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 116
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 120
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 120
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 132
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 132
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 140
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 140
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 152
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 152
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 160
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 160
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 168
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 168
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 176
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 176
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 184
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 184
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 192
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 200
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 200
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 208
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 208
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 216
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 216
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 224
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 224
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 232
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 232
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 240
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 240
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 248
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 248
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 256
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 256
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 264
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 264
  br label %bb.s

bb.k:                                             ; preds = %._crit_edge
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559

bb.m:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i416
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559

bb.n:                                             ; preds = %.lr.ph3060, %._crit_edge3054
  %.03233059 = phi i32 [ 0, %.lr.ph3060 ], [ %.1324.lcssa, %._crit_edge3054 ] ; 2 uses
  %.03293058 = phi i64 [ 0, %.lr.ph3060 ], [ %i.ep, %._crit_edge3054 ] ; 2 uses
  %.03303057 = phi i64 [ 0, %.lr.ph3060 ], [ %.1331.lcssa, %._crit_edge3054 ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03293058
  %i.el = load ptr, ptr %i.ek, align 8            ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.en = load i32, ptr %i.em, align 8
  %.not3340 = icmp eq i32 %i.en, 0
  br i1 %.not3340, label %._crit_edge3054, label %.lr.ph3053

.lr.ph3053:                                       ; preds = %bb.n
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 208
  br label %bb.o

._crit_edge3054:                                  ; preds = %._crit_edge3047, %bb.n
  %.1331.lcssa = phi i64 [ %.03303057, %bb.n ], [ %i.pa, %._crit_edge3047 ]
  %.1324.lcssa = phi i32 [ %.03233059, %bb.n ], [ %i.oz, %._crit_edge3047 ] ; 2 uses
  %i.ep = add nuw i64 %.03293058, 1               ; 2 uses
  %exitcond3805.not = icmp eq i64 %i.ep, %2
  br i1 %exitcond3805.not, label %._crit_edge3061, label %bb.n, !llvm.loop !20

bb.o:                                             ; preds = %.lr.ph3053, %._crit_edge3047
  %indvars.iv3802 = phi i64 [ 0, %.lr.ph3053 ], [ %indvars.iv.next3803, %._crit_edge3047 ] ; 2 uses
  %.13243051 = phi i32 [ %.03233059, %.lr.ph3053 ], [ %i.oz, %._crit_edge3047 ]
  %.13313050 = phi i64 [ %.03303057, %.lr.ph3053 ], [ %i.pa, %._crit_edge3047 ] ; 2 uses
  %i.eq = load ptr, ptr %i.eo, align 8
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %indvars.iv3802 ; 4 uses
  %i.es = getelementptr inbounds nuw [272 x i8], ptr %.sroa.01941.0, i64 %.13313050 ; 84 uses
  %i.et = load i32, ptr %i.er, align 8
  %.not3341 = icmp eq i32 %i.et, 0
  br i1 %.not3341, label %.._crit_edge3047_crit_edge, label %.lr.ph3046

.._crit_edge3047_crit_edge:                       ; preds = %bb.o
  %i.eu = load <2 x float>, ptr %i.es, align 4, !noalias !21
  %.phi.trans.insert3853 = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.pre3854 = load float, ptr %.phi.trans.insert3853, align 4, !noalias !21
  %.phi.trans.insert3855 = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  %i.ev = load <24 x float>, ptr %.phi.trans.insert3855, align 4, !noalias !21
  br label %._crit_edge3047

.lr.ph3046:                                       ; preds = %bb.o
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 12 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 20
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 36
  %i.fd = getelementptr inbounds nuw i8, ptr %i.es, i64 44
  %i.fe = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.ff = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  %i.fg = getelementptr inbounds nuw i8, ptr %i.es, i64 60
  %i.fh = getelementptr inbounds nuw i8, ptr %i.es, i64 68
  %i.fi = getelementptr inbounds nuw i8, ptr %i.es, i64 72
  %i.fj = getelementptr inbounds nuw i8, ptr %i.es, i64 80
  %i.fk = getelementptr inbounds nuw i8, ptr %i.es, i64 84
  %i.fl = getelementptr inbounds nuw i8, ptr %i.es, i64 92
  %i.fm = getelementptr inbounds nuw i8, ptr %i.es, i64 96
  %i.fn = getelementptr inbounds nuw i8, ptr %i.es, i64 104
  %i.fo = getelementptr inbounds nuw i8, ptr %i.es, i64 108 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.es, i64 116 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.es, i64 120 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.es, i64 128 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.es, i64 132 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.es, i64 140 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.es, i64 144 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.es, i64 152 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.es, i64 160 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.es, i64 168 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.es, i64 176 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.es, i64 184 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.es, i64 192 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.es, i64 200 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.es, i64 208 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.es, i64 216 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.es, i64 224 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.es, i64 232 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.es, i64 240 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.es, i64 248 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.es, i64 256 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.es, i64 264 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph3046, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph3046 ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.gk = load ptr, ptr %i.ew, align 8
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv
  %i.gm = load i32, ptr %i.gl, align 4
  invoke void @_ZN6Assimp6VertexC2EPK6aiMeshj(ptr noundef nonnull align 4 dereferenceable(272) %8, ptr noundef %i.el, i32 noundef %i.gm)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gn = load <2 x float>, ptr %i.es, align 4, !noalias !24
  %i.go = load <2 x float>, ptr %8, align 8, !noalias !24
  %i.gp = fadd <2 x float> %i.gn, %i.go           ; 2 uses
  %i.gq = load float, ptr %i.ex, align 4, !noalias !24
  %i.gr = load float, ptr %i.ae, align 8, !noalias !24
end_hunk_0
begin_hunk_1_@_ZN22CatmullClarkSubdivider15InternSubdivideEPKPK6aiMeshmPPS0_j:bb.a
  %i.ago = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 280 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.zc, i64 264
  %i.agq = load <2 x float>, ptr %i.ago, align 4, !noalias !38
  %i.agr = load <2 x float>, ptr %i.agp, align 4, !noalias !38
  %i.ags = fadd <2 x float> %i.agq, %i.agr
  store <2 x float> %i.zf, ptr %.1.i.i, align 4
  store float %i.zk, ptr %i.zg, align 4
  store <2 x float> %i.zp, ptr %i.zl, align 4
  store float %i.zu, ptr %i.zq, align 4
  store <2 x float> %i.zz, ptr %i.zv, align 4
  store float %i.aae, ptr %i.aaa, align 4
  store <2 x float> %i.aaj, ptr %i.aaf, align 4
  store float %i.aao, ptr %i.aak, align 4
  store <2 x float> %i.aat, ptr %i.aap, align 4
  store float %i.aay, ptr %i.aau, align 4
  store <2 x float> %i.abd, ptr %i.aaz, align 4
  store float %i.abi, ptr %i.abe, align 4
  store <2 x float> %i.abn, ptr %i.abj, align 4
  store float %i.abs, ptr %i.abo, align 4
  store <2 x float> %i.abx, ptr %i.abt, align 4
  store float %i.acc, ptr %i.aby, align 4
  store <2 x float> %i.ach, ptr %i.acd, align 4
  store float %i.acm, ptr %i.aci, align 4
  store <2 x float> %i.acr, ptr %i.acn, align 4
  store float %i.acw, ptr %i.acs, align 4
  store <2 x float> %i.adb, ptr %i.acx, align 4
  store float %i.adg, ptr %i.adc, align 4
  store <2 x float> %i.adl, ptr %i.adh, align 4
  store float %i.adq, ptr %i.adm, align 4
  store <2 x float> %i.adv, ptr %i.adr, align 4
  store <2 x float> %i.aea, ptr %i.adw, align 4
  store <2 x float> %i.aef, ptr %i.aeb, align 4
  store <2 x float> %i.aek, ptr %i.aeg, align 4
  store <2 x float> %i.aep, ptr %i.ael, align 4
  store <2 x float> %i.aeu, ptr %i.aeq, align 4
  store <2 x float> %i.aez, ptr %i.aev, align 4
  store <2 x float> %i.afe, ptr %i.afa, align 4
  store <2 x float> %i.afj, ptr %i.aff, align 4
  store <2 x float> %i.afo, ptr %i.afk, align 4
  store <2 x float> %i.aft, ptr %i.afp, align 4
  store <2 x float> %i.afy, ptr %i.afu, align 4
  store <2 x float> %i.agd, ptr %i.afz, align 4
  store <2 x float> %i.agi, ptr %i.age, align 4
  store <2 x float> %i.agn, ptr %i.agj, align 4
  store <2 x float> %i.ags, ptr %i.ago, align 4
  br label %bb.af

bb.af:                                            ; preds = %_ZN6Assimp6VertexpLERKS0_.exit428, %.loopexit2300
  %i.agt = load i32, ptr %i.po, align 8           ; 2 uses
  %i.agu = zext i32 %i.agt to i64
  %i.agv = icmp samesign ult i64 %indvars.iv.next3807, %i.agu
  br i1 %i.agv, label %bb.u, label %._crit_edge3066.loopexit, !llvm.loop !41

._crit_edge3079:                                  ; preds = %bb.ai
  %.pre3905 = load i32, ptr %i.a, align 4
  %i.agw = icmp eq i32 %.pre3905, 0
  br i1 %i.agw, label %._crit_edge3079.thread, label %bb.ak

.lr.ph3078:                                       ; preds = %._crit_edge3074, %bb.ai
  %.sroa.01894.03076 = phi ptr [ %i.ahg, %bb.ai ], [ %.pre3904, %._crit_edge3074 ] ; 3 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %.sroa.01894.03076, i64 560
  %i.agy = load i32, ptr %i.agx, align 8          ; 2 uses
  %i.agz = icmp ult i32 %i.agy, 2
  br i1 %i.agz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph3078
  %i.aha = load i32, ptr %i.a, align 4
  %i.ahb = add i32 %i.aha, 1
  store i32 %i.ahb, ptr %i.a, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph3078
  %i.ahc = uitofp i32 %i.agy to float
  %i.ahd = fadd float %i.ahc, 2.000000e+00
  %i.ahe = fdiv float 1.000000e+00, %i.ahd
  %i.ahf = getelementptr inbounds nuw i8, ptr %.sroa.01894.03076, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN6Assimp6Vertex8BinaryOpINS_6Intern10multipliesEEES0_RKS0_f(ptr dead_on_unwind nonnull writable sret(%"struct.Assimp::Vertex") align 4 %5, ptr noundef nonnull align 4 dereferenceable(272) %i.ahf, float noundef %i.ahe)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.ahf, ptr noundef nonnull align 4 dereferenceable(272) %5, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ahg = load ptr, ptr %.sroa.01894.03076, align 8 ; 2 uses
  %.not2283 = icmp eq ptr %i.ahg, null
  br i1 %.not2283, label %._crit_edge3079, label %.lr.ph3078, !llvm.loop !42

bb.aj:                                            ; preds = %bb.ah
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ak:                                            ; preds = %._crit_edge3079
  %i.ahi = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ahj = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ahk = load i64, ptr %i.ahj, align 8
  %i.ahl = trunc i64 %i.ahk to i32
  store i32 %i.ahl, ptr %i.b, align 4
  invoke void @_ZN6Assimp6Logger12verboseDebugIJRA31_KcRjRA44_S2_jRA10_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ahi, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(44) @.str.3, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(10) @.str.4)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %._crit_edge3079.thread

bb.an:                                            ; preds = %bb.ak
  %i.ahm = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ao:                                            ; preds = %bb.al
  %i.ahn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.at

._crit_edge3079.thread:                           ; preds = %._crit_edge3074.thread, %._crit_edge3074, %bb.am, %._crit_edge3079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.aho = zext i32 %.0323.lcssa to i64           ; 3 uses
  %.not.i.i.i.i431 = icmp eq i32 %.0323.lcssa, 0
  br i1 %.not.i.i.i.i431, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge3079.thread
  %i.ahp = shl nuw nsw i64 %i.aho, 2
  %i.ahq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahp) #18
          to label %.noexc432 unwind label %bb.au ; 5 uses

.noexc432:                                        ; preds = %bb.ap
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.ahq, i64 %i.aho ; 2 uses
  store i32 0, ptr %i.ahq, align 4
  %i.ahs = add nsw i64 %i.aho, -1                 ; 2 uses
  %i.aht = icmp eq i64 %i.ahs, 0
  br i1 %i.aht, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc432
  %i.ahu = getelementptr i8, ptr %i.ahq, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ahs, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ahu, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc432, %._crit_edge3079.thread
  %.sroa.111891.0 = phi ptr [ %i.ahr, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ahr, %.noexc432 ], [ null, %._crit_edge3079.thread ] ; 2 uses
  %.sroa.01886.0 = phi ptr [ %i.ahq, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ahq, %.noexc432 ], [ null, %._crit_edge3079.thread ] ; 8 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ahw = load ptr, ptr %i.ahv, align 8          ; 2 uses
  %i.ahx = load ptr, ptr %6, align 8              ; 4 uses
  %i.ahy = ptrtoint ptr %i.ahw to i64             ; 2 uses
  %i.ahz = ptrtoint ptr %i.ahx to i64             ; 2 uses
  %i.aia = sub i64 %i.ahy, %i.ahz                 ; 4 uses
  %i.aib = ashr exact i64 %i.aia, 2               ; 2 uses
  %i.aic = icmp ugt i64 %i.aib, 2305843009213693951
  br i1 %i.aic, label %bb.aq, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.aq:                                            ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
          to label %.noexc435 unwind label %bb.av

.noexc435:                                        ; preds = %bb.aq
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %.not.i.i.i.i433 = icmp eq ptr %i.ahw, %i.ahx
  br i1 %.not.i.i.i.i433, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.aid = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aia) #18
          to label %.noexc436 unwind label %bb.av ; 4 uses

.noexc436:                                        ; preds = %bb.ar
  %i.aie = add i64 %i.ahy, -4
  %i.aif = sub i64 %i.aie, %i.ahz
  %i.aig = and i64 %i.aif, -4
  %i.aih = add i64 %i.aig, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aid, i8 0, i64 %i.aih, i1 false)
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aid, i64 %i.aia ; 2 uses
  %i.aij = add nuw nsw i64 %i.aib, 1
  %i.aik = icmp eq i64 %i.aia, 9223372036854775804
  br i1 %i.aik, label %bb.as, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437

bb.as:                                            ; preds = %.noexc436
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
          to label %.noexc444 unwind label %bb.aw

.noexc444:                                        ; preds = %bb.as
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437: ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc436
  %i.ail = phi i64 [ %i.aij, %.noexc436 ], [ 1, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.0.i.i.i.i.i.i.i2261 = phi ptr [ %i.aii, %.noexc436 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ] ; 4 uses
  %.sroa.01876.02260 = phi ptr [ %i.aid, %.noexc436 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ] ; 13 uses
  %i.aim = shl nuw nsw i64 %i.ail, 2              ; 4 uses
  %i.ain = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aim) #18
          to label %.noexc445 unwind label %bb.aw ; 10 uses

.noexc445:                                        ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ain, i8 0, i64 %i.aim, i1 false)
  br i1 %.not.i.i.i.i, label %.preheader2299, label %.lr.ph3089

.preheader2299:                                   ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446, %.noexc445
  %i.aio = ptrtoint ptr %.0.i.i.i.i.i.i.i2261 to i64
  %i.aip = ptrtoint ptr %.sroa.01876.02260 to i64
  %i.aiq = sub i64 %i.aio, %i.aip                 ; 2 uses
  %.not3348.a = icmp eq ptr %.0.i.i.i.i.i.i.i2261, %.sroa.01876.02260
  br i1 %.not3348.a, label %.preheader2298, label %.lr.ph3092.preheader

.lr.ph3092.preheader:                             ; preds = %.preheader2299
  %i.air = ashr exact i64 %i.aiq, 2               ; 3 uses
  %xtraiter = and i64 %i.air, 3                   ; 3 uses
  %i.ais = icmp ult i64 %i.air, 4
  br i1 %i.ais, label %.lr.ph3092.epil.preheader, label %.lr.ph3092.preheader.new

.lr.ph3092.preheader.new:                         ; preds = %.lr.ph3092.preheader
  %unroll_iter = and i64 %i.air, -4
  br label %.lr.ph3092

bb.at:                                            ; preds = %bb.ao, %bb.an, %bb.aj
  %.pn398 = phi { ptr, i32 } [ %i.ahh, %bb.aj ], [ %i.ahn, %bb.ao ], [ %i.ahm, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.body

bb.au:                                            ; preds = %bb.ap
  %i.ait = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %bb.ar, %bb.aq
  %i.aiu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit542

bb.aw:                                            ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437, %bb.as
  %.sroa.01876.02255 = phi ptr [ %.sroa.01876.02260, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437 ], [ %i.aid, %bb.as ]
  %.sroa.161883.02248 = phi ptr [ %.0.i.i.i.i.i.i.i2261, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437 ], [ %i.aii, %bb.as ]
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

.lr.ph3089:                                       ; preds = %.noexc445, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446
  %.03383088 = phi i64 [ %i.ajd, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446 ], [ 0, %.noexc445 ] ; 3 uses
  %i.aiw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03383088
  %i.aix = load ptr, ptr %i.aiw, align 8          ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 8 ; 2 uses
  %i.aiz = load i32, ptr %i.aiy, align 8          ; 2 uses
  %.not3346 = icmp eq i32 %i.aiz, 0
  br i1 %.not3346, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446, label %.lr.ph3086

.lr.ph3086:                                       ; preds = %.lr.ph3089
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aix, i64 208
  %i.ajb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01957.03989, i64 %.03383088
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 4
  br label %bb.ax

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446:         ; preds = %._crit_edge3083, %.lr.ph3089
  %i.ajd = add nuw i64 %.03383088, 1              ; 2 uses
  %exitcond3819.not = icmp eq i64 %i.ajd, %2
  br i1 %exitcond3819.not, label %.preheader2299, label %.lr.ph3089, !llvm.loop !43

bb.ax:                                            ; preds = %.lr.ph3086, %._crit_edge3083
  %i.aje = phi i32 [ %i.aiz, %.lr.ph3086 ], [ %i.ajk, %._crit_edge3083 ]
  %indvars.iv3816 = phi i64 [ 0, %.lr.ph3086 ], [ %indvars.iv.next3817, %._crit_edge3083 ] ; 2 uses
  %i.ajf = load ptr, ptr %i.aja, align 8
  %i.ajg = getelementptr inbounds nuw [16 x i8], ptr %i.ajf, i64 %indvars.iv3816 ; 3 uses
  %i.ajh = load i32, ptr %i.ajg, align 8
  %.not3347 = icmp eq i32 %i.ajh, 0
  br i1 %.not3347, label %._crit_edge3083, label %.lr.ph3082

.lr.ph3082:                                       ; preds = %bb.ax
  %i.aji = load i32, ptr %i.ajc, align 4
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajg, i64 8
  br label %bb.ay

._crit_edge3083.loopexit:                         ; preds = %bb.ay
  %.pre3906 = load i32, ptr %i.aiy, align 8
  br label %._crit_edge3083

._crit_edge3083:                                  ; preds = %._crit_edge3083.loopexit, %bb.ax
  %i.ajk = phi i32 [ %.pre3906, %._crit_edge3083.loopexit ], [ %i.aje, %bb.ax ] ; 2 uses
  %indvars.iv.next3817 = add nuw nsw i64 %indvars.iv3816, 1 ; 2 uses
  %i.ajl = zext i32 %i.ajk to i64
  %i.ajm = icmp samesign ult i64 %indvars.iv.next3817, %i.ajl
  br i1 %i.ajm, label %bb.ax, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446, !llvm.loop !44

bb.ay:                                            ; preds = %.lr.ph3082, %bb.ay
  %indvars.iv3813 = phi i64 [ 0, %.lr.ph3082 ], [ %indvars.iv.next3814, %bb.ay ] ; 2 uses
  %i.ajn = load ptr, ptr %i.ajj, align 8
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.ajn, i64 %indvars.iv3813
  %i.ajp = load i32, ptr %i.ajo, align 4
  %i.ajq = add i32 %i.ajp, %i.aji
  %i.ajr = zext i32 %i.ajq to i64
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.ahx, i64 %i.ajr
  %i.ajt = load i32, ptr %i.ajs, align 4
  %i.aju = zext i32 %i.ajt to i64
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01876.02260, i64 %i.aju ; 2 uses
  %i.ajw = load i32, ptr %i.ajv, align 4
  %i.ajx = add i32 %i.ajw, 1
  store i32 %i.ajx, ptr %i.ajv, align 4
  %indvars.iv.next3814 = add nuw nsw i64 %indvars.iv3813, 1 ; 2 uses
  %i.ajy = load i32, ptr %i.ajg, align 8
  %i.ajz = zext i32 %i.ajy to i64
  %i.aka = icmp samesign ult i64 %indvars.iv.next3814, %i.ajz
  br i1 %i.aka, label %bb.ay, label %._crit_edge3083.loopexit, !llvm.loop !45

.preheader2298.loopexit.unr-lcssa:                ; preds = %.lr.ph3092
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader2298, label %.lr.ph3092.epil.preheader

.lr.ph3092.epil.preheader:                        ; preds = %.preheader2298.loopexit.unr-lcssa, %.lr.ph3092.preheader
  %.03513091.epil.init = phi i32 [ 0, %.lr.ph3092.preheader ], [ %i.akz, %.preheader2298.loopexit.unr-lcssa ]
  %.03533090.epil.init = phi i64 [ 0, %.lr.ph3092.preheader ], [ %i.akv, %.preheader2298.loopexit.unr-lcssa ]
  %lcmp.mod5266 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod5266)
  br label %.lr.ph3092.epil

.lr.ph3092.epil:                                  ; preds = %.lr.ph3092.epil, %.lr.ph3092.epil.preheader
  %.03513091.epil = phi i32 [ %i.akf, %.lr.ph3092.epil ], [ %.03513091.epil.init, %.lr.ph3092.epil.preheader ] ; 2 uses
  %.03533090.epil = phi i64 [ %i.akb, %.lr.ph3092.epil ], [ %.03533090.epil.init, %.lr.ph3092.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph3092.epil ], [ 0, %.lr.ph3092.epil.preheader ]
  %i.akb = add nuw i64 %.03533090.epil, 1         ; 2 uses
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %i.ain, i64 %i.akb
  store i32 %.03513091.epil, ptr %i.akc, align 4
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01876.02260, i64 %.03533090.epil
  %i.ake = load i32, ptr %i.akd, align 4
  %i.akf = add i32 %i.ake, %.03513091.epil
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader2298, label %.lr.ph3092.epil, !llvm.loop !46

.preheader2298:                                   ; preds = %.preheader2298.loopexit.unr-lcssa, %.lr.ph3092.epil, %.preheader2299
  br i1 %.not.i.i.i.i, label %._crit_edge3104, label %.lr.ph3103

.lr.ph3092:                                       ; preds = %.lr.ph3092, %.lr.ph3092.preheader.new
  %.03513091 = phi i32 [ 0, %.lr.ph3092.preheader.new ], [ %i.akz, %.lr.ph3092 ] ; 2 uses
  %.03533090 = phi i64 [ 0, %.lr.ph3092.preheader.new ], [ %i.akv, %.lr.ph3092 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph3092.preheader.new ], [ %niter.next.3, %.lr.ph3092 ]
  %i.akg = or disjoint i64 %.03533090, 1          ; 2 uses
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.ain, i64 %i.akg
  store i32 %.03513091, ptr %i.akh, align 4
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01876.02260, i64 %.03533090
  %i.akj = load i32, ptr %i.aki, align 4
  %i.akk = add i32 %i.akj, %.03513091             ; 2 uses
  %i.akl = or disjoint i64 %.03533090, 2          ; 2 uses
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr %i.ain, i64 %i.akl
  store i32 %i.akk, ptr %i.akm, align 4
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01876.02260, i64 %i.akg
  %i.ako = load i32, ptr %i.akn, align 4
  %i.akp = add i32 %i.ako, %i.akk                 ; 2 uses
  %i.akq = or disjoint i64 %.03533090, 3          ; 2 uses
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.ain, i64 %i.akq
  store i32 %i.akp, ptr %i.akr, align 4
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01876.02260, i64 %i.akl
  %i.akt = load i32, ptr %i.aks, align 4
  %i.aku = add i32 %i.akt, %i.akp                 ; 2 uses
  %i.akv = add nuw i64 %.03533090, 4              ; 3 uses
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.ain, i64 %i.akv
  store i32 %i.aku, ptr %i.akw, align 4
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01876.02260, i64 %i.akq
  %i.aky = load i32, ptr %i.akx, align 4
  %i.akz = add i32 %i.aky, %i.aku                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader2298.loopexit.unr-lcssa, label %.lr.ph3092, !llvm.loop !47

._crit_edge3104:                                  ; preds = %._crit_edge3101, %.preheader2298
  %i.ala = zext i32 %i.y to i64                   ; 5 uses
  %.not.i.i.i.i447 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i447, label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit, label %_ZNSt12_Vector_baseISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS4_.exit.i: ; preds = %._crit_edge3104
  %i.alb = mul nuw nsw i64 %i.ala, 276
  %i.alc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alb) #18
          to label %.lr.ph.i.i.i.i.i.i.preheader unwind label %bb.bf ; 4 uses

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt12_Vector_baseISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS4_.exit.i
  %xtraiter5267 = and i64 %i.ala, 7               ; 2 uses
  %lcmp.mod5268.not = icmp eq i64 %xtraiter5267, 0
  br i1 %lcmp.mod5268.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.alf, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.alc, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.ale, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ala, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  store i8 0, ptr %.09.i.i.i.i.i.i.prol, align 4
  %i.ald = getelementptr i8, ptr %.09.i.i.i.i.i.i.prol, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %i.ald, i8 0, i64 272, i1 false)
  %i.ale = add nsw i64 %.068.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 276 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter5267
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !48

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.alc, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.alf, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %i.ala, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ale, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.alg = icmp ult i32 %i.y, 8
  br i1 %i.alg, label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.alx, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.alw, %.lr.ph.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store i8 0, ptr %.09.i.i.i.i.i.i, align 4
  %i.alh = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %i.alh, i8 0, i64 272, i1 false)
  %i.ali = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 276
  store i8 0, ptr %i.ali, align 4
  %i.alj = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %i.alj, i8 0, i64 272, i1 false)
  %i.alk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 552
  store i8 0, ptr %i.alk, align 4
  %i.all = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 556
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %i.all, i8 0, i64 272, i1 false)
  %i.alm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 828
  store i8 0, ptr %i.alm, align 4
  %i.aln = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 832
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %i.aln, i8 0, i64 272, i1 false)
  %i.alo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 1104
  store i8 0, ptr %i.alo, align 4
  %i.alp = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 1108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %i.alp, i8 0, i64 272, i1 false)
  %i.alq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 1380
  store i8 0, ptr %i.alq, align 4
  %i.alr = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 1384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %i.alr, i8 0, i64 272, i1 false)
  %i.als = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 1656
  store i8 0, ptr %i.als, align 4
  %i.alt = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 1660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %i.alt, i8 0, i64 272, i1 false)
  %i.alu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 1932
  store i8 0, ptr %i.alu, align 4
  %i.alv = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 1936
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %i.alv, i8 0, i64 272, i1 false)
  %i.alw = add nsw i64 %.068.i.i.i.i.i.i, -8      ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 2208
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.alw, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !49

.lr.ph3103:                                       ; preds = %.preheader2298, %._crit_edge3101
  %.03543102 = phi i64 [ %i.amf, %._crit_edge3101 ], [ 0, %.preheader2298 ] ; 3 uses
  %i.aly = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03543102
  %i.alz = load ptr, ptr %i.aly, align 8          ; 2 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 8 ; 2 uses
  %i.amb = load i32, ptr %i.ama, align 8          ; 2 uses
  %.not3350 = icmp eq i32 %i.amb, 0
  br i1 %.not3350, label %._crit_edge3101, label %.lr.ph3100

.lr.ph3100:                                       ; preds = %.lr.ph3103
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alz, i64 208
  %i.amd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01957.03989, i64 %.03543102 ; 2 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 4
  br label %bb.az

._crit_edge3101:                                  ; preds = %._crit_edge3097, %.lr.ph3103
  %i.amf = add nuw i64 %.03543102, 1              ; 2 uses
  %exitcond3827.not = icmp eq i64 %i.amf, %2
  br i1 %exitcond3827.not, label %._crit_edge3104, label %.lr.ph3103, !llvm.loop !50

bb.az:                                            ; preds = %.lr.ph3100, %._crit_edge3097
  %i.amg = phi i32 [ %i.amb, %.lr.ph3100 ], [ %i.amp, %._crit_edge3097 ]
  %indvars.iv3824 = phi i64 [ 0, %.lr.ph3100 ], [ %indvars.iv.next3825, %._crit_edge3097 ] ; 3 uses
  %i.amh = load ptr, ptr %i.amc, align 8
  %i.ami = getelementptr inbounds nuw [16 x i8], ptr %i.amh, i64 %indvars.iv3824 ; 3 uses
  %i.amj = load i32, ptr %i.ami, align 8
  %.not3351 = icmp eq i32 %i.amj, 0
  br i1 %.not3351, label %._crit_edge3097, label %.lr.ph3096

.lr.ph3096:                                       ; preds = %bb.az
  %i.amk = load i32, ptr %i.amd, align 4
  %i.aml = trunc nuw i64 %indvars.iv3824 to i32
  %i.amm = add i32 %i.amk, %i.aml
  %i.amn = load i32, ptr %i.ame, align 4
  %i.amo = getelementptr inbounds nuw i8, ptr %i.ami, i64 8
  br label %bb.ba

._crit_edge3097.loopexit:                         ; preds = %bb.ba
  %.pre3907 = load i32, ptr %i.ama, align 8
  br label %._crit_edge3097

._crit_edge3097:                                  ; preds = %._crit_edge3097.loopexit, %bb.az
  %i.amp = phi i32 [ %.pre3907, %._crit_edge3097.loopexit ], [ %i.amg, %bb.az ] ; 2 uses
  %indvars.iv.next3825 = add nuw nsw i64 %indvars.iv3824, 1 ; 2 uses
  %i.amq = zext i32 %i.amp to i64
  %i.amr = icmp samesign ult i64 %indvars.iv.next3825, %i.amq
  br i1 %i.amr, label %bb.az, label %._crit_edge3101, !llvm.loop !51

bb.ba:                                            ; preds = %.lr.ph3096, %bb.ba
  %indvars.iv3821 = phi i64 [ 0, %.lr.ph3096 ], [ %indvars.iv.next3822, %bb.ba ] ; 2 uses
  %i.ams = load ptr, ptr %i.amo, align 8
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %i.ams, i64 %indvars.iv3821
  %i.amu = load i32, ptr %i.amt, align 4
  %i.amv = add i32 %i.amu, %i.amn
  %i.amw = zext i32 %i.amv to i64
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %i.ahx, i64 %i.amw
  %i.amy = load i32, ptr %i.amx, align 4
  %i.amz = add i32 %i.amy, 1
  %i.ana = zext i32 %i.amz to i64
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %i.ain, i64 %i.ana ; 2 uses
  %i.anc = load i32, ptr %i.anb, align 4          ; 2 uses
  %i.and = add i32 %i.anc, 1
  store i32 %i.and, ptr %i.anb, align 4
  %i.ane = zext i32 %i.anc to i64
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01886.0, i64 %i.ane
  store i32 %i.amm, ptr %i.anf, align 4
  %indvars.iv.next3822 = add nuw nsw i64 %indvars.iv3821, 1 ; 2 uses
  %i.ang = load i32, ptr %i.ami, align 8
  %i.anh = zext i32 %i.ang to i64
  %i.ani = icmp samesign ult i64 %indvars.iv.next3822, %i.anh
  br i1 %i.ani, label %bb.ba, label %._crit_edge3097.loopexit, !llvm.loop !52

_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %i.anj = getelementptr inbounds nuw [276 x i8], ptr %i.alc, i64 %i.ala
  %i.ank = ptrtoint ptr %i.anj to i64
  br label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit

_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit: ; preds = %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit, %._crit_edge3104
  %.sroa.121862.0 = phi i64 [ 0, %._crit_edge3104 ], [ %i.ank, %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit ] ; 2 uses
  %.sroa.01858.0 = phi ptr [ null, %._crit_edge3104 ], [ %i.alc, %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit ] ; 7 uses
  br i1 %.not.i.i.i.i, label %._crit_edge3335, label %.lr.ph3334

.lr.ph3334:                                       ; preds = %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit
  %i.anl = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.anm = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.ann = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.ano = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.anp = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.anq = getelementptr inbounds nuw i8, ptr %13, i64 36
  %i.anr = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.ans = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.ant = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.anu = getelementptr inbounds nuw i8, ptr %13, i64 60
  %i.anv = getelementptr inbounds nuw i8, ptr %13, i64 68
  %i.anw = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.anx = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.any = getelementptr inbounds nuw i8, ptr %13, i64 84
  %i.anz = getelementptr inbounds nuw i8, ptr %13, i64 92
  %i.aoa = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.aob = getelementptr inbounds nuw i8, ptr %13, i64 104
  %i.aoc = getelementptr inbounds nuw i8, ptr %13, i64 108
  %i.aod = getelementptr inbounds nuw i8, ptr %13, i64 116
  %i.aoe = getelementptr inbounds nuw i8, ptr %13, i64 120
  %i.aof = getelementptr inbounds nuw i8, ptr %13, i64 128
  %i.aog = getelementptr inbounds nuw i8, ptr %13, i64 132
  %i.aoh = getelementptr inbounds nuw i8, ptr %13, i64 140
  %i.aoi = getelementptr inbounds nuw i8, ptr %13, i64 144
  %i.aoj = getelementptr inbounds nuw i8, ptr %13, i64 152
  %i.aok = getelementptr inbounds nuw i8, ptr %13, i64 160
  %i.aol = getelementptr inbounds nuw i8, ptr %13, i64 168
  %i.aom = getelementptr inbounds nuw i8, ptr %13, i64 176
  %i.aon = getelementptr inbounds nuw i8, ptr %13, i64 184
  %i.aoo = getelementptr inbounds nuw i8, ptr %13, i64 192
  %i.aop = getelementptr inbounds nuw i8, ptr %13, i64 200
  %i.aoq = getelementptr inbounds nuw i8, ptr %13, i64 208
  %i.aor = getelementptr inbounds nuw i8, ptr %13, i64 216
  %i.aos = getelementptr inbounds nuw i8, ptr %13, i64 224
  %i.aot = getelementptr inbounds nuw i8, ptr %13, i64 232
  %i.aou = getelementptr inbounds nuw i8, ptr %13, i64 240
  %i.aov = getelementptr inbounds nuw i8, ptr %13, i64 248
  %i.aow = getelementptr inbounds nuw i8, ptr %13, i64 256
  %i.aox = getelementptr inbounds nuw i8, ptr %13, i64 264
  %i.aoy = icmp eq i64 %2, 1
  br label %bb.bg

._crit_edge3335:                                  ; preds = %._crit_edge3332, %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.01858.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge3335
  %i.aoz = ptrtoint ptr %.sroa.01858.0 to i64
  %i.apa = sub i64 %.sroa.121862.0, %i.aoz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01858.0, i64 noundef %i.apa) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge3335, %bb.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ain, i64 noundef %i.aim) #20
  %.not.i.i.i450 = icmp eq ptr %.sroa.01876.02260, null
  br i1 %.not.i.i.i450, label %_ZNSt6vectorIjSaIjEED2Ev.exit451, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01876.02260, i64 noundef %i.aiq) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit451

_ZNSt6vectorIjSaIjEED2Ev.exit451:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.bc
  %.not.i.i.i452 = icmp eq ptr %.sroa.01886.0, null
  br i1 %.not.i.i.i452, label %_ZNSt6vectorIjSaIjEED2Ev.exit453, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit451
  %i.apb = ptrtoint ptr %.sroa.111891.0 to i64
  %i.apc = ptrtoint ptr %.sroa.01886.0 to i64
  %i.apd = sub i64 %i.apb, %i.apc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01886.0, i64 noundef %i.apd) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit453

_ZNSt6vectorIjSaIjEED2Ev.exit453:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit451, %bb.bd
  %i.ape = load ptr, ptr %i.be, align 8           ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ape, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i454

.lr.ph.i.i.i.i454:                                ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit453, %.lr.ph.i.i.i.i454
  %.06.i.i.i.i = phi ptr [ %i.apf, %.lr.ph.i.i.i.i454 ], [ %i.ape, %_ZNSt6vectorIjSaIjEED2Ev.exit453 ] ; 2 uses
  %i.apf = load ptr, ptr %.06.i.i.i.i, align 8    ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 568) #20
  %.not.i.i.i.i455 = icmp eq ptr %i.apf, null
  br i1 %.not.i.i.i.i455, label %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i454, !llvm.loop !53

_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i454, %_ZNSt6vectorIjSaIjEED2Ev.exit453
  %i.apg = load ptr, ptr %9, align 8
  %i.aph = load i64, ptr %i.bd, align 8
  %i.api = shl i64 %i.aph, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.apg, i8 0, i64 %i.api, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.apj = load ptr, ptr %9, align 8              ; 2 uses
  %i.apk = icmp eq ptr %i.apj, %i.bc
  br i1 %i.apk, label %_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.apl = load i64, ptr %i.bd, align 8
  %i.apm = shl i64 %i.apl, 3
  call void @_ZdlPvm(ptr noundef %i.apj, i64 noundef %i.apm) #20
  br label %_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit

_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %.not371 = icmp eq i32 %4, 1
  br i1 %.not371, label %bb.ev, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.bf:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS4_.exit.i
  %i.apn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit540

bb.bg:                                            ; preds = %.lr.ph3334, %._crit_edge3332
  %.03493333 = phi i64 [ 0, %.lr.ph3334 ], [ %i.azy, %._crit_edge3332 ] ; 4 uses
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03493333
  %i.app = load ptr, ptr %i.apo, align 8          ; 34 uses
  %i.apq = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #18
          to label %bb.bh unwind label %bb.bi     ; 42 uses

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.apq, align 8
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 4 ; 3 uses
  store i32 0, ptr %i.apr, align 4
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apq, i64 8 ; 2 uses
  store i32 0, ptr %i.aps, align 8
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apq, i64 16 ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apq, i64 224
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apq, i64 1272
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apq, i64 1312
  store ptr null, ptr %i.apw, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.apt, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.apu, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.apv, i8 0, i64 36, i1 false)
  %i.apx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03493333
  store ptr %i.apq, ptr %i.apx, align 8
  %i.apy = getelementptr inbounds nuw i8, ptr %i.app, i64 8 ; 4 uses
  %i.apz = load i32, ptr %i.apy, align 8
  %.not3353 = icmp eq i32 %i.apz, 0
  br i1 %.not3353, label %._crit_edge3108, label %.lr.ph3107

.lr.ph3107:                                       ; preds = %bb.bh
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.app, i64 208
  br label %bb.bj

._crit_edge3108:                                  ; preds = %bb.bj, %bb.bh
  %i.aqb = phi i32 [ 0, %bb.bh ], [ %i.aql, %bb.bj ] ; 3 uses
  %i.aqc = zext i32 %i.aqb to i64                 ; 5 uses
  %i.aqd = shl nuw nsw i64 %i.aqc, 4
  %i.aqe = or disjoint i64 %i.aqd, 8
  %i.aqf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aqe) #18
          to label %bb.bk unwind label %bb.bi     ; 2 uses

bb.bi:                                            ; preds = %.loopexit2294.a, %bb.bq, %bb.bn, %.loopexit2297.a, %._crit_edge3108, %bb.bg
  %i.aqg = landingpad { ptr, i32 }
          cleanup
  br label %.body471

bb.bj:                                            ; preds = %.lr.ph3107, %bb.bj
  %i.aqh = phi i32 [ 0, %.lr.ph3107 ], [ %i.aql, %bb.bj ]
  %indvars.iv3828 = phi i64 [ 0, %.lr.ph3107 ], [ %indvars.iv.next3829, %bb.bj ] ; 2 uses
  %i.aqi = load ptr, ptr %i.aqa, align 8
  %i.aqj = getelementptr inbounds nuw [16 x i8], ptr %i.aqi, i64 %indvars.iv3828
  %i.aqk = load i32, ptr %i.aqj, align 8
  %i.aql = add i32 %i.aqh, %i.aqk                 ; 3 uses
  store i32 %i.aql, ptr %i.aps, align 8
  %indvars.iv.next3829 = add nuw nsw i64 %indvars.iv3828, 1 ; 2 uses
  %i.aqm = load i32, ptr %i.apy, align 8
  %i.aqn = zext i32 %i.aqm to i64
  %i.aqo = icmp samesign ult i64 %indvars.iv.next3829, %i.aqn
  br i1 %i.aqo, label %bb.bj, label %._crit_edge3108, !llvm.loop !54

bb.bk:                                            ; preds = %._crit_edge3108
  store i64 %i.aqc, ptr %i.aqf, align 16
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqf, i64 8 ; 4 uses
  %i.aqq = icmp eq i32 %i.aqb, 0
  br i1 %i.aqq, label %.loopexit2297.a, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.aqr = getelementptr inbounds nuw [16 x i8], ptr %i.aqp, i64 %i.aqc
  %i.aqs = add nuw nsw i64 %i.aqc, 1152921504606846975
  %i.aqt = and i64 %i.aqs, 1152921504606846975
  %xtraiter5269 = and i64 %i.aqc, 7               ; 2 uses
  %lcmp.mod5270.not = icmp eq i64 %xtraiter5269, 0
  br i1 %lcmp.mod5270.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.bl, %.prol.preheader
  %i.aqu = phi ptr [ %i.aqw, %.prol.preheader ], [ %i.aqp, %bb.bl ] ; 3 uses
  %prol.iter5271 = phi i64 [ %prol.iter5271.next, %.prol.preheader ], [ 0, %bb.bl ]
  store i32 0, ptr %i.aqu, align 8
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 8
  store ptr null, ptr %i.aqv, align 8
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqu, i64 16 ; 2 uses
  %prol.iter5271.next = add i64 %prol.iter5271, 1 ; 2 uses
  %prol.iter5271.cmp.not = icmp eq i64 %prol.iter5271.next, %xtraiter5269
  br i1 %prol.iter5271.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !55

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.bl
  %.unr = phi ptr [ %i.aqp, %bb.bl ], [ %i.aqw, %.prol.preheader ]
  %i.aqx = icmp samesign ult i64 %i.aqt, 7
  br i1 %i.aqx, label %.loopexit2297.a, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.aqy = phi ptr [ %i.aro, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.aqy, align 8
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 8
  store ptr null, ptr %i.aqz, align 8
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqy, i64 16
  store i32 0, ptr %i.ara, align 8
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqy, i64 24
  store ptr null, ptr %i.arb, align 8
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqy, i64 32
  store i32 0, ptr %i.arc, align 8
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqy, i64 40
  store ptr null, ptr %i.ard, align 8
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqy, i64 48
  store i32 0, ptr %i.are, align 8
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqy, i64 56
  store ptr null, ptr %i.arf, align 8
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aqy, i64 64
  store i32 0, ptr %i.arg, align 8
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aqy, i64 72
  store ptr null, ptr %i.arh, align 8
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aqy, i64 80
  store i32 0, ptr %i.ari, align 8
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aqy, i64 88
  store ptr null, ptr %i.arj, align 8
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aqy, i64 96
  store i32 0, ptr %i.ark, align 8
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aqy, i64 104
  store ptr null, ptr %i.arl, align 8
  %i.arm = getelementptr inbounds nuw i8, ptr %i.aqy, i64 112
  store i32 0, ptr %i.arm, align 8
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aqy, i64 120
  store ptr null, ptr %i.arn, align 8
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aqy, i64 128 ; 2 uses
  %i.arp = icmp eq ptr %i.aro, %i.aqr
  br i1 %i.arp, label %.loopexit2297.a, label %.new

.loopexit2297.a:                                  ; preds = %.prol.loopexit, %.new, %bb.bk
  %i.arq = getelementptr inbounds nuw i8, ptr %i.apq, i64 208 ; 2 uses
  store ptr %i.aqp, ptr %i.arq, align 8
  %i.arr = shl i32 %i.aqb, 2                      ; 4 uses
  store i32 %i.arr, ptr %i.apr, align 4
  %i.ars = zext i32 %i.arr to i64                 ; 2 uses
  %i.art = mul nuw nsw i64 %i.ars, 12             ; 24 uses
  %i.aru = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.art) #18
          to label %bb.bm unwind label %bb.bi     ; 2 uses

bb.bm:                                            ; preds = %.loopexit2297.a
  %i.arv = icmp eq i32 %i.arr, 0                  ; 20 uses
  br i1 %i.arv, label %.loopexit2296.a, label %.loopexit2296.loopexit.a

.loopexit2296.loopexit.a:                         ; preds = %bb.bm
  %i.arw = add nsw i64 %i.art, -12                ; 2 uses
  %i.arx = urem i64 %i.arw, 12
  %i.ary = sub nuw nsw i64 %i.arw, %i.arx
  %i.arz = add nsw i64 %i.ary, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aru, i8 0, i64 %i.arz, i1 false)
  br label %.loopexit2296.a

.loopexit2296.a:                                  ; preds = %.loopexit2296.loopexit.a, %bb.bm
  store ptr %i.aru, ptr %i.apt, align 8
  store i32 8, ptr %i.apq, align 8
  %i.asa = getelementptr inbounds nuw i8, ptr %i.app, i64 232
  %i.asb = load i32, ptr %i.asa, align 8
  %i.asc = getelementptr inbounds nuw i8, ptr %i.apq, i64 232
  store i32 %i.asb, ptr %i.asc, align 8
  %i.asd = getelementptr inbounds nuw i8, ptr %i.app, i64 24
  %i.ase = load ptr, ptr %i.asd, align 8
  %.not.i = icmp ne ptr %i.ase, null
  %i.asf = getelementptr inbounds nuw i8, ptr %i.app, i64 4 ; 18 uses
  %i.asg = load i32, ptr %i.asf, align 4          ; 2 uses
  %i.ash = icmp ne i32 %i.asg, 0
  %i.asi = select i1 %.not.i, i1 %i.ash, i1 false
  br i1 %i.asi, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %.loopexit2296.a
  %i.asj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.art) #18
          to label %bb.bo unwind label %bb.bi     ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.arv, label %.loopexit2295.a, label %.loopexit2295.loopexit.a

.loopexit2295.loopexit.a:                         ; preds = %bb.bo
  %i.ask = add nsw i64 %i.art, -12                ; 2 uses
  %i.asl = urem i64 %i.ask, 12
  %i.asm = sub nuw nsw i64 %i.ask, %i.asl
  %i.asn = add nsw i64 %i.asm, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.asj, i8 0, i64 %i.asn, i1 false)
  br label %.loopexit2295.a

.loopexit2295.a:                                  ; preds = %.loopexit2295.loopexit.a, %bb.bo
  %i.aso = getelementptr inbounds nuw i8, ptr %i.apq, i64 24
  store ptr %i.asj, ptr %i.aso, align 8
  %.pre3909.pre = load i32, ptr %i.asf, align 4
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit2295.a, %.loopexit2296.a
  %.pre3909 = phi i32 [ %.pre3909.pre, %.loopexit2295.a ], [ %i.asg, %.loopexit2296.a ] ; 2 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %i.app, i64 32
  %i.asq = load ptr, ptr %i.asp, align 8
  %.not.i456 = icmp eq ptr %i.asq, null
  %i.asr = getelementptr inbounds nuw i8, ptr %i.app, i64 40
  %i.ass = load ptr, ptr %i.asr, align 8
  %.not1.i = icmp eq ptr %i.ass, null
  %or.cond.i = select i1 %.not.i456, i1 true, i1 %.not1.i
end_hunk_1
begin_hunk_2_@_ZN22CatmullClarkSubdivider15InternSubdivideEPKPK6aiMeshmPPS0_j:bb.a
  %i.bgq = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.bka, %.thread ]
  %i.bgr = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.cab, %.thread ] ; 4 uses
  %i.bgs = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.bju, %.thread ]
  %i.bgt = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.cac, %.thread ] ; 4 uses
  %i.bgu = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.bjo, %.thread ]
  %i.bgv = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.cad, %.thread ] ; 4 uses
  %i.bgw = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.bji, %.thread ]
  %i.bgx = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.cae, %.thread ] ; 4 uses
  %i.bgy = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.bjc, %.thread ]
  %i.bgz = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.caf, %.thread ] ; 4 uses
  %i.bha = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.biw, %.thread ]
  %i.bhb = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.cag, %.thread ] ; 4 uses
  %i.bhc = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.biq, %.thread ]
  %i.bhd = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.cah, %.thread ] ; 4 uses
  %i.bhe = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.bik, %.thread ]
  %i.bhf = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.cai, %.thread ] ; 4 uses
  %i.bhg = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.bie, %.thread ]
  %i.bhh = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.caj, %.thread ] ; 4 uses
  %i.bhi = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.bhy, %.thread ]
  %i.bhj = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.cak, %.thread ] ; 4 uses
  %i.bhk = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.bhs, %.thread ]
  %i.bhl = phi <2 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.cal, %.thread ] ; 4 uses
  %i.bhm = phi <12 x float> [ zeroinitializer, %.preheader2288.preheader ], [ %i.cam, %.thread ] ; 4 uses
  %i.bhn = getelementptr inbounds nuw [4 x i8], ptr %i.bet, i64 %indvars.iv3840
  %i.bho = load i32, ptr %i.bhn, align 4          ; 4 uses
  %i.bhp = zext i32 %i.bho to i64
  %i.bhq = getelementptr inbounds nuw [272 x i8], ptr %.sroa.01941.0, i64 %i.bhp ; 40 uses
  %i.bhr = load <2 x float>, ptr %i.bhq, align 4, !noalias !60
  %i.bhs = fadd <2 x float> %i.bhk, %i.bhr        ; 2 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhq, i64 8
  %i.bhu = load float, ptr %i.bht, align 4, !noalias !60
  %i.bhv = fadd float %.sroa.91720.03316, %i.bhu  ; 2 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhq, i64 12
  %i.bhx = load <2 x float>, ptr %i.bhw, align 4, !noalias !60
  %i.bhy = fadd <2 x float> %i.bhi, %i.bhx        ; 2 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhq, i64 20
  %i.bia = load float, ptr %i.bhz, align 4, !noalias !60
  %i.bib = fadd float %.sroa.151726.03313, %i.bia ; 2 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bhq, i64 24
  %i.bid = load <2 x float>, ptr %i.bic, align 4, !noalias !60
  %i.bie = fadd <2 x float> %i.bhg, %i.bid        ; 2 uses
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bhq, i64 32
  %i.big = load float, ptr %i.bif, align 4, !noalias !60
  %i.bih = fadd float %.sroa.211732.03310, %i.big ; 2 uses
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bhq, i64 36
  %i.bij = load <2 x float>, ptr %i.bii, align 4, !noalias !60
  %i.bik = fadd <2 x float> %i.bhe, %i.bij        ; 2 uses
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bhq, i64 44
  %i.bim = load float, ptr %i.bil, align 4, !noalias !60
  %i.bin = fadd float %.sroa.271738.03307, %i.bim ; 2 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bhq, i64 48
  %i.bip = load <2 x float>, ptr %i.bio, align 4, !noalias !60
  %i.biq = fadd <2 x float> %i.bhc, %i.bip        ; 2 uses
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bhq, i64 56
  %i.bis = load float, ptr %i.bir, align 4, !noalias !60
  %i.bit = fadd float %.sroa.331744.03304, %i.bis ; 2 uses
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bhq, i64 60
  %i.biv = load <2 x float>, ptr %i.biu, align 4, !noalias !60
  %i.biw = fadd <2 x float> %i.bha, %i.biv        ; 2 uses
  %i.bix = getelementptr inbounds nuw i8, ptr %i.bhq, i64 68
  %i.biy = load float, ptr %i.bix, align 4, !noalias !60
  %i.biz = fadd float %.sroa.391750.03301, %i.biy ; 2 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %i.bhq, i64 72
  %i.bjb = load <2 x float>, ptr %i.bja, align 4, !noalias !60
  %i.bjc = fadd <2 x float> %i.bgy, %i.bjb        ; 2 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bhq, i64 80
  %i.bje = load float, ptr %i.bjd, align 4, !noalias !60
  %i.bjf = fadd float %.sroa.451756.03298, %i.bje ; 2 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bhq, i64 84
  %i.bjh = load <2 x float>, ptr %i.bjg, align 4, !noalias !60
  %i.bji = fadd <2 x float> %i.bgw, %i.bjh        ; 2 uses
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bhq, i64 92
  %i.bjk = load float, ptr %i.bjj, align 4, !noalias !60
  %i.bjl = fadd float %.sroa.511762.03295, %i.bjk ; 2 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bhq, i64 96
  %i.bjn = load <2 x float>, ptr %i.bjm, align 4, !noalias !60
  %i.bjo = fadd <2 x float> %i.bgu, %i.bjn        ; 2 uses
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bhq, i64 104
  %i.bjq = load float, ptr %i.bjp, align 4, !noalias !60
  %i.bjr = fadd float %.sroa.571768.03292, %i.bjq ; 2 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bhq, i64 108
  %i.bjt = load <2 x float>, ptr %i.bjs, align 4, !noalias !60
  %i.bju = fadd <2 x float> %i.bgs, %i.bjt        ; 2 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bhq, i64 116
  %i.bjw = load float, ptr %i.bjv, align 4, !noalias !60
  %i.bjx = fadd float %.sroa.631774.03289, %i.bjw ; 2 uses
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bhq, i64 120
  %i.bjz = load <2 x float>, ptr %i.bjy, align 4, !noalias !60
  %i.bka = fadd <2 x float> %i.bgq, %i.bjz        ; 2 uses
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bhq, i64 128
  %i.bkc = load float, ptr %i.bkb, align 4, !noalias !60
  %i.bkd = fadd float %.sroa.691780.03286, %i.bkc ; 2 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bhq, i64 132
  %i.bkf = load <2 x float>, ptr %i.bke, align 4, !noalias !60
  %i.bkg = fadd <2 x float> %i.bgo, %i.bkf        ; 2 uses
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bhq, i64 140
  %i.bki = load float, ptr %i.bkh, align 4, !noalias !60
  %i.bkj = fadd float %.sroa.751786.03283, %i.bki ; 2 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bhq, i64 144
  %i.bkl = load <2 x float>, ptr %i.bkk, align 4, !noalias !60
  %i.bkm = fadd <2 x float> %i.bgm, %i.bkl        ; 2 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bhq, i64 152
  %i.bko = load <2 x float>, ptr %i.bkn, align 4, !noalias !60
  %i.bkp = fadd <2 x float> %i.bgk, %i.bko        ; 2 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bhq, i64 160
  %i.bkr = load <2 x float>, ptr %i.bkq, align 4, !noalias !60
  %i.bks = fadd <2 x float> %i.bgi, %i.bkr        ; 2 uses
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bhq, i64 168
  %i.bku = load <2 x float>, ptr %i.bkt, align 4, !noalias !60
  %i.bkv = fadd <2 x float> %i.bgg, %i.bku        ; 2 uses
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bhq, i64 176
  %i.bkx = load <2 x float>, ptr %i.bkw, align 4, !noalias !60
  %i.bky = fadd <2 x float> %i.bge, %i.bkx        ; 2 uses
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bhq, i64 184
  %i.bla = load <2 x float>, ptr %i.bkz, align 4, !noalias !60
  %i.blb = fadd <2 x float> %i.bgc, %i.bla        ; 2 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bhq, i64 192
  %i.bld = load <2 x float>, ptr %i.blc, align 4, !noalias !60
  %i.ble = fadd <2 x float> %i.bga, %i.bld        ; 2 uses
  %i.blf = getelementptr inbounds nuw i8, ptr %i.bhq, i64 200
  %i.blg = load <2 x float>, ptr %i.blf, align 4, !noalias !60
  %i.blh = fadd <2 x float> %i.bfy, %i.blg        ; 2 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %i.bhq, i64 208
  %i.blj = load <2 x float>, ptr %i.bli, align 4, !noalias !60
  %i.blk = fadd <2 x float> %i.bfw, %i.blj        ; 2 uses
  %i.bll = getelementptr inbounds nuw i8, ptr %i.bhq, i64 216
  %i.blm = load <2 x float>, ptr %i.bll, align 4, !noalias !60
  %i.bln = fadd <2 x float> %i.bfu, %i.blm        ; 2 uses
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bhq, i64 224
  %i.blp = load <2 x float>, ptr %i.blo, align 4, !noalias !60
  %i.blq = fadd <2 x float> %i.bfs, %i.blp        ; 2 uses
  %i.blr = getelementptr inbounds nuw i8, ptr %i.bhq, i64 232
  %i.bls = load <2 x float>, ptr %i.blr, align 4, !noalias !60
  %i.blt = fadd <2 x float> %i.bfq, %i.bls        ; 2 uses
  %i.blu = getelementptr inbounds nuw i8, ptr %i.bhq, i64 240
  %i.blv = load <2 x float>, ptr %i.blu, align 4, !noalias !60
  %i.blw = fadd <2 x float> %i.bfo, %i.blv        ; 2 uses
  %i.blx = getelementptr inbounds nuw i8, ptr %i.bhq, i64 248
  %i.bly = load <2 x float>, ptr %i.blx, align 4, !noalias !60
  %i.blz = fadd <2 x float> %i.bfm, %i.bly        ; 2 uses
  %i.bma = getelementptr inbounds nuw i8, ptr %i.bhq, i64 256
  %i.bmb = load <2 x float>, ptr %i.bma, align 4, !noalias !60
  %i.bmc = fadd <2 x float> %i.bfk, %i.bmb        ; 2 uses
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bhq, i64 264
  %i.bme = load <2 x float>, ptr %i.bmd, align 4, !noalias !60
  %i.bmf = fadd <2 x float> %i.bfi, %i.bme        ; 2 uses
  %i.bmg = load i32, ptr %.sroa.01957.03989, align 4
  %i.bmh = icmp ult i32 %i.bho, %i.bmg
  br i1 %i.bmh, label %bb.du, label %.preheader2287.preheader

.preheader2287.preheader:                         ; preds = %.preheader2288
  br i1 %i.aoy, label %._crit_edge4953, label %.lr.ph4952

.preheader2287:                                   ; preds = %bb.dt
  %i.bmi = icmp eq i64 %i.bmo, %2
  br i1 %i.bmi, label %._crit_edge4953, label %.lr.ph4952, !llvm.loop !63

.lr.ph4952:                                       ; preds = %.preheader2287.preheader, %.preheader2287
  %.032531114951 = phi i64 [ %i.bmo, %.preheader2287 ], [ 1, %.preheader2287.preheader ] ; 3 uses
  %i.bmj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01957.03989, i64 %.032531114951
  %i.bmk = load i32, ptr %i.bmj, align 4
  %i.bml = icmp ugt i32 %i.bmk, %i.bho
  br i1 %i.bml, label %._crit_edge4953, label %bb.dt

._crit_edge4953:                                  ; preds = %.preheader2287, %.lr.ph4952, %.preheader2287.preheader
  %.03253111.lcssa = phi i64 [ %2, %.preheader2287.preheader ], [ %2, %.preheader2287 ], [ %.032531114951, %.lr.ph4952 ]
  %i.bmm = add i64 %.03253111.lcssa, -1           ; 2 uses
  %i.bmn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bmm
  br label %bb.du

bb.dt:                                            ; preds = %.lr.ph4952
  %i.bmo = add i64 %.032531114951, 1              ; 3 uses
  %.not377 = icmp ugt i64 %i.bmo, %2
  br i1 %.not377, label %.thread, label %.preheader2287, !llvm.loop !63

bb.du:                                            ; preds = %.preheader2288, %._crit_edge4953
  %.0327.in = phi ptr [ %i.bmn, %._crit_edge4953 ], [ %1, %.preheader2288 ]
  %.1326 = phi i64 [ %i.bmm, %._crit_edge4953 ], [ 0, %.preheader2288 ]
  %.0327 = load ptr, ptr %.0327.in, align 8       ; 2 uses
  %i.bmp = icmp eq ptr %.0327, null
  br i1 %i.bmp, label %.thread, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.bmq = getelementptr inbounds nuw i8, ptr %.0327, i64 208
  %i.bmr = load ptr, ptr %i.bmq, align 8
  %i.bms = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01957.03989, i64 %.1326 ; 2 uses
  %i.bmt = load i32, ptr %i.bms, align 4
  %i.bmu = sub i32 %i.bho, %i.bmt
  %i.bmv = zext i32 %i.bmu to i64
  %i.bmw = getelementptr inbounds nuw [16 x i8], ptr %i.bmr, i64 %i.bmv ; 3 uses
  %i.bmx = load i32, ptr %i.bmw, align 8          ; 5 uses
  %.not3356 = icmp eq i32 %i.bmx, 0
  br i1 %.not3356, label %.critedge, label %.lr.ph3114

.lr.ph3114:                                       ; preds = %bb.dv
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bms, i64 4 ; 2 uses
  %i.bmz = load i32, ptr %i.bmy, align 4          ; 4 uses
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmw, i64 8 ; 2 uses
  %i.bnb = load ptr, ptr %i.bna, align 8          ; 4 uses
  %i.bnc = load ptr, ptr %6, align 8              ; 4 uses
  br label %bb.dw

bb.dw:                                            ; preds = %.lr.ph3114, %bb.eg
  %.03213112 = phi i32 [ 0, %.lr.ph3114 ], [ %18, %bb.eg ] ; 6 uses
  %14 = zext i32 %.03213112 to i64
  %i.bnd = getelementptr inbounds nuw [4 x i8], ptr %i.bnb, i64 %14
  %i.bne = load i32, ptr %i.bnd, align 4
  %i.bnf = add i32 %i.bne, %i.bmz
  %i.bng = zext i32 %i.bnf to i64
  %i.bnh = getelementptr inbounds nuw [4 x i8], ptr %i.bnc, i64 %i.bng
  %i.bni = load i32, ptr %i.bnh, align 4
  %i.bnj = icmp eq i32 %i.bni, %i.bel
  br i1 %i.bnj, label %bb.dx, label %bb.eg

bb.dx:                                            ; preds = %bb.dw
  %.not378 = icmp eq i32 %.03213112, 0
  %spec.select2280 = select i1 %.not378, i32 %i.bmx, i32 %.03213112
  %i.bnk = add i32 %spec.select2280, -1
  %i.bnl = zext i32 %i.bnk to i64
  %i.bnm = getelementptr inbounds nuw [4 x i8], ptr %i.bnb, i64 %i.bnl
  %i.bnn = load i32, ptr %i.bnm, align 4
  %i.bno = add i32 %i.bnn, %i.bmz
  %i.bnp = zext i32 %i.bno to i64
  %i.bnq = getelementptr inbounds nuw [4 x i8], ptr %i.bnc, i64 %i.bnp
  %i.bnr = load i32, ptr %i.bnq, align 4          ; 2 uses
  %.32240 = call i32 @llvm.umin.i32(i32 %i.bel, i32 %i.bnr)
  %.3 = call i32 @llvm.umax.i32(i32 %i.bel, i32 %i.bnr)
  %i.bns = zext i32 %.3 to i64
  %i.bnt = zext i32 %.32240 to i64
  %i.bnu = shl nuw i64 %i.bnt, 32
  %i.bnv = or disjoint i64 %i.bnu, %i.bns         ; 5 uses
  %i.bnw = load i64, ptr %i.bd, align 8           ; 4 uses
  %i.bnx = urem i64 %i.bnv, %i.bnw                ; 3 uses
  %i.bny = load ptr, ptr %9, align 8              ; 3 uses
  %i.bnz = getelementptr inbounds nuw [8 x i8], ptr %i.bny, i64 %i.bnx
  %i.boa = load ptr, ptr %i.bnz, align 8          ; 2 uses
  %.not.i.i.i.i490 = icmp eq ptr %i.boa, null
  br i1 %.not.i.i.i.i490, label %.loopexit.i.i496, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bob = load ptr, ptr %i.boa, align 8          ; 3 uses
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bob, i64 8
  %i.bod = load i64, ptr %i.boc, align 8
  %i.boe = icmp eq i64 %i.bnv, %i.bod
  br i1 %i.boe, label %.loopexit2286, label %.lr.ph.i.i.i.i491

bb.dz:                                            ; preds = %bb.ea
  %i.bof = icmp eq i64 %i.bnv, %i.boi
  br i1 %i.bof, label %.loopexit2286, label %.lr.ph.i.i.i.i491, !llvm.loop !31

.lr.ph.i.i.i.i491:                                ; preds = %bb.dy, %bb.dz
  %.020.i.i.i.i492 = phi ptr [ %i.bog, %bb.dz ], [ %i.bob, %bb.dy ]
  %i.bog = load ptr, ptr %.020.i.i.i.i492, align 8 ; 4 uses
  %.not18.i.i.i.i493 = icmp eq ptr %i.bog, null
  br i1 %.not18.i.i.i.i493, label %.loopexit.i.i496, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i.i.i.i491
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bog, i64 8
  %i.boi = load i64, ptr %i.boh, align 8          ; 2 uses
  %i.boj = urem i64 %i.boi, %i.bnw
  %.not19.i.i.i.i494 = icmp eq i64 %i.boj, %i.bnx
  br i1 %.not19.i.i.i.i494, label %bb.dz, label %..loopexit_crit_edge21.i.i.i.i495, !llvm.loop !31

..loopexit_crit_edge21.i.i.i.i495:                ; preds = %bb.ea
  br label %.loopexit.i.i496, !llvm.loop !31

.loopexit.i.i496:                                 ; preds = %.lr.ph.i.i.i.i491, %..loopexit_crit_edge21.i.i.i.i495, %bb.dx
  %i.bok = invoke noalias noundef nonnull dereferenceable(568) ptr @_Znwm(i64 noundef 568) #18
          to label %.noexc500 unwind label %bb.ee ; 5 uses

.noexc500:                                        ; preds = %.loopexit.i.i496
  store ptr null, ptr %i.bok, align 8
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bok, i64 8
  store i64 %i.bnv, ptr %i.bol, align 8
  %i.bom = getelementptr inbounds nuw i8, ptr %i.bok, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(548) %i.bom, i8 0, i64 548, i1 false)
  %i.bon = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %9, i64 noundef %i.bnx, i64 noundef %i.bnv, ptr noundef nonnull %i.bok, i64 noundef 1)
          to label %.noexc500..loopexit2286_crit_edge unwind label %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i497

.noexc500..loopexit2286_crit_edge:                ; preds = %.noexc500
  %.pre3916 = load i32, ptr %i.bmy, align 4
  %.pre3917 = load ptr, ptr %i.bna, align 8
  %.pre3918 = load i32, ptr %i.bmw, align 8
  %.pre3919 = load ptr, ptr %6, align 8
  %.pre3920 = load i64, ptr %i.bd, align 8
  %.pre3921 = load ptr, ptr %9, align 8
  br label %.loopexit2286

_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i497: ; preds = %.noexc500
  %i.boo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bok, i64 noundef 568) #20
  br label %.body471

.loopexit2286:                                    ; preds = %bb.dz, %.noexc500..loopexit2286_crit_edge, %bb.dy
  %i.bop = phi ptr [ %.pre3921, %.noexc500..loopexit2286_crit_edge ], [ %i.bny, %bb.dy ], [ %i.bny, %bb.dz ]
  %i.boq = phi i64 [ %.pre3920, %.noexc500..loopexit2286_crit_edge ], [ %i.bnw, %bb.dy ], [ %i.bnw, %bb.dz ] ; 2 uses
  %i.bor = phi ptr [ %.pre3919, %.noexc500..loopexit2286_crit_edge ], [ %i.bnc, %bb.dy ], [ %i.bnc, %bb.dz ]
  %i.bos = phi i32 [ %.pre3918, %.noexc500..loopexit2286_crit_edge ], [ %i.bmx, %bb.dy ], [ %i.bmx, %bb.dz ]
  %i.bot = phi ptr [ %.pre3917, %.noexc500..loopexit2286_crit_edge ], [ %i.bnb, %bb.dy ], [ %i.bnb, %bb.dz ]
  %i.bou = phi i32 [ %.pre3916, %.noexc500..loopexit2286_crit_edge ], [ %i.bmz, %bb.dy ], [ %i.bmz, %bb.dz ]
  %.pn.i.i498 = phi ptr [ %i.bon, %.noexc500..loopexit2286_crit_edge ], [ %i.bob, %bb.dy ], [ %i.bog, %bb.dz ] ; 40 uses
  %i.bov = add i32 %i.bos, -1
  %i.bow = icmp eq i32 %.03213112, %i.bov
  %15 = add i32 %.03213112, 1
  %16 = select i1 %i.bow, i32 0, i32 %15
  %17 = zext i32 %16 to i64
  %i.box = getelementptr inbounds nuw [4 x i8], ptr %i.bot, i64 %17
  %i.boy = load i32, ptr %i.box, align 4
  %i.boz = add i32 %i.boy, %i.bou
  %i.bpa = zext i32 %i.boz to i64
  %i.bpb = getelementptr inbounds nuw [4 x i8], ptr %i.bor, i64 %i.bpa
  %i.bpc = load i32, ptr %i.bpb, align 4          ; 2 uses
  %spec.select2281 = call i32 @llvm.umin.i32(i32 %i.bel, i32 %i.bpc)
  %spec.select2282 = call i32 @llvm.umax.i32(i32 %i.bel, i32 %i.bpc)
  %i.bpd = zext i32 %spec.select2282 to i64
  %i.bpe = zext i32 %spec.select2281 to i64
  %i.bpf = shl nuw i64 %i.bpe, 32
  %i.bpg = or disjoint i64 %i.bpf, %i.bpd         ; 5 uses
  %i.bph = urem i64 %i.bpg, %i.boq                ; 3 uses
  %i.bpi = getelementptr inbounds nuw [8 x i8], ptr %i.bop, i64 %i.bph
  %i.bpj = load ptr, ptr %i.bpi, align 8          ; 2 uses
  %.not.i.i.i.i504 = icmp eq ptr %i.bpj, null
  br i1 %.not.i.i.i.i504, label %.loopexit.i.i510, label %bb.eb

bb.eb:                                            ; preds = %.loopexit2286
  %i.bpk = load ptr, ptr %i.bpj, align 8          ; 3 uses
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpk, i64 8
  %i.bpm = load i64, ptr %i.bpl, align 8
  %i.bpn = icmp eq i64 %i.bpg, %i.bpm
  br i1 %i.bpn, label %.loopexit, label %.lr.ph.i.i.i.i505

bb.ec:                                            ; preds = %bb.ed
  %i.bpo = icmp eq i64 %i.bpg, %i.bpr
  br i1 %i.bpo, label %.loopexit, label %.lr.ph.i.i.i.i505, !llvm.loop !31

.lr.ph.i.i.i.i505:                                ; preds = %bb.eb, %bb.ec
  %.020.i.i.i.i506 = phi ptr [ %i.bpp, %bb.ec ], [ %i.bpk, %bb.eb ]
  %i.bpp = load ptr, ptr %.020.i.i.i.i506, align 8 ; 4 uses
  %.not18.i.i.i.i507 = icmp eq ptr %i.bpp, null
  br i1 %.not18.i.i.i.i507, label %.loopexit.i.i510, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph.i.i.i.i505
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpp, i64 8
  %i.bpr = load i64, ptr %i.bpq, align 8          ; 2 uses
  %i.bps = urem i64 %i.bpr, %i.boq
  %.not19.i.i.i.i508 = icmp eq i64 %i.bps, %i.bph
  br i1 %.not19.i.i.i.i508, label %bb.ec, label %..loopexit_crit_edge21.i.i.i.i509, !llvm.loop !31

..loopexit_crit_edge21.i.i.i.i509:                ; preds = %bb.ed
  br label %.loopexit.i.i510, !llvm.loop !31

.loopexit.i.i510:                                 ; preds = %.lr.ph.i.i.i.i505, %..loopexit_crit_edge21.i.i.i.i509, %.loopexit2286
  %i.bpt = invoke noalias noundef nonnull dereferenceable(568) ptr @_Znwm(i64 noundef 568) #18
          to label %.noexc514 unwind label %bb.ef ; 5 uses

.noexc514:                                        ; preds = %.loopexit.i.i510
  store ptr null, ptr %i.bpt, align 8
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpt, i64 8
  store i64 %i.bpg, ptr %i.bpu, align 8
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpt, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(548) %i.bpv, i8 0, i64 548, i1 false)
  %i.bpw = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %9, i64 noundef %i.bph, i64 noundef %i.bpg, ptr noundef nonnull %i.bpt, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i511

_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i511: ; preds = %.noexc514
  %i.bpx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bpt, i64 noundef 568) #20
  br label %.body471

.loopexit:                                        ; preds = %bb.ec, %.noexc514, %bb.eb
  %.pn.i.i512 = phi ptr [ %i.bpw, %.noexc514 ], [ %i.bpk, %bb.eb ], [ %i.bpp, %bb.ec ] ; 40 uses
  %i.bpy = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 288
  %i.bpz = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 288
  %i.bqa = load <2 x float>, ptr %i.bpy, align 4, !noalias !64
  %i.bqb = load <2 x float>, ptr %i.bpz, align 4, !noalias !64
  %i.bqc = fadd <2 x float> %i.bqa, %i.bqb
  %i.bqd = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 296
  %i.bqe = load float, ptr %i.bqd, align 4, !noalias !64
  %i.bqf = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 296
  %i.bqg = load float, ptr %i.bqf, align 4, !noalias !64
  %i.bqh = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 300
  %i.bqi = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 300
  %i.bqj = load <2 x float>, ptr %i.bqh, align 4, !noalias !64
  %i.bqk = load <2 x float>, ptr %i.bqi, align 4, !noalias !64
  %i.bql = fadd <2 x float> %i.bqj, %i.bqk
  %i.bqm = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 308
  %i.bqn = load float, ptr %i.bqm, align 4, !noalias !64
  %i.bqo = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 308
  %i.bqp = load float, ptr %i.bqo, align 4, !noalias !64
  %i.bqq = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 312
  %i.bqr = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 312
  %i.bqs = load <2 x float>, ptr %i.bqq, align 4, !noalias !64
  %i.bqt = load <2 x float>, ptr %i.bqr, align 4, !noalias !64
  %i.bqu = fadd <2 x float> %i.bqs, %i.bqt
  %i.bqv = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 320
  %i.bqw = load float, ptr %i.bqv, align 4, !noalias !64
  %i.bqx = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 320
  %i.bqy = load float, ptr %i.bqx, align 4, !noalias !64
  %i.bqz = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 324
  %i.bra = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 324
  %i.brb = load <2 x float>, ptr %i.bqz, align 4, !noalias !64
  %i.brc = load <2 x float>, ptr %i.bra, align 4, !noalias !64
  %i.brd = fadd <2 x float> %i.brb, %i.brc
  %i.bre = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 332
  %i.brf = load float, ptr %i.bre, align 4, !noalias !64
  %i.brg = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 332
  %i.brh = load float, ptr %i.brg, align 4, !noalias !64
  %i.bri = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 336
  %i.brj = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 336
  %i.brk = load <2 x float>, ptr %i.bri, align 4, !noalias !64
  %i.brl = load <2 x float>, ptr %i.brj, align 4, !noalias !64
  %i.brm = fadd <2 x float> %i.brk, %i.brl
  %i.brn = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 344
  %i.bro = load float, ptr %i.brn, align 4, !noalias !64
  %i.brp = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 344
  %i.brq = load float, ptr %i.brp, align 4, !noalias !64
  %i.brr = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 348
  %i.brs = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 348
  %i.brt = load <2 x float>, ptr %i.brr, align 4, !noalias !64
  %i.bru = load <2 x float>, ptr %i.brs, align 4, !noalias !64
  %i.brv = fadd <2 x float> %i.brt, %i.bru
  %i.brw = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 356
  %i.brx = load float, ptr %i.brw, align 4, !noalias !64
  %i.bry = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 356
  %i.brz = load float, ptr %i.bry, align 4, !noalias !64
  %i.bsa = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 360
  %i.bsb = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 360
  %i.bsc = load <2 x float>, ptr %i.bsa, align 4, !noalias !64
  %i.bsd = load <2 x float>, ptr %i.bsb, align 4, !noalias !64
  %i.bse = fadd <2 x float> %i.bsc, %i.bsd
  %i.bsf = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 368
  %i.bsg = load float, ptr %i.bsf, align 4, !noalias !64
  %i.bsh = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 368
  %i.bsi = load float, ptr %i.bsh, align 4, !noalias !64
  %i.bsj = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 372
  %i.bsk = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 372
  %i.bsl = load <2 x float>, ptr %i.bsj, align 4, !noalias !64
  %i.bsm = load <2 x float>, ptr %i.bsk, align 4, !noalias !64
  %i.bsn = fadd <2 x float> %i.bsl, %i.bsm
  %i.bso = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 380
  %i.bsp = load float, ptr %i.bso, align 4, !noalias !64
  %i.bsq = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 380
  %i.bsr = load float, ptr %i.bsq, align 4, !noalias !64
  %i.bss = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 384
  %i.bst = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 384
  %i.bsu = load <2 x float>, ptr %i.bss, align 4, !noalias !64
  %i.bsv = load <2 x float>, ptr %i.bst, align 4, !noalias !64
  %i.bsw = fadd <2 x float> %i.bsu, %i.bsv
  %i.bsx = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 392
  %i.bsy = load float, ptr %i.bsx, align 4, !noalias !64
  %i.bsz = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 392
  %i.bta = load float, ptr %i.bsz, align 4, !noalias !64
  %i.btb = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 396
  %i.btc = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 396
  %i.btd = load <2 x float>, ptr %i.btb, align 4, !noalias !64
  %i.bte = load <2 x float>, ptr %i.btc, align 4, !noalias !64
  %i.btf = fadd <2 x float> %i.btd, %i.bte
  %i.btg = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 404
  %i.bth = load float, ptr %i.btg, align 4, !noalias !64
  %i.bti = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 404
  %i.btj = load float, ptr %i.bti, align 4, !noalias !64
  %i.btk = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 408
  %i.btl = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 408
  %i.btm = load <2 x float>, ptr %i.btk, align 4, !noalias !64
  %i.btn = load <2 x float>, ptr %i.btl, align 4, !noalias !64
  %i.bto = fadd <2 x float> %i.btm, %i.btn
  %i.btp = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 416
  %i.btq = load float, ptr %i.btp, align 4, !noalias !64
  %i.btr = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 416
  %i.bts = load float, ptr %i.btr, align 4, !noalias !64
  %i.btt = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 420
  %i.btu = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 420
  %i.btv = load <2 x float>, ptr %i.btt, align 4, !noalias !64
  %i.btw = load <2 x float>, ptr %i.btu, align 4, !noalias !64
  %i.btx = fadd <2 x float> %i.btv, %i.btw
  %i.bty = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 428
  %i.btz = load float, ptr %i.bty, align 4, !noalias !64
  %i.bua = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 428
  %i.bub = load float, ptr %i.bua, align 4, !noalias !64
  %i.buc = insertelement <12 x float> poison, float %i.btz, i64 0
  %i.bud = insertelement <12 x float> %i.buc, float %i.btq, i64 1
  %i.bue = insertelement <12 x float> %i.bud, float %i.bth, i64 2
  %i.buf = insertelement <12 x float> %i.bue, float %i.bsy, i64 3
  %i.bug = insertelement <12 x float> %i.buf, float %i.bsp, i64 4
  %i.buh = insertelement <12 x float> %i.bug, float %i.bsg, i64 5
  %i.bui = insertelement <12 x float> %i.buh, float %i.brx, i64 6
  %i.buj = insertelement <12 x float> %i.bui, float %i.bro, i64 7
  %i.buk = insertelement <12 x float> %i.buj, float %i.brf, i64 8
  %i.bul = insertelement <12 x float> %i.buk, float %i.bqw, i64 9
  %i.bum = insertelement <12 x float> %i.bul, float %i.bqn, i64 10
  %i.bun = insertelement <12 x float> %i.bum, float %i.bqe, i64 11
  %i.buo = insertelement <12 x float> poison, float %i.bub, i64 0
  %i.bup = insertelement <12 x float> %i.buo, float %i.bts, i64 1
  %i.buq = insertelement <12 x float> %i.bup, float %i.btj, i64 2
  %i.bur = insertelement <12 x float> %i.buq, float %i.bta, i64 3
  %i.bus = insertelement <12 x float> %i.bur, float %i.bsr, i64 4
  %i.but = insertelement <12 x float> %i.bus, float %i.bsi, i64 5
  %i.buu = insertelement <12 x float> %i.but, float %i.brz, i64 6
  %i.buv = insertelement <12 x float> %i.buu, float %i.brq, i64 7
  %i.buw = insertelement <12 x float> %i.buv, float %i.brh, i64 8
  %i.bux = insertelement <12 x float> %i.buw, float %i.bqy, i64 9
  %i.buy = insertelement <12 x float> %i.bux, float %i.bqp, i64 10
  %i.buz = insertelement <12 x float> %i.buy, float %i.bqg, i64 11
  %i.bva = fadd <12 x float> %i.bun, %i.buz
  %i.bvb = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 432
  %i.bvc = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 432
  %i.bvd = load <2 x float>, ptr %i.bvb, align 4, !noalias !64
  %i.bve = load <2 x float>, ptr %i.bvc, align 4, !noalias !64
  %i.bvf = fadd <2 x float> %i.bvd, %i.bve
  %i.bvg = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 440
  %i.bvh = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 440
  %i.bvi = load <2 x float>, ptr %i.bvg, align 4, !noalias !64
  %i.bvj = load <2 x float>, ptr %i.bvh, align 4, !noalias !64
  %i.bvk = fadd <2 x float> %i.bvi, %i.bvj
  %i.bvl = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 448
  %i.bvm = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 448
  %i.bvn = load <2 x float>, ptr %i.bvl, align 4, !noalias !64
  %i.bvo = load <2 x float>, ptr %i.bvm, align 4, !noalias !64
  %i.bvp = fadd <2 x float> %i.bvn, %i.bvo
  %i.bvq = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 456
  %i.bvr = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 456
  %i.bvs = load <2 x float>, ptr %i.bvq, align 4, !noalias !64
  %i.bvt = load <2 x float>, ptr %i.bvr, align 4, !noalias !64
  %i.bvu = fadd <2 x float> %i.bvs, %i.bvt
  %i.bvv = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 464
  %i.bvw = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 464
  %i.bvx = load <2 x float>, ptr %i.bvv, align 4, !noalias !64
  %i.bvy = load <2 x float>, ptr %i.bvw, align 4, !noalias !64
  %i.bvz = fadd <2 x float> %i.bvx, %i.bvy
  %i.bwa = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 472
  %i.bwb = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 472
  %i.bwc = load <2 x float>, ptr %i.bwa, align 4, !noalias !64
  %i.bwd = load <2 x float>, ptr %i.bwb, align 4, !noalias !64
  %i.bwe = fadd <2 x float> %i.bwc, %i.bwd
  %i.bwf = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 480
  %i.bwg = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 480
  %i.bwh = load <2 x float>, ptr %i.bwf, align 4, !noalias !64
  %i.bwi = load <2 x float>, ptr %i.bwg, align 4, !noalias !64
  %i.bwj = fadd <2 x float> %i.bwh, %i.bwi
  %i.bwk = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 488
  %i.bwl = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 488
  %i.bwm = load <2 x float>, ptr %i.bwk, align 4, !noalias !64
  %i.bwn = load <2 x float>, ptr %i.bwl, align 4, !noalias !64
  %i.bwo = fadd <2 x float> %i.bwm, %i.bwn
  %i.bwp = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 496
  %i.bwq = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 496
  %i.bwr = load <2 x float>, ptr %i.bwp, align 4, !noalias !64
  %i.bws = load <2 x float>, ptr %i.bwq, align 4, !noalias !64
  %i.bwt = fadd <2 x float> %i.bwr, %i.bws
  %i.bwu = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 504
  %i.bwv = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 504
  %i.bww = load <2 x float>, ptr %i.bwu, align 4, !noalias !64
  %i.bwx = load <2 x float>, ptr %i.bwv, align 4, !noalias !64
  %i.bwy = fadd <2 x float> %i.bww, %i.bwx
  %i.bwz = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 512
  %i.bxa = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 512
  %i.bxb = load <2 x float>, ptr %i.bwz, align 4, !noalias !64
  %i.bxc = load <2 x float>, ptr %i.bxa, align 4, !noalias !64
  %i.bxd = fadd <2 x float> %i.bxb, %i.bxc
  %i.bxe = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 520
  %i.bxf = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 520
  %i.bxg = load <2 x float>, ptr %i.bxe, align 4, !noalias !64
  %i.bxh = load <2 x float>, ptr %i.bxf, align 4, !noalias !64
  %i.bxi = fadd <2 x float> %i.bxg, %i.bxh
  %i.bxj = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 528
  %i.bxk = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 528
  %i.bxl = load <2 x float>, ptr %i.bxj, align 4, !noalias !64
  %i.bxm = load <2 x float>, ptr %i.bxk, align 4, !noalias !64
  %i.bxn = fadd <2 x float> %i.bxl, %i.bxm
  %i.bxo = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 536
  %i.bxp = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 536
  %i.bxq = load <2 x float>, ptr %i.bxo, align 4, !noalias !64
  %i.bxr = load <2 x float>, ptr %i.bxp, align 4, !noalias !64
  %i.bxs = fadd <2 x float> %i.bxq, %i.bxr
  %i.bxt = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 544
  %i.bxu = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 544
  %i.bxv = load <2 x float>, ptr %i.bxt, align 4, !noalias !64
  %i.bxw = load <2 x float>, ptr %i.bxu, align 4, !noalias !64
  %i.bxx = fadd <2 x float> %i.bxv, %i.bxw
  %i.bxy = getelementptr inbounds nuw i8, ptr %.pn.i.i498, i64 552
  %i.bxz = getelementptr inbounds nuw i8, ptr %.pn.i.i512, i64 552
  %i.bya = load <2 x float>, ptr %i.bxy, align 4, !noalias !64
  %i.byb = load <2 x float>, ptr %i.bxz, align 4, !noalias !64
  %i.byc = fadd <2 x float> %i.bya, %i.byb
  %i.byd = fadd <2 x float> %i.bhl, %i.bqc
  %i.bye = fadd <2 x float> %i.bhj, %i.bql
  %i.byf = fadd <2 x float> %i.bhh, %i.bqu
  %i.byg = fadd <2 x float> %i.bhf, %i.brd
  %i.byh = fadd <2 x float> %i.bhd, %i.brm
  %i.byi = fadd <2 x float> %i.bhb, %i.brv
  %i.byj = fadd <2 x float> %i.bgz, %i.bse
  %i.byk = fadd <2 x float> %i.bgx, %i.bsn
  %i.byl = fadd <2 x float> %i.bgv, %i.bsw
  %i.bym = fadd <2 x float> %i.bgt, %i.btf
  %i.byn = fadd <2 x float> %i.bgr, %i.bto
  %i.byo = fadd <2 x float> %i.bgp, %i.btx
  %i.byp = fadd <12 x float> %i.bhm, %i.bva
  %i.byq = fadd <2 x float> %i.bgn, %i.bvf
  %i.byr = fadd <2 x float> %i.bgl, %i.bvk
  %i.bys = fadd <2 x float> %i.bgj, %i.bvp
  %i.byt = fadd <2 x float> %i.bgh, %i.bvu
  %i.byu = fadd <2 x float> %i.bgf, %i.bvz
  %i.byv = fadd <2 x float> %i.bgd, %i.bwe
  %i.byw = fadd <2 x float> %i.bgb, %i.bwj
  %i.byx = fadd <2 x float> %i.bfz, %i.bwo
  %i.byy = fadd <2 x float> %i.bfx, %i.bwt
  %i.byz = fadd <2 x float> %i.bfv, %i.bwy
  %i.bza = fadd <2 x float> %i.bft, %i.bxd
  %i.bzb = fadd <2 x float> %i.bfr, %i.bxi
  %i.bzc = fadd <2 x float> %i.bfp, %i.bxn
  %i.bzd = fadd <2 x float> %i.bfn, %i.bxs
  %i.bze = fadd <2 x float> %i.bfl, %i.bxx
  %i.bzf = fadd <2 x float> %i.bfj, %i.byc
  br label %.thread

bb.ee:                                            ; preds = %.loopexit.i.i496
  %i.bzg = landingpad { ptr, i32 }
          cleanup
  br label %.body471

bb.ef:                                            ; preds = %.loopexit.i.i510
  %i.bzh = landingpad { ptr, i32 }
          cleanup
  br label %.body471

bb.eg:                                            ; preds = %bb.dw
  %18 = add nuw i32 %.03213112, 1                 ; 2 uses
  %exitcond3839.not = icmp eq i32 %18, %i.bmx
  br i1 %exitcond3839.not, label %.critedge, label %bb.dw, !llvm.loop !67

.critedge:                                        ; preds = %bb.eg, %bb.dv
  %i.bzi = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.eh unwind label %bb.ei

bb.eh:                                            ; preds = %.critedge
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bzi, ptr noundef nonnull @.str.5)
          to label %.thread unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.critedge
  %i.bzj = landingpad { ptr, i32 }
          cleanup
  br label %.body471

.thread:                                          ; preds = %bb.dt, %.loopexit, %bb.eh, %bb.du
  %i.bzk = phi <2 x float> [ %i.bfj, %bb.du ], [ %i.bzf, %.loopexit ], [ %i.bfj, %bb.eh ], [ %i.bfj, %bb.dt ] ; 2 uses
  %i.bzl = phi <2 x float> [ %i.bfl, %bb.du ], [ %i.bze, %.loopexit ], [ %i.bfl, %bb.eh ], [ %i.bfl, %bb.dt ] ; 2 uses
  %i.bzm = phi <2 x float> [ %i.bfn, %bb.du ], [ %i.bzd, %.loopexit ], [ %i.bfn, %bb.eh ], [ %i.bfn, %bb.dt ] ; 2 uses
  %i.bzn = phi <2 x float> [ %i.bfp, %bb.du ], [ %i.bzc, %.loopexit ], [ %i.bfp, %bb.eh ], [ %i.bfp, %bb.dt ] ; 2 uses
  %i.bzo = phi <2 x float> [ %i.bfr, %bb.du ], [ %i.bzb, %.loopexit ], [ %i.bfr, %bb.eh ], [ %i.bfr, %bb.dt ] ; 2 uses
  %i.bzp = phi <2 x float> [ %i.bft, %bb.du ], [ %i.bza, %.loopexit ], [ %i.bft, %bb.eh ], [ %i.bft, %bb.dt ] ; 2 uses
  %i.bzq = phi <2 x float> [ %i.bfv, %bb.du ], [ %i.byz, %.loopexit ], [ %i.bfv, %bb.eh ], [ %i.bfv, %bb.dt ] ; 2 uses
  %i.bzr = phi <2 x float> [ %i.bfx, %bb.du ], [ %i.byy, %.loopexit ], [ %i.bfx, %bb.eh ], [ %i.bfx, %bb.dt ] ; 2 uses
  %i.bzs = phi <2 x float> [ %i.bfz, %bb.du ], [ %i.byx, %.loopexit ], [ %i.bfz, %bb.eh ], [ %i.bfz, %bb.dt ] ; 2 uses
  %i.bzt = phi <2 x float> [ %i.bgb, %bb.du ], [ %i.byw, %.loopexit ], [ %i.bgb, %bb.eh ], [ %i.bgb, %bb.dt ] ; 2 uses
  %i.bzu = phi <2 x float> [ %i.bgd, %bb.du ], [ %i.byv, %.loopexit ], [ %i.bgd, %bb.eh ], [ %i.bgd, %bb.dt ] ; 2 uses
  %i.bzv = phi <2 x float> [ %i.bgf, %bb.du ], [ %i.byu, %.loopexit ], [ %i.bgf, %bb.eh ], [ %i.bgf, %bb.dt ] ; 2 uses
  %i.bzw = phi <2 x float> [ %i.bgh, %bb.du ], [ %i.byt, %.loopexit ], [ %i.bgh, %bb.eh ], [ %i.bgh, %bb.dt ] ; 2 uses
  %i.bzx = phi <2 x float> [ %i.bgj, %bb.du ], [ %i.bys, %.loopexit ], [ %i.bgj, %bb.eh ], [ %i.bgj, %bb.dt ] ; 2 uses
  %i.bzy = phi <2 x float> [ %i.bgl, %bb.du ], [ %i.byr, %.loopexit ], [ %i.bgl, %bb.eh ], [ %i.bgl, %bb.dt ] ; 2 uses
  %i.bzz = phi <2 x float> [ %i.bgn, %bb.du ], [ %i.byq, %.loopexit ], [ %i.bgn, %bb.eh ], [ %i.bgn, %bb.dt ] ; 2 uses
  %i.caa = phi <2 x float> [ %i.bgp, %bb.du ], [ %i.byo, %.loopexit ], [ %i.bgp, %bb.eh ], [ %i.bgp, %bb.dt ] ; 2 uses
  %i.cab = phi <2 x float> [ %i.bgr, %bb.du ], [ %i.byn, %.loopexit ], [ %i.bgr, %bb.eh ], [ %i.bgr, %bb.dt ] ; 2 uses
  %i.cac = phi <2 x float> [ %i.bgt, %bb.du ], [ %i.bym, %.loopexit ], [ %i.bgt, %bb.eh ], [ %i.bgt, %bb.dt ] ; 2 uses
  %i.cad = phi <2 x float> [ %i.bgv, %bb.du ], [ %i.byl, %.loopexit ], [ %i.bgv, %bb.eh ], [ %i.bgv, %bb.dt ] ; 2 uses
  %i.cae = phi <2 x float> [ %i.bgx, %bb.du ], [ %i.byk, %.loopexit ], [ %i.bgx, %bb.eh ], [ %i.bgx, %bb.dt ] ; 2 uses
  %i.caf = phi <2 x float> [ %i.bgz, %bb.du ], [ %i.byj, %.loopexit ], [ %i.bgz, %bb.eh ], [ %i.bgz, %bb.dt ] ; 2 uses
  %i.cag = phi <2 x float> [ %i.bhb, %bb.du ], [ %i.byi, %.loopexit ], [ %i.bhb, %bb.eh ], [ %i.bhb, %bb.dt ] ; 2 uses
  %i.cah = phi <2 x float> [ %i.bhd, %bb.du ], [ %i.byh, %.loopexit ], [ %i.bhd, %bb.eh ], [ %i.bhd, %bb.dt ] ; 2 uses
  %i.cai = phi <2 x float> [ %i.bhf, %bb.du ], [ %i.byg, %.loopexit ], [ %i.bhf, %bb.eh ], [ %i.bhf, %bb.dt ] ; 2 uses
  %i.caj = phi <2 x float> [ %i.bhh, %bb.du ], [ %i.byf, %.loopexit ], [ %i.bhh, %bb.eh ], [ %i.bhh, %bb.dt ] ; 2 uses
  %i.cak = phi <2 x float> [ %i.bhj, %bb.du ], [ %i.bye, %.loopexit ], [ %i.bhj, %bb.eh ], [ %i.bhj, %bb.dt ] ; 2 uses
  %i.cal = phi <2 x float> [ %i.bhl, %bb.du ], [ %i.byd, %.loopexit ], [ %i.bhl, %bb.eh ], [ %i.bhl, %bb.dt ] ; 2 uses
  %i.cam = phi <12 x float> [ %i.bhm, %bb.du ], [ %i.byp, %.loopexit ], [ %i.bhm, %bb.eh ], [ %i.bhm, %bb.dt ] ; 13 uses
  %indvars.iv.next3841 = add nuw nsw i64 %indvars.iv3840, 1 ; 2 uses
  %exitcond3843.not = icmp eq i64 %indvars.iv.next3841, %wide.trip.count.a
  br i1 %exitcond3843.not, label %bb.ds, label %.preheader2288, !llvm.loop !68

bb.ej:                                            ; preds = %bb.ds
  %i.can = uitofp i32 %i.bev to float             ; 4 uses
  %i.cao = fmul nnan float %i.can, %i.can
  %i.cap = fdiv float 1.000000e+00, %i.cao        ; 25 uses
  %i.caq = fadd float %i.can, -3.000000e+00
  %i.car = fdiv float %i.caq, %i.can              ; 13 uses
  %i.cas = load float, ptr %i.anl, align 8, !noalias !69
  %i.cat = fmul float %i.car, %i.cas
  %i.cau = load float, ptr %i.ann, align 4, !noalias !69
  %i.cav = fmul float %i.car, %i.cau
  %i.caw = load float, ptr %i.anp, align 8, !noalias !69
  %i.cax = fmul float %i.car, %i.caw
  %i.cay = load float, ptr %i.anr, align 4, !noalias !69
  %i.caz = fmul float %i.car, %i.cay
  %i.cba = load float, ptr %i.ant, align 8, !noalias !69
  %i.cbb = fmul float %i.car, %i.cba
  %i.cbc = load float, ptr %i.anv, align 4, !noalias !69
  %i.cbd = fmul float %i.car, %i.cbc
  %i.cbe = load float, ptr %i.anx, align 8, !noalias !69
  %i.cbf = fmul float %i.car, %i.cbe
  %i.cbg = load float, ptr %i.anz, align 4, !noalias !69
  %i.cbh = fmul float %i.car, %i.cbg
  %i.cbi = load float, ptr %i.aob, align 8, !noalias !69
  %i.cbj = fmul float %i.car, %i.cbi
  %i.cbk = load float, ptr %i.aod, align 4, !noalias !69
  %i.cbl = fmul float %i.car, %i.cbk
  %i.cbm = load float, ptr %i.aof, align 8, !noalias !69
  %i.cbn = fmul float %i.car, %i.cbm
  %i.cbo = load float, ptr %i.aoh, align 4, !noalias !69
  %i.cbp = fmul float %i.car, %i.cbo
  %i.cbq = insertelement <2 x float> poison, float %i.cap, i64 0
  %i.cbr = shufflevector <2 x float> %i.cbq, <2 x float> poison, <2 x i32> zeroinitializer ; 56 uses
  %i.cbs = fmul <2 x float> %i.cbr, %i.cal
  %i.cbt = extractelement <12 x float> %i.cam, i64 11
  %i.cbu = fmul float %i.cap, %i.cbt
  %i.cbv = fmul <2 x float> %i.cbr, %i.cak
  %i.cbw = extractelement <12 x float> %i.cam, i64 10
  %i.cbx = fmul float %i.cap, %i.cbw
  %i.cby = fmul <2 x float> %i.cbr, %i.caj
  %i.cbz = extractelement <12 x float> %i.cam, i64 9
  %i.cca = fmul float %i.cap, %i.cbz
  %i.ccb = fmul <2 x float> %i.cbr, %i.cai
  %i.ccc = extractelement <12 x float> %i.cam, i64 8
  %i.ccd = fmul float %i.cap, %i.ccc
  %i.cce = fmul <2 x float> %i.cbr, %i.cah
  %i.ccf = extractelement <12 x float> %i.cam, i64 7
  %i.ccg = fmul float %i.cap, %i.ccf
  %i.cch = fmul <2 x float> %i.cbr, %i.cag
  %i.cci = extractelement <12 x float> %i.cam, i64 6
  %i.ccj = fmul float %i.cap, %i.cci
  %i.cck = fmul <2 x float> %i.cbr, %i.caf
  %i.ccl = extractelement <12 x float> %i.cam, i64 5
  %i.ccm = fmul float %i.cap, %i.ccl
  %i.ccn = fmul <2 x float> %i.cbr, %i.cae
  %i.cco = extractelement <12 x float> %i.cam, i64 4
  %i.ccp = fmul float %i.cap, %i.cco
  %i.ccq = fmul <2 x float> %i.cbr, %i.cad
  %i.ccr = extractelement <12 x float> %i.cam, i64 3
  %i.ccs = fmul float %i.cap, %i.ccr
  %i.cct = fmul <2 x float> %i.cbr, %i.cac
  %i.ccu = extractelement <12 x float> %i.cam, i64 2
  %i.ccv = fmul float %i.cap, %i.ccu
  %i.ccw = fmul <2 x float> %i.cbr, %i.cab
  %i.ccx = extractelement <12 x float> %i.cam, i64 1
  %i.ccy = fmul float %i.cap, %i.ccx
  %i.ccz = fmul <2 x float> %i.cbr, %i.caa
  %i.cda = extractelement <12 x float> %i.cam, i64 0
  %i.cdb = fmul float %i.cap, %i.cda
  %i.cdc = fmul <2 x float> %i.cbr, %i.bzz
  %i.cdd = fmul <2 x float> %i.cbr, %i.bzy
  %i.cde = fmul <2 x float> %i.cbr, %i.bzx
  %i.cdf = fmul <2 x float> %i.cbr, %i.bzw
  %i.cdg = fmul <2 x float> %i.cbr, %i.bzv
  %i.cdh = fmul <2 x float> %i.cbr, %i.bzu
  %i.cdi = fmul <2 x float> %i.cbr, %i.bzt
  %i.cdj = fmul <2 x float> %i.cbr, %i.bzs
  %i.cdk = fmul <2 x float> %i.cbr, %i.bzr
  %i.cdl = fmul <2 x float> %i.cbr, %i.bzq
  %i.cdm = fmul <2 x float> %i.cbr, %i.bzp
  %i.cdn = fmul <2 x float> %i.cbr, %i.bzo
  %i.cdo = fmul <2 x float> %i.cbr, %i.bzn
  %i.cdp = fmul <2 x float> %i.cbr, %i.bzm
  %i.cdq = fmul <2 x float> %i.cbr, %i.bzl
  %i.cdr = fmul <2 x float> %i.cbr, %i.bzk
  %i.cds = fadd float %i.cbu, %i.cat
  %i.cdt = fadd float %i.cbx, %i.cav
  %i.cdu = fadd float %i.cca, %i.cax
  %i.cdv = fadd float %i.ccd, %i.caz
  %i.cdw = fadd float %i.ccg, %i.cbb
  %i.cdx = fadd float %i.ccj, %i.cbd
  %i.cdy = fadd float %i.ccm, %i.cbf
  %i.cdz = fadd float %i.ccp, %i.cbh
  %i.cea = fadd float %i.ccs, %i.cbj
  %i.ceb = fadd float %i.ccv, %i.cbl
  %i.cec = fadd float %i.ccy, %i.cbn
  %i.ced = fadd float %i.cdb, %i.cbp
  %i.cee = fmul <2 x float> %i.cbr, %i.bhs
  %i.cef = fmul float %i.cap, %i.bhv
  %i.ceg = fmul <2 x float> %i.cbr, %i.bhy
  %i.ceh = fmul float %i.cap, %i.bib
  %i.cei = fmul <2 x float> %i.cbr, %i.bie
  %i.cej = fmul float %i.cap, %i.bih
  %i.cek = fmul <2 x float> %i.cbr, %i.bik
  %i.cel = fmul float %i.cap, %i.bin
  %i.cem = fmul <2 x float> %i.cbr, %i.biq
  %i.cen = fmul float %i.cap, %i.bit
  %i.ceo = fmul <2 x float> %i.cbr, %i.biw
  %i.cep = fmul float %i.cap, %i.biz
  %i.ceq = fmul <2 x float> %i.cbr, %i.bjc
  %i.cer = fmul float %i.cap, %i.bjf
  %i.ces = fmul <2 x float> %i.cbr, %i.bji
  %i.cet = fmul float %i.cap, %i.bjl
  %i.ceu = fmul <2 x float> %i.cbr, %i.bjo
  %i.cev = fmul float %i.cap, %i.bjr
  %i.cew = fmul <2 x float> %i.cbr, %i.bju
  %i.cex = fmul float %i.cap, %i.bjx
  %i.cey = fmul <2 x float> %i.cbr, %i.bka
  %i.cez = fmul float %i.cap, %i.bkd
  %i.cfa = fmul <2 x float> %i.cbr, %i.bkg
  %i.cfb = fmul float %i.cap, %i.bkj
  %i.cfc = fmul <2 x float> %i.cbr, %i.bkm
  %i.cfd = fmul <2 x float> %i.cbr, %i.bkp
  %i.cfe = fmul <2 x float> %i.cbr, %i.bks
  %i.cff = fmul <2 x float> %i.cbr, %i.bkv
  %i.cfg = fmul <2 x float> %i.cbr, %i.bky
  %i.cfh = fmul <2 x float> %i.cbr, %i.blb
  %i.cfi = fmul <2 x float> %i.cbr, %i.ble
  %i.cfj = fmul <2 x float> %i.cbr, %i.blh
  %i.cfk = fmul <2 x float> %i.cbr, %i.blk
  %i.cfl = fmul <2 x float> %i.cbr, %i.bln
  %i.cfm = fmul <2 x float> %i.cbr, %i.blq
  %i.cfn = fmul <2 x float> %i.cbr, %i.blt
  %i.cfo = fmul <2 x float> %i.cbr, %i.blw
  %i.cfp = fmul <2 x float> %i.cbr, %i.blz
  %i.cfq = fmul <2 x float> %i.cbr, %i.bmc
  %i.cfr = fmul <2 x float> %i.cbr, %i.bmf
  %i.cfs = load <2 x float>, ptr %13, align 8, !noalias !69
  %i.cft = insertelement <2 x float> poison, float %i.car, i64 0
  %i.cfu = shufflevector <2 x float> %i.cft, <2 x float> poison, <2 x i32> zeroinitializer ; 28 uses
  %i.cfv = fmul <2 x float> %i.cfu, %i.cfs
  %i.cfw = fadd <2 x float> %i.cbs, %i.cfv
  %i.cfx = fadd <2 x float> %i.cee, %i.cfw
  %i.cfy = fadd float %i.cef, %i.cds
  %i.cfz = load <2 x float>, ptr %i.anm, align 4, !noalias !69
  %i.cga = fmul <2 x float> %i.cfu, %i.cfz
  %i.cgb = fadd <2 x float> %i.cbv, %i.cga
  %i.cgc = fadd <2 x float> %i.ceg, %i.cgb
  %i.cgd = fadd float %i.ceh, %i.cdt
  %i.cge = load <2 x float>, ptr %i.ano, align 8, !noalias !69
  %i.cgf = fmul <2 x float> %i.cfu, %i.cge
  %i.cgg = fadd <2 x float> %i.cby, %i.cgf
end_hunk_2
begin_hunk_3_@_ZN22CatmullClarkSubdivider15InternSubdivideEPKPK6aiMeshmPPS0_j:bb.a
  %i.chf = fadd <2 x float> %i.ccn, %i.che
  %i.chg = fadd <2 x float> %i.ces, %i.chf
  %i.chh = fadd float %i.cet, %i.cdz
  %i.chi = load <2 x float>, ptr %i.aoa, align 8, !noalias !69
  %i.chj = fmul <2 x float> %i.cfu, %i.chi
  %i.chk = fadd <2 x float> %i.ccq, %i.chj
  %i.chl = fadd <2 x float> %i.ceu, %i.chk
  %i.chm = fadd float %i.cev, %i.cea
  %i.chn = load <2 x float>, ptr %i.aoc, align 4, !noalias !69
  %i.cho = fmul <2 x float> %i.cfu, %i.chn
  %i.chp = fadd <2 x float> %i.cct, %i.cho
  %i.chq = fadd <2 x float> %i.cew, %i.chp
  %i.chr = fadd float %i.cex, %i.ceb
  %i.chs = load <2 x float>, ptr %i.aoe, align 8, !noalias !69
  %i.cht = fmul <2 x float> %i.cfu, %i.chs
  %i.chu = fadd <2 x float> %i.ccw, %i.cht
  %i.chv = fadd <2 x float> %i.cey, %i.chu
  %i.chw = fadd float %i.cez, %i.cec
  %i.chx = load <2 x float>, ptr %i.aog, align 4, !noalias !69
  %i.chy = fmul <2 x float> %i.cfu, %i.chx
  %i.chz = fadd <2 x float> %i.ccz, %i.chy
  %i.cia = fadd <2 x float> %i.cfa, %i.chz
  %i.cib = fadd float %i.cfb, %i.ced
  %i.cic = load <2 x float>, ptr %i.aoi, align 8, !noalias !69
  %i.cid = fmul <2 x float> %i.cfu, %i.cic
  %i.cie = fadd <2 x float> %i.cdc, %i.cid
  %i.cif = fadd <2 x float> %i.cfc, %i.cie
  %i.cig = load <2 x float>, ptr %i.aoj, align 8, !noalias !69
  %i.cih = fmul <2 x float> %i.cfu, %i.cig
  %i.cii = fadd <2 x float> %i.cdd, %i.cih
  %i.cij = fadd <2 x float> %i.cfd, %i.cii
  %i.cik = load <2 x float>, ptr %i.aok, align 8, !noalias !69
  %i.cil = fmul <2 x float> %i.cfu, %i.cik
  %i.cim = fadd <2 x float> %i.cde, %i.cil
  %i.cin = fadd <2 x float> %i.cfe, %i.cim
  %i.cio = load <2 x float>, ptr %i.aol, align 8, !noalias !69
  %i.cip = fmul <2 x float> %i.cfu, %i.cio
  %i.ciq = fadd <2 x float> %i.cdf, %i.cip
  %i.cir = fadd <2 x float> %i.cff, %i.ciq
  %i.cis = load <2 x float>, ptr %i.aom, align 8, !noalias !69
  %i.cit = fmul <2 x float> %i.cfu, %i.cis
  %i.ciu = fadd <2 x float> %i.cdg, %i.cit
  %i.civ = fadd <2 x float> %i.cfg, %i.ciu
  %i.ciw = load <2 x float>, ptr %i.aon, align 8, !noalias !69
  %i.cix = fmul <2 x float> %i.cfu, %i.ciw
  %i.ciy = fadd <2 x float> %i.cdh, %i.cix
  %i.ciz = fadd <2 x float> %i.cfh, %i.ciy
  %i.cja = load <2 x float>, ptr %i.aoo, align 8, !noalias !69
  %i.cjb = fmul <2 x float> %i.cfu, %i.cja
  %i.cjc = fadd <2 x float> %i.cdi, %i.cjb
  %i.cjd = fadd <2 x float> %i.cfi, %i.cjc
  %i.cje = load <2 x float>, ptr %i.aop, align 8, !noalias !69
  %i.cjf = fmul <2 x float> %i.cfu, %i.cje
  %i.cjg = fadd <2 x float> %i.cdj, %i.cjf
  %i.cjh = fadd <2 x float> %i.cfj, %i.cjg
  %i.cji = load <2 x float>, ptr %i.aoq, align 8, !noalias !69
  %i.cjj = fmul <2 x float> %i.cfu, %i.cji
  %i.cjk = fadd <2 x float> %i.cdk, %i.cjj
  %i.cjl = fadd <2 x float> %i.cfk, %i.cjk
  %i.cjm = load <2 x float>, ptr %i.aor, align 8, !noalias !69
  %i.cjn = fmul <2 x float> %i.cfu, %i.cjm
  %i.cjo = fadd <2 x float> %i.cdl, %i.cjn
  %i.cjp = fadd <2 x float> %i.cfl, %i.cjo
  %i.cjq = load <2 x float>, ptr %i.aos, align 8, !noalias !69
  %i.cjr = fmul <2 x float> %i.cfu, %i.cjq
  %i.cjs = fadd <2 x float> %i.cdm, %i.cjr
  %i.cjt = fadd <2 x float> %i.cfm, %i.cjs
  %i.cju = load <2 x float>, ptr %i.aot, align 8, !noalias !69
  %i.cjv = fmul <2 x float> %i.cfu, %i.cju
  %i.cjw = fadd <2 x float> %i.cdn, %i.cjv
  %i.cjx = fadd <2 x float> %i.cfn, %i.cjw
  %i.cjy = load <2 x float>, ptr %i.aou, align 8, !noalias !69
  %i.cjz = fmul <2 x float> %i.cfu, %i.cjy
  %i.cka = fadd <2 x float> %i.cdo, %i.cjz
  %i.ckb = fadd <2 x float> %i.cfo, %i.cka
  %i.ckc = load <2 x float>, ptr %i.aov, align 8, !noalias !69
  %i.ckd = fmul <2 x float> %i.cfu, %i.ckc
  %i.cke = fadd <2 x float> %i.cdp, %i.ckd
  %i.ckf = fadd <2 x float> %i.cfp, %i.cke
  %i.ckg = load <2 x float>, ptr %i.aow, align 8, !noalias !69
  %i.ckh = fmul <2 x float> %i.cfu, %i.ckg
  %i.cki = fadd <2 x float> %i.cdq, %i.ckh
  %i.ckj = fadd <2 x float> %i.cfq, %i.cki
  %i.ckk = load <2 x float>, ptr %i.aox, align 8, !noalias !69
  %i.ckl = fmul <2 x float> %i.cfu, %i.ckk
  %i.ckm = fadd <2 x float> %i.cdr, %i.ckl
  %i.ckn = fadd <2 x float> %i.cfr, %i.ckm
  %i.cko = getelementptr inbounds nuw i8, ptr %i.ben, i64 4
  store <2 x float> %i.cfx, ptr %i.cko, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 12
  store float %i.cfy, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.61557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 16
  store <2 x float> %i.cgc, ptr %.sroa.61557.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 24
  store float %i.cgd, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.81558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 28
  store <2 x float> %i.cgh, ptr %.sroa.81558.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 36
  store float %i.cgi, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.101559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 40
  store <2 x float> %i.cgm, ptr %.sroa.101559.0..sroa_idx, align 4
  %.sroa.111560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 48
  store float %i.cgn, ptr %.sroa.111560.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 52
  store <2 x float> %i.cgr, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.131561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 60
  store float %i.cgs, ptr %.sroa.131561.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 64
  store <2 x float> %i.cgw, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 72
  store float %i.cgx, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.161562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 76
  store <2 x float> %i.chb, ptr %.sroa.161562.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 84
  store float %i.chc, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.181563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 88
  store <2 x float> %i.chg, ptr %.sroa.181563.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 96
  store float %i.chh, ptr %.sroa.19.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 100
  store <2 x float> %i.chl, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.211564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 108
  store float %i.chm, ptr %.sroa.211564.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 112
  store <2 x float> %i.chq, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.231565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 120
  store float %i.chr, ptr %.sroa.231565.0..sroa_idx, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 124
  store <2 x float> %i.chv, ptr %.sroa.24.0..sroa_idx, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 132
  store float %i.chw, ptr %.sroa.25.0..sroa_idx, align 4
  %.sroa.261566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 136
  store <2 x float> %i.cia, ptr %.sroa.261566.0..sroa_idx, align 4
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 144
  store float %i.cib, ptr %.sroa.27.0..sroa_idx, align 4
  %.sroa.281567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 148
  store <2 x float> %i.cif, ptr %.sroa.281567.0..sroa_idx, align 4
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 156
  store <2 x float> %i.cij, ptr %.sroa.29.0..sroa_idx, align 4
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 164
  store <2 x float> %i.cin, ptr %.sroa.30.0..sroa_idx, align 4
  %.sroa.311568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 172
  store <2 x float> %i.cir, ptr %.sroa.311568.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 180
  store <2 x float> %i.civ, ptr %.sroa.32.0..sroa_idx, align 4
  %.sroa.331569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 188
  store <2 x float> %i.ciz, ptr %.sroa.331569.0..sroa_idx, align 4
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 196
  store <2 x float> %i.cjd, ptr %.sroa.34.0..sroa_idx, align 4
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 204
  store <2 x float> %i.cjh, ptr %.sroa.35.0..sroa_idx, align 4
  %.sroa.361570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 212
  store <2 x float> %i.cjl, ptr %.sroa.361570.0..sroa_idx, align 4
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 220
  store <2 x float> %i.cjp, ptr %.sroa.37.0..sroa_idx, align 4
  %.sroa.381571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 228
  store <2 x float> %i.cjt, ptr %.sroa.381571.0..sroa_idx, align 4
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 236
  store <2 x float> %i.cjx, ptr %.sroa.40.0..sroa_idx, align 4
  %.sroa.411572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 244
  store <2 x float> %i.ckb, ptr %.sroa.411572.0..sroa_idx, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 252
  store <2 x float> %i.ckf, ptr %.sroa.42.0..sroa_idx, align 4
  %.sroa.431573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 260
  store <2 x float> %i.ckj, ptr %.sroa.431573.0..sroa_idx, align 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ben, i64 268
  store <2 x float> %i.ckn, ptr %.sroa.44.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.el

bb.ek:                                            ; preds = %bb.ds
  %i.ckp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %.body471

bb.el:                                            ; preds = %bb.do, %bb.ej, %.loopexit2289
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.ben, i64 4
  %i.ckr = add i32 %.13423320, 4                  ; 2 uses
  %i.cks = load ptr, ptr %i.ban, align 8
  %i.ckt = getelementptr inbounds nuw i8, ptr %i.cks, i64 8
  store i32 %i.bea, ptr %i.ckt, align 4
  call void @_ZNK6Assimp6Vertex8SortBackEP6aiMeshj(ptr noundef nonnull align 4 dereferenceable(272) %i.ckq, ptr noundef nonnull %i.apq, i32 noundef %i.bea)
  %i.cku = load i32, ptr %i.bab, align 8
  %i.ckv = zext i32 %i.cku to i64
  %i.ckw = icmp samesign ult i64 %indvars.iv.next3845, %i.ckv
  br i1 %i.ckw, label %bb.dc, label %._crit_edge3325.loopexit, !llvm.loop !72

.body471:                                         ; preds = %bb.ek, %bb.ei, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i497, %bb.ee, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i511, %bb.ef, %bb.dr, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i481, %bb.dq, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i467, %bb.dp, %bb.ck, %bb.bt, %bb.bi
  %.pn392 = phi { ptr, i32 } [ %i.att, %bb.bt ], [ %i.axy, %bb.ck ], [ %i.aqg, %bb.bi ], [ %i.bfb, %bb.dp ], [ %i.bdw, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i481 ], [ %i.bck, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i467 ], [ %i.bpx, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i511 ], [ %i.bfc, %bb.dq ], [ %i.bfd, %bb.dr ], [ %i.ckp, %bb.ek ], [ %i.bzh, %bb.ef ], [ %i.bzj, %bb.ei ], [ %i.boo, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i497 ], [ %i.bzg, %bb.ee ] ; 2 uses
  %.not.i.i.i531 = icmp eq ptr %.sroa.01858.0, null
  br i1 %.not.i.i.i531, label %_ZNSt6vectorIjSaIjEED2Ev.exit540, label %bb.em

bb.em:                                            ; preds = %.body471.thread, %.body471
  %.pn3922273 = phi { ptr, i32 } [ %i.bfe, %.body471.thread ], [ %.pn392, %.body471 ]
  %i.ckx = ptrtoint ptr %.sroa.01858.0 to i64
  %i.cky = sub i64 %.sroa.121862.0, %i.ckx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01858.0, i64 noundef %i.cky) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit540

_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS2_.exit, label %bb.en

bb.en:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ckz = shl nuw nsw i64 %2, 3
  %i.cla = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ckz) #18
          to label %.noexc537 unwind label %bb.es ; 5 uses

.noexc537:                                        ; preds = %bb.en
  %19 = getelementptr inbounds nuw [8 x i8], ptr %i.cla, i64 %2 ; 2 uses
  store ptr null, ptr %i.cla, align 8
  %i.clb = add nsw i64 %2, -1                     ; 2 uses
  %i.clc = icmp eq i64 %i.clb, 0
  br i1 %i.clc, label %_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS2_.exit, label %_ZSt6fill_nIPP6aiMeshmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPP6aiMeshmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc537
  %i.cld = getelementptr i8, ptr %i.cla, i64 8
  %.idx.i.i.i.i.i.i.i534 = shl nuw nsw i64 %i.clb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cld, i8 0, i64 %.idx.i.i.i.i.i.i.i534, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS2_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS2_.exit:      ; preds = %_ZSt6fill_nIPP6aiMeshmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc537, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.sroa.01434.0 = phi ptr [ %i.cla, %_ZSt6fill_nIPP6aiMeshmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cla, %.noexc537 ], [ null, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 6 uses
  %.sroa.11.0 = phi ptr [ %19, %_ZSt6fill_nIPP6aiMeshmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %19, %.noexc537 ], [ null, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %i.cle = add i32 %4, -1
  invoke void @_ZN22CatmullClarkSubdivider15InternSubdivideEPKPK6aiMeshmPPS0_j(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3, i64 noundef %2, ptr noundef nonnull %.sroa.01434.0, i32 noundef %i.cle)
          to label %.preheader unwind label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit552

.preheader:                                       ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS2_.exit
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %.lr.ph3337

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %bb.eu, %.preheader
  %20 = ptrtoint ptr %.sroa.11.0 to i64
  %21 = ptrtoint ptr %.sroa.01434.0 to i64
  %22 = sub i64 %20, %21
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01434.0, i64 noundef %22) #20
  br label %bb.ev

_ZNSt6vectorIjSaIjEED2Ev.exit540:                 ; preds = %bb.em, %.body471, %bb.bf
  %.pn392.pn = phi { ptr, i32 } [ %i.apn, %bb.bf ], [ %.pn392, %.body471 ], [ %.pn3922273, %bb.em ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ain, i64 noundef %i.aim) #20
  br label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit540, %bb.aw
  %.sroa.01876.02254 = phi ptr [ %.sroa.01876.02260, %_ZNSt6vectorIjSaIjEED2Ev.exit540 ], [ %.sroa.01876.02255, %bb.aw ] ; 3 uses
  %.sroa.161883.02247 = phi ptr [ %.0.i.i.i.i.i.i.i2261, %_ZNSt6vectorIjSaIjEED2Ev.exit540 ], [ %.sroa.161883.02248, %bb.aw ]
  %.pn392.pn.pn = phi { ptr, i32 } [ %.pn392.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit540 ], [ %i.aiv, %bb.aw ] ; 2 uses
  %.not.i.i.i541 = icmp eq ptr %.sroa.01876.02254, null
  br i1 %.not.i.i.i541, label %_ZNSt6vectorIjSaIjEED2Ev.exit542, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.clf = ptrtoint ptr %.sroa.161883.02247 to i64
  %i.clg = ptrtoint ptr %.sroa.01876.02254 to i64
  %i.clh = sub i64 %i.clf, %i.clg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01876.02254, i64 noundef %i.clh) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit542

_ZNSt6vectorIjSaIjEED2Ev.exit542:                 ; preds = %bb.ep, %bb.eo, %bb.av
  %.pn392.pn.pn.pn = phi { ptr, i32 } [ %i.aiu, %bb.av ], [ %.pn392.pn.pn, %bb.eo ], [ %.pn392.pn.pn, %bb.ep ] ; 2 uses
  %.not.i.i.i543 = icmp eq ptr %.sroa.01886.0, null
  br i1 %.not.i.i.i543, label %.body, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit542
  %i.cli = ptrtoint ptr %.sroa.111891.0 to i64
  %i.clj = ptrtoint ptr %.sroa.01886.0 to i64
  %i.clk = sub i64 %i.cli, %i.clj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01886.0, i64 noundef %i.clk) #20
  br label %.body

.body:                                            ; preds = %bb.au, %_ZNSt6vectorIjSaIjEED2Ev.exit542, %bb.eq, %bb.ab, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %bb.ae, %bb.at
  %.pn402.pn = phi { ptr, i32 } [ %i.rl, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %.pn398, %bb.at ], [ %.pn392.pn.pn.pn, %bb.eq ], [ %.pn400, %bb.ae ], [ %i.yw, %bb.ab ], [ %i.ait, %bb.au ], [ %.pn392.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit542 ]
  %i.cll = load ptr, ptr %i.be, align 8           ; 2 uses
  %.not5.i.i.i.i545 = icmp eq ptr %i.cll, null
  br i1 %.not5.i.i.i.i545, label %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i549, label %.lr.ph.i.i.i.i546

.lr.ph.i.i.i.i546:                                ; preds = %.body, %.lr.ph.i.i.i.i546
  %.06.i.i.i.i547 = phi ptr [ %i.clm, %.lr.ph.i.i.i.i546 ], [ %i.cll, %.body ] ; 2 uses
  %i.clm = load ptr, ptr %.06.i.i.i.i547, align 8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i547, i64 noundef 568) #20
  %.not.i.i.i.i548 = icmp eq ptr %i.clm, null
  br i1 %.not.i.i.i.i548, label %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i549, label %.lr.ph.i.i.i.i546, !llvm.loop !53

_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i549: ; preds = %.lr.ph.i.i.i.i546, %.body
  %i.cln = load ptr, ptr %9, align 8
  %i.clo = load i64, ptr %i.bd, align 8
  %i.clp = shl i64 %i.clo, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cln, i8 0, i64 %i.clp, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.clq = load ptr, ptr %9, align 8              ; 2 uses
  %i.clr = icmp eq ptr %i.clq, %i.bc
  br i1 %i.clr, label %_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit550, label %bb.er

bb.er:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i549
  %i.cls = load i64, ptr %i.bd, align 8
  %i.clt = shl i64 %i.cls, 3
  call void @_ZdlPvm(ptr noundef %i.clq, i64 noundef %i.clt) #20
  br label %_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit550

_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit550: ; preds = %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i549, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.fb

bb.es:                                            ; preds = %bb.en
  %i.clu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit552:        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS2_.exit
  %i.clv = landingpad { ptr, i32 }
          cleanup
  %23 = ptrtoint ptr %.sroa.11.0 to i64
  %24 = ptrtoint ptr %.sroa.01434.0 to i64
  %25 = sub i64 %23, %24
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01434.0, i64 noundef %25) #20
  br label %bb.fb

.lr.ph3337:                                       ; preds = %.preheader, %bb.eu
  %.03336 = phi i64 [ %i.cmb, %bb.eu ], [ 0, %.preheader ] ; 3 uses
  %i.clw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03336 ; 2 uses
  %i.clx = load ptr, ptr %i.clw, align 8          ; 3 uses
  %i.cly = icmp eq ptr %i.clx, null
  br i1 %i.cly, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %.lr.ph3337
  call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.clx) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.clx, i64 noundef 1320) #20
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %.lr.ph3337
  %i.clz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01434.0, i64 %.03336
  %i.cma = load ptr, ptr %i.clz, align 8
  store ptr %i.cma, ptr %i.clw, align 8
  %i.cmb = add nuw i64 %.03336, 1                 ; 2 uses
  %exitcond3851.not = icmp eq i64 %i.cmb, %2
  br i1 %exitcond3851.not, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %.lr.ph3337, !llvm.loop !73

bb.ev:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, %_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit
  %.not.i.i.i553 = icmp eq ptr %.sroa.01941.0, null
  br i1 %.not.i.i.i553, label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.cmc = ptrtoint ptr %.sroa.01941.0 to i64
  %i.cmd = sub i64 %.sink.i418, %i.cmc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01941.0, i64 noundef %i.cmd) #20
  br label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit

_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit:   ; preds = %bb.ev, %bb.ew
  %.not.i.i.i554 = icmp eq ptr %.sroa.01957.03989, null
  br i1 %.not.i.i.i554, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit
  %i.cme = ptrtoint ptr %.sroa.01957.03989 to i64
  %i.cmf = sub i64 %.sink.i3991, %i.cme
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01957.03989, i64 noundef %i.cmf) #20
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit:        ; preds = %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit, %bb.ex
  %i.cmg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cmh = load ptr, ptr %i.cmg, align 8          ; 3 uses
  %.not.i.i.i.i555 = icmp eq ptr %i.cmh, null
  br i1 %.not.i.i.i.i555, label %_ZN6Assimp11SpatialSortD2Ev.exit, label %bb.ey

bb.ey:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit
  %i.cmi = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cmj = load ptr, ptr %i.cmi, align 8
  %i.cmk = ptrtoint ptr %i.cmj to i64
  %i.cml = ptrtoint ptr %i.cmh to i64
  %i.cmm = sub i64 %i.cmk, %i.cml
  call void @_ZdlPvm(ptr noundef nonnull %i.cmh, i64 noundef %i.cmm) #20
  br label %_ZN6Assimp11SpatialSortD2Ev.exit

_ZN6Assimp11SpatialSortD2Ev.exit:                 ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.cmn = load ptr, ptr %6, align 8              ; 3 uses
  %.not.i.i.i556 = icmp eq ptr %i.cmn, null
  br i1 %.not.i.i.i556, label %_ZNSt6vectorIjSaIjEED2Ev.exit557, label %bb.ez

bb.ez:                                            ; preds = %_ZN6Assimp11SpatialSortD2Ev.exit
  %i.cmo = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cmp = load ptr, ptr %i.cmo, align 8
  %i.cmq = ptrtoint ptr %i.cmp to i64
  %i.cmr = ptrtoint ptr %i.cmn to i64
  %i.cms = sub i64 %i.cmq, %i.cmr
  call void @_ZdlPvm(ptr noundef nonnull %i.cmn, i64 noundef %i.cms) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit557

_ZNSt6vectorIjSaIjEED2Ev.exit557:                 ; preds = %_ZN6Assimp11SpatialSortD2Ev.exit, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.fa

bb.fa:                                            ; preds = %bb.a, %_ZNSt6vectorIjSaIjEED2Ev.exit557
  ret void

bb.fb:                                            ; preds = %bb.es, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit552, %bb.r, %_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit550
  %.pn405.pn = phi { ptr, i32 } [ %i.clu, %bb.es ], [ %.pn402.pn, %_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit550 ], [ %i.kd, %bb.r ], [ %i.clv, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit552 ] ; 2 uses
  %.not.i.i.i558 = icmp eq ptr %.sroa.01941.0, null
  br i1 %.not.i.i.i558, label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.cmt = ptrtoint ptr %.sroa.01941.0 to i64
  %i.cmu = sub i64 %.sink.i418, %i.cmt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01941.0, i64 noundef %i.cmu) #20
  br label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559

_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559: ; preds = %bb.m, %bb.fb, %bb.fc, %bb.l, %bb.k
  %.pn410 = phi { ptr, i32 } [ %.pn405.pn, %bb.fc ], [ %i.eh, %bb.k ], [ %i.ei, %bb.l ], [ %i.ej, %bb.m ], [ %.pn405.pn, %bb.fb ] ; 2 uses
  %.not.i.i.i560 = icmp eq ptr %.sroa.01957.03989, null
  br i1 %.not.i.i.i560, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit561, label %bb.fd

bb.fd:                                            ; preds = %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559.thread, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559
  %.pn4104002 = phi { ptr, i32 } [ %i.w, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559.thread ], [ %.pn410, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559 ]
  %.sroa.01957.039884001 = phi ptr [ %i.e, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559.thread ], [ %.sroa.01957.03989, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559 ] ; 2 uses
  %.sink.i39904000 = phi i64 [ %i.g, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559.thread ], [ %.sink.i3991, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559 ]
  %i.cmv = ptrtoint ptr %.sroa.01957.039884001 to i64
  %i.cmw = sub i64 %.sink.i39904000, %i.cmv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01957.039884001, i64 noundef %i.cmw) #20
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit561

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit561:     ; preds = %bb.fd, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559, %bb.f
  %.pn410.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %.pn410, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559 ], [ %.pn4104002, %bb.fd ] ; 2 uses
  %i.cmx = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cmy = load ptr, ptr %i.cmx, align 8          ; 3 uses
  %.not.i.i.i.i562 = icmp eq ptr %i.cmy, null
  br i1 %.not.i.i.i.i562, label %_ZN6Assimp11SpatialSortD2Ev.exit563, label %bb.fe

bb.fe:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit561
  %i.cmz = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cna = load ptr, ptr %i.cmz, align 8
  %i.cnb = ptrtoint ptr %i.cna to i64
  %i.cnc = ptrtoint ptr %i.cmy to i64
  %i.cnd = sub i64 %i.cnb, %i.cnc
  call void @_ZdlPvm(ptr noundef nonnull %i.cmy, i64 noundef %i.cnd) #20
  br label %_ZN6Assimp11SpatialSortD2Ev.exit563

_ZN6Assimp11SpatialSortD2Ev.exit563:              ; preds = %bb.fe, %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit561, %bb.e
  %.pn410.pn.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %.pn410.pn, %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit561 ], [ %.pn410.pn, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.cne = load ptr, ptr %6, align 8              ; 3 uses
  %.not.i.i.i564 = icmp eq ptr %i.cne, null
  br i1 %.not.i.i.i564, label %_ZNSt6vectorIjSaIjEED2Ev.exit565, label %bb.ff

bb.ff:                                            ; preds = %_ZN6Assimp11SpatialSortD2Ev.exit563
  %i.cnf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cng = load ptr, ptr %i.cnf, align 8
  %i.cnh = ptrtoint ptr %i.cng to i64
  %i.cni = ptrtoint ptr %i.cne to i64
  %i.cnj = sub i64 %i.cnh, %i.cni
  call void @_ZdlPvm(ptr noundef nonnull %i.cne, i64 noundef %i.cnj) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit565

_ZNSt6vectorIjSaIjEED2Ev.exit565:                 ; preds = %_ZN6Assimp11SpatialSortD2Ev.exit563, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %.pn410.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %2 = alloca %"class.std::unordered_set", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %bb.j

.preheader47.preheader:                           ; preds = %bb.y
  %i.p = load ptr, ptr %i.an, align 8             ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.preheader47.1, label %bb.z

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.o, label %bb.n

end_hunk_3
