inline.NumInlined: 616
inline.NumDeleted: 382
begin_hunk_0_@_ZN4geos9operation10polygonize9BuildArea5buildEPKNS_4geom8GeometryE:bb.a
bb.n:                                             ; preds = %bb.h, %_ZNSt10unique_ptrIN4geos4geom15GeometryFactoryENS2_22GeometryFactoryDeleterEED2Ev.exit
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %.not.i32 = icmp eq ptr %i.w, null
  br i1 %.not.i32, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i: ; preds = %bb.n
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.w) #14, !inline_history !20
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit

bb.o:                                             ; preds = %bb.c
  %i.aa = ptrtoint ptr %i.c to i64
  %i.ab = ptrtoint ptr %i.a to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp eq i64 %i.ac, 8
  br i1 %i.ad, label %bb.p, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !21
  store ptr %i.ae, ptr %0, align 8, !tbaa !14
  %i.af = load ptr, ptr %2, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef i32 %i.ah(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i32 noundef %i.ai)
          to label %bb.bj unwind label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %0, align 8, !tbaa !17    ; 3 uses
  %.not.i33 = icmp eq ptr %i.an, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i34

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i34: ; preds = %bb.r
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.an) #14, !inline_history !20
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit

.lr.ph:                                           ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EED2Ev.exit
  %.pre = load ptr, ptr %10, align 8, !tbaa !23   ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.not.i.i.i = icmp eq ptr %.pre, %i.hj
  br i1 %.not.i.i.i, label %_ZN4geos9operation10polygonizeL13findFaceHolesERSt6vectorISt10unique_ptrINS1_4FaceESt14default_deleteIS4_EESaIS7_EE.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS5_16CompareByEnvareaEEvT_SG_T0_.exit.i

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS5_16CompareByEnvareaEEvT_SG_T0_.exit.i: ; preds = %._crit_edge
  %i.au = ptrtoint ptr %i.hj to i64
  %i.av = ptrtoint ptr %.pre to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3
  %i.ay = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ax, i1 true)
  %i.az = shl nuw nsw i64 %i.ay, 1
  %i.ba = xor i64 %i.az, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_T0_T1_(ptr %.pre, ptr nonnull %i.hj, i64 noundef %i.ba)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS5_16CompareByEnvareaEEvT_SG_T0_.exit.i
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_T0_(ptr %.pre, ptr nonnull %i.hj)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc37:                                         ; preds = %.noexc
  %.pre.i = load ptr, ptr %i.at, align 8, !tbaa !25 ; 4 uses
  %.pre62.i = load ptr, ptr %10, align 8, !tbaa !27 ; 7 uses
  %i.bb = ptrtoint ptr %.pre.i to i64
  %i.bc = ptrtoint ptr %.pre62.i to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.not.i36 = icmp eq ptr %.pre.i, %.pre62.i
  br i1 %.not.i36, label %_ZN4geos9operation10polygonizeL13findFaceHolesERSt6vectorISt10unique_ptrINS1_4FaceESt14default_deleteIS4_EESaIS7_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc37, %._crit_edge.i
  %.049.i = phi i64 [ %.pre63.i, %._crit_edge.i ], [ 0, %.noexc37 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.pre62.i, i64 %.049.i ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !28
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !30
  %i.bi = invoke noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bh)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc38:                                         ; preds = %.lr.ph.i
  %.not51.i = icmp eq i64 %i.bi, 0
  %.pre63.i = add nuw i64 %.049.i, 1              ; 4 uses
  br i1 %.not51.i, label %._crit_edge.i, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.noexc38
  %i.bj = icmp ult i64 %.pre63.i, %i.be
  %.fr.i = freeze i1 %i.bj
  br i1 %.fr.i, label %.lr.ph.us.i, label %.loopexit36.i

.lr.ph.us.i:                                      ; preds = %.lr.ph48.i, %..loopexit36_crit_edge.us.i
  %.02947.us.i = phi i64 [ %i.ee, %..loopexit36_crit_edge.us.i ], [ 0, %.lr.ph48.i ] ; 2 uses
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !28
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !30
  %i.bm = invoke noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72) %i.bl, i64 noundef %.02947.us.i)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc39:                                         ; preds = %.lr.ph.us.i, %.loopexit.us.i
  %.02846.us.i = phi i64 [ %.028.us.i, %.loopexit.us.i ], [ %.pre63.i, %.lr.ph.us.i ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.pre62.i, i64 %.02846.us.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !28 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !38
  %.not.us.i = icmp eq ptr %i.bq, null
  br i1 %.not.us.i, label %bb.s, label %.loopexit.us.i

bb.s:                                             ; preds = %.noexc39
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !30
  %i.bs = invoke noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %i.br)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc40:                                         ; preds = %bb.s
  %i.bt = invoke noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bs)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 8 uses

.noexc41:                                         ; preds = %.noexc40
  %i.bu = invoke noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bm)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 7 uses

.noexc42:                                         ; preds = %.noexc41
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = invoke noundef i64 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !39 ; 3 uses

.noexc43:                                         ; preds = %.noexc42
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = invoke noundef i64 %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !39

.noexc44:                                         ; preds = %.noexc43
  %.not.i.us.i = icmp eq i64 %i.by, %i.cc
  br i1 %.not.i.us.i, label %bb.t, label %.loopexit.us.i

bb.t:                                             ; preds = %.noexc44
  %i.cd = icmp eq i64 %i.by, 0
  br i1 %i.cd, label %_ZN4geos9operation10polygonizeL22ringsEqualAnyDirectionEPKNS_4geom10LinearRingES5_.exit.us.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = load ptr, ptr %i.bs, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 176
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef ptr %i.cg(ptr noundef nonnull align 8 dereferenceable(40) %i.bs)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !39

.noexc45:                                         ; preds = %bb.u
  %i.ci = load ptr, ptr %i.bm, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 176
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(40) %i.bm)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !39

.noexc46:                                         ; preds = %.noexc45
  %i.cm = invoke noundef zeroext i1 @_ZNK4geos4geom8Envelope6equalsEPKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef %i.cl)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc47:                                         ; preds = %.noexc46
  br i1 %i.cm, label %bb.v, label %.loopexit.us.i

bb.v:                                             ; preds = %.noexc47
  %i.cn = add i64 %i.by, -1                       ; 5 uses
  %i.co = load ptr, ptr %i.bt, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, i64 noundef 0)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !39

.noexc48:                                         ; preds = %bb.v
  %i.cs = invoke noundef i64 @_ZN4geos4geom18CoordinateSequence7indexOfEPKNS0_10CoordinateEPKS1_(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.bu)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc49:                                         ; preds = %.noexc48
  %i.ct = icmp eq i64 %i.cs, -1
  br i1 %i.ct, label %.loopexit.us.i, label %.preheader61.i.us.i

.preheader61.i.us.i:                              ; preds = %.noexc49
  %.not6063.i.us.i = icmp ugt i64 %i.cn, 1
  br i1 %.not6063.i.us.i, label %.lr.ph.i.us.i, label %_ZN4geos9operation10polygonizeL22ringsEqualAnyDirectionEPKNS_4geom10LinearRingES5_.exit.us.i

.lr.ph.i.us.i:                                    ; preds = %.preheader61.i.us.i, %bb.w
  %.05364.i.us.i = phi i64 [ %i.dy, %bb.w ], [ 1, %.preheader61.i.us.i ] ; 3 uses
  %i.cu = load ptr, ptr %i.bt, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, i64 noundef %.05364.i.us.i)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit, !inline_history !39

.noexc50:                                         ; preds = %.lr.ph.i.us.i
  %i.cy = add i64 %.05364.i.us.i, %i.cs
  %i.cz = urem i64 %i.cy, %i.cn
  %i.da = load ptr, ptr %i.bu, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i64 noundef %i.cz)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit, !inline_history !39

.noexc51:                                         ; preds = %.noexc50
  %i.de = load <2 x double>, ptr %i.cx, align 8
  %i.df = load <2 x double>, ptr %i.dd, align 8
  %i.dg = fcmp oeq <2 x double> %i.de, %i.df      ; 2 uses
  %i.dh = extractelement <2 x i1> %i.dg, i64 0
  %i.di = extractelement <2 x i1> %i.dg, i64 1
  %.0.i.i.i.us.i = select i1 %i.dh, i1 %i.di, i1 false
  br i1 %.0.i.i.i.us.i, label %bb.w, label %.lr.ph66.i.us.i

.lr.ph66.i.us.i:                                  ; preds = %.noexc51, %13
  %.04765.i.us.i = phi i64 [ %14, %13 ], [ 1, %.noexc51 ] ; 4 uses
  %i.dj = load ptr, ptr %i.bt, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, i64 noundef %.04765.i.us.i)
          to label %.noexc52 unwind label %.loopexit, !inline_history !39

.noexc52:                                         ; preds = %.lr.ph66.i.us.i
  %i.dn = sub i64 %i.cs, %.04765.i.us.i
  %.not58.i.us.i = icmp ugt i64 %.04765.i.us.i, %i.cs
  %i.do = select i1 %.not58.i.us.i, i64 %i.cn, i64 0
  %.046.i.us.i = add i64 %i.dn, %i.do
  %i.dp = load ptr, ptr %i.bu, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i64 noundef %.046.i.us.i)
          to label %.noexc53 unwind label %.loopexit, !inline_history !39

.noexc53:                                         ; preds = %.noexc52
  %i.dt = load <2 x double>, ptr %i.dm, align 8
  %i.du = load <2 x double>, ptr %i.ds, align 8
  %i.dv = fcmp oeq <2 x double> %i.dt, %i.du      ; 2 uses
  %i.dw = extractelement <2 x i1> %i.dv, i64 0
  %i.dx = extractelement <2 x i1> %i.dv, i64 1
  %.0.i.i59.i.us.i = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %.0.i.i59.i.us.i, label %13, label %.loopexit.us.i

13:                                               ; preds = %.noexc53
  %14 = add nuw i64 %.04765.i.us.i, 1             ; 2 uses
  %exitcond71.not.i.us.i = icmp eq i64 %14, %i.cn
  br i1 %exitcond71.not.i.us.i, label %_ZN4geos9operation10polygonizeL22ringsEqualAnyDirectionEPKNS_4geom10LinearRingES5_.exit.us.i, label %.lr.ph66.i.us.i, !llvm.loop !40

bb.w:                                             ; preds = %.noexc51
  %i.dy = add nuw i64 %.05364.i.us.i, 1           ; 2 uses
  %exitcond.not.i.us.i.a = icmp eq i64 %i.dy, %i.cn
  br i1 %exitcond.not.i.us.i.a, label %_ZN4geos9operation10polygonizeL22ringsEqualAnyDirectionEPKNS_4geom10LinearRingES5_.exit.us.i, label %.lr.ph.i.us.i, !llvm.loop !42

.loopexit.us.i:                                   ; preds = %.noexc53, %.noexc49, %.noexc47, %.noexc44, %.noexc39
  %.028.us.i = add i64 %.02846.us.i, 1            ; 2 uses
  %i.dz = icmp ult i64 %.028.us.i, %i.be
  br i1 %i.dz, label %.noexc39, label %..loopexit36_crit_edge.us.i, !llvm.loop !43

_ZN4geos9operation10polygonizeL22ringsEqualAnyDirectionEPKNS_4geom10LinearRingES5_.exit.us.i: ; preds = %bb.t, %.preheader61.i.us.i, %bb.w, %13
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.pre62.i, i64 %.02846.us.i
  %i.eb = load ptr, ptr %i.bf, align 8, !tbaa !28
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !28
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store ptr %i.eb, ptr %i.ed, align 8, !tbaa !38
  br label %..loopexit36_crit_edge.us.i

..loopexit36_crit_edge.us.i:                      ; preds = %.loopexit.us.i, %_ZN4geos9operation10polygonizeL22ringsEqualAnyDirectionEPKNS_4geom10LinearRingES5_.exit.us.i
  %i.ee = add nuw i64 %.02947.us.i, 1             ; 2 uses
  %exitcond60.not.i = icmp eq i64 %i.ee, %i.bi
  br i1 %exitcond60.not.i, label %._crit_edge.i, label %.lr.ph.us.i, !llvm.loop !44

._crit_edge.i:                                    ; preds = %.noexc54, %..loopexit36_crit_edge.us.i, %.noexc38
  %exitcond61.not.i = icmp eq i64 %.pre63.i, %i.be
  br i1 %exitcond61.not.i, label %_ZN4geos9operation10polygonizeL13findFaceHolesERSt6vectorISt10unique_ptrINS1_4FaceESt14default_deleteIS4_EESaIS7_EE.exit, label %.lr.ph.i, !llvm.loop !45

.loopexit36.i:                                    ; preds = %.lr.ph48.i, %.noexc54
  %.02947.i = phi i64 [ %i.ei, %.noexc54 ], [ 0, %.lr.ph48.i ] ; 2 uses
  %i.ef = load ptr, ptr %i.bf, align 8, !tbaa !28
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !30
  %i.eh = invoke noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72) %i.eg, i64 noundef %.02947.i)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc54:                                         ; preds = %.loopexit36.i
  %i.ei = add nuw i64 %.02947.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ei, %i.bi
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.loopexit36.i, !llvm.loop !44

bb.x:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EED2Ev.exit
  %i.ej = phi ptr [ null, %.lr.ph ], [ %i.hh, %_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EED2Ev.exit ] ; 13 uses
  %i.ek = phi ptr [ null, %.lr.ph ], [ %i.hi, %_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EED2Ev.exit ] ; 5 uses
  %i.el = phi ptr [ null, %.lr.ph ], [ %i.hj, %_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EED2Ev.exit ] ; 3 uses
  %.sroa.090.0126 = phi ptr [ %i.a, %.lr.ph ], [ %i.hk, %_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.em = load ptr, ptr %.sroa.090.0126, align 8, !tbaa !21 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.en = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #16
          to label %.noexc55 unwind label %bb.ah  ; 4 uses

.noexc55:                                         ; preds = %bb.x
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, i8 0, i64 24, i1 false), !noalias !46
  store ptr %i.en, ptr %11, align 8, !tbaa !28, !alias.scope !46
  store ptr %i.em, ptr %i.en, align 8, !tbaa !30, !noalias !46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14, !noalias !46
  %i.ep = load ptr, ptr %i.em, align 8, !tbaa !18, !noalias !46
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 168
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !46
  invoke void %i.er(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %i.em)
          to label %bb.y unwind label %bb.z, !noalias !46

bb.y:                                             ; preds = %.noexc55
  %i.es = load ptr, ptr %5, align 8, !tbaa !17, !noalias !46
  store ptr null, ptr %5, align 8, !tbaa !17, !noalias !46
  %i.et = load ptr, ptr %i.eo, align 8, !tbaa !17, !noalias !46 ; 3 uses
  store ptr %i.es, ptr %i.eo, align 8, !tbaa !17, !noalias !46
  %.not.i.i.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i: ; preds = %bb.y
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !18, !noalias !46
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !noalias !46
  call void %i.ew(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.et) #14, !noalias !46, !inline_history !49
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !17, !noalias !46 ; 3 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i
  %i.ex = load ptr, ptr %.pr.i, align 8, !tbaa !18, !noalias !46
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !46
  call void %i.ez(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.pr.i) #14, !noalias !46, !inline_history !50
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14, !noalias !46
  %i.fa = load ptr, ptr %i.eo, align 8, !tbaa !17, !noalias !46 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !18, !noalias !46
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 368
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !46
  %i.fe = invoke noundef double %i.fd(ptr noundef nonnull align 8 dereferenceable(40) %i.fa)
          to label %bb.ac unwind label %bb.aa, !noalias !46

bb.z:                                             ; preds = %.noexc55
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14, !noalias !46
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn.i = phi { ptr, i32 } [ %i.fg, %bb.aa ], [ %i.ff, %bb.z ]
  call void @_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #14
  br label %.body

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store double %i.fe, ptr %i.fh, align 8, !tbaa !51, !noalias !46
  %.not.i56 = icmp eq ptr %i.el, %i.ek
  br i1 %.not.i56, label %bb.ad, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEEvDpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEEvDpOT_.exit.thread: ; preds = %bb.ac
  %i.fi = load i64, ptr %11, align 8, !tbaa !28
  store i64 %i.fi, ptr %i.el, align 8, !tbaa !28
  %i.fj = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  store ptr %i.fj, ptr %i.ar, align 8, !tbaa !25
  br label %_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fk = ptrtoint ptr %i.ek to i64               ; 3 uses
  %i.fl = ptrtoint ptr %i.ej to i64               ; 3 uses
  %i.fm = sub i64 %i.fk, %i.fl                    ; 3 uses
  %i.fn = icmp eq i64 %i.fm, 9223372036854775800
  br i1 %i.fn, label %bb.ae, label %_ZNKSt6vectorISt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
          to label %.noexc58 unwind label %.loopexit.split-lp112

.noexc58:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.fo = ashr exact i64 %i.fm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fo, i64 1)
  %i.fp = add nsw i64 %.sroa.speculated.i.i.i, %i.fo ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.fo
  %i.fr = call i64 @llvm.umin.i64(i64 %i.fp, i64 1152921504606846975)
  %i.fs = select i1 %i.fq, i64 1152921504606846975, i64 %i.fr ; 3 uses
  %.not.i.i.i57 = icmp ne i64 %i.fs, 0
  call void @llvm.assume(i1 %.not.i.i.i57)
  %i.ft = shl nuw nsw i64 %i.fs, 3
  %i.fu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ft) #16
          to label %.noexc59 unwind label %.loopexit111 ; 14 uses

.noexc59:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fm
  %i.fw = load i64, ptr %11, align 8, !tbaa !28
  store i64 %i.fw, ptr %i.fv, align 8, !tbaa !28
  store ptr null, ptr %11, align 8, !tbaa !28
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ej, %i.ek
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc59
  %i.fx = add i64 %i.fk, -8
  %i.fy = sub i64 %i.fx, %i.fl                    ; 3 uses
  %i.fz = lshr i64 %i.fy, 3
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.fy, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.fu, i64 8
  %i.gb = add i64 %i.fk, -8
  %i.gc = sub i64 %i.gb, %i.fl
  %i.gd = and i64 %i.gc, -8                       ; 2 uses
  %scevgep235 = getelementptr i8, ptr %scevgep, i64 %i.gd
  %scevgep236 = getelementptr i8, ptr %i.ej, i64 8
  %scevgep237 = getelementptr i8, ptr %scevgep236, i64 %i.gd
  %bound0 = icmp ult ptr %i.fu, %scevgep237
  %bound1 = icmp ult ptr %i.ej, %scevgep235
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check238 = icmp ult i64 %i.fy, 120
  br i1 %min.iters.check238, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ga, 12
  %n.vec = and i64 %i.ga, 4611686018427387888     ; 4 uses
  %i.ge = shl i64 %n.vec, 3                       ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fu, i64 %i.ge  ; 2 uses
  %i.gg = getelementptr i8, ptr %i.ej, i64 %i.ge
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fu, i64 %i.gh ; 4 uses
  %next.gep239 = getelementptr i8, ptr %i.ej, i64 %i.gh ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.gi = getelementptr i8, ptr %next.gep239, i64 32
  %i.gj = getelementptr i8, ptr %next.gep239, i64 64
  %i.gk = getelementptr i8, ptr %next.gep239, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep239, align 8, !tbaa !28, !alias.scope !57, !noalias !52
  %wide.load240 = load <4 x i64>, ptr %i.gi, align 8, !tbaa !28, !alias.scope !57, !noalias !52
  %wide.load241 = load <4 x i64>, ptr %i.gj, align 8, !tbaa !28, !alias.scope !57, !noalias !52
  %wide.load242 = load <4 x i64>, ptr %i.gk, align 8, !tbaa !28, !alias.scope !57, !noalias !52
  %i.gl = getelementptr i8, ptr %next.gep, i64 32
  %i.gm = getelementptr i8, ptr %next.gep, i64 64
  %i.gn = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !28, !alias.scope !60, !noalias !57
  store <4 x i64> %wide.load240, ptr %i.gl, align 8, !tbaa !28, !alias.scope !60, !noalias !57
end_hunk_0
