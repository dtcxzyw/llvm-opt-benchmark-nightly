inline.NumInlined: 197
inline.NumDeleted: 89
begin_hunk_0_@_ZN4geos2io9WKBWriter12writePolygonERKNS_4geom7PolygonE:bb.a
bb.c:                                             ; preds = %_ZN4geos2io9WKBWriter9writeSRIDEi.exit
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !12
  tail call void @_ZN4geos2io15ByteOrderValues6putIntEiPhi(i32 noundef 0, ptr noundef nonnull %i.d, i32 noundef %i.ad)
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.d, i64 noundef 4) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %_ZN4geos2io9WKBWriter9writeSRIDEi.exit
  %i.ag = tail call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1) ; 3 uses
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = add i32 %i.ah, 1
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !12
  tail call void @_ZN4geos2io15ByteOrderValues6putIntEiPhi(i32 noundef %i.ai, ptr noundef nonnull %i.d, i32 noundef %i.aj)
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull %i.d, i64 noundef 4) ; 0 uses
  %i.am = tail call noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.an = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %i.am) ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an), !inline_history !32 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !21
  %i.au = icmp ugt i8 %i.at, 2
  %i.av = trunc i64 %i.ar to i32
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !12
  tail call void @_ZN4geos2io15ByteOrderValues6putIntEiPhi(i32 noundef %i.av, ptr noundef nonnull %i.d, i32 noundef %i.aw)
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull %i.d, i64 noundef 4) ; 0 uses
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.09.i = phi i64 [ %i.az, %.lr.ph.i ], [ 0, %bb.d ] ; 2 uses
  tail call void @_ZN4geos2io9WKBWriter15writeCoordinateERKNS_4geom18CoordinateSequenceEmb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.an, i64 noundef %.09.i, i1 noundef zeroext %i.au)
  %i.az = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.az, %i.ar
  br i1 %exitcond.not.i, label %_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb.exit, label %.lr.ph.i, !llvm.loop !33

_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb.exit: ; preds = %.lr.ph.i, %bb.d
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb.exit, %_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb.exit19
  %.020 = phi i64 [ %i.cx, %_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb.exit19 ], [ 0, %_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb.exit ] ; 2 uses
  %i.ba = tail call noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %.020)
  %i.bb = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ba) ; 12 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef i64 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb), !inline_history !32 ; 4 uses
  %i.bg = load i8, ptr %i.as, align 1, !tbaa !21
  %i.bh = trunc i64 %i.bf to i32
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !12
  tail call void @_ZN4geos2io15ByteOrderValues6putIntEiPhi(i32 noundef %i.bh, ptr noundef nonnull %i.d, i32 noundef %i.bi)
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull %i.d, i64 noundef 4) ; 0 uses
  %.not.i15 = icmp eq i64 %i.bf, 0
  br i1 %.not.i15, label %_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb.exit19, label %.lr.ph.i16.preheader

.lr.ph.i16.preheader:                             ; preds = %.lr.ph
  %.fr21 = freeze i8 %i.bg
  %i.bl = icmp ugt i8 %.fr21, 2
  br i1 %i.bl, label %.lr.ph.i16.us, label %.lr.ph.i16

.lr.ph.i16.us:                                    ; preds = %.lr.ph.i16.preheader, %.lr.ph.i16.us
  %.09.i17.us = phi i64 [ %i.ch, %.lr.ph.i16.us ], [ 0, %.lr.ph.i16.preheader ] ; 4 uses
  %i.bm = load ptr, ptr %i.bb, align 8, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 104
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef double %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i64 noundef %.09.i17.us), !inline_history !35
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !12
  tail call void @_ZN4geos2io15ByteOrderValues9putDoubleEdPhi(double noundef %i.bp, ptr noundef nonnull %i.d, i32 noundef %i.bq)
  %i.br = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull %i.d, i64 noundef 8) ; 0 uses
  %i.bt = load ptr, ptr %i.bb, align 8, !tbaa !26
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 112
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef double %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i64 noundef %.09.i17.us), !inline_history !35
  %i.bx = load i32, ptr %i.a, align 4, !tbaa !12
  tail call void @_ZN4geos2io15ByteOrderValues9putDoubleEdPhi(double noundef %i.bw, ptr noundef nonnull %i.d, i32 noundef %i.bx)
  %i.by = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.bz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull %i.d, i64 noundef 8) ; 0 uses
  %i.ca = load ptr, ptr %i.bb, align 8, !tbaa !26
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call noundef double %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i64 noundef %.09.i17.us, i64 noundef 2), !inline_history !35
  %i.ce = load i32, ptr %i.a, align 4, !tbaa !12
  tail call void @_ZN4geos2io15ByteOrderValues9putDoubleEdPhi(double noundef %i.cd, ptr noundef nonnull %i.d, i32 noundef %i.ce)
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.cg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull %i.d, i64 noundef 8) ; 0 uses
  %i.ch = add nuw i64 %.09.i17.us, 1              ; 2 uses
  %exitcond.not.i18.us = icmp eq i64 %i.ch, %i.bf
  br i1 %exitcond.not.i18.us, label %_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb.exit19, label %.lr.ph.i16.us, !llvm.loop !33

.lr.ph.i16:                                       ; preds = %.lr.ph.i16.preheader, %.lr.ph.i16
  %.09.i17 = phi i64 [ %i.cw, %.lr.ph.i16 ], [ 0, %.lr.ph.i16.preheader ] ; 3 uses
  %i.ci = load ptr, ptr %i.bb, align 8, !tbaa !26
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 104
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = tail call noundef double %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i64 noundef %.09.i17), !inline_history !35
  %i.cm = load i32, ptr %i.a, align 4, !tbaa !12
  tail call void @_ZN4geos2io15ByteOrderValues9putDoubleEdPhi(double noundef %i.cl, ptr noundef nonnull %i.d, i32 noundef %i.cm)
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.co = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull %i.d, i64 noundef 8) ; 0 uses
  %i.cp = load ptr, ptr %i.bb, align 8, !tbaa !26
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 112
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call noundef double %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i64 noundef %.09.i17), !inline_history !35
  %i.ct = load i32, ptr %i.a, align 4, !tbaa !12
  tail call void @_ZN4geos2io15ByteOrderValues9putDoubleEdPhi(double noundef %i.cs, ptr noundef nonnull %i.d, i32 noundef %i.ct)
  %i.cu = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.cv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull %i.d, i64 noundef 8) ; 0 uses
  %i.cw = add nuw i64 %.09.i17, 1                 ; 2 uses
  %exitcond.not.i18 = icmp eq i64 %i.cw, %i.bf
  br i1 %exitcond.not.i18, label %_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb.exit19, label %.lr.ph.i16, !llvm.loop !33

_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb.exit19: ; preds = %.lr.ph.i16, %.lr.ph.i16.us, %.lr.ph
  %i.cx = add nuw i64 %.020, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cx, %i.ag
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !36

.loopexit:                                        ; preds = %_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb.exit19, %_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos2io9WKBWriter23writeGeometryCollectionERKNS_4geom18GeometryCollectionEi(ptr noundef nonnull align 8 dereferenceable(32) initializes((24, 25)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %i.c = icmp eq i32 %i.b, 1
  %spec.select.i = zext i1 %i.c to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store i8 %spec.select.i, ptr %i.d, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(40) %1)
  tail call void @_ZN4geos2io9WKBWriter17writeGeometryTypeEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %2, i32 noundef %i.k)
  %i.l = load ptr, ptr %1, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.q = load i8, ptr %i.p, align 4, !tbaa !14, !range !30, !noundef !31
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = icmp ne i32 %i.o, 0
  %or.cond.i = and i1 %i.s, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp eq i32 %i.u, 1
  %or.cond5.i = select i1 %or.cond.i, i1 %i.v, i1 false
  br i1 %or.cond5.i, label %bb.b, label %_ZN4geos2io9WKBWriter9writeSRIDEi.exit

bb.b:                                             ; preds = %bb.a
  %i.w = load i32, ptr %i.a, align 4, !tbaa !12
  tail call void @_ZN4geos2io15ByteOrderValues6putIntEiPhi(i32 noundef %i.o, ptr noundef nonnull %i.d, i32 noundef %i.w)
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull %i.d, i64 noundef 4) ; 0 uses
  br label %_ZN4geos2io9WKBWriter9writeSRIDEi.exit

_ZN4geos2io9WKBWriter9writeSRIDEi.exit:           ; preds = %bb.a, %bb.b
  %i.z = load ptr, ptr %1, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i64 %i.ab(ptr noundef nonnull align 8 dereferenceable(64) %1) ; 3 uses
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !12
  tail call void @_ZN4geos2io15ByteOrderValues6putIntEiPhi(i32 noundef %i.ad, ptr noundef nonnull %i.d, i32 noundef %i.ae)
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %i.d, i64 noundef 4) ; 0 uses
  %i.ah = load i8, ptr %i.p, align 4, !tbaa !14, !range !30, !noundef !31
  store i8 0, ptr %i.p, align 4, !tbaa !14
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4geos2io9WKBWriter9writeSRIDEi.exit
  store i8 %i.ah, ptr %i.p, align 4, !tbaa !14
  ret void

.lr.ph:                                           ; preds = %_ZN4geos2io9WKBWriter9writeSRIDEi.exit, %.lr.ph
  %.012 = phi i64 [ %i.an, %.lr.ph ], [ 0, %_ZN4geos2io9WKBWriter9writeSRIDEi.exit ] ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %.012)
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !15
  tail call void @_ZN4geos2io9WKBWriter5writeERKNS_4geom8GeometryERSo(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.am)
  %i.an = add nuw i64 %.012, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %i.ac
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos2io9WKBWriter15writePointEmptyERKNS_4geom5PointE(ptr noundef nonnull align 8 dereferenceable(32) initializes((24, 25)) %0, ptr noundef nonnull align 8 dereferenceable(82) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos::geom::Coordinate", align 16 ; 6 uses
  %3 = alloca %"class.geos::geom::CoordinateArraySequence", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %i.c = icmp eq i32 %i.b, 1
  %spec.select.i = zext i1 %i.c to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i8 %spec.select.i, ptr %i.d, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(40) %1)
  tail call void @_ZN4geos2io9WKBWriter17writeGeometryTypeEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1, i32 noundef %i.k)
  %i.l = load ptr, ptr %1, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i8, ptr %i.p, align 4, !tbaa !14, !range !30, !noundef !31
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = icmp ne i32 %i.o, 0
  %or.cond.i = and i1 %i.s, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp eq i32 %i.u, 1
  %or.cond5.i = select i1 %or.cond.i, i1 %i.v, i1 false
  br i1 %or.cond5.i, label %bb.b, label %_ZN4geos2io9WKBWriter9writeSRIDEi.exit

bb.b:                                             ; preds = %bb.a
  %i.w = load i32, ptr %i.a, align 4, !tbaa !12
  tail call void @_ZN4geos2io15ByteOrderValues6putIntEiPhi(i32 noundef %i.o, ptr noundef nonnull %i.d, i32 noundef %i.w)
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull %i.d, i64 noundef 4) ; 0 uses
  br label %_ZN4geos2io9WKBWriter9writeSRIDEi.exit

_ZN4geos2io9WKBWriter9writeSRIDEi.exit:           ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store <2 x double> splat (double +qnan), ptr %2, align 16, !tbaa !38
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double +qnan, ptr %4, align 16, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.z = load ptr, ptr %1, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef zeroext i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(82) %1)
  %i.ad = zext i8 %i.ac to i64
  call void @_ZN4geos4geom23CoordinateArraySequenceC1Emm(ptr noundef nonnull align 8 dereferenceable(40) %3, i64 noundef 1, i64 noundef %i.ad)
  invoke void @_ZN4geos4geom23CoordinateArraySequence5setAtERKNS0_10CoordinateEm(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %_ZN4geos2io9WKBWriter9writeSRIDEi.exit
  %i.ae = load ptr, ptr %3, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc unwind label %.loopexit.split-lp, !inline_history !32 ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !21
  %i.ak = icmp ugt i8 %i.aj, 2
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc5
  %.09.i = phi i64 [ %i.al, %.noexc5 ], [ 0, %.noexc ] ; 2 uses
  invoke void @_ZN4geos2io9WKBWriter15writeCoordinateERKNS_4geom18CoordinateSequenceEmb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %.09.i, i1 noundef zeroext %i.ak)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %.lr.ph.i
  %i.al = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i, label %_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb.exit, label %.lr.ph.i, !llvm.loop !33

_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb.exit: ; preds = %.noexc5, %.noexc
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN4geos4geom23CoordinateArraySequenceE, i64 16), ptr %3, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %_ZN4geos4geom23CoordinateArraySequenceD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb.exit
  call void @_ZdlPv(ptr noundef nonnull %i.an) #14
  br label %_ZN4geos4geom23CoordinateArraySequenceD2Ev.exit

_ZN4geos4geom23CoordinateArraySequenceD2Ev.exit:  ; preds = %_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %_ZN4geos2io9WKBWriter9writeSRIDEi.exit, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN4geos4geom23CoordinateArraySequenceE, i64 16), ptr %3, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i6, label %_ZN4geos4geom23CoordinateArraySequenceD2Ev.exit7, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdlPv(ptr noundef nonnull %i.ap) #14
  br label %_ZN4geos4geom23CoordinateArraySequenceD2Ev.exit7

_ZN4geos4geom23CoordinateArraySequenceD2Ev.exit7: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos2io9WKBWriter14writeByteOrderEv(ptr noundef nonnull align 8 dereferenceable(32) initializes((24, 25)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %i.c = icmp eq i32 %i.b, 1
  %spec.select = zext i1 %i.c to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %spec.select, ptr %i.d, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos2io9WKBWriter17writeGeometryTypeEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  switch i32 %i.b, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !21
  %i.e = icmp eq i8 %i.d, 3
  %i.f = select i1 %i.e, i32 -2147483648, i32 0
  %i.g = or i32 %i.f, %1                          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i8, ptr %i.h, align 4, !tbaa !14, !range !30, !noundef !31
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = icmp ne i32 %2, 0
  %or.cond = and i1 %i.k, %i.j
  %i.l = or i32 %i.g, 536870912
  %spec.select = select i1 %or.cond, i32 %i.l, i32 %i.g
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !21
  %i.o = icmp eq i8 %i.n, 3
  %i.p = add nsw i32 %1, 1000
  %spec.select16 = select i1 %i.o, i32 %i.p, i32 %1
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #13
          to label %bb.k unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.t) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br i1 %.0, label %bb.h, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br i1 %.0, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn20 = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.q) #12
  br label %bb.j

bb.i:                                             ; preds = %bb.c, %bb.b
  %.113 = phi i32 [ %spec.select, %bb.b ], [ %spec.select16, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !12
  tail call void @_ZN4geos2io15ByteOrderValues6putIntEiPhi(i32 noundef %.113, ptr noundef nonnull %i.w, i32 noundef %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.w, i64 noundef 4) ; 0 uses
  ret void

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pn19 = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn20, %bb.h ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn19

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos2io9WKBWriter9writeSRIDEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !14, !range !30, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp ne i32 %1, 0
  %or.cond = and i1 %i.d, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 1
  %or.cond5 = select i1 %or.cond, i1 %i.g, i1 false
  br i1 %or.cond5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !12
  tail call void @_ZN4geos2io15ByteOrderValues6putIntEiPhi(i32 noundef %1, ptr noundef nonnull %i.h, i32 noundef %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.h, i64 noundef 4) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN4geos4geom23CoordinateArraySequenceC1Emm(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef, i64 noundef) unnamed_addr #4

declare void @_ZN4geos4geom23CoordinateArraySequence5setAtERKNS0_10CoordinateEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !21
  %i.g = icmp ugt i8 %i.f, 2
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.d to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12
  tail call void @_ZN4geos2io15ByteOrderValues6putIntEiPhi(i32 noundef %i.h, ptr noundef nonnull %i.i, i32 noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.i, i64 noundef 4) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.09 = phi i64 [ %i.o, %.lr.ph ], [ 0, %bb.c ]  ; 2 uses
  tail call void @_ZN4geos2io9WKBWriter15writeCoordinateERKNS_4geom18CoordinateSequenceEmb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.09, i1 noundef zeroext %i.g)
  %i.o = add nuw i64 %.09, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !33
}

declare noundef ptr @_ZNK4geos4geom5Point16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(82)) local_unnamed_addr #4

declare noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4geos2io9WKBWriter8writeIntEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  tail call void @_ZN4geos2io15ByteOrderValues6putIntEiPhi(i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %i.a, i64 noundef 4) ; 0 uses
  ret void
}

declare noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4geos2io9WKBWriter12setByteOrderEi(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.2, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 1)
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.3, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %bb.c
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %bb.d
  %i.f = call ptr @__cxa_allocate_exception(i64 16) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  invoke void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #13
          to label %bb.l unwind label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br i1 %.0, label %bb.i, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br i1 %.0, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn17 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #12
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn17, %bb.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %bb.g ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %.pn.pn

bb.k:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.m, align 4, !tbaa !12
  ret void

bb.l:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

declare void @_ZN4geos2io15ByteOrderValues6putIntEiPhi(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4geos2io9WKBWriter15writeCoordinateERKNS_4geom18CoordinateSequenceEmb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef double %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  tail call void @_ZN4geos2io15ByteOrderValues9putDoubleEdPhi(double noundef %i.d, ptr noundef nonnull %i.e, i32 noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.e, i64 noundef 8) ; 0 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef double %i.m(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2)
  %i.o = load i32, ptr %i.f, align 4, !tbaa !12
  tail call void @_ZN4geos2io15ByteOrderValues9putDoubleEdPhi(double noundef %i.n, ptr noundef nonnull %i.e, i32 noundef %i.o)
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.e, i64 noundef 8) ; 0 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %1, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef double %i.t(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, i64 noundef 2)
  %i.v = load i32, ptr %i.f, align 4, !tbaa !12
  tail call void @_ZN4geos2io15ByteOrderValues9putDoubleEdPhi(double noundef %i.u, ptr noundef nonnull %i.e, i32 noundef %i.v)
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.e, i64 noundef 8) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN4geos2io15ByteOrderValues9putDoubleEdPhi(double noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.a = load ptr, ptr %1, align 8, !tbaa !16, !noalias !45
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !25, !noalias !45 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !22, !alias.scope !48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !25, !alias.scope !48
  store i8 0, ptr %i.d, align 8, !tbaa !24, !alias.scope !48
  %i.f = add i64 %i.c, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !25, !alias.scope !48
  %i.h = sub i64 4611686018427387903, %i.g
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !25, !alias.scope !48
  %i.l = and i64 %i.k, -2
  %i.m = icmp eq i64 %i.l, 4611686018427387902
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #13
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !16, !alias.scope !48 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.p) #14
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !25, !noalias !51 ; 2 uses
  %i.t = load i64, ptr %i.e, align 8, !tbaa !25, !noalias !51
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #13
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !16, !noalias !51
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.w, i64 noundef %i.s)
          to label %.noexc6 unwind label %bb.h    ; 6 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !22, !alias.scope !51
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !16   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !25 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc6
  store ptr %i.z, ptr %3, align 8, !tbaa !16, !alias.scope !51
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !24
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !24, !alias.scope !51
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !25, !alias.scope !51
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !16
  store i64 0, ptr %i.ai, align 8, !tbaa !25
  store i8 0, ptr %i.aa, align 8, !tbaa !24
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.y
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ak) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.am = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.am) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util13GEOSExceptionE, i64 16), ptr %0, align 8, !tbaa !26
  ret void

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.i:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.y
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.aq) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.ap, %bb.i ]
  %i.as = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.d
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  call void @_ZdlPv(ptr noundef %i.as) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util24IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin nounwind }

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
!7 = !{!8, !5, i64 0}
!8 = !{!"_ZTSN4geos2io9WKBWriterE", !5, i64 0, !5, i64 1, !4, i64 4, !4, i64 8, !9, i64 12, !10, i64 16, !5, i64 24}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"p1 _ZTSSo", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!8, !4, i64 4}
!13 = !{!8, !4, i64 8}
!14 = !{!8, !9, i64 12}
!15 = !{!8, !10, i64 16}
!16 = !{!17, !19, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !20, i64 8, !5, i64 16}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!19 = !{!"p1 omnipotent char", !11, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!8, !5, i64 1}
!22 = !{!18, !19, i64 0}
!23 = !{!20, !20, i64 0}
!24 = !{!5, !5, i64 0}
!25 = !{!17, !20, i64 8}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !6, i64 0}
!28 = !{!29, !20, i64 8}
!29 = !{!"_ZTSSi", !20, i64 8}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{ptr @_ZN4geos2io9WKBWriter23writeCoordinateSequenceERKNS_4geom18CoordinateSequenceEb}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{ptr @_ZN4geos2io9WKBWriter15writeCoordinateERKNS_4geom18CoordinateSequenceEmb}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !34}
!38 = !{!39, !39, i64 0}
!39 = !{!"double", !5, i64 0}
!40 = !{!41, !39, i64 16}
!41 = !{!"_ZTSN4geos4geom10CoordinateE", !39, i64 0, !39, i64 8, !39, i64 16}
!42 = !{!43, !44, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!44 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !11, i64 0}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!47 = distinct !{!47, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!48 = !{!49, !46}
!49 = distinct !{!49, !50, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!50 = distinct !{!50, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!53 = distinct !{!53, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
end_hunk_0
