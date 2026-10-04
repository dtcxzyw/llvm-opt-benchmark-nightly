Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGImpactCollisionAlgorithm?download=true
inline.NumInlined: 622
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN27btGImpactCollisionAlgorithm16gimpact_vs_shapeEPK24btCollisionObjectWrapperS2_PK23btGImpactShapeInterfacePK16btCollisionShapeb:bb.a

bb.ad:                                            ; preds = %._crit_edge
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ae:                                            ; preds = %bb.z
  store i32 %i.co, ptr %i.cc, align 8, !tbaa !28
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.aa
  %i.cs = load ptr, ptr %i.ce, align 8, !tbaa !113 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !13
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i32 noundef %i.co)
          to label %bb.ag unwind label %bb.aj, !inline_history !2

bb.ag:                                            ; preds = %bb.af
  br i1 %i.ca, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.cw = load ptr, ptr %3, align 8, !tbaa !13
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 264
  %i.cy = load ptr, ptr %i.cx, align 8
  invoke void %i.cy(ptr dead_on_unwind nonnull writable sret(%class.btTransform) align 4 %10, ptr noundef nonnull align 8 dereferenceable(184) %3, i32 noundef %i.co)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.al

bb.aj:                                            ; preds = %bb.af
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ak:                                            ; preds = %bb.ah
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.ax

bb.al:                                            ; preds = %bb.ai, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store ptr %1, ptr %11, align 8, !tbaa !42
  store ptr %i.cv, ptr %i.cg, align 8, !tbaa !43
  %i.db = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !44
  %i.dc = load ptr, ptr %i.cf, align 8, !tbaa !36
  store <2 x ptr> %i.db, ptr %i.ch, align 8, !tbaa !44
  store ptr null, ptr %i.ci, align 8, !tbaa !45
  %i.dd = load <2 x i32>, ptr %i.cc, align 8, !tbaa !46
  %i.de = shufflevector <2 x i32> %i.dd, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.de, ptr %i.cj, align 8, !tbaa !46
  %i.df = load ptr, ptr %i.ck, align 8, !tbaa !26 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !116 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !36
  %i.dk = icmp eq ptr %i.dj, %i.dc
  br i1 %i.dk, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  store ptr %11, ptr %i.dg, align 8, !tbaa !116
  br label %.invoke

bb.an:                                            ; preds = %.invoke
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.ax

bb.ao:                                            ; preds = %bb.al
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !117
  store ptr %11, ptr %i.dm, align 8, !tbaa !117
  br label %.invoke

.invoke:                                          ; preds = %bb.ao, %bb.am
  %.0 = phi ptr [ %i.dh, %bb.am ], [ %i.dn, %bb.ao ] ; 2 uses
  invoke void @_ZN27btGImpactCollisionAlgorithm24shape_vs_shape_collisionEPK24btCollisionObjectWrapperS2_PK16btCollisionShapeS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %., ptr noundef nonnull %.108, ptr poison, ptr poison)
          to label %bb.ap unwind label %bb.an

bb.ap:                                            ; preds = %.invoke
  %i.do = load ptr, ptr %i.ck, align 8, !tbaa !26 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !116
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !36
  %i.dt = load ptr, ptr %i.ch, align 8, !tbaa !36
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store ptr %.0, ptr %i.dp, align 8, !tbaa !116
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  store ptr %.0, ptr %i.dv, align 8, !tbaa !117
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %.not = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not, label %._crit_edge, label %bb.z, !llvm.loop !183

._crit_edge:                                      ; preds = %bb.as, %bb.y
  %i.dw = load ptr, ptr %3, align 8, !tbaa !13
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 232
  %i.dy = load ptr, ptr %i.dx, align 8
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(184) %3)
          to label %bb.at unwind label %bb.ad

bb.at:                                            ; preds = %._crit_edge
  call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.bd) #16
  call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.bb) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.au

bb.au:                                            ; preds = %bb.j, %bb.at
  %i.dz = load ptr, ptr %i.as, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.dz, null
  %i.ea = load i8, ptr %i.ar, align 8, !range !68
  %i.eb = trunc nuw i8 %i.ea to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.eb, i1 false
  br i1 %or.cond.i.i, label %bb.av, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.av:                                            ; preds = %bb.au
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dz)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #17
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %_ZN20btAlignedObjectArrayIiED2Ev.exit, %bb.h, %bb.f, %bb.e
  ret void

bb.ax:                                            ; preds = %bb.ak, %bb.an, %bb.ad, %bb.aj, %bb.ac
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cq, %bb.ac ], [ %i.cr, %bb.ad ], [ %i.cz, %bb.aj ], [ %i.dl, %bb.an ], [ %i.da, %bb.ak ]
  call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.bd) #16
  call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.bb) #16
  br label %.body

.body:                                            ; preds = %bb.ab, %bb.w, %bb.ax
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ax ], [ %i.cp, %bb.ab ], [ %.pn.i, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.ay

bb.ay:                                            ; preds = %.body, %bb.k
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %.body ], [ %i.ax, %bb.k ]
  call void @_ZN20btAlignedObjectArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27btGImpactCollisionAlgorithm37gimpacttrimeshpart_vs_plane_collisionEPK24btCollisionObjectWrapperS2_PK22btGImpactMeshShapePartPK18btStaticPlaneShapeb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #8 align 2 {
bb.a:
  %6 = alloca %class.btTransform, align 8         ; 13 uses
  %7 = alloca %class.btVector4, align 8           ; 7 uses
  %8 = alloca %class.btAABB, align 4              ; 10 uses
  %9 = alloca %class.btVector3, align 8           ; 8 uses
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83, !nonnull !69, !align !84 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(64) %i.b, i64 16, i1 false), !tbaa.struct !94
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !94
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !94
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !94
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !83, !nonnull !69, !align !84 ; 11 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %.sroa.14.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.14.16.copyload = load float, ptr %.sroa.14.16..sroa_idx, align 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.21.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.21.32.copyload = load float, ptr %.sroa.21.32..sroa_idx, align 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.2336.48.copyload = load float, ptr %i.m, align 4
  %.sroa.25.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %.sroa.25.48.copyload = load float, ptr %.sroa.25.48..sroa_idx, align 4
  %.sroa.26.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.26.48.copyload = load float, ptr %.sroa.26.48..sroa_idx, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.q = load <2 x float>, ptr %i.j, align 4      ; 3 uses
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %i.r = load <2 x float>, ptr %i.k, align 4      ; 3 uses
  %.sroa.12.16.copyload = load float, ptr %.sroa.12.16..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.s = load float, ptr %i.n, align 4, !tbaa !57 ; 2 uses
  %i.t = load float, ptr %i.p, align 4, !tbaa !57 ; 3 uses
  %i.u = shufflevector <2 x float> %i.q, <2 x float> %i.r, <2 x i32> <i32 1, i32 3>
  %i.v = shufflevector <2 x float> %i.q, <2 x float> %i.r, <2 x i32> <i32 0, i32 2>
  %i.w = insertelement <2 x float> poison, float %i.s, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = insertelement <2 x float> poison, float %.sroa.7.0.copyload, i64 0
  %i.z = insertelement <2 x float> %i.y, float %.sroa.14.16.copyload, i64 1
  %i.aa = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !57 ; 2 uses
  %11 = fmul float %i.t, %i.ae                    ; 3 uses
  %i.af = load <2 x float>, ptr %i.l, align 4     ; 2 uses
  %i.ag = load float, ptr %i.o, align 4, !tbaa !57
  %i.ah = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = fmul <2 x float> %i.u, %i.ai
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.x, <2 x float> %i.aj)
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.ab, <2 x float> %i.ak) ; 4 uses
  %i.am = insertelement <2 x float> %i.af, float %i.s, i64 1 ; 2 uses
  %i.an = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.ae, i64 1 ; 2 uses
  %i.ao = fmul <2 x float> %i.am, %i.an
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.aq = fmul <2 x float> %i.ai, %i.an
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.as = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.at = insertelement <4 x float> %i.as, float %.sroa.5.0.copyload, i64 1
  %i.au = insertelement <4 x float> %i.at, float %.sroa.12.16.copyload, i64 2
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.aw = fmul <4 x float> %i.av, %i.ar
  %i.ax = shufflevector <2 x float> %i.q, <2 x float> %i.r, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.ay = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 0>
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> %i.ax, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %i.az, <4 x float> %i.aw) ; 4 uses
  %12 = extractelement <4 x float> %i.ba, i64 0
  %13 = tail call noundef float @llvm.fmuladd.f32(float %.sroa.21.32.copyload, float %i.t, float %12) ; 4 uses
  store <2 x float> %i.al, ptr %7, align 8, !tbaa !57
  store float %13, ptr %i.ac, align 8, !tbaa !57
  %14 = extractelement <4 x float> %i.ba, i64 1
  %15 = tail call noundef float @llvm.fmuladd.f32(float %11, float %.sroa.7.0.copyload, float %14)
  %i.bb = extractelement <4 x float> %i.ba, i64 2
  %16 = tail call noundef float @llvm.fmuladd.f32(float %11, float %.sroa.14.16.copyload, float %i.bb)
  %i.bc = extractelement <4 x float> %i.ba, i64 3
  %17 = tail call noundef float @llvm.fmuladd.f32(float %11, float %.sroa.21.32.copyload, float %i.bc)
  %i.bd = fadd float %.sroa.2336.48.copyload, %15
  %18 = fadd float %.sroa.25.48.copyload, %16
  %i.be = fadd float %.sroa.26.48.copyload, %17
  %i.bf = extractelement <2 x float> %i.al, i64 1 ; 3 uses
  %i.bg = fmul float %i.bf, %18
  %i.bh = extractelement <2 x float> %i.al, i64 0 ; 2 uses
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bd, float %i.bg)
  %i.bj = tail call noundef float @llvm.fmuladd.f32(float %13, float %i.be, float %i.bi) ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store float %i.bj, ptr %i.bk, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bm = load ptr, ptr %3, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %i.bl)
  %i.bp = load ptr, ptr %4, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef float %i.br(ptr noundef nonnull align 8 dereferenceable(36) %4) ; 6 uses
  %i.bt = load float, ptr %8, align 4, !tbaa !57
  %i.bu = fsub float %i.bt, %i.bs                 ; 2 uses
  store float %i.bu, ptr %8, align 4, !tbaa !57
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !57
  %i.bx = fsub float %i.bw, %i.bs                 ; 2 uses
  store float %i.bx, ptr %i.bv, align 4, !tbaa !57
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !57
  %i.ca = fsub float %i.bz, %i.bs                 ; 2 uses
  store float %i.ca, ptr %i.by, align 4, !tbaa !57
  %i.cb = load float, ptr %i.bl, align 4, !tbaa !57
  %i.cc = fadd float %i.bs, %i.cb                 ; 3 uses
  store float %i.cc, ptr %i.bl, align 4, !tbaa !57
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !57
  %i.cf = fadd float %i.bs, %i.ce                 ; 3 uses
  store float %i.cf, ptr %i.cd, align 4, !tbaa !57
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !57
  %i.ci = fadd float %i.bs, %i.ch                 ; 3 uses
  store float %i.ci, ptr %i.cg, align 4, !tbaa !57
  %i.cj = fadd float %i.bu, %i.cc
  %i.ck = fadd float %i.bx, %i.cf
  %i.cl = fadd float %i.ca, %i.ci
  %i.cm = fmul float %i.cj, 5.000000e-01          ; 2 uses
  %i.cn = fmul float %i.ck, 5.000000e-01          ; 2 uses
  %i.co = fmul float %i.cl, 5.000000e-01          ; 2 uses
  %i.cp = fsub float %i.cc, %i.cm
  %i.cq = fsub float %i.cf, %i.cn
  %i.cr = fsub float %i.ci, %i.co
  %i.cs = call noundef float @llvm.fabs.f32(float %i.bh)
  %i.ct = call noundef float @llvm.fabs.f32(float %i.bf)
  %i.cu = call noundef float @llvm.fabs.f32(float %13)
  %i.cv = fmul float %i.cn, %i.bf
  %i.cw = fmul float %i.cq, %i.ct
  %i.cx = insertelement <2 x float> %i.al, float %i.cs, i64 1
  %i.cy = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.cp, i64 1
  %i.da = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.db = insertelement <2 x float> %i.da, float %i.cw, i64 1
  %i.dc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.cz, <2 x float> %i.db)
  %19 = insertelement <2 x float> poison, float %13, i64 0
  %i.dd = insertelement <2 x float> %19, float %i.cu, i64 1
  %i.de = insertelement <2 x float> poison, float %i.co, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.cr, i64 1
  %i.dg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.df, <2 x float> %i.dc) ; 2 uses
  %i.dh = extractelement <2 x float> %i.dg, i64 0 ; 2 uses
  %i.di = extractelement <2 x float> %i.dg, i64 1 ; 2 uses
  %i.dj = fsub float %i.dh, %i.di
  %i.dk = fadd float %i.dh, %i.di
  %i.dl = fadd float %i.dk, f0x358637BD
  %i.dm = fcmp ule float %i.bj, %i.dl
  %i.dn = fadd float %i.bj, f0x358637BD
  %i.do = fcmp oge float %i.dn, %i.dj
  %.not = and i1 %i.do, %i.dm
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.dp = load ptr, ptr %3, align 8, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 224
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(280) %3)
  %i.ds = load ptr, ptr %3, align 8, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef float %i.du(ptr noundef nonnull align 8 dereferenceable(280) %3)
  %i.dw = load ptr, ptr %4, align 8, !tbaa !13
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call noundef float %i.dy(ptr noundef nonnull align 8 dereferenceable(36) %4)
  %i.ea = fadd float %i.dv, %i.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !189 ; 2 uses
  %.not2338 = icmp eq i32 %i.ec, 0
  br i1 %.not2338, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 244
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 212 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %.in = phi i32 [ %i.ec, %.lr.ph ], [ %i.fa, %bb.k ]
  %i.fa = add nsw i32 %.in, -1                    ; 3 uses
  %i.fb = load i32, ptr %i.ed, align 4, !tbaa !190
  %i.fc = icmp eq i32 %i.fb, 1
  %i.fd = load ptr, ptr %i.ee, align 8, !tbaa !191
  %i.fe = load i32, ptr %i.ef, align 8, !tbaa !192
  %i.ff = mul i32 %i.fe, %i.fa
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fg ; 5 uses
  %i.fi = load float, ptr %i.eg, align 8, !tbaa !57 ; 2 uses
  br i1 %i.fc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fj = load float, ptr %i.eh, align 4, !tbaa !57
  %i.fk = load <2 x double>, ptr %i.fh, align 8, !tbaa !194
  %i.fl = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fm = insertelement <2 x float> %i.fl, float %i.fj, i64 1
  %i.fn = fpext <2 x float> %i.fm to <2 x double>
  %i.fo = fmul <2 x double> %i.fk, %i.fn
  %i.fp = fptrunc <2 x double> %i.fo to <2 x float>
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !194
  %i.fs = load float, ptr %i.ej, align 8, !tbaa !57
  %i.ft = fpext float %i.fs to double
  %i.fu = fmul double %i.fr, %i.ft
  %i.fv = fptrunc double %i.fu to float
  br label %_ZNK22btGImpactMeshShapePart9getVertexEiR9btVector3.exit

bb.e:                                             ; preds = %bb.c
  %i.fw = load float, ptr %i.fh, align 4, !tbaa !57
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fy = load float, ptr %i.eh, align 4, !tbaa !57
  %i.fz = fmul float %i.fi, %i.fw                 ; 2 uses
  store float %i.fz, ptr %9, align 8, !tbaa !57
  %i.ga = load float, ptr %i.fx, align 4, !tbaa !57
  %i.gb = fmul float %i.ga, %i.fy                 ; 2 uses
  store float %i.gb, ptr %i.ei, align 4, !tbaa !57
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !57
  %i.ge = load float, ptr %i.ej, align 8, !tbaa !57
  %i.gf = fmul float %i.gd, %i.ge
  %i.gg = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %i.gb, i64 1
  br label %_ZNK22btGImpactMeshShapePart9getVertexEiR9btVector3.exit

_ZNK22btGImpactMeshShapePart9getVertexEiR9btVector3.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i = phi float [ %i.fv, %bb.d ], [ %i.gf, %bb.e ] ; 2 uses
  %i.gi = phi <2 x float> [ %i.fp, %bb.d ], [ %i.gh, %bb.e ] ; 4 uses
  %i.gj = extractelement <2 x float> %i.gi, i64 1
  %i.gk = extractelement <2 x float> %i.gi, i64 0
  %i.gl = load <4 x float>, ptr %i.el, align 8
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.gn = load float, ptr %i.em, align 8, !tbaa !57
  %i.go = load float, ptr %i.f, align 8, !tbaa !57
  %i.gp = load float, ptr %i.en, align 4, !tbaa !57
  %i.gq = fmul float %i.gj, %i.gp
  %i.gr = call float @llvm.fmuladd.f32(float %i.gk, float %i.go, float %i.gq)
  %i.gs = load float, ptr %i.eo, align 8, !tbaa !57
  %i.gt = call noundef float @llvm.fmuladd.f32(float %.sink.i.i, float %i.gs, float %i.gr)
  %i.gu = load <2 x float>, ptr %6, align 8, !tbaa !57 ; 2 uses
  %i.gv = load <2 x float>, ptr %i.d, align 8, !tbaa !57 ; 2 uses
  %i.gw = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gx = shufflevector <2 x float> %i.gu, <2 x float> %i.gv, <2 x i32> <i32 1, i32 3>
  %i.gy = fmul <2 x float> %i.gw, %i.gx
  %i.gz = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = shufflevector <2 x float> %i.gu, <2 x float> %i.gv, <2 x i32> <i32 0, i32 2>
  %i.hb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gz, <2 x float> %i.ha, <2 x float> %i.gy)
  %i.hc = insertelement <2 x float> poison, float %.sink.i.i, i64 0
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = insertelement <2 x float> %i.gm, float %i.gn, i64 1
  %i.hf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> %i.he, <2 x float> %i.hb)
  %i.hg = load <2 x float>, ptr %i.g, align 8, !tbaa !57
  %i.hh = fadd <2 x float> %i.hf, %i.hg           ; 3 uses
  %i.hi = load float, ptr %i.ep, align 8, !tbaa !57
  %i.hj = fadd float %i.gt, %i.hi                 ; 2 uses
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hj, i64 0
  store <2 x float> %i.hh, ptr %9, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i, ptr %i.ek, align 8, !tbaa !73
  %i.hk = load <2 x float>, ptr %7, align 8, !tbaa !57 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.hh, %i.hk
  %i.hl = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.hm = extractelement <2 x float> %i.hk, i64 0
  %i.hn = extractelement <2 x float> %i.hh, i64 0
  %i.ho = call float @llvm.fmuladd.f32(float %i.hn, float %i.hm, float %i.hl)
  %i.hp = load float, ptr %i.ac, align 8, !tbaa !57 ; 2 uses
  %i.hq = call noundef float @llvm.fmuladd.f32(float %i.hj, float %i.hp, float %i.ho)
  %i.hr = load float, ptr %i.bk, align 4, !tbaa !57
  %i.hs = fsub float %i.hq, %i.hr
  %i.ht = fsub float %i.hs, %i.ea                 ; 3 uses
  %i.hu = fcmp olt float %i.ht, 0.000000e+00
  br i1 %i.hu, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZNK22btGImpactMeshShapePart9getVertexEiR9btVector3.exit
  br i1 %5, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.hv = fneg <2 x float> %i.hk
  %i.hw = fneg float %i.hp
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hw, i64 0
  store <2 x float> %i.hv, ptr %10, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.ez, align 8
  %i.hx = load ptr, ptr %i.eq, align 8, !tbaa !26 ; 2 uses
  %i.hy = load i32, ptr %i.er, align 4, !tbaa !27
  %i.hz = load i32, ptr %i.es, align 8, !tbaa !28
  %i.ia = load ptr, ptr %i.hx, align 8, !tbaa !13
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(52) %i.hx, i32 noundef %i.hy, i32 noundef %i.hz), !inline_history !85
  %i.id = load ptr, ptr %i.eq, align 8, !tbaa !26 ; 2 uses
  %i.ie = load i32, ptr %i.et, align 4, !tbaa !29
  %i.if = load i32, ptr %i.eu, align 8, !tbaa !30
  %i.ig = load ptr, ptr %i.id, align 8, !tbaa !13
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(52) %i.id, i32 noundef %i.ie, i32 noundef %i.if), !inline_history !85
  %i.ij = load ptr, ptr %i.ev, align 8, !tbaa !23 ; 2 uses
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %bb.h, label %_ZN27btGImpactCollisionAlgorithm15addContactPointEPK24btCollisionObjectWrapperS2_RK9btVector3S5_f.exit

bb.h:                                             ; preds = %bb.g
  %i.il = load ptr, ptr %i.ex, align 8, !tbaa !36
  %i.im = load ptr, ptr %i.ew, align 8, !tbaa !36
  %i.in = load ptr, ptr %i.ey, align 8, !tbaa !24 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !13
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = call noundef ptr %i.iq(ptr noundef nonnull align 8 dereferenceable(8) %i.in, ptr noundef %i.il, ptr noundef %i.im), !inline_history !1 ; 2 uses
  store ptr %i.ir, ptr %i.ev, align 8, !tbaa !23
  br label %_ZN27btGImpactCollisionAlgorithm15addContactPointEPK24btCollisionObjectWrapperS2_RK9btVector3S5_f.exit

_ZN27btGImpactCollisionAlgorithm15addContactPointEPK24btCollisionObjectWrapperS2_RK9btVector3S5_f.exit: ; preds = %bb.g, %bb.h
  %i.is = phi ptr [ %i.ir, %bb.h ], [ %i.ij, %bb.g ]
  %i.it = load ptr, ptr %i.eq, align 8, !tbaa !26 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store ptr %i.is, ptr %i.iu, align 8, !tbaa !40
  %i.iv = load ptr, ptr %i.it, align 8, !tbaa !13
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.ix = load ptr, ptr %i.iw, align 8
end_hunk_0
