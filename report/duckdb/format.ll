inline.NumInlined: 5790
inline.NumDeleted: 1347
begin_hunk_0_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS1_16nonfinite_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %i.bv, ptr %i.ah, align 1, !tbaa !18
  br label %_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIRPcEEvOT_.exit56

_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIRPcEEvOT_.exit56: ; preds = %bb.k, %bb.l
  %.2 = phi ptr [ %i.ah, %bb.k ], [ %i.bw, %bb.l ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1199 ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !18
  store i8 %i.bz, ptr %.2, align 1, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %.011.i.i.ptr.1.i54 = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.cb = load i8, ptr %.011.i.i.ptr.1.i54, align 1, !tbaa !18
  store i8 %i.cb, ptr %i.ca, align 1, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %.011.i.i.ptr.2.i55 = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.cd = load i8, ptr %.011.i.i.ptr.2.i55, align 1, !tbaa !18
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.2, i64 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ce, i8 %i.aj, i64 %i.ak, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit52

_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit52:            ; preds = %_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIRPcEEvOT_.exit, %_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIRPcEEvOT_.exit50, %_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIRPcEEvOT_.exit56, %_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIPcEEvOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS1_12float_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(33) %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !180
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1207 ; 3 uses
  %i.d = zext i32 %i.a to i64                     ; 3 uses
  %.not39 = icmp ult i64 %i.c, %i.d
  %.sroa.0.0.copyload.i.i40 = load ptr, ptr %0, align 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i40, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !10   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i40, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  br i1 %.not39, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.f, %i.c                       ; 3 uses
  %i.j = icmp ugt i64 %i.i, %i.h
  br i1 %i.j, label %bb.c, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %.sroa.0.0.copyload.i.i40, align 8, !tbaa !14
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i40, i64 noundef %i.i), !inline_history !306
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit: ; preds = %bb.b, %bb.c
  store i64 %i.i, ptr %i.e, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i40, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.f ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.q = load i32, ptr %i.p, align 4
  %i.r = lshr i32 %i.q, 8
  %i.s = and i32 %i.r, 255                        ; 2 uses
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZN10duckdb_fmt2v68internal12float_writerIcEclIPcEEvOT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 %i.v, ptr %i.o, align 1, !tbaa !18
  br label %_ZN10duckdb_fmt2v68internal12float_writerIcEclIPcEEvOT_.exit

_ZN10duckdb_fmt2v68internal12float_writerIcEclIPcEEvOT_.exit: ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit, %bb.d
  %.0 = phi ptr [ %i.o, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit ], [ %i.w, %bb.d ]
  %i.x = tail call noundef ptr @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyIPcEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %2, ptr noundef %.0) ; 0 uses
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit48

bb.e:                                             ; preds = %bb.a
  %i.y = add i64 %i.f, %i.d                       ; 3 uses
  %i.z = icmp ugt i64 %i.y, %i.h
  br i1 %i.z, label %bb.f, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit41

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %.sroa.0.0.copyload.i.i40, align 8, !tbaa !14
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i40, i64 noundef %i.y), !inline_history !306
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit41

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit41: ; preds = %bb.e, %bb.f
  store i64 %i.y, ptr %i.e, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i40, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.f ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !18  ; 4 uses
  %i.ah = sub nuw nsw i64 %i.d, %i.c              ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = and i8 %i.aj, 15
  switch i8 %i.ak, label %bb.k [
    i8 2, label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit
    i8 3, label %bb.h
  ]

_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit:              ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit41
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ae, i8 %i.ag, i64 %i.ah, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = lshr i32 %i.an, 8
  %i.ap = and i32 %i.ao, 255                      ; 2 uses
  %.not.i42 = icmp eq i32 %i.ap, 0
  br i1 %.not.i42, label %_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 %i.as, ptr %i.al, align 1, !tbaa !18
  br label %_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit

_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit: ; preds = %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit, %bb.g
  %.067 = phi ptr [ %i.al, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit ], [ %i.at, %bb.g ]
  %i.au = tail call noundef ptr @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyIPcEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %2, ptr noundef %.067) ; 0 uses
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit48

bb.h:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit41
  %i.av = lshr i64 %i.ah, 1                       ; 4 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit44, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.av
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ae, i8 %i.ag, i64 %i.av, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit44

_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit44:            ; preds = %bb.h, %bb.i
  %.0.i.i43 = phi ptr [ %i.ae, %bb.h ], [ %i.ax, %bb.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = lshr i32 %i.az, 8
  %i.bb = and i32 %i.ba, 255                      ; 2 uses
  %.not.i45 = icmp eq i32 %i.bb, 0
  br i1 %.not.i45, label %_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit46, label %bb.j

bb.j:                                             ; preds = %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit44
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i43, i64 1
  store i8 %i.be, ptr %.0.i.i43, align 1, !tbaa !18
  br label %_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit46

_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit46: ; preds = %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit44, %bb.j
  %.1 = phi ptr [ %.0.i.i43, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit44 ], [ %i.bf, %bb.j ]
  %i.bg = tail call noundef ptr @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyIPcEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %2, ptr noundef %.1)
  %i.bh = sub nsw i64 %i.ah, %i.av
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bg, i8 %i.ag, i64 %i.bh, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit48

bb.k:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit41
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = lshr i32 %i.bj, 8
  %i.bl = and i32 %i.bk, 255                      ; 2 uses
  %.not.i49 = icmp eq i32 %i.bl, 0
  br i1 %.not.i49, label %_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit50, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 %i.bo, ptr %i.ae, align 1, !tbaa !18
  br label %_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit50

_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit50: ; preds = %bb.k, %bb.l
  %.2 = phi ptr [ %i.ae, %bb.k ], [ %i.bp, %bb.l ]
  %i.bq = tail call noundef ptr @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyIPcEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %2, ptr noundef %.2)
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bq, i8 %i.ag, i64 %i.ah, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit48

_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit48:            ; preds = %_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit, %_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit46, %_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit50, %_ZN10duckdb_fmt2v68internal12float_writerIcEclIPcEEvOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyIPcEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1204 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1205 ; 2 uses
  %i.f = add i32 %i.e, %i.c                       ; 22 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 6 uses
  %i.i = load i32, ptr %i.h, align 4              ; 3 uses
  %i.j = and i32 %i.i, 255
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !1200
  %i.m = load i8, ptr %i.l, align 1, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store i8 %i.m, ptr %1, align 1, !tbaa !18
  %i.o = load i32, ptr %i.g, align 8, !tbaa !1208
  %i.p = load i32, ptr %i.b, align 8, !tbaa !1204 ; 3 uses
  %i.q = sub nsw i32 %i.o, %i.p                   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = load i32, ptr %i.h, align 4
  %i.t = and i32 %i.s, 536870912
  %i.u = icmp ne i32 %i.t, 0
  %i.v = select i1 %i.r, i1 %i.u, i1 false        ; 2 uses
  %i.w = icmp sgt i32 %i.p, 1
  %or.cond = select i1 %i.w, i1 true, i1 %i.v
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i8, ptr %i.x, align 8, !tbaa !1206
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.y, ptr %i.n, align 1, !tbaa !18
  %.pre249.a = load i32, ptr %i.b, align 8, !tbaa !1204
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.aa = phi i32 [ %.pre249.a, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.0105 = phi ptr [ %i.z, %bb.c ], [ %i.n, %bb.b ] ; 7 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !1200  ; 4 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sext i32 %i.aa to i64                   ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 %i.ad
  %.not9.i.i = icmp eq i32 %i.aa, 1
  br i1 %.not9.i.i, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit, label %iter.check522

iter.check522:                                    ; preds = %bb.d
  %i.af = ptrtoaddr ptr %i.ab to i64
  %.0105503 = ptrtoaddr ptr %.0105 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 5 uses
  %i.ah = add nsw i64 %i.ad, -1                   ; 7 uses
  %min.iters.check505 = icmp ult i64 %i.ah, 4
  %i.ai = sub i64 %i.af, %.0105503
  %diff.check504 = icmp ugt i64 %i.ai, -33
  %or.cond539 = select i1 %min.iters.check505, i1 true, i1 %diff.check504
  br i1 %or.cond539, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check506

vector.main.loop.iter.check506:                   ; preds = %iter.check522
  %min.iters.check507 = icmp ult i64 %i.ah, 32
  br i1 %min.iters.check507, label %vec.epilog.ph526, label %vector.ph508

vector.ph508:                                     ; preds = %vector.main.loop.iter.check506
  %n.mod.vf509 = and i64 %i.ah, 28
  %n.vec510 = and i64 %i.ah, -32                  ; 5 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 %n.vec510
  %i.ak = getelementptr i8, ptr %.0105, i64 %n.vec510 ; 2 uses
  br label %vector.body511

vector.body511:                                   ; preds = %vector.body511, %vector.ph508
  %index512 = phi i64 [ 0, %vector.ph508 ], [ %index.next517, %vector.body511 ] ; 3 uses
  %next.gep513 = getelementptr i8, ptr %i.ag, i64 %index512 ; 2 uses
  %next.gep514 = getelementptr i8, ptr %.0105, i64 %index512 ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep513, i64 16
  %wide.load515 = load <16 x i8>, ptr %next.gep513, align 1, !tbaa !18
  %wide.load516 = load <16 x i8>, ptr %i.al, align 1, !tbaa !18
  %i.am = getelementptr i8, ptr %next.gep514, i64 16
  store <16 x i8> %wide.load515, ptr %next.gep514, align 1, !tbaa !18
  store <16 x i8> %wide.load516, ptr %i.am, align 1, !tbaa !18
  %index.next517 = add nuw i64 %index512, 32      ; 2 uses
  %i.an = icmp eq i64 %index.next517, %n.vec510
  br i1 %i.an, label %middle.block518, label %vector.body511, !llvm.loop !1209

middle.block518:                                  ; preds = %vector.body511
  %cmp.n519 = icmp eq i64 %i.ah, %n.vec510
  br i1 %cmp.n519, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit, label %vec.epilog.iter.check524

vec.epilog.iter.check524:                         ; preds = %middle.block518
  %min.epilog.iters.check525 = icmp eq i64 %n.mod.vf509, 0
  br i1 %min.epilog.iters.check525, label %.lr.ph.i.i.preheader, label %vec.epilog.ph526, !prof !23

vec.epilog.ph526:                                 ; preds = %vector.main.loop.iter.check506, %vec.epilog.iter.check524
  %vec.epilog.resume.val520 = phi i64 [ %n.vec510, %vec.epilog.iter.check524 ], [ 0, %vector.main.loop.iter.check506 ]
  %n.vec528 = and i64 %i.ah, -4                   ; 4 uses
  %i.ao = getelementptr i8, ptr %i.ag, i64 %n.vec528
  %i.ap = getelementptr i8, ptr %.0105, i64 %n.vec528 ; 2 uses
  br label %vec.epilog.vector.body529

vec.epilog.vector.body529:                        ; preds = %vec.epilog.vector.body529, %vec.epilog.ph526
  %index530 = phi i64 [ %vec.epilog.resume.val520, %vec.epilog.ph526 ], [ %index.next534, %vec.epilog.vector.body529 ] ; 3 uses
  %next.gep531 = getelementptr i8, ptr %i.ag, i64 %index530
  %next.gep532 = getelementptr i8, ptr %.0105, i64 %index530
  %wide.load533 = load <4 x i8>, ptr %next.gep531, align 1, !tbaa !18
  store <4 x i8> %wide.load533, ptr %next.gep532, align 1, !tbaa !18
  %index.next534 = add nuw i64 %index530, 4       ; 2 uses
  %i.aq = icmp eq i64 %index.next534, %n.vec528
  br i1 %i.aq, label %vec.epilog.middle.block535, label %vec.epilog.vector.body529, !llvm.loop !1210

vec.epilog.middle.block535:                       ; preds = %vec.epilog.vector.body529
  %cmp.n536 = icmp eq i64 %i.ah, %n.vec528
  br i1 %cmp.n536, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check522, %vec.epilog.iter.check524, %vec.epilog.middle.block535
  %.011.i.i.ph = phi ptr [ %i.ag, %iter.check522 ], [ %i.aj, %vec.epilog.iter.check524 ], [ %i.ao, %vec.epilog.middle.block535 ] ; 3 uses
  %.0810.i.i.ph = phi ptr [ %.0105, %iter.check522 ], [ %i.ak, %vec.epilog.iter.check524 ], [ %i.ap, %vec.epilog.middle.block535 ] ; 2 uses
  %i.ar = add i64 %i.ac, %i.ad                    ; 2 uses
  %.011.i.i.ph580 = ptrtoint ptr %.011.i.i.ph to i64 ; 2 uses
  %i.as = sub i64 %i.ar, %.011.i.i.ph580
  %xtraiter581 = and i64 %i.as, 7                 ; 2 uses
  %lcmp.mod582.not = icmp eq i64 %xtraiter581, 0
  br i1 %lcmp.mod582.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.011.i.i.prol = phi ptr [ %i.au, %.lr.ph.i.i.prol ], [ %.011.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.0810.i.i.prol = phi ptr [ %i.av, %.lr.ph.i.i.prol ], [ %.0810.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter583 = phi i64 [ %prol.iter583.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.at = load i8, ptr %.011.i.i.prol, align 1, !tbaa !18
  store i8 %i.at, ptr %.0810.i.i.prol, align 1, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.011.i.i.prol, i64 1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0810.i.i.prol, i64 1 ; 3 uses
  %prol.iter583.next = add i64 %prol.iter583, 1   ; 2 uses
  %prol.iter583.cmp.not = icmp eq i64 %prol.iter583.next, %xtraiter581
  br i1 %prol.iter583.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1211

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.av, %.lr.ph.i.i.prol ]
  %.011.i.i.unr = phi ptr [ %.011.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.au, %.lr.ph.i.i.prol ]
  %.0810.i.i.unr = phi ptr [ %.0810.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.av, %.lr.ph.i.i.prol ]
  %i.aw = sub i64 %.011.i.i.ph580, %i.ar
  %i.ax = icmp ugt i64 %i.aw, -8
  br i1 %i.ax, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.011.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.011.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.0810.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %.0810.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.ay = load i8, ptr %.011.i.i, align 1, !tbaa !18
  store i8 %i.ay, ptr %.0810.i.i, align 1, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 1
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !18
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 2
  %i.bd = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 2
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !18
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 3
  %i.bg = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 3
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !18
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 4
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !18
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 5
  %i.bm = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 5
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !18
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 6
  %i.bp = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 6
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !18
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 7
  %i.bs = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 7
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !18
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 8 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bu, %i.ae
  br i1 %.not.i.i.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit, label %.lr.ph.i.i, !llvm.loop !1212

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block518, %vec.epilog.middle.block535, %bb.d
  %.08.lcssa.i.i = phi ptr [ %.0105, %bb.d ], [ %i.ap, %vec.epilog.middle.block535 ], [ %i.ak, %middle.block518 ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bv, %.lr.ph.i.i ] ; 3 uses
  br i1 %i.v, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit, label %bb.e

_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit:              ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit
  %i.bw = zext nneg i32 %i.q to i64               ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i, i64 %i.bw
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.08.lcssa.i.i, i8 48, i64 %i.bw, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit
  %.1106 = phi ptr [ %i.bx, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit ], [ %.08.lcssa.i.i, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit ] ; 4 uses
  %.shift130 = getelementptr inbounds nuw i8, ptr %0, i64 31
  %2 = load i8, ptr %.shift130, align 1
  %3 = trunc i8 %2 to i1
  %i.by = select i1 %3, i8 69, i8 101
  %i.bz = getelementptr inbounds nuw i8, ptr %.1106, i64 1
  store i8 %i.by, ptr %.1106, align 1, !tbaa !18
  %i.ca = add nsw i32 %i.f, -1
  %i.cb = icmp slt i32 %i.f, 1
  %spec.select.i = select i1 %i.cb, i8 45, i8 43
  %spec.select23.i = tail call i32 @llvm.abs.i32(i32 %i.ca, i1 true) ; 5 uses
  store i8 %spec.select.i, ptr %i.bz, align 1, !tbaa !18
  %.017.i = getelementptr inbounds nuw i8, ptr %.1106, i64 2 ; 3 uses
  %i.cc = icmp samesign ugt i32 %spec.select23.i, 99
  br i1 %i.cc, label %bb.f, label %_ZN10duckdb_fmt2v68internal14write_exponentIcPcEET0_iS4_.exit

bb.f:                                             ; preds = %bb.e
  %i.cd = udiv i32 %spec.select23.i, 100
  %i.ce = urem i32 %spec.select23.i, 100
  %i.cf = shl nuw nsw i32 %i.cd, 1
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.cg ; 2 uses
  %i.ci = icmp samesign ugt i32 %spec.select23.i, 999
  br i1 %i.ci, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cj = load i8, ptr %i.ch, align 2, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %.1106, i64 3
  store i8 %i.cj, ptr %.017.i, align 1, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.118.i = phi ptr [ %i.ck, %bb.g ], [ %.017.i, %bb.f ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %.118.i, i64 1
  store i8 %i.cm, ptr %.118.i, align 1, !tbaa !18
  br label %_ZN10duckdb_fmt2v68internal14write_exponentIcPcEET0_iS4_.exit

_ZN10duckdb_fmt2v68internal14write_exponentIcPcEET0_iS4_.exit: ; preds = %bb.e, %bb.h
  %.2.i = phi ptr [ %i.cn, %bb.h ], [ %.017.i, %bb.e ] ; 3 uses
  %.1.i = phi i32 [ %i.ce, %bb.h ], [ %spec.select23.i, %bb.e ]
  %i.co = shl nuw nsw i32 %.1.i, 1
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.cp ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  store i8 %i.cr, ptr %.2.i, align 1, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.2.i, i64 2
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !18
  br label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176

bb.i:                                             ; preds = %bb.a
  %.not124 = icmp slt i32 %i.e, 0
  br i1 %.not124, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cw = and i32 %i.i, 16711680
  %i.cx = icmp ne i32 %i.cw, 0
  %i.cy = icmp sgt i32 %i.f, 3
  %or.cond3 = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond3, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.cz = urem i32 %i.f, 3                        ; 2 uses
  %i.da = icmp eq i32 %i.cz, 0
  %spec.select = select i1 %i.da, i32 3, i32 %i.cz
  %.shift129 = getelementptr inbounds nuw i8, ptr %0, i64 30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142
  %.2230 = phi ptr [ %1, %bb.k ], [ %.5, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142 ] ; 3 uses
  %.0108229 = phi i32 [ 0, %bb.k ], [ %i.fn, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142 ] ; 5 uses
  %storemerge228 = phi i32 [ %spec.select, %bb.k ], [ 3, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142 ] ; 5 uses
  %i.db = icmp sgt i32 %.0108229, 0
  br i1 %i.db, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %4 = load i16, ptr %.shift129, align 2
  %i.dc = trunc i16 %4 to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %.2230, i64 1
  store i8 %i.dc, ptr %.2230, align 1, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3 = phi ptr [ %i.dd, %bb.m ], [ %.2230, %bb.l ] ; 8 uses
  %.3317 = ptrtoaddr ptr %.3 to i64
  %i.de = load i32, ptr %i.b, align 8, !tbaa !1204 ; 2 uses
  %i.df = icmp slt i32 %.0108229, %i.de
  br i1 %i.df, label %iter.check336, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142.sink.split

iter.check336:                                    ; preds = %bb.n
  %i.dg = sub nsw i32 %i.de, %.0108229            ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %storemerge228, i32 %i.dg) ; 5 uses
  %i.dh = load ptr, ptr %0, align 8, !tbaa !1200  ; 3 uses
  %i.di = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dj = sext i32 %.0108229 to i64               ; 4 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dh, i64 %i.dj ; 7 uses
  %i.dl = sext i32 %.sroa.speculated to i64       ; 7 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 %i.dl
  %min.iters.check319 = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check319, label %.lr.ph.i.i135.preheader, label %vector.memcheck316

vector.memcheck316:                               ; preds = %iter.check336
  %i.dn = ptrtoaddr ptr %i.dh to i64
  %i.do = add i64 %i.dn, %i.dj
  %i.dp = sub i64 %.3317, %i.do
  %diff.check318 = icmp ult i64 %i.dp, 32
  br i1 %diff.check318, label %.lr.ph.i.i135.preheader, label %vector.main.loop.iter.check320

vector.main.loop.iter.check320:                   ; preds = %vector.memcheck316
  %min.iters.check321 = icmp ult i32 %.sroa.speculated, 32
  br i1 %min.iters.check321, label %vec.epilog.ph340, label %vector.ph322

vector.ph322:                                     ; preds = %vector.main.loop.iter.check320
  %n.vec324 = and i64 %i.dl, -32                  ; 5 uses
  %i.dq = getelementptr i8, ptr %i.dk, i64 %n.vec324
  %i.dr = getelementptr i8, ptr %.3, i64 %n.vec324 ; 2 uses
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph322
  %index326 = phi i64 [ 0, %vector.ph322 ], [ %index.next331, %vector.body325 ] ; 3 uses
  %next.gep327 = getelementptr i8, ptr %i.dk, i64 %index326 ; 2 uses
  %next.gep328 = getelementptr i8, ptr %.3, i64 %index326 ; 2 uses
  %i.ds = getelementptr i8, ptr %next.gep327, i64 16
  %wide.load329 = load <16 x i8>, ptr %next.gep327, align 1, !tbaa !18
  %wide.load330 = load <16 x i8>, ptr %i.ds, align 1, !tbaa !18
  %i.dt = getelementptr i8, ptr %next.gep328, i64 16
  store <16 x i8> %wide.load329, ptr %next.gep328, align 1, !tbaa !18
  store <16 x i8> %wide.load330, ptr %i.dt, align 1, !tbaa !18
  %index.next331 = add nuw i64 %index326, 32      ; 2 uses
  %i.du = icmp eq i64 %index.next331, %n.vec324
  br i1 %i.du, label %middle.block332, label %vector.body325, !llvm.loop !1213

middle.block332:                                  ; preds = %vector.body325
  %cmp.n333 = icmp eq i64 %n.vec324, %i.dl
  br i1 %cmp.n333, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140, label %vec.epilog.iter.check338

vec.epilog.iter.check338:                         ; preds = %middle.block332
  %i.dv = and i32 %.sroa.speculated, 28
  %min.epilog.iters.check339 = icmp eq i32 %i.dv, 0
  br i1 %min.epilog.iters.check339, label %.lr.ph.i.i135.preheader, label %vec.epilog.ph340, !prof !23

vec.epilog.ph340:                                 ; preds = %vector.main.loop.iter.check320, %vec.epilog.iter.check338
  %vec.epilog.resume.val334 = phi i64 [ %n.vec324, %vec.epilog.iter.check338 ], [ 0, %vector.main.loop.iter.check320 ]
  %n.vec342 = and i64 %i.dl, -4                   ; 4 uses
  %i.dw = getelementptr i8, ptr %i.dk, i64 %n.vec342
  %i.dx = getelementptr i8, ptr %.3, i64 %n.vec342 ; 2 uses
  br label %vec.epilog.vector.body343

vec.epilog.vector.body343:                        ; preds = %vec.epilog.vector.body343, %vec.epilog.ph340
  %index344 = phi i64 [ %vec.epilog.resume.val334, %vec.epilog.ph340 ], [ %index.next348, %vec.epilog.vector.body343 ] ; 3 uses
  %next.gep345 = getelementptr i8, ptr %i.dk, i64 %index344
  %next.gep346 = getelementptr i8, ptr %.3, i64 %index344
  %wide.load347 = load <4 x i8>, ptr %next.gep345, align 1, !tbaa !18
  store <4 x i8> %wide.load347, ptr %next.gep346, align 1, !tbaa !18
  %index.next348 = add nuw i64 %index344, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next348, %n.vec342
  br i1 %i.dy, label %vec.epilog.middle.block349, label %vec.epilog.vector.body343, !llvm.loop !1214

vec.epilog.middle.block349:                       ; preds = %vec.epilog.vector.body343
  %cmp.n350 = icmp eq i64 %n.vec342, %i.dl
  br i1 %cmp.n350, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140, label %.lr.ph.i.i135.preheader

.lr.ph.i.i135.preheader:                          ; preds = %vector.memcheck316, %iter.check336, %vec.epilog.iter.check338, %vec.epilog.middle.block349
  %.011.i.i136.ph = phi ptr [ %i.dk, %iter.check336 ], [ %i.dk, %vector.memcheck316 ], [ %i.dq, %vec.epilog.iter.check338 ], [ %i.dw, %vec.epilog.middle.block349 ] ; 3 uses
  %.0810.i.i137.ph = phi ptr [ %.3, %iter.check336 ], [ %.3, %vector.memcheck316 ], [ %i.dr, %vec.epilog.iter.check338 ], [ %i.dx, %vec.epilog.middle.block349 ] ; 2 uses
  %i.dz = add i64 %i.di, %i.dl
  %i.ea = add i64 %i.dz, %i.dj
  %.011.i.i136.ph557 = ptrtoint ptr %.011.i.i136.ph to i64 ; 2 uses
  %i.eb = sub i64 %i.ea, %.011.i.i136.ph557
  %i.ec = add i64 %i.di, -1
  %i.ed = add i64 %i.ec, %i.dl
  %i.ee = add i64 %i.ed, %i.dj
  %i.ef = sub i64 %i.ee, %.011.i.i136.ph557
  %xtraiter558 = and i64 %i.eb, 7                 ; 2 uses
  %lcmp.mod559.not = icmp eq i64 %xtraiter558, 0
  br i1 %lcmp.mod559.not, label %.lr.ph.i.i135.prol.loopexit, label %.lr.ph.i.i135.prol

.lr.ph.i.i135.prol:                               ; preds = %.lr.ph.i.i135.preheader, %.lr.ph.i.i135.prol
  %.011.i.i136.prol = phi ptr [ %i.eh, %.lr.ph.i.i135.prol ], [ %.011.i.i136.ph, %.lr.ph.i.i135.preheader ] ; 2 uses
  %.0810.i.i137.prol = phi ptr [ %i.ei, %.lr.ph.i.i135.prol ], [ %.0810.i.i137.ph, %.lr.ph.i.i135.preheader ] ; 2 uses
  %prol.iter560 = phi i64 [ %prol.iter560.next, %.lr.ph.i.i135.prol ], [ 0, %.lr.ph.i.i135.preheader ]
  %i.eg = load i8, ptr %.011.i.i136.prol, align 1, !tbaa !18
  store i8 %i.eg, ptr %.0810.i.i137.prol, align 1, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %.011.i.i136.prol, i64 1 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0810.i.i137.prol, i64 1 ; 3 uses
  %prol.iter560.next = add i64 %prol.iter560, 1   ; 2 uses
  %prol.iter560.cmp.not = icmp eq i64 %prol.iter560.next, %xtraiter558
  br i1 %prol.iter560.cmp.not, label %.lr.ph.i.i135.prol.loopexit, label %.lr.ph.i.i135.prol, !llvm.loop !1215

.lr.ph.i.i135.prol.loopexit:                      ; preds = %.lr.ph.i.i135.prol, %.lr.ph.i.i135.preheader
  %.lcssa554.unr = phi ptr [ poison, %.lr.ph.i.i135.preheader ], [ %i.ei, %.lr.ph.i.i135.prol ]
  %.011.i.i136.unr = phi ptr [ %.011.i.i136.ph, %.lr.ph.i.i135.preheader ], [ %i.eh, %.lr.ph.i.i135.prol ]
  %.0810.i.i137.unr = phi ptr [ %.0810.i.i137.ph, %.lr.ph.i.i135.preheader ], [ %i.ei, %.lr.ph.i.i135.prol ]
  %i.ej = icmp ult i64 %i.ef, 7
  br i1 %i.ej, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140, label %.lr.ph.i.i135

.lr.ph.i.i135:                                    ; preds = %.lr.ph.i.i135.prol.loopexit, %.lr.ph.i.i135
  %.011.i.i136 = phi ptr [ %i.fg, %.lr.ph.i.i135 ], [ %.011.i.i136.unr, %.lr.ph.i.i135.prol.loopexit ] ; 9 uses
  %.0810.i.i137 = phi ptr [ %i.fh, %.lr.ph.i.i135 ], [ %.0810.i.i137.unr, %.lr.ph.i.i135.prol.loopexit ] ; 9 uses
  %i.ek = load i8, ptr %.011.i.i136, align 1, !tbaa !18
  store i8 %i.ek, ptr %.0810.i.i137, align 1, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 1
  %i.em = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 1
  %i.en = load i8, ptr %i.el, align 1, !tbaa !18
  store i8 %i.en, ptr %i.em, align 1, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 2
  %i.ep = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 2
  %i.eq = load i8, ptr %i.eo, align 1, !tbaa !18
  store i8 %i.eq, ptr %i.ep, align 1, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 3
  %i.es = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 3
  %i.et = load i8, ptr %i.er, align 1, !tbaa !18
  store i8 %i.et, ptr %i.es, align 1, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 4
  %i.ew = load i8, ptr %i.eu, align 1, !tbaa !18
  store i8 %i.ew, ptr %i.ev, align 1, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 5
  %i.ey = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 5
  %i.ez = load i8, ptr %i.ex, align 1, !tbaa !18
  store i8 %i.ez, ptr %i.ey, align 1, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 6
  %i.fb = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 6
  %i.fc = load i8, ptr %i.fa, align 1, !tbaa !18
  store i8 %i.fc, ptr %i.fb, align 1, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 7
  %i.fe = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 7
  %i.ff = load i8, ptr %i.fd, align 1, !tbaa !18
  store i8 %i.ff, ptr %i.fe, align 1, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 8 ; 2 uses
  %.not.i.i138.7 = icmp eq ptr %i.fg, %i.dm
  br i1 %.not.i.i138.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140, label %.lr.ph.i.i135, !llvm.loop !1216

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140: ; preds = %.lr.ph.i.i135.prol.loopexit, %.lr.ph.i.i135, %vec.epilog.middle.block349, %middle.block332
  %.lcssa300 = phi ptr [ %i.dx, %vec.epilog.middle.block349 ], [ %i.dr, %middle.block332 ], [ %.lcssa554.unr, %.lr.ph.i.i135.prol.loopexit ], [ %i.fh, %.lr.ph.i.i135 ] ; 2 uses
  %i.fi = icmp sge i32 %i.dg, %storemerge228
  %i.fj = sub nsw i32 %storemerge228, %.sroa.speculated ; 2 uses
  %i.fk = icmp slt i32 %i.fj, 1
  %or.cond289 = select i1 %i.fi, i1 true, i1 %i.fk
  br i1 %or.cond289, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142.sink.split

_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142.sink.split: ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140, %bb.n
  %.sink287 = phi i32 [ %i.fj, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140 ], [ %storemerge228, %bb.n ]
  %.lcssa283.sink285 = phi ptr [ %.lcssa300, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140 ], [ %.3, %bb.n ] ; 2 uses
  %i.fl = zext nneg i32 %.sink287 to i64          ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.lcssa283.sink285, i64 %i.fl
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.lcssa283.sink285, i8 48, i64 %i.fl, i1 false)
  br label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142

_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142:           ; preds = %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142.sink.split, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140
  %.5 = phi ptr [ %i.fm, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142.sink.split ], [ %.lcssa300, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140 ] ; 2 uses
  %i.fn = add nsw i32 %.0108229, %storemerge228   ; 2 uses
  %i.fo = icmp slt i32 %i.fn, %i.f
  br i1 %i.fo, label %bb.l, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153, !llvm.loop !1217

bb.o:                                             ; preds = %bb.j
  %i.fp = load ptr, ptr %0, align 8, !tbaa !1200  ; 8 uses
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = sext i32 %i.c to i64                    ; 6 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fp, i64 %i.fr
  %.not9.i.i145 = icmp eq i32 %i.c, 0
  br i1 %.not9.i.i145, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151, label %iter.check

iter.check:                                       ; preds = %bb.o
  %i.ft = ptrtoaddr ptr %i.fp to i64
  %min.iters.check = icmp ult i32 %i.c, 4
  %i.fu = sub i64 %i.a, %i.ft
  %diff.check = icmp ult i64 %i.fu, 32
  %or.cond540 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond540, label %.lr.ph.i.i146.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check302 = icmp ult i32 %i.c, 32
  br i1 %min.iters.check302, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.fr, -32                     ; 5 uses
  %i.fv = getelementptr i8, ptr %i.fp, i64 %n.vec
  %i.fw = getelementptr i8, ptr %1, i64 %n.vec    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.fp, i64 %index ; 2 uses
  %next.gep303 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.fx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !18
  %wide.load304 = load <16 x i8>, ptr %i.fx, align 1, !tbaa !18
  %i.fy = getelementptr i8, ptr %next.gep303, i64 16
  store <16 x i8> %wide.load, ptr %next.gep303, align 1, !tbaa !18
  store <16 x i8> %wide.load304, ptr %i.fy, align 1, !tbaa !18
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !1218

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.fr
  br i1 %cmp.n, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ga = and i32 %i.c, 28
  %min.epilog.iters.check = icmp eq i32 %i.ga, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i146.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec307 = and i64 %i.fr, -4                   ; 4 uses
  %i.gb = getelementptr i8, ptr %i.fp, i64 %n.vec307
  %i.gc = getelementptr i8, ptr %1, i64 %n.vec307 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index308 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next312, %vec.epilog.vector.body ] ; 3 uses
  %next.gep309 = getelementptr i8, ptr %i.fp, i64 %index308
  %next.gep310 = getelementptr i8, ptr %1, i64 %index308
  %wide.load311 = load <4 x i8>, ptr %next.gep309, align 1, !tbaa !18
  store <4 x i8> %wide.load311, ptr %next.gep310, align 1, !tbaa !18
  %index.next312 = add nuw i64 %index308, 4       ; 2 uses
  %i.gd = icmp eq i64 %index.next312, %n.vec307
  br i1 %i.gd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1219

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n313 = icmp eq i64 %n.vec307, %i.fr
  br i1 %cmp.n313, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i147.ph = phi ptr [ %i.fp, %iter.check ], [ %i.fv, %vec.epilog.iter.check ], [ %i.gb, %vec.epilog.middle.block ] ; 3 uses
  %.0810.i.i148.ph = phi ptr [ %1, %iter.check ], [ %i.fw, %vec.epilog.iter.check ], [ %i.gc, %vec.epilog.middle.block ] ; 2 uses
  %i.ge = add i64 %i.fq, %i.fr                    ; 2 uses
  %.011.i.i147.ph556 = ptrtoint ptr %.011.i.i147.ph to i64 ; 2 uses
  %i.gf = sub i64 %i.ge, %.011.i.i147.ph556
  %xtraiter = and i64 %i.gf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i146.prol.loopexit, label %.lr.ph.i.i146.prol

.lr.ph.i.i146.prol:                               ; preds = %.lr.ph.i.i146.preheader, %.lr.ph.i.i146.prol
  %.011.i.i147.prol = phi ptr [ %i.gh, %.lr.ph.i.i146.prol ], [ %.011.i.i147.ph, %.lr.ph.i.i146.preheader ] ; 2 uses
  %.0810.i.i148.prol = phi ptr [ %i.gi, %.lr.ph.i.i146.prol ], [ %.0810.i.i148.ph, %.lr.ph.i.i146.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i146.prol ], [ 0, %.lr.ph.i.i146.preheader ]
  %i.gg = load i8, ptr %.011.i.i147.prol, align 1, !tbaa !18
  store i8 %i.gg, ptr %.0810.i.i148.prol, align 1, !tbaa !18
  %i.gh = getelementptr inbounds nuw i8, ptr %.011.i.i147.prol, i64 1 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0810.i.i148.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i146.prol.loopexit, label %.lr.ph.i.i146.prol, !llvm.loop !1220

.lr.ph.i.i146.prol.loopexit:                      ; preds = %.lr.ph.i.i146.prol, %.lr.ph.i.i146.preheader
  %.lcssa555.unr = phi ptr [ poison, %.lr.ph.i.i146.preheader ], [ %i.gi, %.lr.ph.i.i146.prol ]
  %.011.i.i147.unr = phi ptr [ %.011.i.i147.ph, %.lr.ph.i.i146.preheader ], [ %i.gh, %.lr.ph.i.i146.prol ]
  %.0810.i.i148.unr = phi ptr [ %.0810.i.i148.ph, %.lr.ph.i.i146.preheader ], [ %i.gi, %.lr.ph.i.i146.prol ]
  %i.gj = sub i64 %.011.i.i147.ph556, %i.ge
  %i.gk = icmp ugt i64 %i.gj, -8
  br i1 %i.gk, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit, label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.prol.loopexit, %.lr.ph.i.i146
  %.011.i.i147 = phi ptr [ %i.hh, %.lr.ph.i.i146 ], [ %.011.i.i147.unr, %.lr.ph.i.i146.prol.loopexit ] ; 9 uses
  %.0810.i.i148 = phi ptr [ %i.hi, %.lr.ph.i.i146 ], [ %.0810.i.i148.unr, %.lr.ph.i.i146.prol.loopexit ] ; 9 uses
  %i.gl = load i8, ptr %.011.i.i147, align 1, !tbaa !18
  store i8 %i.gl, ptr %.0810.i.i148, align 1, !tbaa !18
  %i.gm = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 1
  %i.gn = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 1
  %i.go = load i8, ptr %i.gm, align 1, !tbaa !18
  store i8 %i.go, ptr %i.gn, align 1, !tbaa !18
  %i.gp = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 2
  %i.gq = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 2
  %i.gr = load i8, ptr %i.gp, align 1, !tbaa !18
  store i8 %i.gr, ptr %i.gq, align 1, !tbaa !18
  %i.gs = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 3
  %i.gt = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 3
  %i.gu = load i8, ptr %i.gs, align 1, !tbaa !18
  store i8 %i.gu, ptr %i.gt, align 1, !tbaa !18
  %i.gv = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 4
  %i.gw = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 4
  %i.gx = load i8, ptr %i.gv, align 1, !tbaa !18
  store i8 %i.gx, ptr %i.gw, align 1, !tbaa !18
  %i.gy = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 5
  %i.gz = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 5
  %i.ha = load i8, ptr %i.gy, align 1, !tbaa !18
  store i8 %i.ha, ptr %i.gz, align 1, !tbaa !18
  %i.hb = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 6
  %i.hc = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 6
  %i.hd = load i8, ptr %i.hb, align 1, !tbaa !18
  store i8 %i.hd, ptr %i.hc, align 1, !tbaa !18
  %i.he = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 7
  %i.hf = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 7
  %i.hg = load i8, ptr %i.he, align 1, !tbaa !18
  store i8 %i.hg, ptr %i.hf, align 1, !tbaa !18
  %i.hh = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 8 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 8 ; 2 uses
  %.not.i.i149.7 = icmp eq ptr %i.hh, %i.fs
  br i1 %.not.i.i149.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit, label %.lr.ph.i.i146, !llvm.loop !1221

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit: ; preds = %.lr.ph.i.i146.prol.loopexit, %.lr.ph.i.i146, %vec.epilog.middle.block, %middle.block
  %.lcssa301 = phi ptr [ %i.gc, %vec.epilog.middle.block ], [ %i.fw, %middle.block ], [ %.lcssa555.unr, %.lr.ph.i.i146.prol.loopexit ], [ %i.hi, %.lr.ph.i.i146 ]
  %.pre = load i32, ptr %i.b, align 8, !tbaa !1204
  br label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151: ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit, %bb.o
  %i.hj = phi i32 [ 0, %bb.o ], [ %.pre, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit ]
  %.08.lcssa.i.i150 = phi ptr [ %1, %bb.o ], [ %.lcssa301, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit ] ; 3 uses
  %i.hk = sub nsw i32 %i.f, %i.hj                 ; 2 uses
  %i.hl = icmp slt i32 %i.hk, 1
  br i1 %i.hl, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153, label %bb.p

bb.p:                                             ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151
  %i.hm = zext nneg i32 %i.hk to i64              ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i150, i64 %i.hm
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i150, i8 48, i64 %i.hm, i1 false)
  br label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153

_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153:           ; preds = %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142, %bb.p, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151
  %.6 = phi ptr [ %i.hn, %bb.p ], [ %.08.lcssa.i.i150, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151 ], [ %.5, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142 ] ; 4 uses
  %i.ho = load i32, ptr %i.h, align 4
  %i.hp = and i32 %i.ho, 536870912
  %.not127 = icmp eq i32 %i.hp, 0
  br i1 %.not127, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %bb.q

bb.q:                                             ; preds = %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hr = load i8, ptr %i.hq, align 8, !tbaa !1206
  %i.hs = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 4 uses
  store i8 %i.hr, ptr %.6, align 1, !tbaa !18
  %i.ht = load i32, ptr %i.g, align 8, !tbaa !1208
  %i.hu = sub nsw i32 %i.ht, %i.f                 ; 2 uses
  %i.hv = icmp sgt i32 %i.hu, 0
  br i1 %i.hv, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit155, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hw = load i32, ptr %i.h, align 4
  %i.hx = and i32 %i.hw, 255
  %.not128 = icmp eq i32 %i.hx, 2
  br i1 %.not128, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hy = getelementptr inbounds nuw i8, ptr %.6, i64 2
  store i8 48, ptr %i.hs, align 1, !tbaa !18
  br label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176

_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit155:           ; preds = %bb.q
  %i.hz = zext nneg i32 %i.hu to i64              ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hz
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hs, i8 48, i64 %i.hz, i1 false)
  br label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176

bb.t:                                             ; preds = %bb.i
  %i.ib = icmp sgt i32 %i.f, 0
  br i1 %i.ib, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %bb.t
  %i.ic = and i32 %i.i, 16711680
  %i.id = icmp ne i32 %i.ic, 0
  %i.ie = icmp samesign ugt i32 %i.f, 3
  %or.cond5 = select i1 %i.id, i1 %i.ie, i1 false
  br i1 %or.cond5, label %bb.v, label %iter.check409

bb.v:                                             ; preds = %bb.u
  %i.if = urem i32 %i.f, 3                        ; 2 uses
  %i.ig = icmp eq i32 %i.if, 0
  %spec.select130 = select i1 %i.ig, i32 3, i32 %i.if
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 30
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162
  %.0103233 = phi i32 [ 0, %bb.v ], [ %i.ir, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162 ] ; 3 uses
  %.0104232 = phi i32 [ %spec.select130, %bb.v ], [ 3, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162 ] ; 2 uses
  %.9231 = phi ptr [ %1, %bb.v ], [ %.lcssa548.unr.a, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162 ] ; 3 uses
  %i.ih = icmp sgt i32 %.0103233, 0
  br i1 %i.ih, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %5 = load i16, ptr %.shift, align 2
  %i.ii = trunc i16 %5 to i8
  %i.ij = getelementptr inbounds nuw i8, ptr %.9231, i64 1
  store i8 %i.ii, ptr %.9231, align 1, !tbaa !18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.10 = phi ptr [ %i.ij, %bb.x ], [ %.9231, %bb.w ]
  %i.ik = and i32 %.0104232, 7                    ; 2 uses
  %xtraiter569 = zext nneg i32 %i.ik to i64
  %lcmp.mod570.not = icmp eq i32 %i.ik, 0
  br i1 %lcmp.mod570.not, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162, label %.lr.ph.i.i157.prol.preheader

.lr.ph.i.i157.prol.preheader:                     ; preds = %bb.y
  %i.il = load ptr, ptr %0, align 8, !tbaa !1200
  %i.im = sext i32 %.0103233 to i64
  %i.in = getelementptr inbounds i8, ptr %i.il, i64 %i.im
  br label %.lr.ph.i.i157.prol

.lr.ph.i.i157.prol:                               ; preds = %.lr.ph.i.i157.prol, %.lr.ph.i.i157.prol.preheader
  %.011.i.i158.prol = phi ptr [ %i.ip, %.lr.ph.i.i157.prol ], [ %i.in, %.lr.ph.i.i157.prol.preheader ] ; 2 uses
  %.0810.i.i159.prol = phi ptr [ %i.iq, %.lr.ph.i.i157.prol ], [ %.10, %.lr.ph.i.i157.prol.preheader ] ; 2 uses
  %prol.iter571 = phi i64 [ %prol.iter571.next, %.lr.ph.i.i157.prol ], [ 0, %.lr.ph.i.i157.prol.preheader ]
  %i.io = load i8, ptr %.011.i.i158.prol, align 1, !tbaa !18
  store i8 %i.io, ptr %.0810.i.i159.prol, align 1, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %.011.i.i158.prol, i64 1
  %i.iq = getelementptr inbounds nuw i8, ptr %.0810.i.i159.prol, i64 1 ; 2 uses
  %prol.iter571.next = add i64 %prol.iter571, 1   ; 2 uses
  %prol.iter571.cmp.not = icmp eq i64 %prol.iter571.next, %xtraiter569
  br i1 %prol.iter571.cmp.not, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162, label %.lr.ph.i.i157.prol, !llvm.loop !1222

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162: ; preds = %bb.y, %.lr.ph.i.i157.prol
  %.lcssa548.unr.a = phi ptr [ poison, %bb.y ], [ %i.iq, %.lr.ph.i.i157.prol ] ; 2 uses
  %i.ir = add nsw i32 %.0103233, %.0104232        ; 2 uses
  %i.is = icmp slt i32 %i.ir, %i.f
  br i1 %i.is, label %bb.w, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169, !llvm.loop !1223

iter.check409:                                    ; preds = %bb.u
  %i.it = load ptr, ptr %0, align 8, !tbaa !1200  ; 8 uses
  %i.iu = ptrtoint ptr %i.it to i64
  %i.iv = zext nneg i32 %i.f to i64               ; 7 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.iv
  %min.iters.check392 = icmp ult i32 %i.f, 4
  %i.ix = ptrtoaddr ptr %i.it to i64
  %i.iy = sub i64 %i.a, %i.ix
  %diff.check391 = icmp ult i64 %i.iy, 32
  %or.cond542 = select i1 %min.iters.check392, i1 true, i1 %diff.check391
  br i1 %or.cond542, label %.lr.ph.i.i164.preheader, label %vector.main.loop.iter.check393

vector.main.loop.iter.check393:                   ; preds = %iter.check409
  %min.iters.check394 = icmp ult i32 %i.f, 32
  br i1 %min.iters.check394, label %vec.epilog.ph413, label %vector.ph395

vector.ph395:                                     ; preds = %vector.main.loop.iter.check393
  %n.mod.vf396 = and i64 %i.iv, 28
  %n.vec397 = and i64 %i.iv, 2147483616           ; 5 uses
  %i.iz = getelementptr i8, ptr %i.it, i64 %n.vec397
  %i.ja = getelementptr i8, ptr %1, i64 %n.vec397 ; 2 uses
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph395
  %index399 = phi i64 [ 0, %vector.ph395 ], [ %index.next404, %vector.body398 ] ; 3 uses
  %next.gep400 = getelementptr i8, ptr %i.it, i64 %index399 ; 2 uses
  %next.gep401 = getelementptr i8, ptr %1, i64 %index399 ; 2 uses
  %i.jb = getelementptr i8, ptr %next.gep400, i64 16
  %wide.load402 = load <16 x i8>, ptr %next.gep400, align 1, !tbaa !18
  %wide.load403 = load <16 x i8>, ptr %i.jb, align 1, !tbaa !18
  %i.jc = getelementptr i8, ptr %next.gep401, i64 16
  store <16 x i8> %wide.load402, ptr %next.gep401, align 1, !tbaa !18
  store <16 x i8> %wide.load403, ptr %i.jc, align 1, !tbaa !18
  %index.next404 = add nuw i64 %index399, 32      ; 2 uses
  %i.jd = icmp eq i64 %index.next404, %n.vec397
  br i1 %i.jd, label %middle.block405, label %vector.body398, !llvm.loop !1224

middle.block405:                                  ; preds = %vector.body398
  %cmp.n406 = icmp eq i64 %n.vec397, %i.iv
  br i1 %cmp.n406, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169, label %vec.epilog.iter.check411

vec.epilog.iter.check411:                         ; preds = %middle.block405
  %min.epilog.iters.check412 = icmp eq i64 %n.mod.vf396, 0
  br i1 %min.epilog.iters.check412, label %.lr.ph.i.i164.preheader, label %vec.epilog.ph413, !prof !23

vec.epilog.ph413:                                 ; preds = %vector.main.loop.iter.check393, %vec.epilog.iter.check411
  %vec.epilog.resume.val407 = phi i64 [ %n.vec397, %vec.epilog.iter.check411 ], [ 0, %vector.main.loop.iter.check393 ]
  %n.vec415 = and i64 %i.iv, 2147483644           ; 4 uses
  %i.je = getelementptr i8, ptr %i.it, i64 %n.vec415
  %i.jf = getelementptr i8, ptr %1, i64 %n.vec415 ; 2 uses
  br label %vec.epilog.vector.body416

vec.epilog.vector.body416:                        ; preds = %vec.epilog.vector.body416, %vec.epilog.ph413
  %index417 = phi i64 [ %vec.epilog.resume.val407, %vec.epilog.ph413 ], [ %index.next421, %vec.epilog.vector.body416 ] ; 3 uses
  %next.gep418 = getelementptr i8, ptr %i.it, i64 %index417
  %next.gep419 = getelementptr i8, ptr %1, i64 %index417
  %wide.load420 = load <4 x i8>, ptr %next.gep418, align 1, !tbaa !18
  store <4 x i8> %wide.load420, ptr %next.gep419, align 1, !tbaa !18
  %index.next421 = add nuw i64 %index417, 4       ; 2 uses
  %i.jg = icmp eq i64 %index.next421, %n.vec415
  br i1 %i.jg, label %vec.epilog.middle.block422, label %vec.epilog.vector.body416, !llvm.loop !1225

vec.epilog.middle.block422:                       ; preds = %vec.epilog.vector.body416
  %cmp.n423 = icmp eq i64 %n.vec415, %i.iv
  br i1 %cmp.n423, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169, label %.lr.ph.i.i164.preheader

.lr.ph.i.i164.preheader:                          ; preds = %iter.check409, %vec.epilog.iter.check411, %vec.epilog.middle.block422
  %.011.i.i165.ph = phi ptr [ %i.it, %iter.check409 ], [ %i.iz, %vec.epilog.iter.check411 ], [ %i.je, %vec.epilog.middle.block422 ] ; 3 uses
  %.0810.i.i166.ph = phi ptr [ %1, %iter.check409 ], [ %i.ja, %vec.epilog.iter.check411 ], [ %i.jf, %vec.epilog.middle.block422 ] ; 2 uses
  %i.jh = add i64 %i.iu, %i.iv                    ; 2 uses
  %.011.i.i165.ph565 = ptrtoint ptr %.011.i.i165.ph to i64 ; 2 uses
  %i.ji = sub i64 %i.jh, %.011.i.i165.ph565
  %xtraiter566 = and i64 %i.ji, 7                 ; 2 uses
  %lcmp.mod567.not = icmp eq i64 %xtraiter566, 0
  br i1 %lcmp.mod567.not, label %.lr.ph.i.i164.prol.loopexit, label %.lr.ph.i.i164.prol

.lr.ph.i.i164.prol:                               ; preds = %.lr.ph.i.i164.preheader, %.lr.ph.i.i164.prol
  %.011.i.i165.prol = phi ptr [ %i.jk, %.lr.ph.i.i164.prol ], [ %.011.i.i165.ph, %.lr.ph.i.i164.preheader ] ; 2 uses
  %.0810.i.i166.prol = phi ptr [ %i.jl, %.lr.ph.i.i164.prol ], [ %.0810.i.i166.ph, %.lr.ph.i.i164.preheader ] ; 2 uses
  %prol.iter568 = phi i64 [ %prol.iter568.next, %.lr.ph.i.i164.prol ], [ 0, %.lr.ph.i.i164.preheader ]
  %i.jj = load i8, ptr %.011.i.i165.prol, align 1, !tbaa !18
  store i8 %i.jj, ptr %.0810.i.i166.prol, align 1, !tbaa !18
  %i.jk = getelementptr inbounds nuw i8, ptr %.011.i.i165.prol, i64 1 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.0810.i.i166.prol, i64 1 ; 3 uses
  %prol.iter568.next = add i64 %prol.iter568, 1   ; 2 uses
  %prol.iter568.cmp.not = icmp eq i64 %prol.iter568.next, %xtraiter566
  br i1 %prol.iter568.cmp.not, label %.lr.ph.i.i164.prol.loopexit, label %.lr.ph.i.i164.prol, !llvm.loop !1226

.lr.ph.i.i164.prol.loopexit:                      ; preds = %.lr.ph.i.i164.prol, %.lr.ph.i.i164.preheader
  %.lcssa550.unr = phi ptr [ poison, %.lr.ph.i.i164.preheader ], [ %i.jl, %.lr.ph.i.i164.prol ]
  %.011.i.i165.unr = phi ptr [ %.011.i.i165.ph, %.lr.ph.i.i164.preheader ], [ %i.jk, %.lr.ph.i.i164.prol ]
  %.0810.i.i166.unr = phi ptr [ %.0810.i.i166.ph, %.lr.ph.i.i164.preheader ], [ %i.jl, %.lr.ph.i.i164.prol ]
  %i.jm = sub i64 %.011.i.i165.ph565, %i.jh
  %i.jn = icmp ugt i64 %i.jm, -8
  br i1 %i.jn, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169, label %.lr.ph.i.i164

.lr.ph.i.i164:                                    ; preds = %.lr.ph.i.i164.prol.loopexit, %.lr.ph.i.i164
  %.011.i.i165 = phi ptr [ %i.kk, %.lr.ph.i.i164 ], [ %.011.i.i165.unr, %.lr.ph.i.i164.prol.loopexit ] ; 9 uses
  %.0810.i.i166 = phi ptr [ %i.kl, %.lr.ph.i.i164 ], [ %.0810.i.i166.unr, %.lr.ph.i.i164.prol.loopexit ] ; 9 uses
  %i.jo = load i8, ptr %.011.i.i165, align 1, !tbaa !18
  store i8 %i.jo, ptr %.0810.i.i166, align 1, !tbaa !18
  %i.jp = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 1
  %i.jq = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 1
  %i.jr = load i8, ptr %i.jp, align 1, !tbaa !18
  store i8 %i.jr, ptr %i.jq, align 1, !tbaa !18
  %i.js = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 2
  %i.jt = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 2
  %i.ju = load i8, ptr %i.js, align 1, !tbaa !18
  store i8 %i.ju, ptr %i.jt, align 1, !tbaa !18
  %i.jv = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 3
  %i.jw = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 3
  %i.jx = load i8, ptr %i.jv, align 1, !tbaa !18
  store i8 %i.jx, ptr %i.jw, align 1, !tbaa !18
  %i.jy = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 4
  %i.jz = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 4
  %i.ka = load i8, ptr %i.jy, align 1, !tbaa !18
  store i8 %i.ka, ptr %i.jz, align 1, !tbaa !18
  %i.kb = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 5
  %i.kc = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 5
  %i.kd = load i8, ptr %i.kb, align 1, !tbaa !18
  store i8 %i.kd, ptr %i.kc, align 1, !tbaa !18
  %i.ke = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 6
  %i.kf = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 6
  %i.kg = load i8, ptr %i.ke, align 1, !tbaa !18
  store i8 %i.kg, ptr %i.kf, align 1, !tbaa !18
  %i.kh = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 7
  %i.ki = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 7
  %i.kj = load i8, ptr %i.kh, align 1, !tbaa !18
  store i8 %i.kj, ptr %i.ki, align 1, !tbaa !18
  %i.kk = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 8 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 8 ; 2 uses
  %.not.i.i167.7 = icmp eq ptr %i.kk, %i.iw
  br i1 %.not.i.i167.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169, label %.lr.ph.i.i164, !llvm.loop !1227

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169: ; preds = %.lr.ph.i.i164.prol.loopexit, %.lr.ph.i.i164, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162, %middle.block405, %vec.epilog.middle.block422
  %.11 = phi ptr [ %.lcssa548.unr.a, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162 ], [ %i.jf, %vec.epilog.middle.block422 ], [ %i.ja, %middle.block405 ], [ %.lcssa550.unr, %.lr.ph.i.i164.prol.loopexit ], [ %i.kl, %.lr.ph.i.i164 ] ; 7 uses
  %.11430 = ptrtoaddr ptr %.11 to i64             ; 2 uses
  %i.km = load i32, ptr %i.h, align 4
  %i.kn = and i32 %i.km, 536870912
  %.not = icmp eq i32 %i.kn, 0
  br i1 %.not, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169
  %i.ko = load i32, ptr %i.b, align 8, !tbaa !1204 ; 3 uses
  %i.kp = icmp sgt i32 %i.ko, %i.f
  br i1 %i.kp, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.z
  %i.kq = load ptr, ptr %0, align 8, !tbaa !1200
  %i.kr = zext nneg i32 %i.ko to i64
  %i.ks = zext nneg i32 %i.f to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.ab
  %indvars.iv = phi i64 [ %i.kr, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 3 uses
  %i.kt = getelementptr i8, ptr %i.kq, i64 %indvars.iv
  %i.ku = getelementptr i8, ptr %i.kt, i64 -1
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !18
  %i.kw = icmp eq i8 %i.kv, 48
  br i1 %i.kw, label %bb.ab, label %.critedge.loopexit

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.kx = icmp sgt i64 %indvars.iv.next, %i.ks
  br i1 %i.kx, label %bb.aa, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, !llvm.loop !1228
end_hunk_0
begin_hunk_1_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS1_12float_writerIwEEEEvRKNS0_18basic_format_specsIwEEOT_:bb.a

bb.i:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE7reserveEm.exit41
  %i.bh = lshr i64 %i.ah, 1                       ; 4 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit49, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.idx.i.i44 = shl nuw nsw i64 %i.bh, 2          ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i.i44 ; 3 uses
  %i.bk = add nsw i64 %.idx.i.i44, -4             ; 2 uses
  %i.bl = lshr exact i64 %i.bk, 2
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bk, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i45.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.j
  %n.vec = and i64 %i.bm, 9223372036854775800     ; 3 uses
  %i.bn = shl i64 %n.vec, 2
  %i.bo = getelementptr i8, ptr %i.ae, i64 %i.bn
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !130
  store <4 x i32> %broadcast.splat, ptr %i.bq, align 4, !tbaa !130
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !3351

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit49, label %.lr.ph.i.i.i.i45.preheader

.lr.ph.i.i.i.i45.preheader:                       ; preds = %bb.j, %middle.block
  %.06.i.i.i.i46.ph = phi ptr [ %i.ae, %bb.j ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i45

.lr.ph.i.i.i.i45:                                 ; preds = %.lr.ph.i.i.i.i45.preheader, %.lr.ph.i.i.i.i45
  %.06.i.i.i.i46 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i45 ], [ %.06.i.i.i.i46.ph, %.lr.ph.i.i.i.i45.preheader ] ; 2 uses
  store i32 %i.ag, ptr %.06.i.i.i.i46, align 4, !tbaa !130
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i46, i64 4 ; 2 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.bs, %i.bj
  br i1 %.not.i.i.i.i47, label %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit49, label %.lr.ph.i.i.i.i45, !llvm.loop !3352

_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit49:            ; preds = %.lr.ph.i.i.i.i45, %middle.block, %bb.i
  %.0.i.i48 = phi ptr [ %i.ae, %bb.i ], [ %i.bj, %middle.block ], [ %i.bj, %.lr.ph.i.i.i.i45 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = lshr i32 %i.bu, 8
  %i.bw = and i32 %i.bv, 255                      ; 2 uses
  %.not.i50 = icmp eq i32 %i.bw, 0
  br i1 %.not.i50, label %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit52, label %bb.k

bb.k:                                             ; preds = %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit49
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !18
  %i.ca = sext i8 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i48, i64 4
  store i32 %i.ca, ptr %.0.i.i48, align 4, !tbaa !130
  br label %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit52

_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit52: ; preds = %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit49, %bb.k
  %i.cc = phi ptr [ %i.cb, %bb.k ], [ %.0.i.i48, %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit49 ]
  %i.cd = tail call noundef ptr @_ZNK10duckdb_fmt2v68internal12float_writerIwE8prettifyIPwEET_S6_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %i.cc) ; 4 uses
  %i.ce = sub nsw i64 %i.ah, %i.bh
  %.idx.i.i53 = shl nuw nsw i64 %i.ce, 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i.i53
  %i.cg = shl nuw nsw i64 %i.d, 2
  %i.ch = add nsw i64 %i.cg, -4
  %i.ci = add i64 %i.c, %i.bh
  %i.cj = shl i64 %i.ci, 2
  %i.ck = sub i64 %i.ch, %i.cj                    ; 2 uses
  %i.cl = lshr exact i64 %i.ck, 2
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check89 = icmp ult i64 %i.ck, 28
  br i1 %min.iters.check89, label %.lr.ph.i.i.i.i54.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit52
  %n.vec92 = and i64 %i.cm, 9223372036854775800   ; 3 uses
  %i.cn = shl i64 %n.vec92, 2
  %i.co = getelementptr i8, ptr %i.cd, i64 %i.cn
  %broadcast.splatinsert93 = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat94 = shufflevector <4 x i32> %broadcast.splatinsert93, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph90
  %index96 = phi i64 [ 0, %vector.ph90 ], [ %index.next98, %vector.body95 ] ; 2 uses
  %i.cp = shl i64 %index96, 2
  %next.gep97 = getelementptr i8, ptr %i.cd, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep97, i64 16
  store <4 x i32> %broadcast.splat94, ptr %next.gep97, align 4, !tbaa !130
  store <4 x i32> %broadcast.splat94, ptr %i.cq, align 4, !tbaa !130
  %index.next98 = add nuw i64 %index96, 8         ; 2 uses
  %i.cr = icmp eq i64 %index.next98, %n.vec92
  br i1 %i.cr, label %middle.block99, label %vector.body95, !llvm.loop !3353

middle.block99:                                   ; preds = %vector.body95
  %cmp.n100 = icmp eq i64 %i.cm, %n.vec92
  br i1 %cmp.n100, label %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit58, label %.lr.ph.i.i.i.i54.preheader

.lr.ph.i.i.i.i54.preheader:                       ; preds = %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit52, %middle.block99
  %.06.i.i.i.i55.ph = phi ptr [ %i.cd, %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit52 ], [ %i.co, %middle.block99 ]
  br label %.lr.ph.i.i.i.i54

.lr.ph.i.i.i.i54:                                 ; preds = %.lr.ph.i.i.i.i54.preheader, %.lr.ph.i.i.i.i54
  %.06.i.i.i.i55 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i54 ], [ %.06.i.i.i.i55.ph, %.lr.ph.i.i.i.i54.preheader ] ; 2 uses
  store i32 %i.ag, ptr %.06.i.i.i.i55, align 4, !tbaa !130
  %i.cs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i55, i64 4 ; 2 uses
  %.not.i.i.i.i56 = icmp eq ptr %i.cs, %i.cf
  br i1 %.not.i.i.i.i56, label %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit58, label %.lr.ph.i.i.i.i54, !llvm.loop !3354

bb.l:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE7reserveEm.exit41
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = lshr i32 %i.cu, 8
  %i.cw = and i32 %i.cv, 255                      ; 2 uses
  %.not.i59 = icmp eq i32 %i.cw, 0
  br i1 %.not.i59, label %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit61, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !18
  %i.da = sext i8 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.da, ptr %i.ae, align 4, !tbaa !130
  br label %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit61

_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit61: ; preds = %bb.l, %bb.m
  %i.dc = phi ptr [ %i.db, %bb.m ], [ %i.ae, %bb.l ]
  %i.dd = tail call noundef ptr @_ZNK10duckdb_fmt2v68internal12float_writerIwE8prettifyIPwEET_S6_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %i.dc) ; 4 uses
  %.idx.i.i62 = shl nuw nsw i64 %i.ah, 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx.i.i62
  %i.df = shl nuw nsw i64 %i.d, 2
  %i.dg = add nsw i64 %i.df, -4
  %i.dh = shl i64 %i.c, 2
  %i.di = sub i64 %i.dg, %i.dh                    ; 2 uses
  %i.dj = lshr exact i64 %i.di, 2
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check117 = icmp ult i64 %i.di, 28
  br i1 %min.iters.check117, label %.lr.ph.i.i.i.i63.preheader, label %vector.ph118

vector.ph118:                                     ; preds = %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit61
  %n.vec120 = and i64 %i.dk, 9223372036854775800  ; 3 uses
  %i.dl = shl i64 %n.vec120, 2
  %i.dm = getelementptr i8, ptr %i.dd, i64 %i.dl
  %broadcast.splatinsert121 = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat122 = shufflevector <4 x i32> %broadcast.splatinsert121, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph118
  %index124 = phi i64 [ 0, %vector.ph118 ], [ %index.next126, %vector.body123 ] ; 2 uses
  %i.dn = shl i64 %index124, 2
  %next.gep125 = getelementptr i8, ptr %i.dd, i64 %i.dn ; 2 uses
  %i.do = getelementptr i8, ptr %next.gep125, i64 16
  store <4 x i32> %broadcast.splat122, ptr %next.gep125, align 4, !tbaa !130
  store <4 x i32> %broadcast.splat122, ptr %i.do, align 4, !tbaa !130
  %index.next126 = add nuw i64 %index124, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next126, %n.vec120
  br i1 %i.dp, label %middle.block127, label %vector.body123, !llvm.loop !3355

middle.block127:                                  ; preds = %vector.body123
  %cmp.n128 = icmp eq i64 %i.dk, %n.vec120
  br i1 %cmp.n128, label %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit58, label %.lr.ph.i.i.i.i63.preheader

.lr.ph.i.i.i.i63.preheader:                       ; preds = %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit61, %middle.block127
  %.06.i.i.i.i64.ph = phi ptr [ %i.dd, %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit61 ], [ %i.dm, %middle.block127 ]
  br label %.lr.ph.i.i.i.i63

.lr.ph.i.i.i.i63:                                 ; preds = %.lr.ph.i.i.i.i63.preheader, %.lr.ph.i.i.i.i63
  %.06.i.i.i.i64 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i63 ], [ %.06.i.i.i.i64.ph, %.lr.ph.i.i.i.i63.preheader ] ; 2 uses
  store i32 %i.ag, ptr %.06.i.i.i.i64, align 4, !tbaa !130
  %i.dq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i64, i64 4 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.dq, %i.de
  br i1 %.not.i.i.i.i65, label %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit58, label %.lr.ph.i.i.i.i63, !llvm.loop !3356

_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit58.sink.split: ; preds = %bb.h, %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit, %bb.d, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE7reserveEm.exit
  %.sink = phi ptr [ %i.o, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE7reserveEm.exit ], [ %i.x, %bb.d ], [ %i.bg, %bb.h ], [ %i.al, %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit ]
  %i.dr = tail call noundef ptr @_ZNK10duckdb_fmt2v68internal12float_writerIwE8prettifyIPwEET_S6_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %.sink) ; 0 uses
  br label %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit58

_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit58:            ; preds = %.lr.ph.i.i.i.i54, %.lr.ph.i.i.i.i63, %middle.block99, %middle.block127, %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit58.sink.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK10duckdb_fmt2v68internal12float_writerIwE8prettifyIPwEET_S6_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3337 ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3338 ; 4 uses
  %i.e = add i32 %i.d, %i.b                       ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 6 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = and i32 %i.h, 255
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !3335   ; 7 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !18
  %i.m = sext i8 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 %i.m, ptr %1, align 4, !tbaa !130
  %i.o = load i32, ptr %i.f, align 8, !tbaa !3357
  %i.p = sub nsw i32 %i.o, %i.b                   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  %i.r = load i32, ptr %i.g, align 4
  %i.s = and i32 %i.r, 536870912
  %i.t = icmp ne i32 %i.s, 0
  %i.u = select i1 %i.q, i1 %i.t, i1 false        ; 2 uses
  %i.v = icmp sgt i32 %i.b, 1                     ; 2 uses
  %or.cond = select i1 %i.v, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.c, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !3339
  %i.y = getelementptr i8, ptr %1, i64 8          ; 6 uses
  store i32 %i.x, ptr %i.n, align 4, !tbaa !130
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %i.z = zext nneg i32 %i.b to i64                ; 6 uses
  %i.aa = add nsw i64 %i.z, -1                    ; 2 uses
  %min.iters.check534 = icmp ult i32 %i.b, 29
  br i1 %min.iters.check534, label %.lr.ph.i.i.i.i.i.i.preheader562, label %vector.memcheck524

vector.memcheck524:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ab = shl nuw nsw i64 %i.z, 2
  %i.ac = getelementptr i8, ptr %1, i64 %i.ab
  %scevgep526 = getelementptr i8, ptr %i.ac, i64 4
  %scevgep527 = getelementptr i8, ptr %i.k, i64 1
  %scevgep528 = getelementptr i8, ptr %i.k, i64 %i.z
  %bound0529 = icmp ult ptr %i.y, %scevgep528
  %bound1530 = icmp ult ptr %scevgep527, %scevgep526
  %found.conflict531 = and i1 %bound0529, %bound1530
  br i1 %found.conflict531, label %.lr.ph.i.i.i.i.i.i.preheader562, label %vector.ph535

vector.ph535:                                     ; preds = %vector.memcheck524
  %n.vec537 = and i64 %i.aa, -8                   ; 5 uses
  %i.ad = sub nsw i64 %i.z, %n.vec537
  %i.ae = shl nsw i64 %n.vec537, 2
  %i.af = getelementptr i8, ptr %i.y, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.k, i64 %n.vec537
  br label %vector.body538

vector.body538:                                   ; preds = %vector.body538, %vector.ph535
  %index539 = phi i64 [ 0, %vector.ph535 ], [ %index.next544, %vector.body538 ] ; 3 uses
  %i.ah = shl i64 %index539, 2
  %next.gep540 = getelementptr i8, ptr %i.y, i64 %i.ah ; 2 uses
  %next.gep541 = getelementptr i8, ptr %i.k, i64 %index539 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %next.gep541, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep541, i64 5
  %wide.load542 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !18, !alias.scope !3358
  %wide.load543 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !18, !alias.scope !3358
  %i.ak = sext <4 x i8> %wide.load542 to <4 x i32>
  %i.al = sext <4 x i8> %wide.load543 to <4 x i32>
  %i.am = getelementptr i8, ptr %next.gep540, i64 16
  store <4 x i32> %i.ak, ptr %next.gep540, align 4, !tbaa !130, !alias.scope !3361, !noalias !3358
  store <4 x i32> %i.al, ptr %i.am, align 4, !tbaa !130, !alias.scope !3361, !noalias !3358
  %index.next544 = add nuw i64 %index539, 8       ; 2 uses
  %i.an = icmp eq i64 %index.next544, %n.vec537
  br i1 %i.an, label %middle.block545, label %vector.body538, !llvm.loop !3363

middle.block545:                                  ; preds = %vector.body538
  %cmp.n546 = icmp eq i64 %i.aa, %n.vec537
  br i1 %cmp.n546, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit, label %.lr.ph.i.i.i.i.i.i.preheader562

.lr.ph.i.i.i.i.i.i.preheader562:                  ; preds = %vector.memcheck524, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block545
  %.012.i.i.i.i.i.i.in.ph = phi i64 [ %i.z, %vector.memcheck524 ], [ %i.z, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block545 ]
  %.0811.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck524 ], [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block545 ]
  %.0910.i.i.i.i.i.i.pn.ph = phi ptr [ %i.k, %vector.memcheck524 ], [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block545 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader562, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.in = phi i64 [ %.012.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.in.ph, %.lr.ph.i.i.i.i.i.i.preheader562 ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader562 ] ; 2 uses
  %.0910.i.i.i.i.i.i.pn = phi ptr [ %.0910.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.pn.ph, %.lr.ph.i.i.i.i.i.i.preheader562 ]
  %.0910.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.pn, i64 1 ; 2 uses
  %.012.i.i.i.i.i.i = add nsw i64 %.012.i.i.i.i.i.i.in, -1
  %i.ao = load i8, ptr %.0910.i.i.i.i.i.i, align 1, !tbaa !18
  %i.ap = sext i8 %i.ao to i32
  store i32 %i.ap, ptr %.0811.i.i.i.i.i.i, align 4, !tbaa !130
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ar = icmp samesign ugt i64 %.012.i.i.i.i.i.i.in, 2
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit, !llvm.loop !3364

_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block545, %bb.b, %bb.c
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.n, %bb.b ], [ %i.af, %middle.block545 ], [ %i.aq, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  br i1 %i.u, label %bb.d, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit

bb.d:                                             ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit
  %i.as = zext nneg i32 %i.p to i64
  %.idx.i.i = shl nuw nsw i64 %i.as, 2            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i.i.i, i64 %.idx.i.i ; 3 uses
  %i.au = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.av = lshr exact i64 %i.au, 2
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check551 = icmp ult i64 %i.au, 28
  br i1 %min.iters.check551, label %.lr.ph.i.i.i.i.preheader, label %vector.ph552

vector.ph552:                                     ; preds = %bb.d
  %n.vec554 = and i64 %i.aw, 9223372036854775800  ; 3 uses
  %i.ax = shl i64 %n.vec554, 2
  %i.ay = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i, i64 %i.ax
  br label %vector.body555

vector.body555:                                   ; preds = %vector.body555, %vector.ph552
  %index556 = phi i64 [ 0, %vector.ph552 ], [ %index.next558, %vector.body555 ] ; 2 uses
  %i.az = shl i64 %index556, 2
  %next.gep557 = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep557, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep557, align 4, !tbaa !130
  store <4 x i32> splat (i32 48), ptr %i.ba, align 4, !tbaa !130
  %index.next558 = add nuw i64 %index556, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next558, %n.vec554
  br i1 %i.bb, label %middle.block559, label %vector.body555, !llvm.loop !3365

middle.block559:                                  ; preds = %vector.body555
  %cmp.n560 = icmp eq i64 %i.aw, %n.vec554
  br i1 %cmp.n560, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d, %middle.block559
  %.06.i.i.i.i.ph = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %bb.d ], [ %i.ay, %middle.block559 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  store i32 48, ptr %.06.i.i.i.i, align 4, !tbaa !130
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.at
  br i1 %.not.i.i.i.i, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3366

_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i, %middle.block559, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit
  %.1106 = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit ], [ %i.at, %middle.block559 ], [ %i.at, %.lr.ph.i.i.i.i ] ; 4 uses
  %.shift132 = getelementptr inbounds nuw i8, ptr %0, i64 31
  %2 = load i8, ptr %.shift132, align 1
  %3 = trunc i8 %2 to i1
  %i.bd = select i1 %3, i32 69, i32 101
  %i.be = getelementptr inbounds nuw i8, ptr %.1106, i64 4
  store i32 %i.bd, ptr %.1106, align 4, !tbaa !130
  %i.bf = add nsw i32 %i.e, -1
  %i.bg = icmp slt i32 %i.e, 1
  %spec.select.i = select i1 %i.bg, i32 45, i32 43
  %spec.select23.i = tail call i32 @llvm.abs.i32(i32 %i.bf, i1 true) ; 5 uses
  store i32 %spec.select.i, ptr %i.be, align 4, !tbaa !130
  %.017.i = getelementptr inbounds nuw i8, ptr %.1106, i64 8 ; 3 uses
  %i.bh = icmp samesign ugt i32 %spec.select23.i, 99
  br i1 %i.bh, label %bb.e, label %_ZN10duckdb_fmt2v68internal14write_exponentIwPwEET0_iS4_.exit

bb.e:                                             ; preds = %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit
  %i.bi = udiv i32 %spec.select23.i, 100
  %i.bj = urem i32 %spec.select23.i, 100
  %i.bk = shl nuw nsw i32 %i.bi, 1
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.bl ; 2 uses
  %i.bn = icmp samesign ugt i32 %spec.select23.i, 999
  br i1 %i.bn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bo = load i8, ptr %i.bm, align 2, !tbaa !18
  %i.bp = sext i8 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %.1106, i64 12
  store i32 %i.bp, ptr %.017.i, align 4, !tbaa !130
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.118.i = phi ptr [ %i.bq, %bb.f ], [ %.017.i, %bb.e ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !18
  %i.bt = sext i8 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %.118.i, i64 4
  store i32 %i.bt, ptr %.118.i, align 4, !tbaa !130
  br label %_ZN10duckdb_fmt2v68internal14write_exponentIwPwEET0_iS4_.exit

_ZN10duckdb_fmt2v68internal14write_exponentIwPwEET0_iS4_.exit: ; preds = %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit, %bb.g
  %.2.i = phi ptr [ %i.bu, %bb.g ], [ %.017.i, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit ] ; 3 uses
  %.1.i = phi i32 [ %i.bj, %bb.g ], [ %spec.select23.i, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit ]
  %i.bv = shl nuw nsw i32 %.1.i, 1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.bw ; 2 uses
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !18
  %i.bz = sext i8 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  store i32 %i.bz, ptr %.2.i, align 4, !tbaa !130
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.cd = sext i8 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %.2.i, i64 8
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !130
  br label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187

bb.h:                                             ; preds = %bb.a
  %.not124 = icmp slt i32 %i.d, 0
  br i1 %.not124, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = and i32 %i.h, 16711680
  %i.cg = icmp ne i32 %i.cf, 0
  %i.ch = icmp sgt i32 %i.e, 3
  %or.cond3 = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond3, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ci = urem i32 %i.e, 3                        ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  %spec.select = select i1 %i.cj, i32 3, i32 %i.ci
  %.shift130 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.ck = load ptr, ptr %0, align 8               ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145
  %.2254 = phi ptr [ %1, %bb.j ], [ %.5, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145 ] ; 3 uses
  %.0108253 = phi i32 [ 0, %bb.j ], [ %i.el, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145 ] ; 5 uses
  %storemerge252 = phi i32 [ %spec.select, %bb.j ], [ 3, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145 ] ; 5 uses
  %i.cl = icmp sgt i32 %.0108253, 0
  br i1 %i.cl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %4 = load i16, ptr %.shift130, align 2
  %5 = zext i16 %4 to i32
  %i.cm = shl i32 %5, 24
  %i.cn = ashr exact i32 %i.cm, 24
  %i.co = getelementptr inbounds nuw i8, ptr %.2254, i64 4
  store i32 %i.cn, ptr %.2254, align 4, !tbaa !130
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3 = phi ptr [ %i.co, %bb.l ], [ %.2254, %bb.k ] ; 10 uses
  %i.cp = icmp slt i32 %.0108253, %i.b
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i.i135.preheader, label %bb.p

.lr.ph.i.i.i.i.i.i135.preheader:                  ; preds = %bb.m
  %i.cq = sub i32 %i.b, %.0108253                 ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %storemerge252, i32 %i.cq) ; 3 uses
  %i.cr = sext i32 %.0108253 to i64               ; 2 uses
  %i.cs = getelementptr i8, ptr %i.ck, i64 %i.cr  ; 5 uses
  %i.ct = sext i32 %.sroa.speculated to i64       ; 7 uses
  %min.iters.check366 = icmp ult i32 %.sroa.speculated, 12
  br i1 %min.iters.check366, label %.lr.ph.i.i.i.i.i.i135.preheader577, label %vector.memcheck356

vector.memcheck356:                               ; preds = %.lr.ph.i.i.i.i.i.i135.preheader
  %i.cu = shl nsw i64 %i.ct, 2
  %scevgep358 = getelementptr i8, ptr %.3, i64 %i.cu
  %i.cv = getelementptr i8, ptr %i.ck, i64 %i.ct
  %scevgep360 = getelementptr i8, ptr %i.cv, i64 %i.cr
  %bound0361 = icmp ult ptr %.3, %scevgep360
  %bound1362 = icmp ult ptr %i.cs, %scevgep358
  %found.conflict363 = and i1 %bound0361, %bound1362
  br i1 %found.conflict363, label %.lr.ph.i.i.i.i.i.i135.preheader577, label %vector.ph367

vector.ph367:                                     ; preds = %vector.memcheck356
  %n.vec369 = and i64 %i.ct, -8                   ; 4 uses
  %i.cw = and i64 %i.ct, 7
  %i.cx = shl nsw i64 %n.vec369, 2
  %i.cy = getelementptr i8, ptr %.3, i64 %i.cx    ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cs, i64 %n.vec369
  br label %vector.body370

vector.body370:                                   ; preds = %vector.body370, %vector.ph367
  %index371 = phi i64 [ 0, %vector.ph367 ], [ %index.next376, %vector.body370 ] ; 3 uses
  %i.da = shl i64 %index371, 2
  %next.gep372 = getelementptr i8, ptr %.3, i64 %i.da ; 2 uses
  %next.gep373 = getelementptr i8, ptr %i.cs, i64 %index371 ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep373, i64 4
  %wide.load374 = load <4 x i8>, ptr %next.gep373, align 1, !tbaa !18, !alias.scope !3367
  %wide.load375 = load <4 x i8>, ptr %i.db, align 1, !tbaa !18, !alias.scope !3367
  %i.dc = sext <4 x i8> %wide.load374 to <4 x i32>
  %i.dd = sext <4 x i8> %wide.load375 to <4 x i32>
  %i.de = getelementptr i8, ptr %next.gep372, i64 16
  store <4 x i32> %i.dc, ptr %next.gep372, align 4, !tbaa !130, !alias.scope !3370, !noalias !3367
  store <4 x i32> %i.dd, ptr %i.de, align 4, !tbaa !130, !alias.scope !3370, !noalias !3367
  %index.next376 = add nuw i64 %index371, 8       ; 2 uses
  %i.df = icmp eq i64 %index.next376, %n.vec369
  br i1 %i.df, label %middle.block377, label %vector.body370, !llvm.loop !3372

middle.block377:                                  ; preds = %vector.body370
  %cmp.n378 = icmp eq i64 %n.vec369, %i.ct
  br i1 %cmp.n378, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit139.loopexit, label %.lr.ph.i.i.i.i.i.i135.preheader577

.lr.ph.i.i.i.i.i.i135.preheader577:               ; preds = %vector.memcheck356, %.lr.ph.i.i.i.i.i.i135.preheader, %middle.block377
  %.012.i.i.i.i.i.i136.ph = phi i64 [ %i.ct, %vector.memcheck356 ], [ %i.ct, %.lr.ph.i.i.i.i.i.i135.preheader ], [ %i.cw, %middle.block377 ]
  %.0811.i.i.i.i.i.i137.ph = phi ptr [ %.3, %vector.memcheck356 ], [ %.3, %.lr.ph.i.i.i.i.i.i135.preheader ], [ %i.cy, %middle.block377 ]
  %.0910.i.i.i.i.i.i138.ph = phi ptr [ %i.cs, %vector.memcheck356 ], [ %i.cs, %.lr.ph.i.i.i.i.i.i135.preheader ], [ %i.cz, %middle.block377 ]
  br label %.lr.ph.i.i.i.i.i.i135

.lr.ph.i.i.i.i.i.i135:                            ; preds = %.lr.ph.i.i.i.i.i.i135.preheader577, %.lr.ph.i.i.i.i.i.i135
  %.012.i.i.i.i.i.i136 = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i.i135 ], [ %.012.i.i.i.i.i.i136.ph, %.lr.ph.i.i.i.i.i.i135.preheader577 ] ; 2 uses
  %.0811.i.i.i.i.i.i137 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i135 ], [ %.0811.i.i.i.i.i.i137.ph, %.lr.ph.i.i.i.i.i.i135.preheader577 ] ; 2 uses
  %.0910.i.i.i.i.i.i138 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i135 ], [ %.0910.i.i.i.i.i.i138.ph, %.lr.ph.i.i.i.i.i.i135.preheader577 ] ; 2 uses
  %i.dg = load i8, ptr %.0910.i.i.i.i.i.i138, align 1, !tbaa !18
  %i.dh = sext i8 %i.dg to i32
  store i32 %i.dh, ptr %.0811.i.i.i.i.i.i137, align 4, !tbaa !130
  %i.di = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i138, i64 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i137, i64 4 ; 2 uses
  %i.dk = add nsw i64 %.012.i.i.i.i.i.i136, -1
  %i.dl = icmp samesign ugt i64 %.012.i.i.i.i.i.i136, 1
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i.i135, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit139.loopexit, !llvm.loop !3373

_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit139.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i135, %middle.block377
  %.lcssa325 = phi ptr [ %i.cy, %middle.block377 ], [ %i.dj, %.lr.ph.i.i.i.i.i.i135 ] ; 6 uses
  %i.dm = icmp slt i32 %i.cq, %storemerge252
  br i1 %i.dm, label %bb.n, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145

bb.n:                                             ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit139.loopexit
  %i.dn = sub nsw i32 %storemerge252, %.sroa.speculated ; 2 uses
  %i.do = icmp slt i32 %i.dn, 1
  br i1 %i.do, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dp = zext nneg i32 %i.dn to i64
  %.idx.i.i140 = shl nuw nsw i64 %i.dp, 2         ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.lcssa325, i64 %.idx.i.i140 ; 3 uses
  %i.dr = add nsw i64 %.idx.i.i140, -4            ; 2 uses
  %i.ds = lshr exact i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check345 = icmp ult i64 %i.dr, 28
  br i1 %min.iters.check345, label %.lr.ph.i.i.i.i141.preheader, label %vector.ph346

vector.ph346:                                     ; preds = %bb.o
  %n.vec348 = and i64 %i.dt, 9223372036854775800  ; 3 uses
  %i.du = shl i64 %n.vec348, 2
  %i.dv = getelementptr i8, ptr %.lcssa325, i64 %i.du
  br label %vector.body349

vector.body349:                                   ; preds = %vector.body349, %vector.ph346
  %index350 = phi i64 [ 0, %vector.ph346 ], [ %index.next352, %vector.body349 ] ; 2 uses
  %i.dw = shl i64 %index350, 2
  %next.gep351 = getelementptr i8, ptr %.lcssa325, i64 %i.dw ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep351, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep351, align 4, !tbaa !130
  store <4 x i32> splat (i32 48), ptr %i.dx, align 4, !tbaa !130
  %index.next352 = add nuw i64 %index350, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next352, %n.vec348
  br i1 %i.dy, label %middle.block353, label %vector.body349, !llvm.loop !3374

middle.block353:                                  ; preds = %vector.body349
  %cmp.n354 = icmp eq i64 %i.dt, %n.vec348
  br i1 %cmp.n354, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145, label %.lr.ph.i.i.i.i141.preheader

.lr.ph.i.i.i.i141.preheader:                      ; preds = %bb.o, %middle.block353
  %.06.i.i.i.i142.ph = phi ptr [ %.lcssa325, %bb.o ], [ %i.dv, %middle.block353 ]
  br label %.lr.ph.i.i.i.i141

.lr.ph.i.i.i.i141:                                ; preds = %.lr.ph.i.i.i.i141.preheader, %.lr.ph.i.i.i.i141
  %.06.i.i.i.i142 = phi ptr [ %i.dz, %.lr.ph.i.i.i.i141 ], [ %.06.i.i.i.i142.ph, %.lr.ph.i.i.i.i141.preheader ] ; 2 uses
  store i32 48, ptr %.06.i.i.i.i142, align 4, !tbaa !130
  %i.dz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i142, i64 4 ; 2 uses
  %.not.i.i.i.i143 = icmp eq ptr %i.dz, %i.dq
  br i1 %.not.i.i.i.i143, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145, label %.lr.ph.i.i.i.i141, !llvm.loop !3375

bb.p:                                             ; preds = %bb.m
  %i.ea = zext nneg i32 %storemerge252 to i64
  %.idx.i.i146 = shl nuw nsw i64 %i.ea, 2         ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.3, i64 %.idx.i.i146 ; 3 uses
  %i.ec = add nsw i64 %.idx.i.i146, -4            ; 2 uses
  %i.ed = lshr exact i64 %i.ec, 2
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %min.iters.check383 = icmp ult i64 %i.ec, 28
  br i1 %min.iters.check383, label %.lr.ph.i.i.i.i147.preheader, label %vector.ph384

vector.ph384:                                     ; preds = %bb.p
  %n.vec386 = and i64 %i.ee, 9223372036854775800  ; 3 uses
  %i.ef = shl i64 %n.vec386, 2
  %i.eg = getelementptr i8, ptr %.3, i64 %i.ef
  br label %vector.body387

vector.body387:                                   ; preds = %vector.body387, %vector.ph384
  %index388 = phi i64 [ 0, %vector.ph384 ], [ %index.next390, %vector.body387 ] ; 2 uses
  %i.eh = shl i64 %index388, 2
  %next.gep389 = getelementptr i8, ptr %.3, i64 %i.eh ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep389, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep389, align 4, !tbaa !130
  store <4 x i32> splat (i32 48), ptr %i.ei, align 4, !tbaa !130
  %index.next390 = add nuw i64 %index388, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next390, %n.vec386
  br i1 %i.ej, label %middle.block391, label %vector.body387, !llvm.loop !3376

middle.block391:                                  ; preds = %vector.body387
  %cmp.n392 = icmp eq i64 %i.ee, %n.vec386
  br i1 %cmp.n392, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145, label %.lr.ph.i.i.i.i147.preheader

.lr.ph.i.i.i.i147.preheader:                      ; preds = %bb.p, %middle.block391
  %.06.i.i.i.i148.ph = phi ptr [ %.3, %bb.p ], [ %i.eg, %middle.block391 ]
  br label %.lr.ph.i.i.i.i147

.lr.ph.i.i.i.i147:                                ; preds = %.lr.ph.i.i.i.i147.preheader, %.lr.ph.i.i.i.i147
  %.06.i.i.i.i148 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i147 ], [ %.06.i.i.i.i148.ph, %.lr.ph.i.i.i.i147.preheader ] ; 2 uses
  store i32 48, ptr %.06.i.i.i.i148, align 4, !tbaa !130
  %i.ek = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i148, i64 4 ; 2 uses
  %.not.i.i.i.i149 = icmp eq ptr %i.ek, %i.eb
  br i1 %.not.i.i.i.i149, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145, label %.lr.ph.i.i.i.i147, !llvm.loop !3377

_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145:           ; preds = %.lr.ph.i.i.i.i147, %.lr.ph.i.i.i.i141, %middle.block391, %middle.block353, %bb.n, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit139.loopexit
  %.5 = phi ptr [ %i.dq, %middle.block353 ], [ %.lcssa325, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit139.loopexit ], [ %.lcssa325, %bb.n ], [ %i.eb, %middle.block391 ], [ %i.dq, %.lr.ph.i.i.i.i141 ], [ %i.eb, %.lr.ph.i.i.i.i147 ] ; 2 uses
  %i.el = add nsw i32 %.0108253, %storemerge252   ; 2 uses
  %i.em = icmp slt i32 %i.el, %i.e
  br i1 %i.em, label %bb.k, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit163, !llvm.loop !3378

bb.q:                                             ; preds = %bb.i
  %i.en = icmp sgt i32 %i.b, 0
  br i1 %i.en, label %.lr.ph.i.i.i.i.i.i153.preheader, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit157

.lr.ph.i.i.i.i.i.i153.preheader:                  ; preds = %bb.q
  %i.eo = zext nneg i32 %i.b to i64               ; 7 uses
  %i.ep = load ptr, ptr %0, align 8, !tbaa !3335  ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i153.preheader581, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i153.preheader
  %i.eq = shl nuw nsw i64 %i.eo, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.eq
  %scevgep327 = getelementptr i8, ptr %i.ep, i64 %i.eo
  %bound0 = icmp ult ptr %1, %scevgep327
  %bound1 = icmp ult ptr %i.ep, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i153.preheader581, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eo, 2147483640              ; 4 uses
  %i.er = and i64 %i.eo, 7
  %i.es = shl nuw nsw i64 %n.vec, 2
  %i.et = getelementptr i8, ptr %1, i64 %i.es     ; 2 uses
  %i.eu = getelementptr i8, ptr %i.ep, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ev = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.ev ; 2 uses
  %next.gep328 = getelementptr i8, ptr %i.ep, i64 %index ; 2 uses
  %i.ew = getelementptr i8, ptr %next.gep328, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep328, align 1, !tbaa !18, !alias.scope !3379
  %wide.load329 = load <4 x i8>, ptr %i.ew, align 1, !tbaa !18, !alias.scope !3379
  %i.ex = sext <4 x i8> %wide.load to <4 x i32>
  %i.ey = sext <4 x i8> %wide.load329 to <4 x i32>
  %i.ez = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.ex, ptr %next.gep, align 4, !tbaa !130, !alias.scope !3382, !noalias !3379
  store <4 x i32> %i.ey, ptr %i.ez, align 4, !tbaa !130, !alias.scope !3382, !noalias !3379
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !3384

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.eo
  br i1 %cmp.n, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit157, label %.lr.ph.i.i.i.i.i.i153.preheader581

.lr.ph.i.i.i.i.i.i153.preheader581:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i153.preheader, %middle.block
  %.012.i.i.i.i.i.i154.ph = phi i64 [ %i.eo, %vector.memcheck ], [ %i.eo, %.lr.ph.i.i.i.i.i.i153.preheader ], [ %i.er, %middle.block ]
  %.0811.i.i.i.i.i.i155.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i.i153.preheader ], [ %i.et, %middle.block ]
  %.0910.i.i.i.i.i.i156.ph = phi ptr [ %i.ep, %vector.memcheck ], [ %i.ep, %.lr.ph.i.i.i.i.i.i153.preheader ], [ %i.eu, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i153

.lr.ph.i.i.i.i.i.i153:                            ; preds = %.lr.ph.i.i.i.i.i.i153.preheader581, %.lr.ph.i.i.i.i.i.i153
  %.012.i.i.i.i.i.i154 = phi i64 [ %i.ff, %.lr.ph.i.i.i.i.i.i153 ], [ %.012.i.i.i.i.i.i154.ph, %.lr.ph.i.i.i.i.i.i153.preheader581 ] ; 2 uses
  %.0811.i.i.i.i.i.i155 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i153 ], [ %.0811.i.i.i.i.i.i155.ph, %.lr.ph.i.i.i.i.i.i153.preheader581 ] ; 2 uses
  %.0910.i.i.i.i.i.i156 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i.i153 ], [ %.0910.i.i.i.i.i.i156.ph, %.lr.ph.i.i.i.i.i.i153.preheader581 ] ; 2 uses
  %i.fb = load i8, ptr %.0910.i.i.i.i.i.i156, align 1, !tbaa !18
  %i.fc = sext i8 %i.fb to i32
  store i32 %i.fc, ptr %.0811.i.i.i.i.i.i155, align 4, !tbaa !130
  %i.fd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i156, i64 1
  %i.fe = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i155, i64 4 ; 2 uses
  %i.ff = add nsw i64 %.012.i.i.i.i.i.i154, -1
  %i.fg = icmp samesign ugt i64 %.012.i.i.i.i.i.i154, 1
  br i1 %i.fg, label %.lr.ph.i.i.i.i.i.i153, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit157, !llvm.loop !3385

_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit157: ; preds = %.lr.ph.i.i.i.i.i.i153, %middle.block, %bb.q
  %.08.lcssa.i.i.i.i.i.i152 = phi ptr [ %1, %bb.q ], [ %i.et, %middle.block ], [ %i.fe, %.lr.ph.i.i.i.i.i.i153 ] ; 5 uses
  %i.fh = icmp eq i32 %i.d, 0
  br i1 %i.fh, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit163, label %bb.r

bb.r:                                             ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit157
  %i.fi = zext nneg i32 %i.d to i64
  %.idx.i.i158 = shl nuw nsw i64 %i.fi, 2         ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i.i.i152, i64 %.idx.i.i158 ; 3 uses
  %i.fk = add nsw i64 %.idx.i.i158, -4            ; 2 uses
  %i.fl = lshr exact i64 %i.fk, 2
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %min.iters.check333 = icmp ult i64 %i.fk, 28
  br i1 %min.iters.check333, label %.lr.ph.i.i.i.i159.preheader, label %vector.ph334

vector.ph334:                                     ; preds = %bb.r
  %n.vec336 = and i64 %i.fm, 9223372036854775800  ; 3 uses
  %i.fn = shl i64 %n.vec336, 2
  %i.fo = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i152, i64 %i.fn
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph334
  %index338 = phi i64 [ 0, %vector.ph334 ], [ %index.next340, %vector.body337 ] ; 2 uses
  %i.fp = shl i64 %index338, 2
  %next.gep339 = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i152, i64 %i.fp ; 2 uses
  %i.fq = getelementptr i8, ptr %next.gep339, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep339, align 4, !tbaa !130
  store <4 x i32> splat (i32 48), ptr %i.fq, align 4, !tbaa !130
  %index.next340 = add nuw i64 %index338, 8       ; 2 uses
  %i.fr = icmp eq i64 %index.next340, %n.vec336
  br i1 %i.fr, label %middle.block341, label %vector.body337, !llvm.loop !3386

middle.block341:                                  ; preds = %vector.body337
  %cmp.n342 = icmp eq i64 %i.fm, %n.vec336
  br i1 %cmp.n342, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit163, label %.lr.ph.i.i.i.i159.preheader

.lr.ph.i.i.i.i159.preheader:                      ; preds = %bb.r, %middle.block341
  %.06.i.i.i.i160.ph = phi ptr [ %.08.lcssa.i.i.i.i.i.i152, %bb.r ], [ %i.fo, %middle.block341 ]
  br label %.lr.ph.i.i.i.i159

.lr.ph.i.i.i.i159:                                ; preds = %.lr.ph.i.i.i.i159.preheader, %.lr.ph.i.i.i.i159
  %.06.i.i.i.i160 = phi ptr [ %i.fs, %.lr.ph.i.i.i.i159 ], [ %.06.i.i.i.i160.ph, %.lr.ph.i.i.i.i159.preheader ] ; 2 uses
  store i32 48, ptr %.06.i.i.i.i160, align 4, !tbaa !130
  %i.fs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i160, i64 4 ; 2 uses
  %.not.i.i.i.i161 = icmp eq ptr %i.fs, %i.fj
  br i1 %.not.i.i.i.i161, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit163, label %.lr.ph.i.i.i.i159, !llvm.loop !3387

_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit163:           ; preds = %.lr.ph.i.i.i.i159, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145, %middle.block341, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit157
  %.6 = phi ptr [ %i.fj, %middle.block341 ], [ %.08.lcssa.i.i.i.i.i.i152, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit157 ], [ %.5, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145 ], [ %i.fj, %.lr.ph.i.i.i.i159 ] ; 4 uses
  %i.ft = load i32, ptr %i.g, align 4
  %i.fu = and i32 %i.ft, 536870912
  %.not127 = icmp eq i32 %i.fu, 0
  br i1 %.not127, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %bb.s

bb.s:                                             ; preds = %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit163
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !3339
  %i.fx = getelementptr inbounds nuw i8, ptr %.6, i64 4 ; 6 uses
  store i32 %i.fw, ptr %.6, align 4, !tbaa !130
  %i.fy = load i32, ptr %i.f, align 8, !tbaa !3357
  %i.fz = sub nsw i32 %i.fy, %i.e                 ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gb = load i32, ptr %i.g, align 4
  %i.gc = and i32 %i.gb, 255
  %.not128 = icmp eq i32 %i.gc, 2
  br i1 %.not128, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gd = getelementptr inbounds nuw i8, ptr %.6, i64 8
  store i32 48, ptr %i.fx, align 4, !tbaa !130
  br label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187

bb.v:                                             ; preds = %bb.s
  %i.ge = zext nneg i32 %i.fz to i64
  %.idx.i.i164 = shl nuw nsw i64 %i.ge, 2         ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.idx.i.i164 ; 3 uses
  %i.gg = add nsw i64 %.idx.i.i164, -4            ; 2 uses
  %i.gh = lshr exact i64 %i.gg, 2
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check395 = icmp ult i64 %i.gg, 28
  br i1 %min.iters.check395, label %.lr.ph.i.i.i.i165.preheader, label %vector.ph396

vector.ph396:                                     ; preds = %bb.v
  %n.vec398 = and i64 %i.gi, 9223372036854775800  ; 3 uses
  %i.gj = shl i64 %n.vec398, 2
  %i.gk = getelementptr i8, ptr %i.fx, i64 %i.gj
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph396
  %index400 = phi i64 [ 0, %vector.ph396 ], [ %index.next402, %vector.body399 ] ; 2 uses
  %i.gl = shl i64 %index400, 2
  %next.gep401 = getelementptr i8, ptr %i.fx, i64 %i.gl ; 2 uses
  %i.gm = getelementptr i8, ptr %next.gep401, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep401, align 4, !tbaa !130
  store <4 x i32> splat (i32 48), ptr %i.gm, align 4, !tbaa !130
  %index.next402 = add nuw i64 %index400, 8       ; 2 uses
  %i.gn = icmp eq i64 %index.next402, %n.vec398
  br i1 %i.gn, label %middle.block403, label %vector.body399, !llvm.loop !3388

middle.block403:                                  ; preds = %vector.body399
  %cmp.n404 = icmp eq i64 %i.gi, %n.vec398
  br i1 %cmp.n404, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %.lr.ph.i.i.i.i165.preheader

.lr.ph.i.i.i.i165.preheader:                      ; preds = %bb.v, %middle.block403
  %.06.i.i.i.i166.ph = phi ptr [ %i.fx, %bb.v ], [ %i.gk, %middle.block403 ]
  br label %.lr.ph.i.i.i.i165

.lr.ph.i.i.i.i165:                                ; preds = %.lr.ph.i.i.i.i165.preheader, %.lr.ph.i.i.i.i165
  %.06.i.i.i.i166 = phi ptr [ %i.go, %.lr.ph.i.i.i.i165 ], [ %.06.i.i.i.i166.ph, %.lr.ph.i.i.i.i165.preheader ] ; 2 uses
  store i32 48, ptr %.06.i.i.i.i166, align 4, !tbaa !130
  %i.go = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i166, i64 4 ; 2 uses
  %.not.i.i.i.i167 = icmp eq ptr %i.go, %i.gf
  br i1 %.not.i.i.i.i167, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %.lr.ph.i.i.i.i165, !llvm.loop !3389

bb.w:                                             ; preds = %bb.h
  %i.gp = icmp sgt i32 %i.e, 0
  br i1 %i.gp, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.gq = and i32 %i.h, 16711680
  %i.gr = icmp ne i32 %i.gq, 0
  %i.gs = icmp samesign ugt i32 %i.e, 3
  %or.cond5 = select i1 %i.gr, i1 %i.gs, i1 false
  br i1 %or.cond5, label %.peel.begin, label %bb.y

.peel.begin:                                      ; preds = %bb.x
  %i.gt = urem i32 %i.e, 3                        ; 2 uses
  %i.gu = icmp eq i32 %i.gt, 0                    ; 2 uses
  %spec.select130 = select i1 %i.gu, i32 3, i32 %i.gt ; 3 uses
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.gv = load ptr, ptr %0, align 8, !tbaa !3335  ; 4 uses
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !18
  %i.gx = sext i8 %i.gw to i32
  store i32 %i.gx, ptr %1, align 4, !tbaa !130
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.gz = icmp samesign ugt i32 %spec.select130, 1
  br i1 %i.gz, label %.lr.ph.i.i.i.i.i.i171.1.peel, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit175.peel

.lr.ph.i.i.i.i.i.i171.1.peel:                     ; preds = %.peel.begin
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !18
  %i.hc = sext i8 %i.hb to i32
  store i32 %i.hc, ptr %i.gy, align 4, !tbaa !130
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.gu, label %.lr.ph.i.i.i.i.i.i171.2.peel, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit175.peel

.lr.ph.i.i.i.i.i.i171.2.peel:                     ; preds = %.lr.ph.i.i.i.i.i.i171.1.peel
  %i.he = getelementptr inbounds nuw i8, ptr %i.gv, i64 2
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !18
  %i.hg = sext i8 %i.hf to i32
  store i32 %i.hg, ptr %i.hd, align 4, !tbaa !130
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit175.peel

_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit175.peel: ; preds = %.lr.ph.i.i.i.i.i.i171.2.peel, %.lr.ph.i.i.i.i.i.i171.1.peel, %.peel.begin
  %.lcssa569.peel = phi ptr [ %i.gy, %.peel.begin ], [ %i.hd, %.lr.ph.i.i.i.i.i.i171.1.peel ], [ %i.hh, %.lr.ph.i.i.i.i.i.i171.2.peel ] ; 2 uses
  %i.hi = icmp slt i32 %spec.select130, %i.e
  br i1 %i.hi, label %.peel.newph, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit181

.peel.newph:                                      ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit175.peel, %.peel.newph
  %.0103257 = phi i32 [ %i.hz, %.peel.newph ], [ %spec.select130, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit175.peel ] ; 2 uses
  %.9255 = phi ptr [ %i.hy, %.peel.newph ], [ %.lcssa569.peel, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit175.peel ] ; 2 uses
  %6 = load i16, ptr %.shift, align 2
  %7 = zext i16 %6 to i32
  %i.hj = shl i32 %7, 24
  %i.hk = ashr exact i32 %i.hj, 24
  %i.hl = getelementptr inbounds nuw i8, ptr %.9255, i64 4 ; 4 uses
  store i32 %i.hk, ptr %.9255, align 4, !tbaa !130
  %i.hm = zext nneg i32 %.0103257 to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.hm ; 3 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !18
  %i.hp = sext i8 %i.ho to i32
  store i32 %i.hp, ptr %i.hl, align 4, !tbaa !130
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !18
  %i.ht = sext i8 %i.hs to i32
  store i32 %i.ht, ptr %i.hq, align 4, !tbaa !130
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !18
  %i.hx = sext i8 %i.hw to i32
  store i32 %i.hx, ptr %i.hu, align 4, !tbaa !130
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hl, i64 12 ; 2 uses
  %i.hz = add nuw nsw i32 %.0103257, 3            ; 2 uses
  %i.ia = icmp slt i32 %i.hz, %i.e
  br i1 %i.ia, label %.peel.newph, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit181, !llvm.loop !3390

bb.y:                                             ; preds = %bb.x
  %i.ib = load ptr, ptr %0, align 8, !tbaa !3335  ; 6 uses
  %i.ic = zext nneg i32 %i.e to i64               ; 7 uses
  %min.iters.check448 = icmp ult i32 %i.e, 12
  br i1 %min.iters.check448, label %.lr.ph.i.i.i.i.i.i177.preheader, label %vector.memcheck441

vector.memcheck441:                               ; preds = %bb.y
  %i.id = shl nuw nsw i64 %i.ic, 2
  %scevgep442 = getelementptr i8, ptr %1, i64 %i.id
  %scevgep443 = getelementptr i8, ptr %i.ib, i64 %i.ic
  %bound0444 = icmp ult ptr %1, %scevgep443
  %bound1445 = icmp ult ptr %i.ib, %scevgep442
  %found.conflict446 = and i1 %bound0444, %bound1445
  br i1 %found.conflict446, label %.lr.ph.i.i.i.i.i.i177.preheader, label %vector.ph449

vector.ph449:                                     ; preds = %vector.memcheck441
  %n.vec451 = and i64 %i.ic, 2147483640           ; 4 uses
  %i.ie = and i64 %i.ic, 7
  %i.if = shl nuw nsw i64 %n.vec451, 2
  %i.ig = getelementptr i8, ptr %1, i64 %i.if     ; 2 uses
  %i.ih = getelementptr i8, ptr %i.ib, i64 %n.vec451
  br label %vector.body452

vector.body452:                                   ; preds = %vector.body452, %vector.ph449
  %index453 = phi i64 [ 0, %vector.ph449 ], [ %index.next458, %vector.body452 ] ; 3 uses
  %i.ii = shl i64 %index453, 2
  %next.gep454 = getelementptr i8, ptr %1, i64 %i.ii ; 2 uses
  %next.gep455 = getelementptr i8, ptr %i.ib, i64 %index453 ; 2 uses
  %i.ij = getelementptr i8, ptr %next.gep455, i64 4
  %wide.load456 = load <4 x i8>, ptr %next.gep455, align 1, !tbaa !18, !alias.scope !3391
  %wide.load457 = load <4 x i8>, ptr %i.ij, align 1, !tbaa !18, !alias.scope !3391
  %i.ik = sext <4 x i8> %wide.load456 to <4 x i32>
  %i.il = sext <4 x i8> %wide.load457 to <4 x i32>
  %i.im = getelementptr i8, ptr %next.gep454, i64 16
  store <4 x i32> %i.ik, ptr %next.gep454, align 4, !tbaa !130, !alias.scope !3394, !noalias !3391
  store <4 x i32> %i.il, ptr %i.im, align 4, !tbaa !130, !alias.scope !3394, !noalias !3391
  %index.next458 = add nuw i64 %index453, 8       ; 2 uses
  %i.in = icmp eq i64 %index.next458, %n.vec451
  br i1 %i.in, label %middle.block459, label %vector.body452, !llvm.loop !3396

middle.block459:                                  ; preds = %vector.body452
  %cmp.n460 = icmp eq i64 %n.vec451, %i.ic
  br i1 %cmp.n460, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit181, label %.lr.ph.i.i.i.i.i.i177.preheader

.lr.ph.i.i.i.i.i.i177.preheader:                  ; preds = %vector.memcheck441, %bb.y, %middle.block459
  %.012.i.i.i.i.i.i178.ph = phi i64 [ %i.ic, %vector.memcheck441 ], [ %i.ic, %bb.y ], [ %i.ie, %middle.block459 ]
  %.0811.i.i.i.i.i.i179.ph = phi ptr [ %1, %vector.memcheck441 ], [ %1, %bb.y ], [ %i.ig, %middle.block459 ]
  %.0910.i.i.i.i.i.i180.ph = phi ptr [ %i.ib, %vector.memcheck441 ], [ %i.ib, %bb.y ], [ %i.ih, %middle.block459 ]
  br label %.lr.ph.i.i.i.i.i.i177

.lr.ph.i.i.i.i.i.i177:                            ; preds = %.lr.ph.i.i.i.i.i.i177.preheader, %.lr.ph.i.i.i.i.i.i177
  %.012.i.i.i.i.i.i178 = phi i64 [ %i.is, %.lr.ph.i.i.i.i.i.i177 ], [ %.012.i.i.i.i.i.i178.ph, %.lr.ph.i.i.i.i.i.i177.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i179 = phi ptr [ %i.ir, %.lr.ph.i.i.i.i.i.i177 ], [ %.0811.i.i.i.i.i.i179.ph, %.lr.ph.i.i.i.i.i.i177.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i180 = phi ptr [ %i.iq, %.lr.ph.i.i.i.i.i.i177 ], [ %.0910.i.i.i.i.i.i180.ph, %.lr.ph.i.i.i.i.i.i177.preheader ] ; 2 uses
  %i.io = load i8, ptr %.0910.i.i.i.i.i.i180, align 1, !tbaa !18
  %i.ip = sext i8 %i.io to i32
  store i32 %i.ip, ptr %.0811.i.i.i.i.i.i179, align 4, !tbaa !130
  %i.iq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i180, i64 1
  %i.ir = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i179, i64 4 ; 2 uses
  %i.is = add nsw i64 %.012.i.i.i.i.i.i178, -1
  %i.it = icmp samesign ugt i64 %.012.i.i.i.i.i.i178, 1
  br i1 %i.it, label %.lr.ph.i.i.i.i.i.i177, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit181, !llvm.loop !3397

_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit181: ; preds = %.lr.ph.i.i.i.i.i.i177, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit175.peel, %.peel.newph, %middle.block459
  %.11 = phi ptr [ %i.hy, %.peel.newph ], [ %i.ig, %middle.block459 ], [ %.lcssa569.peel, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit175.peel ], [ %i.ir, %.lr.ph.i.i.i.i.i.i177 ] ; 6 uses
  %i.iu = load i32, ptr %i.g, align 4
  %i.iv = and i32 %i.iu, 536870912
  %.not = icmp eq i32 %i.iv, 0
  br i1 %.not, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i189.preheader

.lr.ph:                                           ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit181
  %i.iw = load ptr, ptr %0, align 8, !tbaa !3335
  %i.ix = sext i32 %i.b to i64
  %i.iy = zext nneg i32 %i.e to i64               ; 2 uses
  %i.iz = add i32 %i.b, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.iz)
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ %i.ix, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 3 uses
  %i.ja = getelementptr i8, ptr %i.iw, i64 %indvars.iv
  %i.jb = getelementptr i8, ptr %i.ja, i64 -1
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !18
  %i.jd = icmp eq i8 %i.jc, 48
  br i1 %i.jd, label %bb.aa, label %.critedge.split.loop.exit

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.je = icmp sgt i64 %indvars.iv.next, %i.iy
  br i1 %i.je, label %bb.z, label %.critedge, !llvm.loop !3398

.critedge.split.loop.exit:                        ; preds = %bb.z
  %i.jf = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.aa, %.critedge.split.loop.exit
  %.0102.lcssa.ph = phi i32 [ %i.jf, %.critedge.split.loop.exit ], [ %smin, %bb.aa ] ; 2 uses
  %.not126 = icmp eq i32 %.0102.lcssa.ph, %i.e
  br i1 %.not126, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !3339
  %i.ji = getelementptr inbounds nuw i8, ptr %.11, i64 4
  store i32 %i.jh, ptr %.11, align 4, !tbaa !130
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge
  %.12 = phi ptr [ %i.ji, %bb.ab ], [ %.11, %.critedge ] ; 7 uses
  %i.jj = zext nneg i32 %i.e to i64               ; 2 uses
  %i.jk = sext i32 %.0102.lcssa.ph to i64         ; 3 uses
  %gepdiff235 = sub nsw i64 %i.jk, %i.jj          ; 7 uses
  %i.jl = icmp sgt i64 %gepdiff235, 0
  br i1 %i.jl, label %.lr.ph.i.i.i.i.i.i183.preheader, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187

.lr.ph.i.i.i.i.i.i183.preheader:                  ; preds = %bb.ac
  %i.jm = load ptr, ptr %0, align 8, !tbaa !3335  ; 2 uses
  %i.jn = getelementptr i8, ptr %i.jm, i64 %i.jj  ; 5 uses
  %min.iters.check508 = icmp ult i64 %gepdiff235, 16
  br i1 %min.iters.check508, label %.lr.ph.i.i.i.i.i.i183.preheader563, label %vector.memcheck501

vector.memcheck501:                               ; preds = %.lr.ph.i.i.i.i.i.i183.preheader
  %i.jo = sub nsw i64 %i.jk, %i.iy
  %i.jp = shl nsw i64 %i.jo, 2
  %scevgep502 = getelementptr i8, ptr %.12, i64 %i.jp
  %scevgep503 = getelementptr i8, ptr %i.jm, i64 %i.jk
  %bound0504 = icmp ult ptr %.12, %scevgep503
  %bound1505 = icmp ult ptr %i.jn, %scevgep502
  %found.conflict506 = and i1 %bound0504, %bound1505
  br i1 %found.conflict506, label %.lr.ph.i.i.i.i.i.i183.preheader563, label %vector.ph509

vector.ph509:                                     ; preds = %vector.memcheck501
  %n.vec511 = and i64 %gepdiff235, 9223372036854775800 ; 4 uses
  %i.jq = and i64 %gepdiff235, 7
  %i.jr = shl i64 %n.vec511, 2
  %i.js = getelementptr i8, ptr %.12, i64 %i.jr   ; 2 uses
  %i.jt = getelementptr i8, ptr %i.jn, i64 %n.vec511
  br label %vector.body512

vector.body512:                                   ; preds = %vector.body512, %vector.ph509
  %index513 = phi i64 [ 0, %vector.ph509 ], [ %index.next518, %vector.body512 ] ; 3 uses
  %i.ju = shl i64 %index513, 2
  %next.gep514 = getelementptr i8, ptr %.12, i64 %i.ju ; 2 uses
  %next.gep515 = getelementptr i8, ptr %i.jn, i64 %index513 ; 2 uses
  %i.jv = getelementptr i8, ptr %next.gep515, i64 4
  %wide.load516 = load <4 x i8>, ptr %next.gep515, align 1, !tbaa !18, !alias.scope !3399
  %wide.load517 = load <4 x i8>, ptr %i.jv, align 1, !tbaa !18, !alias.scope !3399
  %i.jw = sext <4 x i8> %wide.load516 to <4 x i32>
  %i.jx = sext <4 x i8> %wide.load517 to <4 x i32>
  %i.jy = getelementptr i8, ptr %next.gep514, i64 16
  store <4 x i32> %i.jw, ptr %next.gep514, align 4, !tbaa !130, !alias.scope !3402, !noalias !3399
  store <4 x i32> %i.jx, ptr %i.jy, align 4, !tbaa !130, !alias.scope !3402, !noalias !3399
  %index.next518 = add nuw i64 %index513, 8       ; 2 uses
  %i.jz = icmp eq i64 %index.next518, %n.vec511
  br i1 %i.jz, label %middle.block519, label %vector.body512, !llvm.loop !3404

middle.block519:                                  ; preds = %vector.body512
  %cmp.n520 = icmp eq i64 %gepdiff235, %n.vec511
  br i1 %cmp.n520, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %.lr.ph.i.i.i.i.i.i183.preheader563

.lr.ph.i.i.i.i.i.i183.preheader563:               ; preds = %vector.memcheck501, %.lr.ph.i.i.i.i.i.i183.preheader, %middle.block519
  %.012.i.i.i.i.i.i184.ph = phi i64 [ %gepdiff235, %vector.memcheck501 ], [ %gepdiff235, %.lr.ph.i.i.i.i.i.i183.preheader ], [ %i.jq, %middle.block519 ]
  %.0811.i.i.i.i.i.i185.ph = phi ptr [ %.12, %vector.memcheck501 ], [ %.12, %.lr.ph.i.i.i.i.i.i183.preheader ], [ %i.js, %middle.block519 ]
  %.0910.i.i.i.i.i.i186.ph = phi ptr [ %i.jn, %vector.memcheck501 ], [ %i.jn, %.lr.ph.i.i.i.i.i.i183.preheader ], [ %i.jt, %middle.block519 ]
  br label %.lr.ph.i.i.i.i.i.i183

.lr.ph.i.i.i.i.i.i183:                            ; preds = %.lr.ph.i.i.i.i.i.i183.preheader563, %.lr.ph.i.i.i.i.i.i183
  %.012.i.i.i.i.i.i184 = phi i64 [ %i.ke, %.lr.ph.i.i.i.i.i.i183 ], [ %.012.i.i.i.i.i.i184.ph, %.lr.ph.i.i.i.i.i.i183.preheader563 ] ; 2 uses
  %.0811.i.i.i.i.i.i185 = phi ptr [ %i.kd, %.lr.ph.i.i.i.i.i.i183 ], [ %.0811.i.i.i.i.i.i185.ph, %.lr.ph.i.i.i.i.i.i183.preheader563 ] ; 2 uses
  %.0910.i.i.i.i.i.i186 = phi ptr [ %i.kc, %.lr.ph.i.i.i.i.i.i183 ], [ %.0910.i.i.i.i.i.i186.ph, %.lr.ph.i.i.i.i.i.i183.preheader563 ] ; 2 uses
  %i.ka = load i8, ptr %.0910.i.i.i.i.i.i186, align 1, !tbaa !18
  %i.kb = sext i8 %i.ka to i32
  store i32 %i.kb, ptr %.0811.i.i.i.i.i.i185, align 4, !tbaa !130
  %i.kc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i186, i64 1
  %i.kd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i185, i64 4 ; 2 uses
  %i.ke = add nsw i64 %.012.i.i.i.i.i.i184, -1
  %i.kf = icmp samesign ugt i64 %.012.i.i.i.i.i.i184, 1
  br i1 %i.kf, label %.lr.ph.i.i.i.i.i.i183, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, !llvm.loop !3405
end_hunk_1
