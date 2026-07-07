inline.NumInlined: 432
inline.NumDeleted: 226
begin_hunk_0_@_ZN4geos9algorithm21MinimumBoundingCircle18getMaximumDiameterEv:bb.a
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !38
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 noundef 0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bd = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -24
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef 1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.bj = load ptr, ptr %1, align 8, !tbaa !22
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !23
  invoke void @_ZNK4geos4geom15GeometryFactory16createLineStringEOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.18") align 8 %4, ptr noundef nonnull align 8 dereferenceable(45) %i.bl, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit17 unwind label %bb.i

_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit17: ; preds = %bb.g
  %i.bm = load ptr, ptr %4, align 8, !tbaa !42
  store ptr %i.bm, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.bn = load ptr, ptr %3, align 8, !tbaa !50    ; 3 uses
  %.not.i18 = icmp eq ptr %i.bn, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit17
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !38
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bn) #14, !inline_history !52
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit17, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.s

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.i ], [ %i.br, %bb.h ]
  %i.bt = load ptr, ptr %3, align 8, !tbaa !50    ; 3 uses
  %.not.i19 = icmp eq ptr %i.bt, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit21, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i20

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i20: ; preds = %bb.j
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !38
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bt) #14, !inline_history !52
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit21

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit21: ; preds = %bb.j, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.t

bb.k:                                             ; preds = %_ZN4geos9algorithm21MinimumBoundingCircle7computeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN4geos9algorithm21MinimumBoundingCircle14farthestPointsERSt6vectorINS_4geom10CoordinateESaIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %5, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.bx = load ptr, ptr %1, align 8, !tbaa !22
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !23
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !44 ; 2 uses
  %i.cc = zext i8 %i.z to i64
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !38
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  invoke void %i.cf(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.26") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i64 noundef 2, i64 noundef %i.cc)
          to label %bb.l unwind label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit30

bb.l:                                             ; preds = %bb.k
  %i.cg = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.ch = load ptr, ptr %5, align 8, !tbaa !7     ; 3 uses
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !38
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8
  invoke void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 noundef 0)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !7
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -24
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !38
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  %i.cr = load ptr, ptr %i.cq, align 8
  invoke void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 noundef 1)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.cs = load ptr, ptr %1, align 8, !tbaa !22
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !23
  invoke void @_ZNK4geos4geom15GeometryFactory16createLineStringEOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.18") align 8 %7, ptr noundef nonnull align 8 dereferenceable(45) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit24 unwind label %bb.p

_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit24: ; preds = %bb.n
  %i.cv = load ptr, ptr %7, align 8, !tbaa !42
  store ptr %i.cv, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.cw = load ptr, ptr %6, align 8, !tbaa !50    ; 3 uses
  %.not.i25 = icmp eq ptr %i.cw, null
  br i1 %.not.i25, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i26

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i26: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !38
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cw) #14, !inline_history !52
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit24, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @_ZdlPv(ptr noundef nonnull %i.ch) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.s

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn11 = phi { ptr, i32 } [ %i.db, %bb.p ], [ %i.da, %bb.o ]
  %i.dc = load ptr, ptr %6, align 8, !tbaa !50    ; 3 uses
  %.not.i28 = icmp eq ptr %i.dc, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit30.thread, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i29

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i29: ; preds = %bb.q
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !38
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dc) #14, !inline_history !52
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit30.thread

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit30.thread: ; preds = %bb.q, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.r

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit30: ; preds = %bb.k
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %.not.i.i.i31 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit32, label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit30.thread, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit30
  %.pn11.pn39 = phi { ptr, i32 } [ %.pn11, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit30.thread ], [ %i.dg, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit30 ]
  %i.dh = phi ptr [ %i.ch, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit30.thread ], [ %.pre, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit30 ]
  call void @_ZdlPv(ptr noundef nonnull %i.dh) #15
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit32

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit32: ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit30, %bb.r
  %.pn11.pn40 = phi { ptr, i32 } [ %i.dg, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit30 ], [ %.pn11.pn39, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.t

bb.s:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, %bb.d, %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit
  ret void

bb.t:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit32, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit21
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn40, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit32 ], [ %.pn, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit21 ]
  resume { ptr, i32 } %.pn11.pn.pn
}

declare void @_ZNK4geos4geom15GeometryFactory16createLineStringEm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8, ptr noundef nonnull align 8 dereferenceable(45), i64 noundef) local_unnamed_addr #2

declare void @_ZNK4geos4geom15GeometryFactory16createLineStringEOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8, ptr noundef nonnull align 8 dereferenceable(45), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm21MinimumBoundingCircle14farthestPointsERSt6vectorINS_4geom10CoordinateESaIS4_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %2, align 8, !tbaa !13     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %6 = load <2 x double>, ptr %i.a, align 8, !tbaa !15 ; 4 uses
  %7 = load <2 x double>, ptr %i.b, align 8, !tbaa !15 ; 3 uses
  %8 = load double, ptr %3, align 8, !tbaa !53
  %9 = load <2 x double>, ptr %4, align 8, !tbaa !15 ; 3 uses
  %10 = load double, ptr %5, align 8, !tbaa !53
  %foldExtExtBinop = fsub <2 x double> %7, %9     ; 2 uses
  %11 = fsub double %8, %10                       ; 2 uses
  %foldExtExtBinop150 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop
  %12 = extractelement <2 x double> %foldExtExtBinop150, i64 0
  %13 = fmul double %11, %11
  %14 = fadd double %12, %13
  %sqrt.i24 = tail call noundef double @llvm.sqrt.f64(double %14) ; 2 uses
  %15 = shufflevector <2 x double> %6, <2 x double> %9, <2 x i32> <i32 0, i32 2>
  %16 = shufflevector <2 x double> %7, <2 x double> %6, <2 x i32> <i32 0, i32 2>
  %17 = fsub <2 x double> %15, %16                ; 2 uses
  %18 = shufflevector <2 x double> %6, <2 x double> %9, <2 x i32> <i32 1, i32 3>
  %19 = shufflevector <2 x double> %7, <2 x double> %6, <2 x i32> <i32 1, i32 3>
  %20 = fsub <2 x double> %18, %19                ; 2 uses
  %21 = fmul <2 x double> %17, %17
  %22 = fmul <2 x double> %20, %20
  %23 = fadd <2 x double> %21, %22
  %24 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %23) ; 4 uses
  %25 = extractelement <2 x double> %24, i64 0
  %26 = fcmp ult double %25, %sqrt.i24
  %shift = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %27 = fcmp ult <2 x double> %24, %shift
  %28 = extractelement <2 x i1> %27, i64 0
  %or.cond = or i1 %26, %28
  br i1 %or.cond, label %bb.b, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !13
  store ptr %i.f, ptr %i.c, align 8, !tbaa !41
  store ptr %i.f, ptr %i.d, align 8, !tbaa !55
  %i.g = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16
          to label %.lr.ph.i.i.i.i.i.i32.preheader unwind label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit ; 5 uses

.lr.ph.i.i.i.i.i.i32.preheader:                   ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !54, !alias.scope !56
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #15
  store ptr %i.g, ptr %0, align 8, !tbaa !13
  store ptr %i.i, ptr %i.c, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.j, ptr %i.d, align 8, !tbaa !55
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit42

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit: ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i93, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i61
  %.ph.ph = phi ptr [ %i.m, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i93 ], [ %i.e, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.m, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i61 ]
  %lpad.thr_comm139 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %.ph.ph) #15
  resume { ptr, i32 } %lpad.thr_comm139

bb.b:                                             ; preds = %bb.a
  %29 = insertelement <2 x double> poison, double %sqrt.i24, i64 0
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = fcmp ult <2 x double> %30, %24
  %32 = bitcast <2 x i1> %31 to i2
  %or.cond23.not = icmp eq i2 %32, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 4 uses
  br i1 %or.cond23.not, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i61, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i93

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i61: ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !54
  store ptr %i.m, ptr %0, align 8, !tbaa !13
  store ptr %i.n, ptr %i.k, align 8, !tbaa !41
  store ptr %i.n, ptr %i.l, align 8, !tbaa !55
  %i.o = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16
          to label %.lr.ph.i.i.i.i.i.i65.preheader unwind label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit ; 5 uses

.lr.ph.i.i.i.i.i.i65.preheader:                   ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i61
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !54, !alias.scope !60
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #15
  store ptr %i.o, ptr %0, align 8, !tbaa !13
  store ptr %i.q, ptr %i.k, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr %i.r, ptr %i.l, align 8, !tbaa !55
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit42

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i93: ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !54
  store ptr %i.m, ptr %0, align 8, !tbaa !13
  store ptr %i.n, ptr %i.k, align 8, !tbaa !41
  store ptr %i.n, ptr %i.l, align 8, !tbaa !55
  %i.s = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16
          to label %.lr.ph.i.i.i.i.i.i97.preheader unwind label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit ; 5 uses

.lr.ph.i.i.i.i.i.i97.preheader:                   ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i93
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !54, !alias.scope !64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #15
  store ptr %i.s, ptr %0, align 8, !tbaa !13
  store ptr %i.u, ptr %i.k, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr %i.v, ptr %i.l, align 8, !tbaa !55
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit42

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit42: ; preds = %.lr.ph.i.i.i.i.i.i97.preheader, %.lr.ph.i.i.i.i.i.i65.preheader, %.lr.ph.i.i.i.i.i.i32.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm21MinimumBoundingCircle11getDiameterEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.18", align 8 ; 4 uses
  %3 = alloca %"class.std::unique_ptr.26", align 8 ; 9 uses
  %4 = alloca %"class.std::unique_ptr.18", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4geos9algorithm21MinimumBoundingCircle7computeEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4geos9algorithm21MinimumBoundingCircle19computeCirclePointsEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  tail call void @_ZN4geos9algorithm21MinimumBoundingCircle13computeCentreEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x double>, ptr %i.f, align 8     ; 3 uses
  %i.h = extractelement <2 x double> %i.g, i64 0
  %i.i = fcmp uno double %i.h, 0.000000e+00
  %i.j = extractelement <2 x double> %i.g, i64 1
  %i.k = fcmp uno double %i.j, 0.000000e+00
  %or.cond.i.i = select i1 %i.i, i1 %i.k, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load double, ptr %i.l, align 8
  %i.n = fcmp uno double %i.m, 0.000000e+00
  %i.o = select i1 %or.cond.i.i, i1 %i.n, i1 false
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !13  ; 3 uses
  br i1 %i.o, label %_ZN4geos9algorithm21MinimumBoundingCircle7computeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load <2 x double>, ptr %.pre, align 8, !tbaa !15
  %i.q = fsub <2 x double> %i.g, %i.p             ; 2 uses
  %i.r = fmul <2 x double> %i.q, %i.q             ; 2 uses
  %shift = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.r, %shift
  %i.s = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  store double %sqrt.i.i, ptr %i.t, align 8, !tbaa !16
  br label %_ZN4geos9algorithm21MinimumBoundingCircle7computeEv.exit

_ZN4geos9algorithm21MinimumBoundingCircle7computeEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.u = phi ptr [ %i.b, %bb.a ], [ %.pre, %bb.b ], [ %.pre, %bb.c ]
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 24
  switch i64 %i.z, label %bb.e [
    i64 0, label %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit
    i64 1, label %bb.d
  ]

_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4geos9algorithm21MinimumBoundingCircle7computeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.aa = load ptr, ptr %1, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23
  call void @_ZNK4geos4geom15GeometryFactory16createLineStringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.18") align 8 %2, ptr noundef nonnull align 8 dereferenceable(45) %i.ac, i64 noundef 2)
  %i.ad = load ptr, ptr %2, align 8, !tbaa !42
  store ptr %i.ad, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.k

bb.d:                                             ; preds = %_ZN4geos9algorithm21MinimumBoundingCircle7computeEv.exit
  %i.ae = load ptr, ptr %1, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = tail call noundef ptr @_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(45) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
  store ptr %i.ai, ptr %0, align 8, !tbaa !37
  br label %bb.k

bb.e:                                             ; preds = %_ZN4geos9algorithm21MinimumBoundingCircle7computeEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef zeroext i8 %i.am(ptr noundef nonnull align 8 dereferenceable(40) %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.ao = load ptr, ptr %1, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !44 ; 2 uses
  %i.at = zext i8 %i.an to i64
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.26") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.as, i64 noundef 2, i64 noundef %i.at)
  %i.ax = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 noundef 0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !38
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8
  invoke void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef 1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.bi = load ptr, ptr %1, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !23
  invoke void @_ZNK4geos4geom15GeometryFactory16createLineStringEOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.18") align 8 %4, ptr noundef nonnull align 8 dereferenceable(45) %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit8 unwind label %bb.i

_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit8: ; preds = %bb.g
  %i.bl = load ptr, ptr %4, align 8, !tbaa !42
  store ptr %i.bl, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.bm = load ptr, ptr %3, align 8, !tbaa !50    ; 3 uses
  %.not.i9 = icmp eq ptr %i.bm, null
  br i1 %.not.i9, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !38
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bm) #14, !inline_history !52
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit8, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.br, %bb.i ], [ %i.bq, %bb.h ]
  %i.bs = load ptr, ptr %3, align 8, !tbaa !50    ; 3 uses
  %.not.i10 = icmp eq ptr %i.bs, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit12, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i11

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i11: ; preds = %bb.j
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !38
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bs) #14, !inline_history !52
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit12: ; preds = %bb.j, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, %bb.d, %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm21MinimumBoundingCircle17getExtremalPointsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4geos9algorithm21MinimumBoundingCircle7computeEv.exit

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EEaSERKS4_:bb.a
bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4geos9algorithm21MinimumBoundingCircle11lowestPointERSt6vectorINS_4geom10CoordinateESaIS4_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.geos::geom::Coordinate") align 8 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !13     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 2 uses
  %.not11 = icmp eq ptr %i.a, %i.c
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !53
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %.1, %.lr.ph ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.0.lcssa, i64 24, i1 false), !tbaa.struct !54
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.d = phi double [ %i.i, %.lr.ph ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.013 = phi ptr [ %.1, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %.sroa.08.012 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !53 ; 2 uses
  %i.g = fcmp olt double %i.f, %i.d               ; 2 uses
  %.1 = select i1 %i.g, ptr %.sroa.08.012, ptr %.013 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.h, %i.c
  %i.i = select i1 %i.g, double %i.f, double %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4geos9algorithm21MinimumBoundingCircle21pointWitMinAngleWithXERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.geos::geom::Coordinate") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> splat (double +qnan), ptr %0, align 8, !tbaa !15
  store double +qnan, ptr %i.a, align 8, !tbaa !71
  %i.b = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %.not28 = icmp eq ptr %i.b, %i.d
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = load double, ptr %3, align 8, !tbaa !10  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load double, ptr %i.f, align 8           ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.030 = phi double [ +inf, %.lr.ph ], [ %.2, %bb.e ] ; 3 uses
  %.sroa.025.029 = phi ptr [ %i.b, %.lr.ph ], [ %i.v, %bb.e ] ; 4 uses
  %i.h = load double, ptr %.sroa.025.029, align 8, !tbaa !10 ; 2 uses
  %i.i = fcmp oeq double %i.h, %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.025.029, i64 8
  %i.k = load double, ptr %i.j, align 8           ; 2 uses
  %i.l = fcmp oeq double %i.k, %i.g
  %.0.i.i = select i1 %i.i, i1 %i.l, i1 false
  br i1 %.0.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = fsub double %i.h, %i.e                   ; 2 uses
  %i.n = fsub double %i.k, %i.g                   ; 3 uses
  %i.o = fcmp olt double %i.n, 0.000000e+00
  %i.p = fneg double %i.n
  %.021 = select i1 %i.o, double %i.p, double %i.n ; 3 uses
  %i.q = fmul double %i.m, %i.m
  %i.r = fmul double %.021, %.021
  %i.s = fadd double %i.q, %i.r
  %sqrt = tail call double @llvm.sqrt.f64(double %i.s)
  %i.t = fdiv double %.021, %sqrt                 ; 2 uses
  %i.u = fcmp olt double %i.t, %.030
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.025.029, i64 24, i1 false), !tbaa.struct !54
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.2 = phi double [ %.030, %bb.b ], [ %i.t, %bb.d ], [ %.030, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.025.029, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm21MinimumBoundingCircle28pointWithMinAngleWithSegmentERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_S8_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.geos::geom::Coordinate") align 8 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !13     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 2 uses
  %.not24 = icmp eq ptr %i.a, %i.c
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.016.lcssa = phi ptr [ %i.a, %bb.a ], [ %.218, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.016.lcssa, i64 24, i1 false), !tbaa.struct !54
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.027 = phi double [ +inf, %.lr.ph ], [ %.2, %bb.e ] ; 4 uses
  %.01626 = phi ptr [ %i.a, %.lr.ph ], [ %.218, %bb.e ] ; 3 uses
  %.sroa.021.025 = phi ptr [ %i.a, %.lr.ph ], [ %i.s, %bb.e ] ; 5 uses
  %i.f = load double, ptr %.sroa.021.025, align 8, !tbaa !10 ; 2 uses
  %i.g = load double, ptr %3, align 8, !tbaa !10
  %i.h = fcmp oeq double %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.021.025, i64 8
  %i.j = load double, ptr %i.i, align 8           ; 2 uses
  %i.k = load double, ptr %i.d, align 8
  %i.l = fcmp oeq double %i.j, %i.k
  %.0.i.i = select i1 %i.h, i1 %i.l, i1 false
  br i1 %.0.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load double, ptr %4, align 8, !tbaa !10
  %i.n = fcmp oeq double %i.f, %i.m
  %i.o = load double, ptr %i.e, align 8
  %i.p = fcmp oeq double %i.j, %i.o
  %.0.i.i20 = select i1 %i.n, i1 %i.p, i1 false
  br i1 %.0.i.i20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef double @_ZN4geos9algorithm5Angle12angleBetweenERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.021.025, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  %i.r = fcmp olt double %i.q, %.027              ; 2 uses
  %.117 = select i1 %i.r, ptr %.sroa.021.025, ptr %.01626
  %.1 = select i1 %i.r, double %i.q, double %.027
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.218 = phi ptr [ %.117, %bb.d ], [ %.01626, %bb.b ], [ %.01626, %bb.c ] ; 2 uses
  %.2 = phi double [ %.1, %bb.d ], [ %.027, %bb.b ], [ %.027, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.021.025, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare noundef zeroext i1 @_ZN4geos9algorithm5Angle8isObtuseERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef double @_ZN4geos9algorithm5Angle12angleBetweenERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { noreturn }

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
!8 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN4geos4geom10CoordinateE", !12, i64 0, !12, i64 8, !12, i64 16}
!12 = !{!"double", !5, i64 0}
!13 = !{!14, !8, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !8, i64 0, !8, i64 8, !8, i64 16}
!15 = !{!12, !12, i64 0}
!16 = !{!17, !12, i64 56}
!17 = !{!"_ZTSN4geos9algorithm21MinimumBoundingCircleE", !18, i64 0, !19, i64 8, !11, i64 32, !12, i64 56}
!18 = !{!"p1 _ZTSN4geos4geom8GeometryE", !9, i64 0}
!19 = !{!"_ZTSSt6vectorIN4geos4geom10CoordinateESaIS2_EE", !20, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE12_Vector_implE", !14, i64 0}
!22 = !{!17, !18, i64 0}
!23 = !{!24, !32, i64 24}
!24 = !{!"_ZTSN4geos4geom8GeometryE", !25, i64 8, !4, i64 16, !32, i64 24, !9, i64 32}
!25 = !{!"_ZTSSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !26, i64 0}
!26 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8EnvelopeESt14default_deleteIS2_ELb1ELb1EE", !27, i64 0}
!27 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !28, i64 0}
!28 = !{!"_ZTSSt5tupleIJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !29, i64 0}
!29 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !30, i64 0}
!30 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8EnvelopeELb0EE", !31, i64 0}
!31 = !{!"p1 _ZTSN4geos4geom8EnvelopeE", !9, i64 0}
!32 = !{!"p1 _ZTSN4geos4geom15GeometryFactoryE", !9, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTSN4geos4geom7PolygonE", !9, i64 0}
!35 = !{!36, !18, i64 0}
!36 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8GeometryELb0EE", !18, i64 0}
!37 = !{!18, !18, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !6, i64 0}
!40 = distinct !{null, null}
!41 = !{!14, !8, i64 8}
!42 = !{!43, !43, i64 0}
!43 = !{!"p1 _ZTSN4geos4geom10LineStringE", !9, i64 0}
!44 = !{!45, !48, i64 32}
!45 = !{!"_ZTSN4geos4geom15GeometryFactoryE", !46, i64 8, !4, i64 24, !48, i64 32, !4, i64 40, !49, i64 44}
!46 = !{!"_ZTSN4geos4geom14PrecisionModelE", !47, i64 0, !12, i64 8}
!47 = !{!"_ZTSN4geos4geom14PrecisionModel4TypeE", !5, i64 0}
!48 = !{!"p1 _ZTSN4geos4geom25CoordinateSequenceFactoryE", !9, i64 0}
!49 = !{!"bool", !5, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !9, i64 0}
!52 = distinct !{null, null}
!53 = !{!11, !12, i64 8}
!54 = !{i64 0, i64 8, !15, i64 8, i64 8, !15, i64 16, i64 8, !15}
!55 = !{!14, !8, i64 16}
!56 = !{!57, !59}
!57 = distinct !{!57, !58, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!58 = distinct !{!58, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!59 = distinct !{!59, !58, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!60 = !{!61, !63}
!61 = distinct !{!61, !62, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!62 = distinct !{!62, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!63 = distinct !{!63, !62, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!64 = !{!65, !67}
!65 = distinct !{!65, !66, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!66 = distinct !{!66, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!67 = distinct !{!67, !66, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!68 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!11, !12, i64 16}
!72 = !{!73, !75, i64 0}
!73 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !74, i64 0, !76, i64 8, !5, i64 16}
!74 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !75, i64 0}
!75 = !{!"p1 omnipotent char", !9, i64 0}
!76 = !{!"long", !5, i64 0}
!77 = !{!78, !80}
!78 = distinct !{!78, !79, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!79 = distinct !{!79, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!80 = distinct !{!80, !79, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!81 = distinct !{!81, !70}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZN4geos9algorithm21MinimumBoundingCircle21pointWitMinAngleWithXERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_: argument 0:thread"}
!84 = distinct !{!84, !"_ZN4geos9algorithm21MinimumBoundingCircle21pointWitMinAngleWithXERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN4geos9algorithm21MinimumBoundingCircle11lowestPointERSt6vectorINS_4geom10CoordinateESaIS4_EE: argument 0"}
!87 = distinct !{!87, !"_ZN4geos9algorithm21MinimumBoundingCircle11lowestPointERSt6vectorINS_4geom10CoordinateESaIS4_EE"}
!88 = !{!89}
!89 = distinct !{!89, !84, !"_ZN4geos9algorithm21MinimumBoundingCircle21pointWitMinAngleWithXERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_: argument 0"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN4geos9algorithm21MinimumBoundingCircle28pointWithMinAngleWithSegmentERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_S8_: argument 0"}
!92 = distinct !{!92, !"_ZN4geos9algorithm21MinimumBoundingCircle28pointWithMinAngleWithSegmentERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_S8_"}
!93 = !{!94, !96}
!94 = distinct !{!94, !95, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!95 = distinct !{!95, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!96 = distinct !{!96, !95, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!97 = !{!98, !100}
!98 = distinct !{!98, !99, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!99 = distinct !{!99, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!100 = distinct !{!100, !99, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!101 = distinct !{!101, !70}
!102 = !{!103, !105}
!103 = distinct !{!103, !104, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!104 = distinct !{!104, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!105 = distinct !{!105, !104, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!106 = !{!107, !109}
!107 = distinct !{!107, !108, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!108 = distinct !{!108, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!109 = distinct !{!109, !108, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!110 = !{!111, !113}
!111 = distinct !{!111, !112, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!112 = distinct !{!112, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!113 = distinct !{!113, !112, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!114 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!115 = distinct !{!115, !70}
end_hunk_1
