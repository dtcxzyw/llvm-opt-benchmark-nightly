inline.NumInlined: 225
inline.NumDeleted: 100
begin_hunk_0_@_ZN4geos4util21GeometricShapeFactory9createArcEdd:_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE5resetEPS2_.exit
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %6, align 8, !tbaa !73    ; 3 uses
  %.not.i = icmp eq ptr %i.cs, null
  br i1 %.not.i, label %bb.g, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %bb.d
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cs) #11, !inline_history !75
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.cw = load ptr, ptr %6, align 8, !tbaa !73    ; 3 uses
  %.not.i40 = icmp eq ptr %i.cw, null
  br i1 %.not.i40, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit42, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i41

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i41: ; preds = %bb.e
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !7
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cw) #11, !inline_history !75
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit42

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit42: ; preds = %bb.e, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.da = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit42
  call void @_ZdlPv(ptr noundef nonnull %i.da) #13
  br label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.f, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void

bb.g:                                             ; preds = %bb.c, %bb.d, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.c ], [ %i.cr, %bb.d ], [ %i.cr, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %.pre = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit45, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %.pn3268 = phi { ptr, i32 } [ %i.co, %.thread ], [ %.pn, %bb.g ]
  %i.db = phi ptr [ %i.ab, %.thread ], [ %.pre, %bb.g ]
  call void @_ZdlPv(ptr noundef nonnull %i.db) #13
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit45

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit45: ; preds = %bb.h, %bb.g
  %.pn3269 = phi { ptr, i32 } [ %.pn3268, %bb.h ], [ %.pn, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  resume { ptr, i32 } %.pn3269
}

declare void @_ZNK4geos4geom15GeometryFactory16createLineStringEOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.26") align 8, ptr noundef nonnull align 8 dereferenceable(45), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4util21GeometricShapeFactory16createArcPolygonEdd(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(92) %1, double noundef %2, double noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE5resetEPS2_.exit:
  %4 = alloca %"class.std::unique_ptr.2", align 8 ; 6 uses
  %5 = alloca %"class.std::vector", align 8       ; 10 uses
  %6 = alloca %"class.std::unique_ptr.10", align 8 ; 7 uses
  %7 = alloca %"class.std::unique_ptr.18", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_ZNK4geos4util21GeometricShapeFactory10Dimensions11getEnvelopeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  %i.b = load ptr, ptr %4, align 8, !tbaa !23     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !25 ; 2 uses
  %i.e = fcmp uno double %i.d, 0.000000e+00       ; 2 uses
  %i.f = load double, ptr %i.b, align 8           ; 2 uses
  %i.g = fsub double %i.d, %i.f
  %i.h = fmul double %i.g, 5.000000e-01
  %i.i = select i1 %i.e, double 0.000000e+00, double %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load double, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load double, ptr %i.l, align 8           ; 2 uses
  %i.n = fsub double %i.k, %i.m
  %i.o = fmul double %i.n, 5.000000e-01
  %i.p = select i1 %i.e, double 0.000000e+00, double %i.o ; 3 uses
  %i.q = fadd double %i.f, %i.i                   ; 6 uses
  %i.r = fadd double %i.m, %i.p                   ; 6 uses
  store ptr null, ptr %4, align 8, !tbaa !23
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #13
  %i.s = fcmp ole double %3, 0.000000e+00
  %i.t = fcmp ogt double %3, f0x401921FB54442D18
  %or.cond = or i1 %i.s, %i.t
  %spec.store.select = select i1 %or.cond, double f0x401921FB54442D18, double %3
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !18   ; 3 uses
  %i.w = add i32 %i.v, -1
  %i.x = uitofp i32 %i.w to double
  %i.y = fdiv double %spec.store.select, %i.x     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.z = add i32 %i.v, 2                          ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.thread.i, label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i

_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE5resetEPS2_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.aa = zext i32 %i.z to i64                    ; 5 uses
  %i.ab = mul nuw nsw i64 %i.aa, 24
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #12 ; 6 uses
  store ptr %i.ac, ptr %5, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !30
  %xtraiter = and i64 %i.aa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.prol ], [ %i.ac, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.prol ], [ %i.aa, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.i.i.prol, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.af, align 8, !tbaa !31
  %i.ag = add nsw i64 %.01012.i.i.i.i.i.prol, -1  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !100

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i ], [ %i.ah, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.ac, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i ], [ %i.ah, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.aa, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i ], [ %i.ag, %.lr.ph.i.i.i.i.i.prol ]
  %i.ai = icmp ult i32 %i.z, 8
  br i1 %i.ai, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.i.i, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.aj, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.al, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.an, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.ap, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.ar, align 8, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.at, align 8, !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 144
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.av, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 168
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.ax, align 8, !tbaa !31
  %i.ay = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i.i.i.7, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !34

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.ba = phi ptr [ null, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bb, align 8, !tbaa !36
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !17, !noalias !101 ; 4 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !40, !noalias !101
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit, label %bb.a

bb.a:                                             ; preds = %.loopexit
  %i.bg = invoke noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, double noundef %i.q)
          to label %.noexc45 unwind label %bb.c

.noexc45:                                         ; preds = %bb.a
  %i.bh = invoke noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, double noundef %i.r)
          to label %.noexc45._ZNK4geos4util21GeometricShapeFactory5coordEdd.exit_crit_edge unwind label %bb.c

.noexc45._ZNK4geos4util21GeometricShapeFactory5coordEdd.exit_crit_edge: ; preds = %.noexc45
  %.pre = load i32, ptr %i.u, align 8, !tbaa !18
  %.pre85.pre = load ptr, ptr %i.bc, align 8, !tbaa !17, !noalias !104
  br label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit

_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit: ; preds = %.noexc45._ZNK4geos4util21GeometricShapeFactory5coordEdd.exit_crit_edge, %.loopexit
  %.pre85 = phi ptr [ %i.bd, %.loopexit ], [ %.pre85.pre, %.noexc45._ZNK4geos4util21GeometricShapeFactory5coordEdd.exit_crit_edge ] ; 3 uses
  %i.bi = phi i32 [ %i.v, %.loopexit ], [ %.pre, %.noexc45._ZNK4geos4util21GeometricShapeFactory5coordEdd.exit_crit_edge ]
  %.sroa.069.0 = phi double [ %i.q, %.loopexit ], [ %i.bg, %.noexc45._ZNK4geos4util21GeometricShapeFactory5coordEdd.exit_crit_edge ]
  %.sroa.670.0 = phi double [ %i.r, %.loopexit ], [ %i.bh, %.noexc45._ZNK4geos4util21GeometricShapeFactory5coordEdd.exit_crit_edge ]
  store double %.sroa.069.0, ptr %i.ba, align 8, !tbaa !20
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store double %.sroa.670.0, ptr %.sroa.670.0..sroa_idx, align 8, !tbaa !20
  %.sroa.871.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store double +qnan, ptr %.sroa.871.0..sroa_idx, align 8, !tbaa !20
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit
  %i.bj = load i32, ptr %.pre85, align 8, !tbaa !40, !noalias !107
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit52.us, label %.lr.ph.split

_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit52.us: ; preds = %.lr.ph, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit52.us
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit52.us ], [ 1, %.lr.ph ] ; 2 uses
  %.03674.us = phi i32 [ %i.bv, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit52.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.bl = uitofp i32 %.03674.us to double
  %i.bm = fmul double %i.y, %i.bl
  %i.bn = fadd double %2, %i.bm                   ; 2 uses
  %i.bo = tail call double @cos(double noundef %i.bn) #11, !tbaa !3
  %i.bp = fmul double %i.i, %i.bo
  %i.bq = fadd double %i.q, %i.bp
  %i.br = tail call double @sin(double noundef %i.bn) #11, !tbaa !3
  %i.bs = fmul double %i.p, %i.br
  %i.bt = fadd double %i.r, %i.bs
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %indvars.iv80 ; 3 uses
  store double %i.bq, ptr %i.bu, align 8, !tbaa !20
  %.sroa.667.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store double %i.bt, ptr %.sroa.667.0..sroa_idx.us, align 8, !tbaa !20
  %.sroa.868.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store double +qnan, ptr %.sroa.868.0..sroa_idx.us, align 8, !tbaa !20
  %i.bv = add nuw i32 %.03674.us, 1               ; 2 uses
  %i.bw = load i32, ptr %i.u, align 8, !tbaa !18
  %i.bx = icmp ult i32 %i.bv, %i.bw
  br i1 %i.bx, label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit52.us, label %._crit_edge, !llvm.loop !110

._crit_edge.loopexit76:                           ; preds = %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit52
  %.pre84 = load ptr, ptr %i.bc, align 8, !tbaa !17, !noalias !104
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit52.us, %._crit_edge.loopexit76, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit
  %i.by = phi ptr [ %.pre85, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit ], [ %.pre84, %._crit_edge.loopexit76 ], [ %.pre85, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit52.us ] ; 3 uses
  %.035.lcssa = phi i64 [ 1, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit ], [ %indvars.iv.next, %._crit_edge.loopexit76 ], [ %indvars.iv.next81, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit52.us ]
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !40, !noalias !104
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit49, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.cb = invoke noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.by, double noundef %i.q)
          to label %.noexc47 unwind label %bb.j

.noexc47:                                         ; preds = %bb.b
  %i.cc = invoke noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.by, double noundef %i.r)
          to label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit49 unwind label %bb.j

bb.c:                                             ; preds = %.noexc45, %bb.a
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit52
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit52 ], [ 1, %.lr.ph ] ; 2 uses
  %.03674 = phi i32 [ %i.ct, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit52 ], [ 0, %.lr.ph ] ; 2 uses
  %i.ce = uitofp i32 %.03674 to double
  %i.cf = fmul double %i.y, %i.ce
  %i.cg = fadd double %2, %i.cf                   ; 2 uses
  %i.ch = tail call double @cos(double noundef %i.cg) #11, !tbaa !3
  %i.ci = fmul double %i.i, %i.ch
  %i.cj = fadd double %i.q, %i.ci                 ; 2 uses
  %i.ck = tail call double @sin(double noundef %i.cg) #11, !tbaa !3
  %i.cl = fmul double %i.p, %i.ck
  %i.cm = fadd double %i.r, %i.cl                 ; 2 uses
  %i.cn = load ptr, ptr %i.bc, align 8, !tbaa !17, !noalias !107 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !40, !noalias !107
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit52, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %i.cq = invoke noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, double noundef %i.cj)
          to label %.noexc50 unwind label %bb.e

.noexc50:                                         ; preds = %bb.d
  %i.cr = invoke noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, double noundef %i.cm)
          to label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit52 unwind label %bb.e

_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit52: ; preds = %.lr.ph.split, %.noexc50
  %.sroa.667.0 = phi double [ %i.cm, %.lr.ph.split ], [ %i.cr, %.noexc50 ]
  %.sroa.066.0 = phi double [ %i.cj, %.lr.ph.split ], [ %i.cq, %.noexc50 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %indvars.iv ; 3 uses
  store double %.sroa.066.0, ptr %i.cs, align 8, !tbaa !20
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store double %.sroa.667.0, ptr %.sroa.667.0..sroa_idx, align 8, !tbaa !20
  %.sroa.868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store double +qnan, ptr %.sroa.868.0..sroa_idx, align 8, !tbaa !20
  %i.ct = add nuw i32 %.03674, 1                  ; 2 uses
  %i.cu = load i32, ptr %i.u, align 8, !tbaa !18
  %i.cv = icmp ult i32 %i.ct, %i.cu
  br i1 %i.cv, label %.lr.ph.split, label %._crit_edge.loopexit76, !llvm.loop !111

bb.e:                                             ; preds = %.noexc50, %bb.d
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit49: ; preds = %._crit_edge, %.noexc47
  %.sroa.6.0 = phi double [ %i.r, %._crit_edge ], [ %i.cc, %.noexc47 ]
  %.sroa.0.0 = phi double [ %i.q, %._crit_edge ], [ %i.cb, %.noexc47 ]
  %i.cx = and i64 %.035.lcssa, 4294967295
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.cx ; 3 uses
  store double %.sroa.0.0, ptr %i.cy, align 8, !tbaa !20
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store double %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !20
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store double +qnan, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !66 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !7
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  invoke void %i.df(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.10") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef 0)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.dg = load ptr, ptr %i.cz, align 8, !tbaa !9
  invoke void @_ZNK4geos4geom15GeometryFactory16createLinearRingEOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.18") align 8 %7, ptr noundef nonnull align 8 dereferenceable(45) %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.dh = load ptr, ptr %i.cz, align 8, !tbaa !9
  invoke void @_ZNK4geos4geom15GeometryFactory13createPolygonEOSt10unique_ptrINS0_10LinearRingESt14default_deleteIS3_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %i.dh, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.di = load ptr, ptr %7, align 8, !tbaa !70    ; 3 uses
  %.not.i = icmp eq ptr %i.di, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i: ; preds = %bb.h
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(48) %i.di) #11, !inline_history !72
  br label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.h, %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.dm = load ptr, ptr %6, align 8, !tbaa !73    ; 3 uses
  %.not.i53 = icmp eq ptr %i.dm, null
  br i1 %.not.i53, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dm) #11, !inline_history !75
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.dq = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.dq) #13
  br label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.i, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void

bb.j:                                             ; preds = %.noexc47, %bb.b
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.k:                                             ; preds = %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit49
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit60

bb.l:                                             ; preds = %bb.f
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit57

bb.m:                                             ; preds = %bb.g
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %7, align 8, !tbaa !70    ; 3 uses
  %.not.i55 = icmp eq ptr %i.dv, null
  br i1 %.not.i55, label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit57, label %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i56

_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i56: ; preds = %bb.m
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(48) %i.dv) #11, !inline_history !72
  br label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit57

_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit57: ; preds = %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i56, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.dt, %bb.l ], [ %i.du, %bb.m ], [ %i.du, %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i56 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.dz = load ptr, ptr %6, align 8, !tbaa !73    ; 3 uses
  %.not.i58 = icmp eq ptr %i.dz, null
  br i1 %.not.i58, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit60, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i59

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i59: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit57
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !7
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dz) #11, !inline_history !75
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit60

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit60: ; preds = %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i59, %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit57, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.k ], [ %.pn, %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit57 ], [ %.pn, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %.pre86 = load ptr, ptr %5, align 8, !tbaa !27
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit60, %bb.c
  %i.ed = phi ptr [ %i.ba, %bb.c ], [ %.pre86, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit60 ] ; 2 uses
  %.pn39 = phi { ptr, i32 } [ %i.cd, %bb.c ], [ %.pn.pn, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit60 ] ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit62, label %.thread

.thread:                                          ; preds = %bb.j, %bb.e, %bb.n
  %.pn3997 = phi { ptr, i32 } [ %.pn39, %bb.n ], [ %i.dr, %bb.j ], [ %i.cw, %bb.e ]
  %i.ee = phi ptr [ %i.ed, %bb.n ], [ %i.ba, %bb.j ], [ %i.ba, %bb.e ]
  call void @_ZdlPv(ptr noundef nonnull %i.ee) #13
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit62

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit62: ; preds = %.thread, %bb.n
  %.pn3998 = phi { ptr, i32 } [ %.pn3997, %.thread ], [ %.pn39, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  resume { ptr, i32 } %.pn3998
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4util21GeometricShapeFactory10DimensionsC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 48)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4geos4geom10Coordinate7getNullEv()
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4geos4geom10Coordinate7getNullEv()
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !19
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4geos4geom10Coordinate7getNullEv() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util21GeometricShapeFactoryD2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(92) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util21GeometricShapeFactoryD0Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(92) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

declare noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 8}
!10 = !{!"_ZTSN4geos4util21GeometricShapeFactoryE", !11, i64 8, !13, i64 16, !14, i64 24, !4, i64 88}
!11 = !{!"p1 _ZTSN4geos4geom15GeometryFactoryE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTSN4geos4geom14PrecisionModelE", !12, i64 0}
!14 = !{!"_ZTSN4geos4util21GeometricShapeFactory10DimensionsE", !15, i64 0, !15, i64 24, !16, i64 48, !16, i64 56}
!15 = !{!"_ZTSN4geos4geom10CoordinateE", !16, i64 0, !16, i64 8, !16, i64 16}
!16 = !{!"double", !5, i64 0}
!17 = !{!10, !13, i64 16}
!18 = !{!10, !4, i64 88}
!19 = !{i64 0, i64 8, !20, i64 8, i64 8, !20, i64 16, i64 8, !20}
!20 = !{!16, !16, i64 0}
!21 = !{!14, !16, i64 56}
!22 = !{!14, !16, i64 48}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTSN4geos4geom8EnvelopeE", !12, i64 0}
!25 = !{!26, !16, i64 8}
!26 = !{!"_ZTSN4geos4geom8EnvelopeE", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!27 = !{!28, !29, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!29 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !12, i64 0}
!30 = !{!28, !29, i64 16}
!31 = !{!15, !16, i64 16}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!28, !29, i64 8}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZNK4geos4util21GeometricShapeFactory5coordEdd: argument 0"}
!39 = distinct !{!39, !"_ZNK4geos4util21GeometricShapeFactory5coordEdd"}
!40 = !{!41, !42, i64 0}
!41 = !{!"_ZTSN4geos4geom14PrecisionModelE", !42, i64 0, !16, i64 8}
!42 = !{!"_ZTSN4geos4geom14PrecisionModel4TypeE", !5, i64 0}
!43 = distinct !{!43, !35, !44, !45}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"branch_weights", i32 4, i32 12}
!47 = distinct !{!47, !35, !44, !45}
!48 = distinct !{!48, !35, !45, !44}
!49 = !{!26, !16, i64 0}
!50 = !{!26, !16, i64 16}
!51 = distinct !{!51, !35, !52}
!52 = !{!"llvm.loop.unswitch.partial.disable"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZNK4geos4util21GeometricShapeFactory5coordEdd: argument 0"}
!55 = distinct !{!55, !"_ZNK4geos4util21GeometricShapeFactory5coordEdd"}
!56 = distinct !{!56, !35}
!57 = !{!26, !16, i64 24}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZNK4geos4util21GeometricShapeFactory5coordEdd: argument 0"}
!60 = distinct !{!60, !"_ZNK4geos4util21GeometricShapeFactory5coordEdd"}
!61 = distinct !{!61, !35}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZNK4geos4util21GeometricShapeFactory5coordEdd: argument 0"}
!64 = distinct !{!64, !"_ZNK4geos4util21GeometricShapeFactory5coordEdd"}
!65 = distinct !{!65, !35}
!66 = !{!67, !68, i64 32}
!67 = !{!"_ZTSN4geos4geom15GeometryFactoryE", !41, i64 8, !4, i64 24, !68, i64 32, !4, i64 40, !69, i64 44}
!68 = !{!"p1 _ZTSN4geos4geom25CoordinateSequenceFactoryE", !12, i64 0}
!69 = !{!"bool", !5, i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"p1 _ZTSN4geos4geom10LinearRingE", !12, i64 0}
!72 = distinct !{null, null}
!73 = !{!74, !74, i64 0}
!74 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !12, i64 0}
!75 = distinct !{null, null}
!76 = !{!15, !16, i64 0}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN4geos6detail11make_uniqueINS_4geom8EnvelopeEJRKddS5_dEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_: argument 0"}
!79 = distinct !{!79, !"_ZN4geos6detail11make_uniqueINS_4geom8EnvelopeEJRKddS5_dEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN4geos6detail11make_uniqueINS_4geom8EnvelopeEJddddEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_: argument 0"}
!82 = distinct !{!82, !"_ZN4geos6detail11make_uniqueINS_4geom8EnvelopeEJddddEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN4geos6detail11make_uniqueINS_4geom8EnvelopeEJiRKdiS5_EEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_: argument 0"}
!85 = distinct !{!85, !"_ZN4geos6detail11make_uniqueINS_4geom8EnvelopeEJiRKdiS5_EEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_"}
!86 = !{}
!87 = !{!15, !16, i64 8}
!88 = distinct !{!88, !33}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZNK4geos4util21GeometricShapeFactory5coordEdd: argument 0"}
!91 = distinct !{!91, !"_ZNK4geos4util21GeometricShapeFactory5coordEdd"}
!92 = distinct !{!92, !35}
!93 = distinct !{!93, !35, !52}
!94 = distinct !{!94, !33}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZNK4geos4util21GeometricShapeFactory5coordEdd: argument 0"}
!97 = distinct !{!97, !"_ZNK4geos4util21GeometricShapeFactory5coordEdd"}
!98 = distinct !{!98, !35}
!99 = distinct !{!99, !35, !52}
!100 = distinct !{!100, !33}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZNK4geos4util21GeometricShapeFactory5coordEdd: argument 0"}
!103 = distinct !{!103, !"_ZNK4geos4util21GeometricShapeFactory5coordEdd"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZNK4geos4util21GeometricShapeFactory5coordEdd: argument 0"}
!106 = distinct !{!106, !"_ZNK4geos4util21GeometricShapeFactory5coordEdd"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZNK4geos4util21GeometricShapeFactory5coordEdd: argument 0"}
!109 = distinct !{!109, !"_ZNK4geos4util21GeometricShapeFactory5coordEdd"}
!110 = distinct !{!110, !35}
!111 = distinct !{!111, !35, !52}
end_hunk_0
