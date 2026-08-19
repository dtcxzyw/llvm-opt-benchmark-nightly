inline.NumInlined: 2542
inline.NumDeleted: 442
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafERNS1_11BuildRecordEST_:bb.a
  %i.af = sub nuw i64 %i.x, %i.y
  %.neg = add i64 %i.y, 1
  %xtraiter = and i64 %i.af, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw [80 x i8], ptr %i.ae, i64 %i.y ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load float, ptr %i.ah, align 4          ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  %i.ak = load float, ptr %i.aj, align 4          ; 2 uses
  %i.al = fcmp ogt float %i.ak, -inf
  %i.am = select i1 %i.al, float %i.ak, float -inf ; 2 uses
  %i.an = add nuw i64 %i.y, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.lcssa830.unr.a = phi float [ poison, %.lr.ph ], [ %i.ai, %.prol.loopexit.unr-lcssa ]
  %.lcssa829.unr = phi float [ poison, %.lr.ph ], [ %i.am, %.prol.loopexit.unr-lcssa ]
  %.087522.unr = phi i64 [ %i.y, %.lr.ph ], [ %i.an, %.prol.loopexit.unr-lcssa ]
  %.sroa.0288.0521.unr = phi float [ +inf, %.lr.ph ], [ %i.ai, %.prol.loopexit.unr-lcssa ]
  %.sroa.6.0520.unr = phi float [ -inf, %.lr.ph ], [ %i.am, %.prol.loopexit.unr-lcssa ]
  %i.ao = icmp eq i64 %i.x, %.neg
  br i1 %i.ao, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.f
  %.sroa.6.0.lcssa = phi float [ -inf, %bb.f ], [ %.lcssa829.unr, %.prol.loopexit ], [ %i.bj, %.lr.ph.new ]
  %.sroa.0288.0.lcssa = phi float [ +inf, %bb.f ], [ %.lcssa830.unr.a, %.prol.loopexit ], [ %i.bf, %.lr.ph.new ]
  %i.ap = fcmp ogt float %.sroa.0288.0.lcssa, %.sroa.038.0.copyload
  %i.aq = fcmp olt float %.sroa.6.0.lcssa, %.sroa.439.0.copyload
  %i.ar = select i1 %i.ap, i1 true, i1 %i.aq
  br label %bb.g

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.087522 = phi i64 [ %i.bk, %.lr.ph.new ], [ %.087522.unr, %.prol.loopexit ] ; 3 uses
  %.sroa.0288.0521 = phi float [ %i.bf, %.lr.ph.new ], [ %.sroa.0288.0521.unr, %.prol.loopexit ] ; 2 uses
  %.sroa.6.0520 = phi float [ %i.bj, %.lr.ph.new ], [ %.sroa.6.0520.unr, %.prol.loopexit ] ; 2 uses
  %i.as = getelementptr inbounds nuw [80 x i8], ptr %i.ae, i64 %.087522 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load float, ptr %i.at, align 4          ; 2 uses
  %i.av = fcmp olt float %.sroa.0288.0521, %i.au
  %i.aw = select i1 %i.av, float %.sroa.0288.0521, float %i.au ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 68
  %i.ay = load float, ptr %i.ax, align 4          ; 2 uses
  %i.az = fcmp olt float %.sroa.6.0520, %i.ay
  %i.ba = select i1 %i.az, float %i.ay, float %.sroa.6.0520 ; 2 uses
  %i.bb = getelementptr inbounds nuw [80 x i8], ptr %i.ae, i64 %.087522 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.bd = load float, ptr %i.bc, align 4          ; 2 uses
  %i.be = fcmp olt float %i.aw, %i.bd
  %i.bf = select i1 %i.be, float %i.aw, float %i.bd ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 148
  %i.bh = load float, ptr %i.bg, align 4          ; 2 uses
  %i.bi = fcmp olt float %i.ba, %i.bh
  %i.bj = select i1 %i.bi, float %i.bh, float %i.ba ; 2 uses
  %i.bk = add nuw i64 %.087522, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bk, %i.x
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !272

bb.g:                                             ; preds = %._crit_edge603, %._crit_edge, %bb.e
  %i.bl = phi i64 [ %i.y, %._crit_edge ], [ %i.x, %bb.e ], [ %.pre605, %._crit_edge603 ] ; 3 uses
  %i.bm = phi i64 [ %i.x, %._crit_edge ], [ %i.x, %bb.e ], [ %.pre, %._crit_edge603 ] ; 3 uses
  %.075 = phi i1 [ %i.ar, %._crit_edge ], [ false, %bb.e ], [ false, %._crit_edge603 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bq = sub i64 %i.bm, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8
  %.not92 = icmp ugt i64 %i.bq, %i.bs
  %.phi.trans.insert606 = getelementptr inbounds nuw i8, ptr %2, i64 160
  %.pre607 = load ptr, ptr %.phi.trans.insert606, align 16 ; 3 uses
  br i1 %.not92, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre607, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw [80 x i8], ptr %i.bu, i64 %i.bl
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.bx = load i32, ptr %i.bw, align 4
  %.011.i149778 = add i64 %i.bl, 1                ; 2 uses
  %.not13.i150.not779 = icmp ult i64 %.011.i149778, %i.bm
  br i1 %.not13.i150.not779, label %.lr.ph782, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152

bb.i:                                             ; preds = %.lr.ph782
  %.011.i149 = add i64 %.011.i149780, 1           ; 2 uses
  %.not13.i150.not = icmp ult i64 %.011.i149, %i.bm
  br i1 %.not13.i150.not, label %.lr.ph782, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152, !llvm.loop !273

.lr.ph782:                                        ; preds = %bb.h, %bb.i
  %.011.i149780 = phi i64 [ %.011.i149, %bb.i ], [ %.011.i149778, %bb.h ] ; 2 uses
  %i.by = getelementptr inbounds nuw [80 x i8], ptr %i.bu, i64 %.011.i149780
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.ca = load i32, ptr %i.bz, align 4
  %.not.i151 = icmp eq i32 %i.ca, %i.bx
  br i1 %.not.i151, label %bb.i, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread, !llvm.loop !273

_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152: ; preds = %bb.i, %bb.h
  br i1 %.075, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread, label %bb.j

bb.j:                                             ; preds = %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !21, !align !27
  call void @_ZZN6embree4sse223BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvENKUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_clESB_SF_(ptr dead_on_unwind writable sret(%"struct.embree::BVHNodeRecordMB4D") align 16 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull align 16 dereferenceable(152) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.db

_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread: ; preds = %.lr.ph782, %bb.g, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 1472 ; 12 uses
  store i64 1, ptr %i.cd, align 16
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 1480 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %16, i64 1736 ; 5 uses
  store i64 1, ptr %i.cf, align 8
  store i64 %i.e, ptr %16, align 16
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ch = load <4 x float>, ptr %i.bn, align 16
  store <4 x float> %i.ch, ptr %i.cg, align 16
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ck = load <4 x float>, ptr %i.ci, align 16
  store <4 x float> %i.ck, ptr %i.cj, align 16
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.cn = load <4 x float>, ptr %i.cl, align 16
  store <4 x float> %i.cn, ptr %i.cm, align 16
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.cq = load <4 x float>, ptr %i.co, align 16
  store <4 x float> %i.cq, ptr %i.cp, align 16
  %i.cr = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ct = load <4 x float>, ptr %i.cs, align 16
  store <4 x float> %i.ct, ptr %i.cr, align 16
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cv = getelementptr inbounds nuw i8, ptr %16, i64 96
  %i.cw = load <4 x float>, ptr %i.cu, align 16
  store <4 x float> %i.cw, ptr %i.cv, align 16
  %i.cx = getelementptr inbounds nuw i8, ptr %16, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.cx, ptr noundef nonnull align 16 dereferenceable(32) %i.bo, i64 32, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %16, i64 144
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 156
  %i.dc = load <4 x float>, ptr %i.cz, align 16
  store <4 x float> %i.dc, ptr %i.cy, align 16
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 160
  store ptr %.pre607, ptr %i.de, align 16
  store ptr %.pre607, ptr %i.ce, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 1488
  store i64 2, ptr %i.df, align 16
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 1408 ; 6 uses
  store ptr %i.ce, ptr %i.dg, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  %i.dh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %18, i64 80 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 80 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %18, i64 96 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 112 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 120
  %i.ds = getelementptr inbounds nuw i8, ptr %18, i64 128
  %.sroa.3646.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 136
  %.sroa.3947.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 144 ; 2 uses
  %.sroa.4349.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 152
  %.sroa.4650.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 156
  %i.dt = getelementptr inbounds nuw i8, ptr %18, i64 160 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %19, i64 96 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %19, i64 112 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %19, i64 120
  %i.dz = getelementptr inbounds nuw i8, ptr %19, i64 128
  %.sroa.36.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 136
  %.sroa.39.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 144 ; 2 uses
  %.sroa.43.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 152
  %.sroa.46.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 156
  %i.ea = getelementptr inbounds nuw i8, ptr %19, i64 160 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread, %bb.af
  %i.eb = phi i64 [ %i.mm, %bb.af ], [ 1, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread ] ; 3 uses
  %.176 = phi i1 [ false, %bb.af ], [ %.075, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread ]
  %.not560 = icmp eq i64 %i.eb, 0
  br i1 %.not560, label %._crit_edge537.thread, label %.lr.ph529

.lr.ph529:                                        ; preds = %bb.k
  %i.ec = load i64, ptr %i.br, align 8
  br label %bb.l

._crit_edge530:                                   ; preds = %bb.o
  %i.ed = icmp eq i32 %.185, -1
  br i1 %i.ed, label %bb.ag, label %bb.p

bb.l:                                             ; preds = %.lr.ph529, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph529 ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %.277527 = phi i1 [ %.176, %.lr.ph529 ], [ false, %bb.o ]
  %.082525 = phi i64 [ 0, %.lr.ph529 ], [ %.183, %bb.o ] ; 4 uses
  %.084524 = phi i32 [ -1, %.lr.ph529 ], [ %.185, %bb.o ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [176 x i8], ptr %16, i64 %indvars.iv ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 112
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 120
  %i.eh = load i64, ptr %i.eg, align 8            ; 3 uses
  %i.ei = load i64, ptr %i.ef, align 16           ; 3 uses
  %i.ej = sub i64 %i.eh, %i.ei                    ; 4 uses
  %.not100 = icmp ugt i64 %i.ej, %i.ec
  br i1 %.not100, label %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 160
  %i.el = load ptr, ptr %i.ek, align 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  %i.eo = getelementptr inbounds nuw [80 x i8], ptr %i.en, i64 %i.ei
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.eq = load i32, ptr %i.ep, align 4
  %.011.i141783 = add i64 %i.ei, 1                ; 2 uses
  %.not13.i.not784 = icmp ult i64 %.011.i141783, %i.eh
  br i1 %.not13.i.not784, label %.lr.ph787, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit

bb.n:                                             ; preds = %.lr.ph787
  %.011.i141 = add i64 %.011.i141785, 1           ; 2 uses
  %.not13.i.not = icmp ult i64 %.011.i141, %i.eh
  br i1 %.not13.i.not, label %.lr.ph787, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit, !llvm.loop !273

.lr.ph787:                                        ; preds = %bb.m, %bb.n
  %.011.i141785 = phi i64 [ %.011.i141, %bb.n ], [ %.011.i141783, %bb.m ] ; 2 uses
  %i.er = getelementptr inbounds nuw [80 x i8], ptr %i.en, i64 %.011.i141785
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.et = load i32, ptr %i.es, align 4
  %.not.i142 = icmp eq i32 %i.et, %i.eq
  br i1 %.not.i142, label %bb.n, label %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115, !llvm.loop !273

_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit: ; preds = %bb.n, %bb.m
  %i.eu = icmp ugt i64 %i.ej, %.082525
  %or.cond = select i1 %.277527, i1 %i.eu, i1 false
  br i1 %or.cond, label %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit, label %bb.o

_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115: ; preds = %.lr.ph787, %bb.l
  %.old = icmp ugt i64 %i.ej, %.082525
  br i1 %.old, label %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit, label %bb.o

_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit: ; preds = %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit, %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115
  %22 = trunc nuw i64 %indvars.iv to i32
  br label %bb.o

bb.o:                                             ; preds = %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit, %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit
  %.185 = phi i32 [ %.084524, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit ], [ %.084524, %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115 ], [ %22, %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit ] ; 3 uses
  %.183 = phi i64 [ %.082525, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit ], [ %.082525, %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115 ], [ %i.ej, %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit ]
  %23 = add i64 %indvars.iv, 1
  %24 = and i64 %23, 4294967295
  %i.ev = icmp ugt i64 %i.eb, %24
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %i.ev, label %bb.l, label %._crit_edge530, !llvm.loop !274

bb.p:                                             ; preds = %._crit_edge530
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  %i.ew = load i64, ptr %2, align 16
  %i.ex = add i64 %i.ew, 1                        ; 2 uses
  store i64 %i.ex, ptr %18, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  store i64 %i.ex, ptr %19, align 16
  %i.ey = sext i32 %.185 to i64                   ; 2 uses
  %i.ez = getelementptr inbounds nuw [176 x i8], ptr %16, i64 %i.ey ; 12 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 160 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 16           ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 112 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 16           ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8            ; 4 uses
  %i.fh = getelementptr inbounds nuw [80 x i8], ptr %i.fg, i64 %i.fe
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ez, i64 120
  %i.fl = load i64, ptr %i.fk, align 8            ; 6 uses
  %.011.i144788 = add i64 %i.fe, 1                ; 2 uses
  %.not13.i145.not789 = icmp ult i64 %.011.i144788, %i.fl
  br i1 %.not13.i145.not789, label %.lr.ph792, label %._crit_edge793

bb.q:                                             ; preds = %.lr.ph792
  %.011.i144 = add i64 %.011.i144790, 1           ; 2 uses
  %.not13.i145.not = icmp ult i64 %.011.i144, %i.fl
  br i1 %.not13.i145.not, label %.lr.ph792, label %._crit_edge793, !llvm.loop !273

.lr.ph792:                                        ; preds = %bb.p, %bb.q
  %.011.i144790 = phi i64 [ %.011.i144, %bb.q ], [ %.011.i144788, %bb.p ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [80 x i8], ptr %i.fg, i64 %.011.i144790
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  %i.fo = load i32, ptr %i.fn, align 4
  %.not.i146 = icmp eq i32 %i.fo, %i.fj
  br i1 %.not.i146, label %bb.q, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147, !llvm.loop !273

_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147: ; preds = %.lr.ph792
  invoke void @_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.fa, ptr noundef nonnull align 16 dereferenceable(152) %i.dh, ptr noundef nonnull align 16 dereferenceable(152) %i.dk)
          to label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147._crit_edge unwind label %bb.r

_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147._crit_edge: ; preds = %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147
  %.pre608 = load ptr, ptr %i.dt, align 16
  br label %bb.s

bb.r:                                             ; preds = %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  br label %.body163

._crit_edge793:                                   ; preds = %bb.q, %bb.p
  %i.fq = add i64 %i.fl, %i.fe
  %i.fr = lshr i64 %i.fq, 1                       ; 6 uses
  %i.fs = icmp ult i64 %i.fe, %i.fr
  br i1 %i.fs, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i, %._crit_edge793
  %.sroa.4349.0.lcssa.i = phi float [ 1.000000e+00, %._crit_edge793 ], [ %i.gv, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ] ; 2 uses
  %.sroa.3646.0.lcssa.i = phi i64 [ 0, %._crit_edge793 ], [ %.sroa.3646.1.i, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.3245.0.lcssa.i = phi i64 [ 0, %._crit_edge793 ], [ %i.hb, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.2240.0.lcssa.i = phi <4 x float> [ splat (float -inf), %._crit_edge793 ], [ %i.gq, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.1838.0.lcssa.i = phi <4 x float> [ splat (float +inf), %._crit_edge793 ], [ %i.gp, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.1436.0.lcssa.i = phi <4 x float> [ splat (float -inf), %._crit_edge793 ], [ %i.go, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.1034.0.lcssa.i = phi <4 x float> [ splat (float +inf), %._crit_edge793 ], [ %i.gn, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.632.0.lcssa.i = phi <4 x float> [ splat (float -inf), %._crit_edge793 ], [ %i.gm, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.030.0.lcssa.i = phi <4 x float> [ splat (float +inf), %._crit_edge793 ], [ %i.gl, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.4650.0.lcssa.i = phi float [ 0.000000e+00, %._crit_edge793 ], [ %i.gy, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ] ; 2 uses
  %i.ft = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %._crit_edge793 ], [ %i.hh, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %i.fu = icmp ult i64 %i.fr, %i.fl
  br i1 %i.fu, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackESR_RSP_S10_.exit

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i: ; preds = %._crit_edge793, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i
  %.0153.i = phi i64 [ %i.hi, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ %i.fe, %._crit_edge793 ] ; 2 uses
  %.sroa.4650.0152.i = phi float [ %i.gy, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ 0.000000e+00, %._crit_edge793 ] ; 2 uses
  %.sroa.030.0151.i = phi <4 x float> [ %i.gl, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ splat (float +inf), %._crit_edge793 ]
  %.sroa.632.0150.i = phi <4 x float> [ %i.gm, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ splat (float -inf), %._crit_edge793 ]
  %.sroa.1034.0149.i = phi <4 x float> [ %i.gn, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ splat (float +inf), %._crit_edge793 ]
  %.sroa.1436.0148.i = phi <4 x float> [ %i.go, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ splat (float -inf), %._crit_edge793 ]
  %.sroa.1838.0147.i = phi <4 x float> [ %i.gp, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ splat (float +inf), %._crit_edge793 ]
  %.sroa.2240.0146.i = phi <4 x float> [ %i.gq, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ splat (float -inf), %._crit_edge793 ]
  %.sroa.3245.0144.i = phi i64 [ %i.hb, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ 0, %._crit_edge793 ]
  %.sroa.3646.0143.i = phi i64 [ %.sroa.3646.1.i, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ 0, %._crit_edge793 ] ; 2 uses
  %.sroa.4349.0140.i = phi float [ %i.gv, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ 1.000000e+00, %._crit_edge793 ] ; 2 uses
  %i.fv = phi <2 x float> [ %i.hh, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ <float 0.000000e+00, float 1.000000e+00>, %._crit_edge793 ]
  %i.fw = getelementptr inbounds nuw [80 x i8], ptr %i.fg, i64 %.0153.i ; 5 uses
  %i.fx = load <4 x float>, ptr %i.fw, align 16, !noalias !275 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fz = load <4 x float>, ptr %i.fy, align 16, !noalias !278 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.gb = load <4 x float>, ptr %i.ga, align 16, !noalias !281 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  %i.gd = load <4 x float>, ptr %i.gc, align 16, !noalias !284 ; 3 uses
  %i.ge = fmul <4 x float> %i.gb, splat (float 5.000000e-01)
  %i.gf = fmul <4 x float> %i.fx, splat (float 5.000000e-01)
  %i.gg = fadd <4 x float> %i.gf, %i.ge
  %i.gh = fmul <4 x float> %i.gd, splat (float 5.000000e-01)
  %i.gi = fmul <4 x float> %i.fz, splat (float 5.000000e-01)
  %i.gj = fadd <4 x float> %i.gi, %i.gh
  %i.gk = fadd <4 x float> %i.gg, %i.gj           ; 2 uses
  %i.gl = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.030.0151.i, <4 x float> %i.fx) ; 2 uses
  %i.gm = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.632.0150.i, <4 x float> %i.fz) ; 2 uses
  %i.gn = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1034.0149.i, <4 x float> %i.gb) ; 2 uses
  %i.go = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1436.0148.i, <4 x float> %i.gd) ; 2 uses
  %i.gp = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1838.0147.i, <4 x float> %i.gk) ; 2 uses
  %i.gq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2240.0146.i, <4 x float> %i.gk) ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fw, i64 64
  %i.gs = load <2 x float>, ptr %i.gr, align 16   ; 3 uses
  %i.gt = extractelement <2 x float> %i.gs, i64 0 ; 2 uses
  %i.gu = fcmp olt float %.sroa.4349.0140.i, %i.gt
  %i.gv = select i1 %i.gu, float %.sroa.4349.0140.i, float %i.gt ; 2 uses
  %i.gw = extractelement <2 x float> %i.gs, i64 1 ; 2 uses
  %i.gx = fcmp olt float %.sroa.4650.0152.i, %i.gw
  %i.gy = select i1 %i.gx, float %i.gw, float %.sroa.4650.0152.i ; 2 uses
  %bc.i = bitcast <4 x float> %i.gb to <4 x i32>
  %i.gz = extractelement <4 x i32> %bc.i, i64 3
  %i.ha = zext i32 %i.gz to i64
  %i.hb = add i64 %.sroa.3245.0144.i, %i.ha       ; 2 uses
  %bc215.i = bitcast <4 x float> %i.gd to <4 x i32>
  %i.hc = extractelement <4 x i32> %bc215.i, i64 3
  %i.hd = zext i32 %i.hc to i64                   ; 2 uses
  %i.he = icmp samesign ult i64 %.sroa.3646.0143.i, %i.hd
  %i.hf = insertelement <2 x i1> poison, i1 %i.he, i64 0
  %i.hg = shufflevector <2 x i1> %i.hf, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.hh = select <2 x i1> %i.hg, <2 x float> %i.gs, <2 x float> %i.fv ; 2 uses
  %.sroa.3646.1.i = call i64 @llvm.umax.i64(i64 %.sroa.3646.0143.i, i64 %i.hd) ; 2 uses
  %i.hi = add nuw nsw i64 %.0153.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hi, %i.fr
  br i1 %exitcond.not.i, label %.preheader.i, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i, !llvm.loop !287

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i: ; preds = %.preheader.i, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i
  %.017179.i = phi i64 [ %i.iw, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ %i.fr, %.preheader.i ] ; 2 uses
  %.sroa.022.0178.i = phi <4 x float> [ %i.hz, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ splat (float +inf), %.preheader.i ]
  %.sroa.6.0177.i = phi <4 x float> [ %i.ia, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ splat (float -inf), %.preheader.i ]
  %.sroa.10.0176.i = phi <4 x float> [ %i.ib, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ splat (float +inf), %.preheader.i ]
  %.sroa.14.0175.i = phi <4 x float> [ %i.ic, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ splat (float -inf), %.preheader.i ]
  %.sroa.18.0174.i = phi <4 x float> [ %i.id, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ splat (float +inf), %.preheader.i ]
  %.sroa.22.0173.i = phi <4 x float> [ %i.ie, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ splat (float -inf), %.preheader.i ]
  %.sroa.32.0171.i = phi i64 [ %i.ip, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ 0, %.preheader.i ]
  %.sroa.36.0170.i = phi i64 [ %.sroa.36.1.i, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %.sroa.43.0167.i = phi float [ %i.ij, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ 1.000000e+00, %.preheader.i ] ; 2 uses
  %.sroa.46.0166.i = phi float [ %i.im, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ 0.000000e+00, %.preheader.i ] ; 2 uses
  %i.hj = phi <2 x float> [ %i.iv, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ <float 0.000000e+00, float 1.000000e+00>, %.preheader.i ]
  %i.hk = getelementptr inbounds nuw [80 x i8], ptr %i.fg, i64 %.017179.i ; 5 uses
  %i.hl = load <4 x float>, ptr %i.hk, align 16, !noalias !288 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hn = load <4 x float>, ptr %i.hm, align 16, !noalias !291 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hp = load <4 x float>, ptr %i.ho, align 16, !noalias !294 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  %i.hr = load <4 x float>, ptr %i.hq, align 16, !noalias !297 ; 3 uses
  %i.hs = fmul <4 x float> %i.hp, splat (float 5.000000e-01)
  %i.ht = fmul <4 x float> %i.hl, splat (float 5.000000e-01)
  %i.hu = fadd <4 x float> %i.ht, %i.hs
  %i.hv = fmul <4 x float> %i.hr, splat (float 5.000000e-01)
  %i.hw = fmul <4 x float> %i.hn, splat (float 5.000000e-01)
  %i.hx = fadd <4 x float> %i.hw, %i.hv
  %i.hy = fadd <4 x float> %i.hu, %i.hx           ; 2 uses
  %i.hz = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.022.0178.i, <4 x float> %i.hl) ; 2 uses
  %i.ia = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.0177.i, <4 x float> %i.hn) ; 2 uses
  %i.ib = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10.0176.i, <4 x float> %i.hp) ; 2 uses
  %i.ic = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14.0175.i, <4 x float> %i.hr) ; 2 uses
  %i.id = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.18.0174.i, <4 x float> %i.hy) ; 2 uses
  %i.ie = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.22.0173.i, <4 x float> %i.hy) ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hk, i64 64
  %i.ig = load <2 x float>, ptr %i.if, align 16   ; 3 uses
  %i.ih = extractelement <2 x float> %i.ig, i64 0 ; 2 uses
  %i.ii = fcmp olt float %.sroa.43.0167.i, %i.ih
  %i.ij = select i1 %i.ii, float %.sroa.43.0167.i, float %i.ih ; 2 uses
  %i.ik = extractelement <2 x float> %i.ig, i64 1 ; 2 uses
  %i.il = fcmp olt float %.sroa.46.0166.i, %i.ik
  %i.im = select i1 %i.il, float %i.ik, float %.sroa.46.0166.i ; 2 uses
  %bc216.i = bitcast <4 x float> %i.hp to <4 x i32>
  %i.in = extractelement <4 x i32> %bc216.i, i64 3
  %i.io = zext i32 %i.in to i64
  %i.ip = add i64 %.sroa.32.0171.i, %i.io         ; 2 uses
  %bc217.i = bitcast <4 x float> %i.hr to <4 x i32>
  %i.iq = extractelement <4 x i32> %bc217.i, i64 3
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %i.is = icmp samesign ult i64 %.sroa.36.0170.i, %i.ir
  %i.it = insertelement <2 x i1> poison, i1 %i.is, i64 0
  %i.iu = shufflevector <2 x i1> %i.it, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.iv = select <2 x i1> %i.iu, <2 x float> %i.ig, <2 x float> %i.hj ; 2 uses
  %.sroa.36.1.i = call i64 @llvm.umax.i64(i64 %.sroa.36.0170.i, i64 %i.ir) ; 2 uses
  %i.iw = add nuw i64 %.017179.i, 1               ; 2 uses
  %exitcond212.not.i = icmp eq i64 %i.iw, %i.fl
  br i1 %exitcond212.not.i, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackESR_RSP_S10_.exit, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i, !llvm.loop !300

_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackESR_RSP_S10_.exit: ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i, %.preheader.i
  %.sroa.46.0.lcssa.i = phi float [ 0.000000e+00, %.preheader.i ], [ %i.im, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ] ; 2 uses
  %.sroa.43.0.lcssa.i = phi float [ 1.000000e+00, %.preheader.i ], [ %i.ij, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ] ; 2 uses
  %.sroa.36.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %.sroa.36.1.i, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.sroa.32.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.ip, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.sroa.22.0.lcssa.i = phi <4 x float> [ splat (float -inf), %.preheader.i ], [ %i.ie, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.sroa.18.0.lcssa.i = phi <4 x float> [ splat (float +inf), %.preheader.i ], [ %i.id, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.sroa.14.0.lcssa.i = phi <4 x float> [ splat (float -inf), %.preheader.i ], [ %i.ic, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
end_hunk_0
