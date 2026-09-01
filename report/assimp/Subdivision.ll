Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Subdivision?download=true
inline.NumInlined: 871
inline.NumDeleted: 477
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN22CatmullClarkSubdivider9SubdivideEPP6aiMeshmS2_jb:bb.a
  %.sroa.0.0.lcssa370 = phi ptr [ %.sroa.0.2, %._crit_edge ], [ null, %bb.e ] ; 3 uses
  %.sroa.20.0.lcssa368 = phi ptr [ %.sroa.20.3, %._crit_edge ], [ null, %bb.e ] ; 3 uses
  %.sroa.0115.0.lcssa366 = phi ptr [ %.sroa.0115.3, %._crit_edge ], [ null, %bb.e ] ; 3 uses
  %.sroa.23.0.lcssa364 = phi ptr [ %.sroa.23.2, %._crit_edge ], [ null, %bb.e ] ; 3 uses
  %.sroa.0131.0.lcssa363 = phi ptr [ %.sroa.0131.2, %._crit_edge ], [ null, %bb.e ] ; 3 uses
  %i.cr = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ab unwind label %bb.f

bb.ab:                                            ; preds = %._crit_edge.thread
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.cr, ptr noundef nonnull @.str.1)
          to label %.loopexit unwind label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.cs = ptrtoint ptr %.sroa.14.1 to i64
  %i.ct = ptrtoint ptr %.sroa.0131.2 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 3
  invoke void @_ZN22CatmullClarkSubdivider15InternSubdivideEPKPK6aiMeshmPPS0_j(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.sroa.0131.2, i64 noundef %i.cv, ptr noundef nonnull %.sroa.0115.3, i32 noundef %4)
          to label %.preheader181 unwind label %bb.f

.preheader181:                                    ; preds = %bb.ac
  %i.cw = ptrtoint ptr %.sroa.13.1 to i64
  %i.cx = ptrtoint ptr %.sroa.0.2 to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 2
  %.not291 = icmp eq ptr %.sroa.13.1, %.sroa.0.2
  br i1 %.not291, label %._crit_edge282, label %.lr.ph281

._crit_edge282:                                   ; preds = %.lr.ph281, %.preheader181
  br i1 %5, label %.lr.ph284, label %.loopexit

.lr.ph281:                                        ; preds = %.preheader181, %.lr.ph281
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph281 ], [ 0, %.preheader181 ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0115.3, i64 %indvars.iv
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.2, i64 %indvars.iv
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.de
  store ptr %i.db, ptr %i.df, align 8
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dg = and i64 %indvars.iv.next, 4294967295
  %i.dh = icmp ugt i64 %i.cz, %i.dg
  br i1 %i.dh, label %.lr.ph281, label %._crit_edge282, !llvm.loop !17

.lr.ph284:                                        ; preds = %._crit_edge282, %bb.ae
  %.0283 = phi i64 [ %i.dl, %bb.ae ], [ 0, %._crit_edge282 ] ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0283
  %i.dj = load ptr, ptr %i.di, align 8            ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph284
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.dj) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 1320) #20
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph284, %bb.ad
  %i.dl = add nuw i64 %.0283, 1                   ; 2 uses
  %exitcond338.not = icmp eq i64 %i.dl, %2
  br i1 %exitcond338.not, label %.loopexit, label %.lr.ph284, !llvm.loop !18

.loopexit:                                        ; preds = %bb.ae, %._crit_edge282, %bb.ab
  %.sroa.21.0.lcssa373 = phi ptr [ %.sroa.21.0.lcssa372, %bb.ab ], [ %.sroa.21.2, %._crit_edge282 ], [ %.sroa.21.2, %bb.ae ]
  %.sroa.0.0.lcssa371 = phi ptr [ %.sroa.0.0.lcssa370, %bb.ab ], [ %.sroa.0.2, %._crit_edge282 ], [ %.sroa.0.2, %bb.ae ] ; 3 uses
  %.sroa.20.0.lcssa369 = phi ptr [ %.sroa.20.0.lcssa368, %bb.ab ], [ %.sroa.20.3, %._crit_edge282 ], [ %.sroa.20.3, %bb.ae ]
  %.sroa.0115.0.lcssa367 = phi ptr [ %.sroa.0115.0.lcssa366, %bb.ab ], [ %.sroa.0115.3, %._crit_edge282 ], [ %.sroa.0115.3, %bb.ae ] ; 3 uses
  %.sroa.23.0.lcssa365 = phi ptr [ %.sroa.23.0.lcssa364, %bb.ab ], [ %.sroa.23.2, %._crit_edge282 ], [ %.sroa.23.2, %bb.ae ]
  %.sroa.0131.0.lcssa362 = phi ptr [ %.sroa.0131.0.lcssa363, %bb.ab ], [ %.sroa.0131.2, %._crit_edge282 ], [ %.sroa.0131.2, %bb.ae ] ; 3 uses
  %.not.i.i.i84 = icmp eq ptr %.sroa.0.0.lcssa371, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %.loopexit
  %i.dm = ptrtoint ptr %.sroa.21.0.lcssa373 to i64
  %i.dn = ptrtoint ptr %.sroa.0.0.lcssa371 to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa371, i64 noundef %i.do) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %.loopexit, %bb.af
  %.not.i.i.i85 = icmp eq ptr %.sroa.0115.0.lcssa367, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.dp = ptrtoint ptr %.sroa.20.0.lcssa369 to i64
  %i.dq = ptrtoint ptr %.sroa.0115.0.lcssa367 to i64
  %i.dr = sub i64 %i.dp, %i.dq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0115.0.lcssa367, i64 noundef %i.dr) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ag
  %.not.i.i.i86 = icmp eq ptr %.sroa.0131.0.lcssa362, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit87, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit
  %i.ds = ptrtoint ptr %.sroa.23.0.lcssa365 to i64
  %i.dt = ptrtoint ptr %.sroa.0131.0.lcssa362 to i64
  %i.du = sub i64 %i.ds, %i.dt
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0131.0.lcssa362, i64 noundef %i.du) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit87

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit87:         ; preds = %.lr.ph286, %.lr.ph288.prol.loopexit, %.lr.ph288, %middle.block, %.preheader178, %.preheader, %bb.ah, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit
  ret void

bb.ai:                                            ; preds = %.loopexit188, %.loopexit.split-lp189, %.loopexit182, %.loopexit.split-lp, %.loopexit183, %.loopexit.split-lp184, %bb.f
  %.sroa.0131.4 = phi ptr [ %.sroa.0131.1, %bb.f ], [ %.sroa.0131.0263, %.loopexit.split-lp ], [ %.sroa.0131.0263, %.loopexit.split-lp184 ], [ %.sroa.0131.0263, %.loopexit183 ], [ %.sroa.0131.0263, %.loopexit182 ], [ %.sroa.0131.6, %.loopexit188 ], [ %.sroa.0131.6, %.loopexit.split-lp189 ] ; 3 uses
  %.sroa.23.4 = phi ptr [ %.sroa.23.1, %bb.f ], [ %.sroa.23.0265, %.loopexit.split-lp ], [ %.sroa.23.0265, %.loopexit.split-lp184 ], [ %.sroa.23.0265, %.loopexit183 ], [ %.sroa.23.0265, %.loopexit182 ], [ %.sroa.23.6, %.loopexit188 ], [ %.sroa.23.6, %.loopexit.split-lp189 ]
  %.sroa.0115.5 = phi ptr [ %.sroa.0115.1, %bb.f ], [ %.sroa.0115.0266, %.loopexit.split-lp ], [ %.sroa.0115.7, %.loopexit.split-lp184 ], [ %.sroa.0115.2.ph, %.loopexit183 ], [ %.sroa.0115.0266, %.loopexit182 ], [ %.sroa.0115.7, %.loopexit188 ], [ %.sroa.0115.7, %.loopexit.split-lp189 ] ; 3 uses
  %.sroa.20.5 = phi ptr [ %.sroa.20.1, %bb.f ], [ %.sroa.20.0268, %.loopexit.split-lp ], [ %.sroa.20.7, %.loopexit.split-lp184 ], [ %.sroa.20.2.ph, %.loopexit183 ], [ %.sroa.20.0268, %.loopexit182 ], [ %.sroa.20.7, %.loopexit188 ], [ %.sroa.20.7, %.loopexit.split-lp189 ]
  %.sroa.0.3 = phi ptr [ %.sroa.0.1, %bb.f ], [ %.sroa.0.0269, %.loopexit.split-lp ], [ %.sroa.0.0269, %.loopexit.split-lp184 ], [ %.sroa.0.0269, %.loopexit183 ], [ %.sroa.0.0269, %.loopexit182 ], [ %.sroa.0.0269, %.loopexit188 ], [ %.sroa.0.0269, %.loopexit.split-lp189 ] ; 3 uses
  %.sroa.21.3 = phi ptr [ %.sroa.21.1, %bb.f ], [ %.sroa.21.0271, %.loopexit.split-lp ], [ %.sroa.21.0271, %.loopexit.split-lp184 ], [ %.sroa.21.0271, %.loopexit183 ], [ %.sroa.21.0271, %.loopexit182 ], [ %.sroa.21.0271, %.loopexit188 ], [ %.sroa.21.0271, %.loopexit.split-lp189 ]
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp186, %.loopexit.split-lp184 ], [ %lpad.loopexit185, %.loopexit183 ], [ %lpad.loopexit, %.loopexit182 ], [ %lpad.loopexit190, %.loopexit188 ], [ %lpad.loopexit.split-lp191, %.loopexit.split-lp189 ]
  %.not.i.i.i88 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorIjSaIjEED2Ev.exit89, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dv = ptrtoint ptr %.sroa.21.3 to i64
  %i.dw = ptrtoint ptr %.sroa.0.3 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3, i64 noundef %i.dx) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit89

_ZNSt6vectorIjSaIjEED2Ev.exit89:                  ; preds = %bb.ai, %bb.aj
  %.not.i.i.i90 = icmp eq ptr %.sroa.0115.5, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit91, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit89
  %i.dy = ptrtoint ptr %.sroa.20.5 to i64
  %i.dz = ptrtoint ptr %.sroa.0115.5 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0115.5, i64 noundef %i.ea) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit91

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit91:         ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit89, %bb.ak
  %.not.i.i.i92 = icmp eq ptr %.sroa.0131.4, null
  br i1 %.not.i.i.i92, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit93, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit91
  %i.eb = ptrtoint ptr %.sroa.23.4 to i64
  %i.ec = ptrtoint ptr %.sroa.0131.4 to i64
  %i.ed = sub i64 %i.eb, %i.ec
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0131.4, i64 noundef %i.ed) #20
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
define hidden void @_ZN22CatmullClarkSubdivider15InternSubdivideEPKPK6aiMeshmPPS0_j(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Assimp::Vertex", align 4   ; 4 uses
  %6 = alloca %"class.std::vector.0", align 8     ; 20 uses
  %7 = alloca %"class.Assimp::SpatialSort", align 8 ; 11 uses
  %8 = alloca %"struct.Assimp::Vertex", align 8   ; 29 uses
  %9 = alloca %"class.std::unordered_map", align 8 ; 24 uses
  %10 = alloca %"struct.Assimp::Vertex", align 8  ; 35 uses
  %11 = alloca %"struct.Assimp::Vertex", align 8  ; 35 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"struct.Assimp::Vertex", align 4  ; 5 uses
  %13 = alloca %"struct.Assimp::Vertex", align 8  ; 37 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.fd, label %bb.b

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
  %.not.i.i.i.i = icmp ne i64 %2, 0               ; 7 uses
  br i1 %.not.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge

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
  %.sink.i3983 = phi i64 [ 0, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.g, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.01962.03981 = phi ptr [ null, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.e, %._crit_edge.loopexit ] ; 12 uses
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
  %.03243025 = phi i64 [ %i.v, %bb.g ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.k = phi <2 x i32> [ %i.u, %bb.g ], [ zeroinitializer, %.lr.ph.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03243025
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  invoke void @_ZN6Assimp11SpatialSort6AppendEPK10aiVector3tIfEjjb(ptr noundef nonnull align 8 dereferenceable(49) %7, ptr noundef %i.o, i32 noundef %i.q, i32 noundef 12, i1 noundef zeroext false)
          to label %bb.g unwind label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559.thread

bb.g:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.03243025
  store <2 x i32> %i.k, ptr %i.r, align 4
  %i.s = load <2 x i32>, ptr %i.p, align 4
  %i.t = shufflevector <2 x i32> %i.s, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.u = add <2 x i32> %i.t, %i.k                 ; 2 uses
  %i.v = add nuw i64 %.03243025, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !19

_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559.thread: ; preds = %.lr.ph
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

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
  %.sroa.01946.0 = phi ptr [ %i.ab, %.noexc420 ], [ null, %bb.j ] ; 10 uses
  %.sink.i418 = phi i64 [ %i.ad, %.noexc420 ], [ 0, %bb.j ] ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph3042, label %._crit_edge3043

.lr.ph3042:                                       ; preds = %_ZNSt6vectorIN6Assimp6VertexESaIS1_EEC2EmRKS2_.exit
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

._crit_edge3043:                                  ; preds = %._crit_edge3036, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EEC2EmRKS2_.exit
  %.0322.lcssa = phi i32 [ 0, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EEC2EmRKS2_.exit ], [ %.1323.lcssa, %._crit_edge3036 ] ; 2 uses
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
  br i1 %.not.i.i.i.i, label %.lr.ph3055, label %._crit_edge3056.thread

._crit_edge3056.thread:                           ; preds = %._crit_edge3043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  br label %._crit_edge3061.thread

.lr.ph3055:                                       ; preds = %._crit_edge3043
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 36
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 60
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 84
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 84
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 108
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 108
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 120
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 120
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 132
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 132
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 152
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 152
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 160
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 160
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 168
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 168
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 176
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 176
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 184
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 184
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 192
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 200
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 200
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 208
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 208
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 216
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 216
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 224
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 224
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 232
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 232
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 240
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 240
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 248
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 248
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 256
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 256
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 264
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 264
  br label %bb.s

bb.k:                                             ; preds = %._crit_edge
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559

bb.m:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i416
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559

bb.n:                                             ; preds = %.lr.ph3042, %._crit_edge3036
  %.03193041 = phi i64 [ 0, %.lr.ph3042 ], [ %.1320.lcssa, %._crit_edge3036 ] ; 2 uses
  %.03213040 = phi i64 [ 0, %.lr.ph3042 ], [ %i.dx, %._crit_edge3036 ] ; 2 uses
  %.03223039 = phi i32 [ 0, %.lr.ph3042 ], [ %.1323.lcssa, %._crit_edge3036 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03213040
  %i.dt = load ptr, ptr %i.ds, align 8            ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8
  %.not3321 = icmp eq i32 %i.dv, 0
  br i1 %.not3321, label %._crit_edge3036, label %.lr.ph3035

.lr.ph3035:                                       ; preds = %bb.n
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 208
  br label %bb.o

._crit_edge3036:                                  ; preds = %._crit_edge3029, %bb.n
  %.1323.lcssa = phi i32 [ %.03223039, %bb.n ], [ %i.oh, %._crit_edge3029 ] ; 2 uses
  %.1320.lcssa = phi i64 [ %.03193041, %bb.n ], [ %i.oi, %._crit_edge3029 ]
  %i.dx = add nuw i64 %.03213040, 1               ; 2 uses
  %exitcond3785.not = icmp eq i64 %i.dx, %2
  br i1 %exitcond3785.not, label %._crit_edge3043, label %bb.n, !llvm.loop !20

bb.o:                                             ; preds = %.lr.ph3035, %._crit_edge3029
  %indvars.iv3782 = phi i64 [ 0, %.lr.ph3035 ], [ %indvars.iv.next3783, %._crit_edge3029 ] ; 2 uses
  %.13203032 = phi i64 [ %.03193041, %.lr.ph3035 ], [ %i.oi, %._crit_edge3029 ] ; 2 uses
  %.13233031 = phi i32 [ %.03223039, %.lr.ph3035 ], [ %i.oh, %._crit_edge3029 ]
  %i.dy = load ptr, ptr %i.dw, align 8
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %indvars.iv3782 ; 4 uses
  %i.ea = getelementptr inbounds nuw [272 x i8], ptr %.sroa.01946.0, i64 %.13203032 ; 84 uses
  %i.eb = load i32, ptr %i.dz, align 8
  %.not3322 = icmp eq i32 %i.eb, 0
  br i1 %.not3322, label %.._crit_edge3029_crit_edge, label %.lr.ph3028

.._crit_edge3029_crit_edge:                       ; preds = %bb.o
  %i.ec = load <2 x float>, ptr %i.ea, align 4, !noalias !21
  %.phi.trans.insert3837 = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.pre3838 = load float, ptr %.phi.trans.insert3837, align 4, !noalias !21
  %.phi.trans.insert3839 = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %i.ed = load <24 x float>, ptr %.phi.trans.insert3839, align 4, !noalias !21
  br label %._crit_edge3029

.lr.ph3028:                                       ; preds = %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 12 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 36
  %i.el = getelementptr inbounds nuw i8, ptr %i.ea, i64 44
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 60
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ea, i64 68
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ea, i64 72
  %i.er = getelementptr inbounds nuw i8, ptr %i.ea, i64 80
  %i.es = getelementptr inbounds nuw i8, ptr %i.ea, i64 84
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 92
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ea, i64 104
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ea, i64 108 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ea, i64 116 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ea, i64 120 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ea, i64 128 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ea, i64 132 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ea, i64 140 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ea, i64 144 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ea, i64 152 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ea, i64 160 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ea, i64 168 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ea, i64 176 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ea, i64 184 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ea, i64 192 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ea, i64 200 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ea, i64 208 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ea, i64 216 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ea, i64 224 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ea, i64 232 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ea, i64 240 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ea, i64 248 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ea, i64 256 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ea, i64 264 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph3028, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph3028 ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.fs = load ptr, ptr %i.ee, align 8
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv
  %i.fu = load i32, ptr %i.ft, align 4
  invoke void @_ZN6Assimp6VertexC2EPK6aiMeshj(ptr noundef nonnull align 4 dereferenceable(272) %8, ptr noundef %i.dt, i32 noundef %i.fu)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fv = load <2 x float>, ptr %i.ea, align 4, !noalias !24
  %i.fw = load <2 x float>, ptr %8, align 8, !noalias !24
  %i.fx = fadd <2 x float> %i.fv, %i.fw           ; 2 uses
  %i.fy = load float, ptr %i.ef, align 4, !noalias !24
  %i.fz = load float, ptr %i.ae, align 8, !noalias !24
  %i.ga = fadd float %i.fy, %i.fz                 ; 2 uses
  %i.gb = load <24 x float>, ptr %i.eg, align 4, !noalias !24
  %i.gc = load <24 x float>, ptr %i.af, align 4, !noalias !24
  %i.gd = fadd <24 x float> %i.gb, %i.gc          ; 17 uses
  %i.ge = shufflevector <24 x float> %i.gd, <24 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gf = shufflevector <24 x float> %i.gd, <24 x float> poison, <2 x i32> <i32 3, i32 4>
  %i.gg = shufflevector <24 x float> %i.gd, <24 x float> poison, <2 x i32> <i32 6, i32 7>
  %i.gh = shufflevector <24 x float> %i.gd, <24 x float> poison, <2 x i32> <i32 9, i32 10>
  %i.gi = shufflevector <24 x float> %i.gd, <24 x float> poison, <2 x i32> <i32 12, i32 13>
  %i.gj = shufflevector <24 x float> %i.gd, <24 x float> poison, <2 x i32> <i32 15, i32 16>
  %i.gk = shufflevector <24 x float> %i.gd, <24 x float> poison, <2 x i32> <i32 18, i32 19>
  %i.gl = shufflevector <24 x float> %i.gd, <24 x float> poison, <2 x i32> <i32 21, i32 22>
  %i.gm = load <2 x float>, ptr %i.ew, align 4, !noalias !24
  %i.gn = load <2 x float>, ptr %i.ag, align 4, !noalias !24
  %i.go = fadd <2 x float> %i.gm, %i.gn
  %i.gp = load float, ptr %i.ex, align 4, !noalias !24
  %i.gq = load float, ptr %i.ah, align 4, !noalias !24
  %i.gr = fadd float %i.gp, %i.gq
end_hunk_0
begin_hunk_1_@_ZN22CatmullClarkSubdivider15InternSubdivideEPKPK6aiMeshmPPS0_j:bb.a
  store float %i.abe, ptr %i.aba, align 4
  store <2 x float> %i.abj, ptr %i.abf, align 4
  store float %i.abo, ptr %i.abk, align 4
  store <2 x float> %i.abt, ptr %i.abp, align 4
  store float %i.aby, ptr %i.abu, align 4
  store <2 x float> %i.acd, ptr %i.abz, align 4
  store float %i.aci, ptr %i.ace, align 4
  store <2 x float> %i.acn, ptr %i.acj, align 4
  store float %i.acs, ptr %i.aco, align 4
  store <2 x float> %i.acx, ptr %i.act, align 4
  store <2 x float> %i.adc, ptr %i.acy, align 4
  store <2 x float> %i.adh, ptr %i.add, align 4
  store <2 x float> %i.adm, ptr %i.adi, align 4
  store <2 x float> %i.adr, ptr %i.adn, align 4
  store <2 x float> %i.adw, ptr %i.ads, align 4
  store <2 x float> %i.aeb, ptr %i.adx, align 4
  store <2 x float> %i.aeg, ptr %i.aec, align 4
  store <2 x float> %i.ael, ptr %i.aeh, align 4
  store <2 x float> %i.aeq, ptr %i.aem, align 4
  store <2 x float> %i.aev, ptr %i.aer, align 4
  store <2 x float> %i.afa, ptr %i.aew, align 4
  store <2 x float> %i.aff, ptr %i.afb, align 4
  store <2 x float> %i.afk, ptr %i.afg, align 4
  store <2 x float> %i.afp, ptr %i.afl, align 4
  store <2 x float> %i.afu, ptr %i.afq, align 4
  br label %bb.af

bb.af:                                            ; preds = %_ZN6Assimp6VertexpLERKS0_.exit428, %.loopexit2282
  %i.afv = load i32, ptr %i.ow, align 8           ; 2 uses
  %i.afw = zext i32 %i.afv to i64
  %i.afx = icmp samesign ult i64 %indvars.iv.next3787, %i.afw
  br i1 %i.afx, label %bb.u, label %._crit_edge3048.loopexit, !llvm.loop !41

._crit_edge3061:                                  ; preds = %bb.ai
  %.pre3889 = load i32, ptr %i.a, align 4
  %i.afy = icmp eq i32 %.pre3889, 0
  br i1 %i.afy, label %._crit_edge3061.thread, label %bb.ak

.lr.ph3060:                                       ; preds = %._crit_edge3056, %bb.ai
  %.sroa.01898.03058 = phi ptr [ %i.agi, %bb.ai ], [ %.pre3888, %._crit_edge3056 ] ; 3 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %.sroa.01898.03058, i64 560
  %i.aga = load i32, ptr %i.afz, align 8          ; 2 uses
  %i.agb = icmp ult i32 %i.aga, 2
  br i1 %i.agb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph3060
  %i.agc = load i32, ptr %i.a, align 4
  %i.agd = add i32 %i.agc, 1
  store i32 %i.agd, ptr %i.a, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph3060
  %i.age = uitofp i32 %i.aga to float
  %i.agf = fadd float %i.age, 2.000000e+00
  %i.agg = fdiv float 1.000000e+00, %i.agf
  %i.agh = getelementptr inbounds nuw i8, ptr %.sroa.01898.03058, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN6Assimp6Vertex8BinaryOpINS_6Intern10multipliesEEES0_RKS0_f(ptr dead_on_unwind nonnull writable sret(%"struct.Assimp::Vertex") align 4 %5, ptr noundef nonnull align 4 dereferenceable(272) %i.agh, float noundef %i.agg)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.agh, ptr noundef nonnull align 4 dereferenceable(272) %5, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.agi = load ptr, ptr %.sroa.01898.03058, align 8 ; 2 uses
  %.not2265 = icmp eq ptr %i.agi, null
  br i1 %.not2265, label %._crit_edge3061, label %.lr.ph3060, !llvm.loop !42

bb.aj:                                            ; preds = %bb.ah
  %i.agj = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ak:                                            ; preds = %._crit_edge3061
  %i.agk = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.agl = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.agm = load i64, ptr %i.agl, align 8
  %i.agn = trunc i64 %i.agm to i32
  store i32 %i.agn, ptr %i.b, align 4
  invoke void @_ZN6Assimp6Logger12verboseDebugIJRA31_KcRjRA44_S2_jRA10_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.agk, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(44) @.str.3, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(10) @.str.4)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %._crit_edge3061.thread

bb.an:                                            ; preds = %bb.ak
  %i.ago = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ao:                                            ; preds = %bb.al
  %i.agp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.au

._crit_edge3061.thread:                           ; preds = %._crit_edge3056.thread, %._crit_edge3056, %bb.am, %._crit_edge3061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.agq = zext i32 %.0322.lcssa to i64           ; 3 uses
  %.not.i.i.i.i431 = icmp eq i32 %.0322.lcssa, 0
  br i1 %.not.i.i.i.i431, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge3061.thread
  %i.agr = shl nuw nsw i64 %i.agq, 2
  %i.ags = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agr) #18
          to label %.noexc432 unwind label %bb.av ; 5 uses

.noexc432:                                        ; preds = %bb.ap
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.ags, i64 %i.agq ; 2 uses
  store i32 0, ptr %i.ags, align 4
  %i.agu = add nsw i64 %i.agq, -1                 ; 2 uses
  %i.agv = icmp eq i64 %i.agu, 0
  br i1 %i.agv, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc432
  %i.agw = getelementptr i8, ptr %i.ags, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.agu, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.agw, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc432, %._crit_edge3061.thread
  %.sroa.01890.0 = phi ptr [ %i.ags, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ags, %.noexc432 ], [ null, %._crit_edge3061.thread ] ; 8 uses
  %.sroa.111895.0 = phi ptr [ %i.agt, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.agt, %.noexc432 ], [ null, %._crit_edge3061.thread ] ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.agy = load ptr, ptr %i.agx, align 8          ; 2 uses
  %i.agz = load ptr, ptr %6, align 8              ; 2 uses
  %i.aha = ptrtoint ptr %i.agy to i64             ; 4 uses
  %i.ahb = ptrtoint ptr %i.agz to i64             ; 2 uses
  %i.ahc = sub i64 %i.aha, %i.ahb                 ; 3 uses
  %i.ahd = icmp ugt i64 %i.ahc, 9223372036854775804
  br i1 %i.ahd, label %bb.aq, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.aq:                                            ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
          to label %.noexc435 unwind label %bb.aw

.noexc435:                                        ; preds = %bb.aq
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %.not.i.i.i.i433 = icmp eq ptr %i.agy, %i.agz
  br i1 %.not.i.i.i.i433, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ahe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahc) #18
          to label %.noexc436 unwind label %bb.aw ; 3 uses

.noexc436:                                        ; preds = %bb.ar
  %i.ahf = add i64 %i.aha, -4
  %i.ahg = sub i64 %i.ahf, %i.ahb
  %i.ahh = and i64 %i.ahg, -4
  %i.ahi = add i64 %i.ahh, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ahe, i8 0, i64 %i.ahi, i1 false)
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahe, i64 %i.ahc
  %.pre3890 = load ptr, ptr %i.agx, align 8
  %.pre3891 = load ptr, ptr %6, align 8
  %.pre3910 = ptrtoint ptr %.pre3890 to i64
  %.pre3911 = ptrtoint ptr %.pre3891 to i64
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc436, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %.pre-phi3912 = phi i64 [ %.pre3911, %.noexc436 ], [ %i.aha, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.pre-phi = phi i64 [ %.pre3910, %.noexc436 ], [ %i.aha, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.01880.0 = phi ptr [ %i.ahe, %.noexc436 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ] ; 14 uses
  %.sroa.161887.0 = phi ptr [ %i.ahj, %.noexc436 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %i.ahk = sub i64 %.pre-phi, %.pre-phi3912
  %i.ahl = ashr exact i64 %i.ahk, 2
  %i.ahm = add nsw i64 %i.ahl, 1                  ; 4 uses
  %i.ahn = icmp ugt i64 %i.ahm, 2305843009213693951
  br i1 %i.ahn, label %bb.as, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437

bb.as:                                            ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
          to label %.noexc444 unwind label %bb.ax

.noexc444:                                        ; preds = %bb.as
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437: ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %.not.i.i.i.i438 = icmp eq i64 %i.ahm, 0
  br i1 %.not.i.i.i.i438, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437
  %i.aho = shl nuw nsw i64 %i.ahm, 2              ; 2 uses
  %i.ahp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aho) #18
          to label %.noexc445 unwind label %bb.ax ; 3 uses

.noexc445:                                        ; preds = %bb.at
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ahp, i8 0, i64 %i.aho, i1 false)
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.ahm
  %i.ahr = ptrtoint ptr %i.ahq to i64
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446:         ; preds = %.noexc445, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437
  %.sroa.01870.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437 ], [ %i.ahp, %.noexc445 ] ; 13 uses
  %.sroa.141876.0 = phi i64 [ 0, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437 ], [ %i.ahr, %.noexc445 ] ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph3071, label %.preheader2281

.lr.ph3071:                                       ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446
  %i.ahs = load ptr, ptr %6, align 8
  br label %bb.ay

.preheader2281:                                   ; preds = %._crit_edge3069, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446
  %i.aht = ptrtoint ptr %.sroa.161887.0 to i64
  %i.ahu = ptrtoint ptr %.sroa.01880.0 to i64
  %i.ahv = sub i64 %i.aht, %i.ahu                 ; 2 uses
  %.not3329 = icmp eq ptr %.sroa.161887.0, %.sroa.01880.0
  br i1 %.not3329, label %.preheader2280, label %.lr.ph3074.preheader

.lr.ph3074.preheader:                             ; preds = %.preheader2281
  %i.ahw = ashr exact i64 %i.ahv, 2               ; 3 uses
  %xtraiter = and i64 %i.ahw, 3                   ; 3 uses
  %i.ahx = icmp ult i64 %i.ahw, 4
  br i1 %i.ahx, label %.lr.ph3074.epil.preheader, label %.lr.ph3074.preheader.new

.lr.ph3074.preheader.new:                         ; preds = %.lr.ph3074.preheader
  %unroll_iter = and i64 %i.ahw, -4
  br label %.lr.ph3074

bb.au:                                            ; preds = %bb.ao, %bb.an, %bb.aj
  %.pn398 = phi { ptr, i32 } [ %i.agj, %bb.aj ], [ %i.agp, %bb.ao ], [ %i.ago, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.body

bb.av:                                            ; preds = %bb.ap
  %i.ahy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %bb.ar, %bb.aq
  %i.ahz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit542

bb.ax:                                            ; preds = %bb.at, %bb.as
  %i.aia = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit540

bb.ay:                                            ; preds = %.lr.ph3071, %._crit_edge3069
  %.03133070 = phi i64 [ 0, %.lr.ph3071 ], [ %i.aii, %._crit_edge3069 ] ; 3 uses
  %i.aib = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03133070
  %i.aic = load ptr, ptr %i.aib, align 8          ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 8 ; 2 uses
  %i.aie = load i32, ptr %i.aid, align 8          ; 2 uses
  %.not3327 = icmp eq i32 %i.aie, 0
  br i1 %.not3327, label %._crit_edge3069, label %.lr.ph3068

.lr.ph3068:                                       ; preds = %bb.ay
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aic, i64 208
  %i.aig = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01962.03981, i64 %.03133070
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 4
  br label %bb.az

._crit_edge3069:                                  ; preds = %._crit_edge3065, %bb.ay
  %i.aii = add nuw i64 %.03133070, 1              ; 2 uses
  %exitcond3799.not = icmp eq i64 %i.aii, %2
  br i1 %exitcond3799.not, label %.preheader2281, label %bb.ay, !llvm.loop !43

bb.az:                                            ; preds = %.lr.ph3068, %._crit_edge3065
  %i.aij = phi i32 [ %i.aie, %.lr.ph3068 ], [ %i.aip, %._crit_edge3065 ]
  %indvars.iv3796 = phi i64 [ 0, %.lr.ph3068 ], [ %indvars.iv.next3797, %._crit_edge3065 ] ; 2 uses
  %i.aik = load ptr, ptr %i.aif, align 8
  %i.ail = getelementptr inbounds nuw [16 x i8], ptr %i.aik, i64 %indvars.iv3796 ; 3 uses
  %i.aim = load i32, ptr %i.ail, align 8
  %.not3328 = icmp eq i32 %i.aim, 0
  br i1 %.not3328, label %._crit_edge3065, label %.lr.ph3064

.lr.ph3064:                                       ; preds = %bb.az
  %i.ain = load i32, ptr %i.aih, align 4
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ail, i64 8
  br label %bb.ba

._crit_edge3065.loopexit:                         ; preds = %bb.ba
  %.pre3892 = load i32, ptr %i.aid, align 8
  br label %._crit_edge3065

._crit_edge3065:                                  ; preds = %._crit_edge3065.loopexit, %bb.az
  %i.aip = phi i32 [ %.pre3892, %._crit_edge3065.loopexit ], [ %i.aij, %bb.az ] ; 2 uses
  %indvars.iv.next3797 = add nuw nsw i64 %indvars.iv3796, 1 ; 2 uses
  %i.aiq = zext i32 %i.aip to i64
  %i.air = icmp samesign ult i64 %indvars.iv.next3797, %i.aiq
  br i1 %i.air, label %bb.az, label %._crit_edge3069, !llvm.loop !44

bb.ba:                                            ; preds = %.lr.ph3064, %bb.ba
  %indvars.iv3793 = phi i64 [ 0, %.lr.ph3064 ], [ %indvars.iv.next3794, %bb.ba ] ; 2 uses
  %i.ais = load ptr, ptr %i.aio, align 8
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %i.ais, i64 %indvars.iv3793
  %i.aiu = load i32, ptr %i.ait, align 4
  %i.aiv = add i32 %i.aiu, %i.ain
  %i.aiw = zext i32 %i.aiv to i64
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %i.aiw
  %i.aiy = load i32, ptr %i.aix, align 4
  %i.aiz = zext i32 %i.aiy to i64
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01880.0, i64 %i.aiz ; 2 uses
  %i.ajb = load i32, ptr %i.aja, align 4
  %i.ajc = add i32 %i.ajb, 1
  store i32 %i.ajc, ptr %i.aja, align 4
  %indvars.iv.next3794 = add nuw nsw i64 %indvars.iv3793, 1 ; 2 uses
  %i.ajd = load i32, ptr %i.ail, align 8
  %i.aje = zext i32 %i.ajd to i64
  %i.ajf = icmp samesign ult i64 %indvars.iv.next3794, %i.aje
  br i1 %i.ajf, label %bb.ba, label %._crit_edge3065.loopexit, !llvm.loop !45

.preheader2280.loopexit.unr-lcssa:                ; preds = %.lr.ph3074
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader2280, label %.lr.ph3074.epil.preheader

.lr.ph3074.epil.preheader:                        ; preds = %.preheader2280.loopexit.unr-lcssa, %.lr.ph3074.preheader
  %.03093073.epil.init = phi i64 [ 0, %.lr.ph3074.preheader ], [ %i.akb, %.preheader2280.loopexit.unr-lcssa ]
  %.03103072.epil.init = phi i32 [ 0, %.lr.ph3074.preheader ], [ %i.akf, %.preheader2280.loopexit.unr-lcssa ]
  %lcmp.mod5223 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod5223)
  br label %.lr.ph3074.epil

.lr.ph3074.epil:                                  ; preds = %.lr.ph3074.epil, %.lr.ph3074.epil.preheader
  %.03093073.epil = phi i64 [ %i.ajg, %.lr.ph3074.epil ], [ %.03093073.epil.init, %.lr.ph3074.epil.preheader ] ; 2 uses
  %.03103072.epil = phi i32 [ %i.ajk, %.lr.ph3074.epil ], [ %.03103072.epil.init, %.lr.ph3074.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph3074.epil ], [ 0, %.lr.ph3074.epil.preheader ]
  %i.ajg = add nuw i64 %.03093073.epil, 1         ; 2 uses
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01870.0, i64 %i.ajg
  store i32 %.03103072.epil, ptr %i.ajh, align 4
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01880.0, i64 %.03093073.epil
  %i.ajj = load i32, ptr %i.aji, align 4
  %i.ajk = add i32 %i.ajj, %.03103072.epil
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader2280, label %.lr.ph3074.epil, !llvm.loop !46

.preheader2280:                                   ; preds = %.preheader2280.loopexit.unr-lcssa, %.lr.ph3074.epil, %.preheader2281
  br i1 %.not.i.i.i.i, label %.lr.ph3085, label %._crit_edge3086

.lr.ph3085:                                       ; preds = %.preheader2280
  %i.ajl = load ptr, ptr %6, align 8
  br label %bb.bb

.lr.ph3074:                                       ; preds = %.lr.ph3074, %.lr.ph3074.preheader.new
  %.03093073 = phi i64 [ 0, %.lr.ph3074.preheader.new ], [ %i.akb, %.lr.ph3074 ] ; 5 uses
  %.03103072 = phi i32 [ 0, %.lr.ph3074.preheader.new ], [ %i.akf, %.lr.ph3074 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph3074.preheader.new ], [ %niter.next.3, %.lr.ph3074 ]
  %i.ajm = or disjoint i64 %.03093073, 1          ; 2 uses
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01870.0, i64 %i.ajm
  store i32 %.03103072, ptr %i.ajn, align 4
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01880.0, i64 %.03093073
  %i.ajp = load i32, ptr %i.ajo, align 4
  %i.ajq = add i32 %i.ajp, %.03103072             ; 2 uses
  %i.ajr = or disjoint i64 %.03093073, 2          ; 2 uses
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01870.0, i64 %i.ajr
  store i32 %i.ajq, ptr %i.ajs, align 4
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01880.0, i64 %i.ajm
  %i.aju = load i32, ptr %i.ajt, align 4
  %i.ajv = add i32 %i.aju, %i.ajq                 ; 2 uses
  %i.ajw = or disjoint i64 %.03093073, 3          ; 2 uses
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01870.0, i64 %i.ajw
  store i32 %i.ajv, ptr %i.ajx, align 4
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01880.0, i64 %i.ajr
  %i.ajz = load i32, ptr %i.ajy, align 4
  %i.aka = add i32 %i.ajz, %i.ajv                 ; 2 uses
  %i.akb = add nuw i64 %.03093073, 4              ; 3 uses
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01870.0, i64 %i.akb
  store i32 %i.aka, ptr %i.akc, align 4
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01880.0, i64 %i.ajw
  %i.ake = load i32, ptr %i.akd, align 4
  %i.akf = add i32 %i.ake, %i.aka                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader2280.loopexit.unr-lcssa, label %.lr.ph3074, !llvm.loop !47

._crit_edge3086:                                  ; preds = %._crit_edge3083, %.preheader2280
  %i.akg = zext i32 %i.y to i64                   ; 5 uses
  %.not.i.i.i.i447 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i447, label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit, label %_ZNSt12_Vector_baseISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS4_.exit.i: ; preds = %._crit_edge3086
  %i.akh = mul nuw nsw i64 %i.akg, 276
  %i.aki = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akh) #18
          to label %.lr.ph.i.i.i.i.i.i.preheader unwind label %bb.bj ; 4 uses

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt12_Vector_baseISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS4_.exit.i
  %xtraiter5224 = and i64 %i.akg, 7               ; 2 uses
  %lcmp.mod5225.not = icmp eq i64 %xtraiter5224, 0
  br i1 %lcmp.mod5225.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.akl, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.aki, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.akk, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.akg, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  store i8 0, ptr %.09.i.i.i.i.i.i.prol, align 4
  %i.akj = getelementptr i8, ptr %.09.i.i.i.i.i.i.prol, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.akj, i8 0, i64 272, i1 false)
  %i.akk = add nsw i64 %.068.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 276 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter5224
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !48

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.aki, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.akl, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %i.akg, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.akk, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.akm = icmp ult i32 %i.y, 8
  br i1 %i.akm, label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ald, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.alc, %.lr.ph.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store i8 0, ptr %.09.i.i.i.i.i.i, align 4
  %i.akn = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.akn, i8 0, i64 272, i1 false)
  %i.ako = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 276
  store i8 0, ptr %i.ako, align 4
  %i.akp = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.akp, i8 0, i64 272, i1 false)
  %i.akq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 552
  store i8 0, ptr %i.akq, align 4
  %i.akr = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 556
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.akr, i8 0, i64 272, i1 false)
  %i.aks = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 828
  store i8 0, ptr %i.aks, align 4
  %i.akt = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 832
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.akt, i8 0, i64 272, i1 false)
  %i.aku = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 1104
  store i8 0, ptr %i.aku, align 4
  %i.akv = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 1108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.akv, i8 0, i64 272, i1 false)
  %i.akw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 1380
  store i8 0, ptr %i.akw, align 4
  %i.akx = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 1384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.akx, i8 0, i64 272, i1 false)
  %i.aky = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 1656
  store i8 0, ptr %i.aky, align 4
  %i.akz = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 1660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.akz, i8 0, i64 272, i1 false)
  %i.ala = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 1932
  store i8 0, ptr %i.ala, align 4
  %i.alb = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 1936
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.alb, i8 0, i64 272, i1 false)
  %i.alc = add nsw i64 %.068.i.i.i.i.i.i, -8      ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 2208
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.alc, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !49

bb.bb:                                            ; preds = %.lr.ph3085, %._crit_edge3083
  %.03083084 = phi i64 [ 0, %.lr.ph3085 ], [ %i.all, %._crit_edge3083 ] ; 3 uses
  %i.ale = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03083084
  %i.alf = load ptr, ptr %i.ale, align 8          ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 8 ; 2 uses
  %i.alh = load i32, ptr %i.alg, align 8          ; 2 uses
  %.not3331 = icmp eq i32 %i.alh, 0
  br i1 %.not3331, label %._crit_edge3083, label %.lr.ph3082

.lr.ph3082:                                       ; preds = %bb.bb
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alf, i64 208
  %i.alj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01962.03981, i64 %.03083084 ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 4
  br label %bb.bc

._crit_edge3083:                                  ; preds = %._crit_edge3079, %bb.bb
  %i.all = add nuw i64 %.03083084, 1              ; 2 uses
  %exitcond3807.not = icmp eq i64 %i.all, %2
  br i1 %exitcond3807.not, label %._crit_edge3086, label %bb.bb, !llvm.loop !50

bb.bc:                                            ; preds = %.lr.ph3082, %._crit_edge3079
  %i.alm = phi i32 [ %i.alh, %.lr.ph3082 ], [ %i.alv, %._crit_edge3079 ]
  %indvars.iv3804 = phi i64 [ 0, %.lr.ph3082 ], [ %indvars.iv.next3805, %._crit_edge3079 ] ; 3 uses
  %i.aln = load ptr, ptr %i.ali, align 8
  %i.alo = getelementptr inbounds nuw [16 x i8], ptr %i.aln, i64 %indvars.iv3804 ; 3 uses
  %i.alp = load i32, ptr %i.alo, align 8
  %.not3332 = icmp eq i32 %i.alp, 0
  br i1 %.not3332, label %._crit_edge3079, label %.lr.ph3078

.lr.ph3078:                                       ; preds = %bb.bc
  %i.alq = load i32, ptr %i.alj, align 4
  %i.alr = trunc nuw i64 %indvars.iv3804 to i32
  %i.als = add i32 %i.alq, %i.alr
  %i.alt = load i32, ptr %i.alk, align 4
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alo, i64 8
  br label %bb.bd

._crit_edge3079.loopexit:                         ; preds = %bb.bd
  %.pre3893 = load i32, ptr %i.alg, align 8
  br label %._crit_edge3079

._crit_edge3079:                                  ; preds = %._crit_edge3079.loopexit, %bb.bc
  %i.alv = phi i32 [ %.pre3893, %._crit_edge3079.loopexit ], [ %i.alm, %bb.bc ] ; 2 uses
  %indvars.iv.next3805 = add nuw nsw i64 %indvars.iv3804, 1 ; 2 uses
  %i.alw = zext i32 %i.alv to i64
  %i.alx = icmp samesign ult i64 %indvars.iv.next3805, %i.alw
  br i1 %i.alx, label %bb.bc, label %._crit_edge3083, !llvm.loop !51

bb.bd:                                            ; preds = %.lr.ph3078, %bb.bd
  %indvars.iv3801 = phi i64 [ 0, %.lr.ph3078 ], [ %indvars.iv.next3802, %bb.bd ] ; 2 uses
  %i.aly = load ptr, ptr %i.alu, align 8
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.aly, i64 %indvars.iv3801
  %i.ama = load i32, ptr %i.alz, align 4
  %i.amb = add i32 %i.ama, %i.alt
  %i.amc = zext i32 %i.amb to i64
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.ajl, i64 %i.amc
  %i.ame = load i32, ptr %i.amd, align 4
  %i.amf = add i32 %i.ame, 1
  %i.amg = zext i32 %i.amf to i64
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01870.0, i64 %i.amg ; 2 uses
  %i.ami = load i32, ptr %i.amh, align 4          ; 2 uses
  %i.amj = add i32 %i.ami, 1
  store i32 %i.amj, ptr %i.amh, align 4
  %i.amk = zext i32 %i.ami to i64
  %i.aml = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01890.0, i64 %i.amk
  store i32 %i.als, ptr %i.aml, align 4
  %indvars.iv.next3802 = add nuw nsw i64 %indvars.iv3801, 1 ; 2 uses
  %i.amm = load i32, ptr %i.alo, align 8
  %i.amn = zext i32 %i.amm to i64
  %i.amo = icmp samesign ult i64 %indvars.iv.next3802, %i.amn
  br i1 %i.amo, label %bb.bd, label %._crit_edge3079.loopexit, !llvm.loop !52

_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %i.amp = getelementptr inbounds nuw [276 x i8], ptr %i.aki, i64 %i.akg
  %i.amq = ptrtoint ptr %i.amp to i64
  br label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit

_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit: ; preds = %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit, %._crit_edge3086
  %.sroa.01862.0 = phi ptr [ null, %._crit_edge3086 ], [ %i.aki, %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit ] ; 7 uses
  %.sroa.121866.0 = phi i64 [ 0, %._crit_edge3086 ], [ %i.amq, %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit ] ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph3316, label %._crit_edge3317

.lr.ph3316:                                       ; preds = %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit
  %i.amr = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ams = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.amt = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.amu = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.amv = getelementptr inbounds nuw i8, ptr %13, i64 36
  %i.amw = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.amx = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.amy = getelementptr inbounds nuw i8, ptr %13, i64 60
  %i.amz = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.ana = getelementptr inbounds nuw i8, ptr %13, i64 84
  %i.anb = getelementptr inbounds nuw i8, ptr %13, i64 92
  %i.anc = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.and = getelementptr inbounds nuw i8, ptr %13, i64 108
  %i.ane = getelementptr inbounds nuw i8, ptr %13, i64 120
  %i.anf = getelementptr inbounds nuw i8, ptr %13, i64 132
  %i.ang = getelementptr inbounds nuw i8, ptr %13, i64 140
  %i.anh = getelementptr inbounds nuw i8, ptr %13, i64 144
  %i.ani = getelementptr inbounds nuw i8, ptr %13, i64 152
  %i.anj = getelementptr inbounds nuw i8, ptr %13, i64 160
  %i.ank = getelementptr inbounds nuw i8, ptr %13, i64 168
  %i.anl = getelementptr inbounds nuw i8, ptr %13, i64 176
  %i.anm = getelementptr inbounds nuw i8, ptr %13, i64 184
  %i.ann = getelementptr inbounds nuw i8, ptr %13, i64 192
  %i.ano = getelementptr inbounds nuw i8, ptr %13, i64 200
  %i.anp = getelementptr inbounds nuw i8, ptr %13, i64 208
  %i.anq = getelementptr inbounds nuw i8, ptr %13, i64 216
  %i.anr = getelementptr inbounds nuw i8, ptr %13, i64 224
  %i.ans = getelementptr inbounds nuw i8, ptr %13, i64 232
  %i.ant = getelementptr inbounds nuw i8, ptr %13, i64 240
  %i.anu = getelementptr inbounds nuw i8, ptr %13, i64 248
  %i.anv = getelementptr inbounds nuw i8, ptr %13, i64 256
  %i.anw = getelementptr inbounds nuw i8, ptr %13, i64 264
  %i.anx = icmp eq i64 %2, 1
  br label %bb.bk

._crit_edge3317:                                  ; preds = %._crit_edge3314, %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.01862.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %._crit_edge3317
  %i.any = ptrtoint ptr %.sroa.01862.0 to i64
  %i.anz = sub i64 %.sroa.121866.0, %i.any
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01862.0, i64 noundef %i.anz) #20
  br label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EED2Ev.exit: ; preds = %._crit_edge3317, %bb.be
  %.not.i.i.i449 = icmp eq ptr %.sroa.01870.0, null
  br i1 %.not.i.i.i449, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EED2Ev.exit
  %i.aoa = ptrtoint ptr %.sroa.01870.0 to i64
  %i.aob = sub i64 %.sroa.141876.0, %i.aoa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01870.0, i64 noundef %i.aob) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EED2Ev.exit, %bb.bf
  %.not.i.i.i450 = icmp eq ptr %.sroa.01880.0, null
  br i1 %.not.i.i.i450, label %_ZNSt6vectorIjSaIjEED2Ev.exit451, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01880.0, i64 noundef %i.ahv) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit451

_ZNSt6vectorIjSaIjEED2Ev.exit451:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.bg
  %.not.i.i.i452 = icmp eq ptr %.sroa.01890.0, null
  br i1 %.not.i.i.i452, label %_ZNSt6vectorIjSaIjEED2Ev.exit453, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit451
  %i.aoc = ptrtoint ptr %.sroa.111895.0 to i64
  %i.aod = ptrtoint ptr %.sroa.01890.0 to i64
  %i.aoe = sub i64 %i.aoc, %i.aod
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01890.0, i64 noundef %i.aoe) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit453

_ZNSt6vectorIjSaIjEED2Ev.exit453:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit451, %bb.bh
  %i.aof = load ptr, ptr %i.be, align 8           ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.aof, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i454

.lr.ph.i.i.i.i454:                                ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit453, %.lr.ph.i.i.i.i454
  %.06.i.i.i.i = phi ptr [ %i.aog, %.lr.ph.i.i.i.i454 ], [ %i.aof, %_ZNSt6vectorIjSaIjEED2Ev.exit453 ] ; 2 uses
  %i.aog = load ptr, ptr %.06.i.i.i.i, align 8    ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 568) #20
  %.not.i.i.i.i455 = icmp eq ptr %i.aog, null
  br i1 %.not.i.i.i.i455, label %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i454, !llvm.loop !53

_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i454, %_ZNSt6vectorIjSaIjEED2Ev.exit453
  %i.aoh = load ptr, ptr %9, align 8
  %i.aoi = load i64, ptr %i.bd, align 8
  %i.aoj = shl i64 %i.aoi, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aoh, i8 0, i64 %i.aoj, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.aok = load ptr, ptr %9, align 8              ; 2 uses
  %i.aol = icmp eq ptr %i.aok, %i.bc
  br i1 %i.aol, label %_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.aom = load i64, ptr %i.bd, align 8
  %i.aon = shl i64 %i.aom, 3
  call void @_ZdlPvm(ptr noundef %i.aok, i64 noundef %i.aon) #20
  br label %_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit

_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %.not371 = icmp eq i32 %4, 1
  br i1 %.not371, label %bb.ey, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.bj:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS4_.exit.i
  %i.aoo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EED2Ev.exit532

bb.bk:                                            ; preds = %.lr.ph3316, %._crit_edge3314
  %.03053315 = phi i64 [ 0, %.lr.ph3316 ], [ %i.bbz, %._crit_edge3314 ] ; 4 uses
  %i.aop = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03053315
  %i.aoq = load ptr, ptr %i.aop, align 8          ; 34 uses
  %i.aor = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #18
          to label %bb.bl unwind label %bb.bm     ; 42 uses

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.aor, align 8
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 4 ; 22 uses
  store i32 0, ptr %i.aos, align 4
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aor, i64 8 ; 4 uses
  store i32 0, ptr %i.aot, align 8
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aor, i64 16 ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aor, i64 224
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aor, i64 1272
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aor, i64 1312
  store ptr null, ptr %i.aox, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.aou, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.aov, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.aow, i8 0, i64 36, i1 false)
  %i.aoy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03053315
  store ptr %i.aor, ptr %i.aoy, align 8
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoq, i64 8 ; 4 uses
  %i.apa = load i32, ptr %i.aoz, align 8
  %.not3334 = icmp eq i32 %i.apa, 0
  br i1 %.not3334, label %._crit_edge3090, label %.lr.ph3089

.lr.ph3089:                                       ; preds = %bb.bl
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aoq, i64 208
  br label %bb.bn

._crit_edge3090:                                  ; preds = %bb.bn, %bb.bl
  %i.apc = phi i32 [ 0, %bb.bl ], [ %i.apm, %bb.bn ] ; 2 uses
  %i.apd = zext i32 %i.apc to i64                 ; 5 uses
  %i.ape = shl nuw nsw i64 %i.apd, 4
  %i.apf = or disjoint i64 %i.ape, 8
  %i.apg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.apf) #18
          to label %bb.bo unwind label %bb.bm     ; 2 uses

bb.bm:                                            ; preds = %.loopexit2276, %bb.bu, %bb.br, %.loopexit2279, %._crit_edge3090, %bb.bk
  %i.aph = landingpad { ptr, i32 }
          cleanup
  br label %.body471

bb.bn:                                            ; preds = %.lr.ph3089, %bb.bn
  %i.api = phi i32 [ 0, %.lr.ph3089 ], [ %i.apm, %bb.bn ]
  %indvars.iv3808 = phi i64 [ 0, %.lr.ph3089 ], [ %indvars.iv.next3809, %bb.bn ] ; 2 uses
  %i.apj = load ptr, ptr %i.apb, align 8
  %i.apk = getelementptr inbounds nuw [16 x i8], ptr %i.apj, i64 %indvars.iv3808
  %i.apl = load i32, ptr %i.apk, align 8
  %i.apm = add i32 %i.api, %i.apl                 ; 3 uses
  store i32 %i.apm, ptr %i.aot, align 8
  %indvars.iv.next3809 = add nuw nsw i64 %indvars.iv3808, 1 ; 2 uses
  %i.apn = load i32, ptr %i.aoz, align 8
  %i.apo = zext i32 %i.apn to i64
  %i.app = icmp samesign ult i64 %indvars.iv.next3809, %i.apo
  br i1 %i.app, label %bb.bn, label %._crit_edge3090, !llvm.loop !54

bb.bo:                                            ; preds = %._crit_edge3090
  store i64 %i.apd, ptr %i.apg, align 16
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apg, i64 8 ; 4 uses
  %i.apr = icmp eq i32 %i.apc, 0
  br i1 %i.apr, label %.loopexit2279, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.aps = getelementptr inbounds nuw [16 x i8], ptr %i.apq, i64 %i.apd
  %i.apt = add nuw nsw i64 %i.apd, 1152921504606846975
  %i.apu = and i64 %i.apt, 1152921504606846975
  %xtraiter5226 = and i64 %i.apd, 7               ; 2 uses
  %lcmp.mod5227.not = icmp eq i64 %xtraiter5226, 0
  br i1 %lcmp.mod5227.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.bp, %.prol.preheader
  %i.apv = phi ptr [ %i.apx, %.prol.preheader ], [ %i.apq, %bb.bp ] ; 3 uses
  %prol.iter5228 = phi i64 [ %prol.iter5228.next, %.prol.preheader ], [ 0, %bb.bp ]
  store i32 0, ptr %i.apv, align 8
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 8
  store ptr null, ptr %i.apw, align 8
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apv, i64 16 ; 2 uses
  %prol.iter5228.next = add i64 %prol.iter5228, 1 ; 2 uses
  %prol.iter5228.cmp.not = icmp eq i64 %prol.iter5228.next, %xtraiter5226
  br i1 %prol.iter5228.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !55

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.bp
  %.unr = phi ptr [ %i.apq, %bb.bp ], [ %i.apx, %.prol.preheader ]
end_hunk_1
