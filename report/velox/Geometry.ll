inline.NumInlined: 578
inline.NumDeleted: 321
begin_hunk_0_@_ZNK4geos4geom8Geometry10convexHullEv:bb.a
          cleanup                                 ; 2 uses
  call void @_ZN4geos4util27UniqueCoordinateArrayFilterD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %.body.i
  call void @_ZdlPv(ptr noundef nonnull %i.r) #25
  br label %common.resume

common.resume:                                    ; preds = %.body.i, %bb.d, %_ZN4geos9algorithm10ConvexHullD2Ev.exit6
  %common.resume.op = phi { ptr, i32 } [ %i.t, %_ZN4geos9algorithm10ConvexHullD2Ev.exit6 ], [ %i.q, %bb.d ], [ %i.q, %.body.i ]
  resume { ptr, i32 } %common.resume.op

_ZN4geos9algorithm10ConvexHullC2EPKNS_4geom8GeometryE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  invoke void @_ZN4geos9algorithm10ConvexHull13getConvexHullEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN4geos9algorithm10ConvexHullC2EPKNS_4geom8GeometryE.exit
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i2, label %_ZN4geos9algorithm10ConvexHullD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdlPv(ptr noundef nonnull %i.s) #25
  br label %_ZN4geos9algorithm10ConvexHullD2Ev.exit

_ZN4geos9algorithm10ConvexHullD2Ev.exit:          ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.g:                                             ; preds = %_ZN4geos9algorithm10ConvexHullC2EPKNS_4geom8GeometryE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i4, label %_ZN4geos9algorithm10ConvexHullD2Ev.exit6, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdlPv(ptr noundef nonnull %i.u) #25
  br label %_ZN4geos9algorithm10ConvexHullD2Ev.exit6

_ZN4geos9algorithm10ConvexHullD2Ev.exit6:         ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

declare void @_ZN4geos9algorithm10ConvexHull13getConvexHullEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom8Geometry12intersectionEPKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(40) %2)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  tail call void @_ZN4geos9operation7overlay9OverlayOp17createEmptyResultENS2_6OpCodeEPKNS_4geom8GeometryES7_PKNS4_15GeometryFactoryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8 %0, i32 noundef 1, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.j)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4geos4geom16HeuristicOverlayEPKNS0_8GeometryES3_i(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @_ZN4geos9operation7overlay9OverlayOp17createEmptyResultENS2_6OpCodeEPKNS_4geom8GeometryES7_PKNS4_15GeometryFactoryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN4geos4geom16HeuristicOverlayEPKNS0_8GeometryES3_i(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom8Geometry5UnionEPKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(40) %2)
  br i1 %i.h, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %2, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(40) %2)
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20
  tail call void @_ZN4geos9operation7overlay9OverlayOp17createEmptyResultENS2_6OpCodeEPKNS_4geom8GeometryES7_PKNS4_15GeometryFactoryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8 %0, i32 noundef 2, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %i.r)
  br label %bb.ah

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.s = load ptr, ptr %1, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.w = load ptr, ptr %2, align 8, !tbaa !15, !noalias !94
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 416
  %i.y = load ptr, ptr %i.x, align 8, !noalias !94
  %i.z = tail call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(40) %2), !noalias !94, !inline_history !97
  store ptr %i.z, ptr %0, align 8, !tbaa !98, !alias.scope !94
  br label %bb.ah

bb.h:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %2, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(40) %2)
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.ae = load ptr, ptr %1, align 8, !tbaa !15, !noalias !99
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 416
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !99
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(40) %1), !noalias !99, !inline_history !97
  store ptr %i.ah, ptr %0, align 8, !tbaa !98, !alias.scope !99
  br label %bb.ah

bb.j:                                             ; preds = %bb.h, %bb.b
  %i.ai = load ptr, ptr %1, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 176
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 4 uses
  %i.am = load ptr, ptr %2, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 176
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(40) %2) ; 4 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !62
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !64
  %i.at = fcmp ugt double %i.aq, %i.as
  br i1 %i.at, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !64
  %i.aw = load double, ptr %i.al, align 8, !tbaa !62
  %i.ax = fcmp ult double %i.av, %i.aw
  br i1 %i.ax, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.az = load double, ptr %i.ay, align 8, !tbaa !65
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !66
  %i.bc = fcmp ugt double %i.az, %i.bb
  br i1 %i.bc, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit

_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit:   ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.be = load double, ptr %i.bd, align 8, !tbaa !66
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !65
  %i.bh = fcmp ult double %i.be, %i.bg
  br i1 %i.bh, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %bb.ag

_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread: ; preds = %bb.j, %bb.k, %bb.l, %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit
  %i.bi = load ptr, ptr %1, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef i64 %i.bk(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 3 uses
  %i.bm = load ptr, ptr %2, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef i64 %i.bo(ptr noundef nonnull align 8 dereferenceable(40) %2) ; 3 uses
  %i.bq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 16 uses
  %i.br = add i64 %i.bp, %i.bl                    ; 4 uses
  %i.bs = icmp ugt i64 %i.br, 1152921504606846975
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i8 0, i64 24, i1 false)
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #29
  unreachable

bb.n:                                             ; preds = %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 7 uses
  %.not138 = icmp eq i64 %i.br, 0
  br i1 %.not138, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bv = shl nuw nsw i64 %i.br, 3
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #26 ; 4 uses
  store ptr %i.bw, ptr %i.bq, align 8, !tbaa !102
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !105
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.br ; 2 uses
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !106
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit: ; preds = %bb.n, %_ZNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE11_M_allocateEm.exit.i
  %i.by = phi ptr [ null, %bb.n ], [ %i.bx, %_ZNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE11_M_allocateEm.exit.i ] ; 4 uses
  %i.bz = phi ptr [ null, %bb.n ], [ %i.bw, %_ZNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE11_M_allocateEm.exit.i ] ; 5 uses
  %i.ca = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom18GeometryCollectionE, i64 0) #27 ; 3 uses
  %.not = icmp eq ptr %i.ca, null
  br i1 %.not, label %bb.t, label %.preheader108

.preheader108:                                    ; preds = %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit
  %.not112 = icmp eq i64 %i.bl, 0
  br i1 %.not112, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit54, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader108
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit
  %.033109 = phi i64 [ 0, %.lr.ph ], [ %i.dc, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call noundef ptr %i.ce(ptr noundef nonnull align 8 dereferenceable(64) %i.ca, i64 noundef %.033109) ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !15, !noalias !107
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 416
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !107
  %i.cj = tail call noundef ptr %i.ci(ptr noundef nonnull align 8 dereferenceable(40) %i.cf), !noalias !107, !inline_history !97 ; 2 uses
  %3 = load ptr, ptr %i.cb, align 8, !tbaa !105   ; 4 uses
  %4 = load ptr, ptr %i.bt, align 8, !tbaa !106   ; 2 uses
  %.not.i.i = icmp eq ptr %3, %4
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.cj, ptr %3, align 8, !tbaa !98
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.ck, ptr %i.cb, align 8, !tbaa !105
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %5 = load ptr, ptr %i.bq, align 8, !tbaa !102   ; 4 uses
  %i.cl = ptrtoint ptr %3 to i64
  %i.cm = ptrtoint ptr %5 to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 5 uses
  %i.co = icmp eq i64 %i.cn, 9223372036854775800
  br i1 %i.co, label %.noexc, label %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

.noexc:                                           ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #29
  unreachable

_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.cp = ashr exact i64 %i.cn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 1)
  %i.cq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cp ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cp
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 1152921504606846975)
  %i.ct = select i1 %i.cr, i64 1152921504606846975, i64 %i.cs ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ct, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cu = shl nuw nsw i64 %i.ct, 3
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #26 ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 %i.cn ; 2 uses
  store ptr %i.cj, ptr %i.cw, align 8, !tbaa !98
  %i.cx = icmp sgt i64 %i.cn, 0
  br i1 %i.cx, label %bb.r, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cv, ptr align 8 %5, i64 %i.cn, i1 false)
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.r, %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %5) #25
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.cv, ptr %i.bq, align 8, !tbaa !102
  store ptr %i.cy, ptr %i.cb, align 8, !tbaa !105
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ct ; 2 uses
  store ptr %i.cz, ptr %i.bt, align 8, !tbaa !106
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.p, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.da = phi ptr [ %4, %bb.p ], [ %i.cz, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.db = phi ptr [ %i.ck, %bb.p ], [ %i.cy, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.dc = add nuw i64 %.033109, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dc, %i.bl
  br i1 %exitcond.not, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit54, label %bb.o, !llvm.loop !110

bb.t:                                             ; preds = %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit
  %i.dd = load ptr, ptr %1, align 8, !tbaa !15, !noalias !111
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 416
  %i.df = load ptr, ptr %i.de, align 8, !noalias !111
  %i.dg = tail call noundef ptr %i.df(ptr noundef nonnull align 8 dereferenceable(40) %1), !noalias !111, !inline_history !97 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.bz, %i.by
  br i1 %.not.i.i42, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i46, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.dg, ptr %i.bz, align 8, !tbaa !98
  %i.di = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !105
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit54

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i46: ; preds = %bb.t
  %i.dj = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26 ; 3 uses
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !98
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %.not.i17.i.i.i47 = icmp eq ptr %i.by, null
  br i1 %.not.i17.i.i.i47, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i48, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i46
  tail call void @_ZdlPv(ptr noundef nonnull %i.bz) #25
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i48

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i48: ; preds = %bb.v, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i46
  store ptr %i.dj, ptr %i.bq, align 8, !tbaa !102
  store ptr %i.dk, ptr %i.dh, align 8, !tbaa !105
  store ptr %i.dk, ptr %i.bt, align 8, !tbaa !106
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit54

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit54: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, %.preheader108, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i48, %bb.u
  %i.dl = phi ptr [ %i.by, %bb.u ], [ %i.by, %.preheader108 ], [ %i.dk, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i48 ], [ %i.da, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.dm = phi ptr [ %i.di, %bb.u ], [ %i.bz, %.preheader108 ], [ %i.dk, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i48 ], [ %i.db, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit ] ; 3 uses
  %i.dn = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom18GeometryCollectionE, i64 0) #27 ; 3 uses
  %.not36 = icmp eq ptr %i.dn, null
  br i1 %.not36, label %bb.ab, label %.preheader

.preheader:                                       ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit54
  %.not113 = icmp eq i64 %i.bp, 0
  br i1 %.not113, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit86, label %.lr.ph111

.lr.ph111:                                        ; preds = %.preheader
  %i.do = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph111, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit70
  %.0110 = phi i64 [ 0, %.lr.ph111 ], [ %i.en, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit70 ] ; 2 uses
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !15
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 88
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = tail call noundef ptr %i.dr(ptr noundef nonnull align 8 dereferenceable(64) %i.dn, i64 noundef %.0110) ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !15, !noalias !114
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 416
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !114
  %i.dw = tail call noundef ptr %i.dv(ptr noundef nonnull align 8 dereferenceable(40) %i.ds), !noalias !114, !inline_history !97 ; 2 uses
  %6 = load ptr, ptr %i.do, align 8, !tbaa !105   ; 4 uses
  %7 = load ptr, ptr %i.bt, align 8, !tbaa !106
  %.not.i.i58 = icmp eq ptr %6, %7
  br i1 %.not.i.i58, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.dw, ptr %6, align 8, !tbaa !98
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.dx, ptr %i.do, align 8, !tbaa !105
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit70

bb.y:                                             ; preds = %bb.w
  %8 = load ptr, ptr %i.bq, align 8, !tbaa !102   ; 4 uses
  %i.dy = ptrtoint ptr %6 to i64
  %i.dz = ptrtoint ptr %8 to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 5 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775800
  br i1 %i.eb, label %.noexc65, label %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i59

.noexc65:                                         ; preds = %bb.y
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #29
  unreachable

_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i59: ; preds = %bb.y
  %i.ec = ashr exact i64 %i.ea, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i60 = tail call i64 @llvm.umax.i64(i64 %i.ec, i64 1)
  %i.ed = add nsw i64 %.sroa.speculated.i.i.i.i60, %i.ec ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.ec
  %i.ef = tail call i64 @llvm.umin.i64(i64 %i.ed, i64 1152921504606846975)
  %i.eg = select i1 %i.ee, i64 1152921504606846975, i64 %i.ef ; 3 uses
  %.not.i.i.i.i61 = icmp ne i64 %i.eg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i61)
  %i.eh = shl nuw nsw i64 %i.eg, 3
  %i.ei = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #26 ; 4 uses
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 %i.ea ; 2 uses
  store ptr %i.dw, ptr %i.ej, align 8, !tbaa !98
  %i.ek = icmp sgt i64 %i.ea, 0
  br i1 %i.ek, label %bb.z, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i62

bb.z:                                             ; preds = %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i59
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr align 8 %8, i64 %i.ea, i1 false)
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i62

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i62: ; preds = %bb.z, %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i59
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.not.i17.i.i.i63 = icmp eq ptr %8, null
  br i1 %.not.i17.i.i.i63, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i64, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i62
  tail call void @_ZdlPv(ptr noundef nonnull %8) #25
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i64

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i64: ; preds = %bb.aa, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i62
  store ptr %i.ei, ptr %i.bq, align 8, !tbaa !102
  store ptr %i.el, ptr %i.do, align 8, !tbaa !105
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eg
  store ptr %i.em, ptr %i.bt, align 8, !tbaa !106
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit70

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit70: ; preds = %bb.x, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i64
  %i.en = add nuw i64 %.0110, 1                   ; 2 uses
  %exitcond114.not = icmp eq i64 %i.en, %i.bp
  br i1 %exitcond114.not, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit86, label %bb.w, !llvm.loop !117

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit54
  %i.eo = load ptr, ptr %2, align 8, !tbaa !15, !noalias !118
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 416
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !118
  %i.er = tail call noundef ptr %i.eq(ptr noundef nonnull align 8 dereferenceable(40) %2), !noalias !118, !inline_history !97 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %.not.i.i74 = icmp eq ptr %i.dm, %i.dl
  br i1 %.not.i.i74, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.er, ptr %i.dm, align 8, !tbaa !98
  %i.et = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.et, ptr %i.es, align 8, !tbaa !105
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit86

bb.ad:                                            ; preds = %bb.ab
  %9 = load ptr, ptr %i.bq, align 8, !tbaa !102   ; 4 uses
  %i.eu = ptrtoint ptr %i.dl to i64
  %i.ev = ptrtoint ptr %9 to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 5 uses
  %i.ex = icmp eq i64 %i.ew, 9223372036854775800
  br i1 %i.ex, label %.noexc81, label %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i75

.noexc81:                                         ; preds = %bb.ad
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #29
  unreachable

_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i75: ; preds = %bb.ad
  %i.ey = ashr exact i64 %i.ew, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i76 = tail call i64 @llvm.umax.i64(i64 %i.ey, i64 1)
  %i.ez = add nsw i64 %.sroa.speculated.i.i.i.i76, %i.ey ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ey
  %i.fb = tail call i64 @llvm.umin.i64(i64 %i.ez, i64 1152921504606846975)
  %i.fc = select i1 %i.fa, i64 1152921504606846975, i64 %i.fb ; 3 uses
  %.not.i.i.i.i77 = icmp ne i64 %i.fc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i77)
  %i.fd = shl nuw nsw i64 %i.fc, 3
  %i.fe = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fd) #26 ; 4 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 %i.ew ; 2 uses
  store ptr %i.er, ptr %i.ff, align 8, !tbaa !98
  %i.fg = icmp sgt i64 %i.ew, 0
  br i1 %i.fg, label %bb.ae, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i78

bb.ae:                                            ; preds = %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i75
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fe, ptr align 8 %9, i64 %i.ew, i1 false)
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i78

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i78: ; preds = %bb.ae, %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i75
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.not.i17.i.i.i79 = icmp eq ptr %9, null
  br i1 %.not.i17.i.i.i79, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i80, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i78
  tail call void @_ZdlPv(ptr noundef nonnull %9) #25
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i80

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i80: ; preds = %bb.af, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i78
  store ptr %i.fe, ptr %i.bq, align 8, !tbaa !102
  store ptr %i.fh, ptr %i.es, align 8, !tbaa !105
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fc
  store ptr %i.fi, ptr %i.bt, align 8, !tbaa !106
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit86

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit86: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit70, %.preheader, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i80, %bb.ac
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !20
  %i.fl = tail call noundef ptr @_ZNK4geos4geom15GeometryFactory13buildGeometryEPSt6vectorIPNS0_8GeometryESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(45) %i.fk, ptr noundef nonnull %i.bq)
  store ptr %i.fl, ptr %0, align 8, !tbaa !98
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit
  tail call void @_ZN4geos4geom16HeuristicOverlayEPKNS0_8GeometryES3_i(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 2)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit86, %bb.i, %bb.g, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #8

declare noundef ptr @_ZNK4geos4geom15GeometryFactory13buildGeometryEPSt6vectorIPNS0_8GeometryESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(45), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom8Geometry5UnionEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4geos9operation9overlayng15OverlayNGRobust5UnionEPKNS_4geom8GeometryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8 %0, ptr noundef nonnull %1)
  ret void
}

declare void @_ZN4geos9operation9overlayng15OverlayNGRobust5UnionEPKNS_4geom8GeometryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom8Geometry10differenceEPKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  tail call void @_ZN4geos9operation7overlay9OverlayOp17createEmptyResultENS2_6OpCodeEPKNS_4geom8GeometryES7_PKNS4_15GeometryFactoryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8 %0, i32 noundef 3, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.f)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(40) %2)
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.k = load ptr, ptr %1, align 8, !tbaa !15, !noalias !121
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 416
  %i.m = load ptr, ptr %i.l, align 8, !noalias !121
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(40) %1), !noalias !121, !inline_history !97
  store ptr %i.n, ptr %0, align 8, !tbaa !98, !alias.scope !121
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4geos4geom16HeuristicOverlayEPKNS0_8GeometryES3_i(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 3)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom8Geometry13symDifferenceEPKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(40) %2)
  br i1 %i.h, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %2, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(40) %2)
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20
  tail call void @_ZN4geos9operation7overlay9OverlayOp17createEmptyResultENS2_6OpCodeEPKNS_4geom8GeometryES7_PKNS4_15GeometryFactoryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8 %0, i32 noundef 4, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %i.r)
  br label %bb.ah

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.s = load ptr, ptr %1, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.w = load ptr, ptr %2, align 8, !tbaa !15, !noalias !124
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 416
  %i.y = load ptr, ptr %i.x, align 8, !noalias !124
  %i.z = tail call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(40) %2), !noalias !124, !inline_history !97
  store ptr %i.z, ptr %0, align 8, !tbaa !98, !alias.scope !124
  br label %bb.ah

bb.h:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %2, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(40) %2)
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.ae = load ptr, ptr %1, align 8, !tbaa !15, !noalias !127
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 416
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !127
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(40) %1), !noalias !127, !inline_history !97
  store ptr %i.ah, ptr %0, align 8, !tbaa !98, !alias.scope !127
  br label %bb.ah

bb.j:                                             ; preds = %bb.h, %bb.b
  %i.ai = load ptr, ptr %1, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 176
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 4 uses
  %i.am = load ptr, ptr %2, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 176
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(40) %2) ; 4 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !62
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !64
  %i.at = fcmp ugt double %i.aq, %i.as
  br i1 %i.at, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !64
  %i.aw = load double, ptr %i.al, align 8, !tbaa !62
  %i.ax = fcmp ult double %i.av, %i.aw
  br i1 %i.ax, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.az = load double, ptr %i.ay, align 8, !tbaa !65
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !66
  %i.bc = fcmp ugt double %i.az, %i.bb
  br i1 %i.bc, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit

_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit:   ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.be = load double, ptr %i.bd, align 8, !tbaa !66
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !65
  %i.bh = fcmp ult double %i.be, %i.bg
  br i1 %i.bh, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %bb.ag

_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread: ; preds = %bb.j, %bb.k, %bb.l, %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit
  %i.bi = load ptr, ptr %1, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef i64 %i.bk(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 3 uses
  %i.bm = load ptr, ptr %2, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef i64 %i.bo(ptr noundef nonnull align 8 dereferenceable(40) %2) ; 3 uses
  %i.bq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 16 uses
  %i.br = add i64 %i.bp, %i.bl                    ; 4 uses
  %i.bs = icmp ugt i64 %i.br, 1152921504606846975
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i8 0, i64 24, i1 false)
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #29
  unreachable

bb.n:                                             ; preds = %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 7 uses
  %.not137 = icmp eq i64 %i.br, 0
  br i1 %.not137, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bv = shl nuw nsw i64 %i.br, 3
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #26 ; 4 uses
  store ptr %i.bw, ptr %i.bq, align 8, !tbaa !102
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !105
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.br ; 2 uses
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !106
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit: ; preds = %bb.n, %_ZNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE11_M_allocateEm.exit.i
  %i.by = phi ptr [ null, %bb.n ], [ %i.bx, %_ZNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE11_M_allocateEm.exit.i ] ; 4 uses
  %i.bz = phi ptr [ null, %bb.n ], [ %i.bw, %_ZNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE11_M_allocateEm.exit.i ] ; 5 uses
  %i.ca = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom18GeometryCollectionE, i64 0) #27 ; 3 uses
  %.not = icmp eq ptr %i.ca, null
  br i1 %.not, label %bb.t, label %.preheader107

.preheader107:                                    ; preds = %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit
  %.not111 = icmp eq i64 %i.bl, 0
  br i1 %.not111, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit53, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader107
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit
  %.032108 = phi i64 [ 0, %.lr.ph ], [ %i.dc, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call noundef ptr %i.ce(ptr noundef nonnull align 8 dereferenceable(64) %i.ca, i64 noundef %.032108) ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !15, !noalias !130
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 416
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !130
  %i.cj = tail call noundef ptr %i.ci(ptr noundef nonnull align 8 dereferenceable(40) %i.cf), !noalias !130, !inline_history !97 ; 2 uses
  %3 = load ptr, ptr %i.cb, align 8, !tbaa !105   ; 4 uses
  %4 = load ptr, ptr %i.bt, align 8, !tbaa !106   ; 2 uses
  %.not.i.i = icmp eq ptr %3, %4
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.cj, ptr %3, align 8, !tbaa !98
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.ck, ptr %i.cb, align 8, !tbaa !105
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %5 = load ptr, ptr %i.bq, align 8, !tbaa !102   ; 4 uses
  %i.cl = ptrtoint ptr %3 to i64
  %i.cm = ptrtoint ptr %5 to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 5 uses
  %i.co = icmp eq i64 %i.cn, 9223372036854775800
  br i1 %i.co, label %.noexc, label %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

.noexc:                                           ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #29
  unreachable

_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.cp = ashr exact i64 %i.cn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 1)
  %i.cq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cp ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cp
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 1152921504606846975)
  %i.ct = select i1 %i.cr, i64 1152921504606846975, i64 %i.cs ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ct, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cu = shl nuw nsw i64 %i.ct, 3
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #26 ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 %i.cn ; 2 uses
  store ptr %i.cj, ptr %i.cw, align 8, !tbaa !98
  %i.cx = icmp sgt i64 %i.cn, 0
  br i1 %i.cx, label %bb.r, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cv, ptr align 8 %5, i64 %i.cn, i1 false)
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.r, %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %5) #25
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.cv, ptr %i.bq, align 8, !tbaa !102
  store ptr %i.cy, ptr %i.cb, align 8, !tbaa !105
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ct ; 2 uses
  store ptr %i.cz, ptr %i.bt, align 8, !tbaa !106
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.p, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.da = phi ptr [ %4, %bb.p ], [ %i.cz, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.db = phi ptr [ %i.ck, %bb.p ], [ %i.cy, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.dc = add nuw i64 %.032108, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dc, %i.bl
  br i1 %exitcond.not, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit53, label %bb.o, !llvm.loop !133

bb.t:                                             ; preds = %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit
  %i.dd = load ptr, ptr %1, align 8, !tbaa !15, !noalias !134
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 416
  %i.df = load ptr, ptr %i.de, align 8, !noalias !134
  %i.dg = tail call noundef ptr %i.df(ptr noundef nonnull align 8 dereferenceable(40) %1), !noalias !134, !inline_history !97 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.bz, %i.by
  br i1 %.not.i.i41, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i45, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.dg, ptr %i.bz, align 8, !tbaa !98
  %i.di = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !105
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit53

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i45: ; preds = %bb.t
  %i.dj = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26 ; 3 uses
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !98
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %.not.i17.i.i.i46 = icmp eq ptr %i.by, null
  br i1 %.not.i17.i.i.i46, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i47, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i45
  tail call void @_ZdlPv(ptr noundef nonnull %i.bz) #25
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i47

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i47: ; preds = %bb.v, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i45
  store ptr %i.dj, ptr %i.bq, align 8, !tbaa !102
  store ptr %i.dk, ptr %i.dh, align 8, !tbaa !105
  store ptr %i.dk, ptr %i.bt, align 8, !tbaa !106
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit53

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit53: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, %.preheader107, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i47, %bb.u
  %i.dl = phi ptr [ %i.by, %bb.u ], [ %i.by, %.preheader107 ], [ %i.dk, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i47 ], [ %i.da, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.dm = phi ptr [ %i.di, %bb.u ], [ %i.bz, %.preheader107 ], [ %i.dk, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i47 ], [ %i.db, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit ] ; 3 uses
  %i.dn = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom18GeometryCollectionE, i64 0) #27 ; 3 uses
  %.not35 = icmp eq ptr %i.dn, null
  br i1 %.not35, label %bb.ab, label %.preheader

.preheader:                                       ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit53
  %.not112 = icmp eq i64 %i.bp, 0
  br i1 %.not112, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit85, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader
  %i.do = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph110, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit69
  %.0109 = phi i64 [ 0, %.lr.ph110 ], [ %i.en, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit69 ] ; 2 uses
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !15
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 88
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = tail call noundef ptr %i.dr(ptr noundef nonnull align 8 dereferenceable(64) %i.dn, i64 noundef %.0109) ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !15, !noalias !137
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 416
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !137
  %i.dw = tail call noundef ptr %i.dv(ptr noundef nonnull align 8 dereferenceable(40) %i.ds), !noalias !137, !inline_history !97 ; 2 uses
  %6 = load ptr, ptr %i.do, align 8, !tbaa !105   ; 4 uses
  %7 = load ptr, ptr %i.bt, align 8, !tbaa !106
  %.not.i.i57 = icmp eq ptr %6, %7
  br i1 %.not.i.i57, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.dw, ptr %6, align 8, !tbaa !98
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.dx, ptr %i.do, align 8, !tbaa !105
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit69

bb.y:                                             ; preds = %bb.w
  %8 = load ptr, ptr %i.bq, align 8, !tbaa !102   ; 4 uses
  %i.dy = ptrtoint ptr %6 to i64
  %i.dz = ptrtoint ptr %8 to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 5 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775800
  br i1 %i.eb, label %.noexc64, label %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i58

.noexc64:                                         ; preds = %bb.y
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #29
  unreachable

_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i58: ; preds = %bb.y
  %i.ec = ashr exact i64 %i.ea, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i59 = tail call i64 @llvm.umax.i64(i64 %i.ec, i64 1)
  %i.ed = add nsw i64 %.sroa.speculated.i.i.i.i59, %i.ec ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.ec
  %i.ef = tail call i64 @llvm.umin.i64(i64 %i.ed, i64 1152921504606846975)
  %i.eg = select i1 %i.ee, i64 1152921504606846975, i64 %i.ef ; 3 uses
  %.not.i.i.i.i60 = icmp ne i64 %i.eg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i60)
  %i.eh = shl nuw nsw i64 %i.eg, 3
  %i.ei = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #26 ; 4 uses
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 %i.ea ; 2 uses
  store ptr %i.dw, ptr %i.ej, align 8, !tbaa !98
  %i.ek = icmp sgt i64 %i.ea, 0
  br i1 %i.ek, label %bb.z, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i61

bb.z:                                             ; preds = %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i58
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr align 8 %8, i64 %i.ea, i1 false)
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i61

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i61: ; preds = %bb.z, %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i58
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.not.i17.i.i.i62 = icmp eq ptr %8, null
  br i1 %.not.i17.i.i.i62, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i63, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i61
  tail call void @_ZdlPv(ptr noundef nonnull %8) #25
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i63

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i63: ; preds = %bb.aa, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i61
  store ptr %i.ei, ptr %i.bq, align 8, !tbaa !102
  store ptr %i.el, ptr %i.do, align 8, !tbaa !105
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eg
  store ptr %i.em, ptr %i.bt, align 8, !tbaa !106
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit69

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit69: ; preds = %bb.x, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i63
  %i.en = add nuw i64 %.0109, 1                   ; 2 uses
  %exitcond113.not = icmp eq i64 %i.en, %i.bp
  br i1 %exitcond113.not, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit85, label %bb.w, !llvm.loop !140

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit53
  %i.eo = load ptr, ptr %2, align 8, !tbaa !15, !noalias !141
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 416
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !141
  %i.er = tail call noundef ptr %i.eq(ptr noundef nonnull align 8 dereferenceable(40) %2), !noalias !141, !inline_history !97 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %.not.i.i73 = icmp eq ptr %i.dm, %i.dl
  br i1 %.not.i.i73, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.er, ptr %i.dm, align 8, !tbaa !98
  %i.et = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.et, ptr %i.es, align 8, !tbaa !105
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit85

bb.ad:                                            ; preds = %bb.ab
  %9 = load ptr, ptr %i.bq, align 8, !tbaa !102   ; 4 uses
  %i.eu = ptrtoint ptr %i.dl to i64
  %i.ev = ptrtoint ptr %9 to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 5 uses
  %i.ex = icmp eq i64 %i.ew, 9223372036854775800
  br i1 %i.ex, label %.noexc80, label %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i74

.noexc80:                                         ; preds = %bb.ad
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #29
  unreachable

_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i74: ; preds = %bb.ad
  %i.ey = ashr exact i64 %i.ew, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i75 = tail call i64 @llvm.umax.i64(i64 %i.ey, i64 1)
  %i.ez = add nsw i64 %.sroa.speculated.i.i.i.i75, %i.ey ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ey
  %i.fb = tail call i64 @llvm.umin.i64(i64 %i.ez, i64 1152921504606846975)
  %i.fc = select i1 %i.fa, i64 1152921504606846975, i64 %i.fb ; 3 uses
  %.not.i.i.i.i76 = icmp ne i64 %i.fc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i76)
  %i.fd = shl nuw nsw i64 %i.fc, 3
  %i.fe = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fd) #26 ; 4 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 %i.ew ; 2 uses
  store ptr %i.er, ptr %i.ff, align 8, !tbaa !98
  %i.fg = icmp sgt i64 %i.ew, 0
  br i1 %i.fg, label %bb.ae, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i77

bb.ae:                                            ; preds = %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i74
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fe, ptr align 8 %9, i64 %i.ew, i1 false)
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i77

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i77: ; preds = %bb.ae, %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i74
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.not.i17.i.i.i78 = icmp eq ptr %9, null
  br i1 %.not.i17.i.i.i78, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i79, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i77
  tail call void @_ZdlPv(ptr noundef nonnull %9) #25
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i79

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i79: ; preds = %bb.af, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i77
  store ptr %i.fe, ptr %i.bq, align 8, !tbaa !102
  store ptr %i.fh, ptr %i.es, align 8, !tbaa !105
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fc
  store ptr %i.fi, ptr %i.bt, align 8, !tbaa !106
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit85

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit85: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit69, %.preheader, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i79, %bb.ac
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !20
  %i.fl = tail call noundef ptr @_ZNK4geos4geom15GeometryFactory13buildGeometryEPSt6vectorIPNS0_8GeometryESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(45) %i.fk, ptr noundef nonnull %i.bq)
  store ptr %i.fl, ptr %0, align 8, !tbaa !98
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit
  tail call void @_ZN4geos4geom16HeuristicOverlayEPKNS0_8GeometryES3_i(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 4)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit85, %bb.i, %bb.g, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK4geos4geom8Geometry9compareToEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.f = load ptr, ptr %1, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 456
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %.not = icmp eq i32 %i.e, %i.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 456
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.n = load ptr, ptr %1, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 456
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.r = tail call i32 @llvm.scmp.i32.i32(i32 %i.m, i32 %i.q)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %1, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.y, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = load ptr, ptr %0, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br i1 %i.ac, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %1, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %0, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 448
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.a, %bb.h, %bb.c
  %.0 = phi i32 [ %i.ak, %bb.h ], [ %i.r, %bb.c ], [ 0, %bb.a ], [ 0, %bb.e ], [ -1, %bb.f ], [ 1, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4geos4geom8Geometry17isEquivalentClassEPKS1_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef readonly captures(address_is_null) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_bad_typeid() #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !15
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %1, align 8, !tbaa !15
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !144  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !144  ; 3 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZNKSt9type_infoeqERKS_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.i, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.m, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.k, align 1, !tbaa !14
  %i.o = icmp eq i8 %i.n, 42
  %.idx.i.i = zext i1 %i.o to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.p) #27
  %i.r = icmp eq i32 %i.q, 0
  br label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ %i.r, %bb.e ]
  ret i1 %.0.i
}

declare void @__cxa_bad_typeid() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom8Geometry26checkNotGeometryCollectionEPKS1_(ptr noundef %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.e = icmp eq i32 %i.d, 7
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !146    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #27
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

end_hunk_0
