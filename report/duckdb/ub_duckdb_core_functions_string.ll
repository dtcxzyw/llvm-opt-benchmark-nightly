inline.NumInlined: 11293
inline.NumDeleted: 2901
begin_hunk_0_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS1_16nonfinite_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a

_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIRPcEEvOT_.exit56: ; preds = %bb.k, %bb.l
  %.2 = phi ptr [ %i.ah, %bb.k ], [ %i.bw, %bb.l ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !3342 ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !66
  store i8 %i.bz, ptr %.2, align 1, !tbaa !66
  %i.ca = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %.011.i.i.ptr.1.i54 = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.cb = load i8, ptr %.011.i.i.ptr.1.i54, align 1, !tbaa !66
  store i8 %i.cb, ptr %i.ca, align 1, !tbaa !66
  %i.cc = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %.011.i.i.ptr.2.i55 = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.cd = load i8, ptr %.011.i.i.ptr.2.i55, align 1, !tbaa !66
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !66
  %i.ce = getelementptr inbounds nuw i8, ptr %.2, i64 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ce, i8 %i.aj, i64 %i.ak, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit52

_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit52:            ; preds = %_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIRPcEEvOT_.exit, %_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIRPcEEvOT_.exit50, %_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIRPcEEvOT_.exit56, %_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIPcEEvOT_.exit
  ret void
}

declare noundef i32 @_ZN10duckdb_fmt2v68internal14snprintf_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE(double noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef i32 @_ZN10duckdb_fmt2v68internal12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE(double noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS1_12float_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(33) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !2291
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3350 ; 3 uses
  %i.d = zext i32 %i.a to i64                     ; 3 uses
  %.not39 = icmp ult i64 %i.c, %i.d
  %.sroa.0.0.copyload.i.i40 = load ptr, ptr %0, align 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i40, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !2284 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i40, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !2275 ; 2 uses
  br i1 %.not39, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.f, %i.c                       ; 3 uses
  %i.j = icmp ugt i64 %i.i, %i.h
  br i1 %i.j, label %bb.c, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %.sroa.0.0.copyload.i.i40, align 8, !tbaa !59
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i40, i64 noundef %i.i), !inline_history !2456
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit: ; preds = %bb.b, %bb.c
  store i64 %i.i, ptr %i.e, align 8, !tbaa !2284
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i40, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2273
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
  %i.v = load i8, ptr %i.u, align 1, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 %i.v, ptr %i.o, align 1, !tbaa !66
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
  %i.aa = load ptr, ptr %.sroa.0.0.copyload.i.i40, align 8, !tbaa !59
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i40, i64 noundef %i.y), !inline_history !2456
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit41

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit41: ; preds = %bb.e, %bb.f
  store i64 %i.y, ptr %i.e, align 8, !tbaa !2284
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i40, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2273
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.f ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !66  ; 4 uses
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
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !66
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 %i.as, ptr %i.al, align 1, !tbaa !66
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
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !66
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i43, i64 1
  store i8 %i.be, ptr %.0.i.i43, align 1, !tbaa !66
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
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !66
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 %i.bo, ptr %i.ae, align 1, !tbaa !66
  br label %_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit50

_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit50: ; preds = %bb.k, %bb.l
  %.2 = phi ptr [ %i.ae, %bb.k ], [ %i.bp, %bb.l ]
  %i.bq = tail call noundef ptr @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyIPcEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %2, ptr noundef %.2)
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bq, i8 %i.ag, i64 %i.ah, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit48

_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit48:            ; preds = %_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit, %_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit46, %_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit50, %_ZN10duckdb_fmt2v68internal12float_writerIcEclIPcEEvOT_.exit
  ret void
}

declare noundef signext i8 @_ZN10duckdb_fmt2v68internal18decimal_point_implIcEET_NS1_10locale_refE(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyIPcEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3347 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3348 ; 2 uses
  %i.f = add i32 %i.e, %i.c                       ; 22 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 9 uses
  %i.i = load i32, ptr %i.h, align 4              ; 3 uses
  %i.j = and i32 %i.i, 255
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !3343
  %i.m = load i8, ptr %i.l, align 1, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store i8 %i.m, ptr %1, align 1, !tbaa !66
  %i.o = load i32, ptr %i.g, align 8, !tbaa !3351
  %i.p = load i32, ptr %i.b, align 8, !tbaa !3347 ; 3 uses
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
  %i.y = load i8, ptr %i.x, align 8, !tbaa !3349
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.y, ptr %i.n, align 1, !tbaa !66
  %.pre249.a = load i32, ptr %i.b, align 8, !tbaa !3347
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.aa = phi i32 [ %.pre249.a, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.0105 = phi ptr [ %i.z, %bb.c ], [ %i.n, %bb.b ] ; 7 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !3343  ; 4 uses
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
  %wide.load515 = load <16 x i8>, ptr %next.gep513, align 1, !tbaa !66
  %wide.load516 = load <16 x i8>, ptr %i.al, align 1, !tbaa !66
  %i.am = getelementptr i8, ptr %next.gep514, i64 16
  store <16 x i8> %wide.load515, ptr %next.gep514, align 1, !tbaa !66
  store <16 x i8> %wide.load516, ptr %i.am, align 1, !tbaa !66
  %index.next517 = add nuw i64 %index512, 32      ; 2 uses
  %i.an = icmp eq i64 %index.next517, %n.vec510
  br i1 %i.an, label %middle.block518, label %vector.body511, !llvm.loop !3352

middle.block518:                                  ; preds = %vector.body511
  %cmp.n519 = icmp eq i64 %i.ah, %n.vec510
  br i1 %cmp.n519, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit, label %vec.epilog.iter.check524

vec.epilog.iter.check524:                         ; preds = %middle.block518
  %min.epilog.iters.check525 = icmp eq i64 %n.mod.vf509, 0
  br i1 %min.epilog.iters.check525, label %.lr.ph.i.i.preheader, label %vec.epilog.ph526, !prof !2408

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
  %wide.load533 = load <4 x i8>, ptr %next.gep531, align 1, !tbaa !66
  store <4 x i8> %wide.load533, ptr %next.gep532, align 1, !tbaa !66
  %index.next534 = add nuw i64 %index530, 4       ; 2 uses
  %i.aq = icmp eq i64 %index.next534, %n.vec528
  br i1 %i.aq, label %vec.epilog.middle.block535, label %vec.epilog.vector.body529, !llvm.loop !3353

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
  %i.at = load i8, ptr %.011.i.i.prol, align 1, !tbaa !66
  store i8 %i.at, ptr %.0810.i.i.prol, align 1, !tbaa !66
  %i.au = getelementptr inbounds nuw i8, ptr %.011.i.i.prol, i64 1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0810.i.i.prol, i64 1 ; 3 uses
  %prol.iter583.next = add i64 %prol.iter583, 1   ; 2 uses
  %prol.iter583.cmp.not = icmp eq i64 %prol.iter583.next, %xtraiter581
  br i1 %prol.iter583.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3354

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
  %i.ay = load i8, ptr %.011.i.i, align 1, !tbaa !66
  store i8 %i.ay, ptr %.0810.i.i, align 1, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 1
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !66
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !66
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 2
  %i.bd = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 2
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !66
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !66
  %i.bf = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 3
  %i.bg = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 3
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !66
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !66
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 4
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !66
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !66
  %i.bl = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 5
  %i.bm = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 5
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !66
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !66
  %i.bo = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 6
  %i.bp = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 6
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !66
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !66
  %i.br = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 7
  %i.bs = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 7
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !66
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !66
  %i.bu = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 8 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bu, %i.ae
  br i1 %.not.i.i.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit, label %.lr.ph.i.i, !llvm.loop !3355

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
  %2 = load i32, ptr %i.h, align 4
  %3 = and i32 %2, 16777216
  %.not129 = icmp eq i32 %3, 0
  %i.by = select i1 %.not129, i8 101, i8 69
  %i.bz = getelementptr inbounds nuw i8, ptr %.1106, i64 1
  store i8 %i.by, ptr %.1106, align 1, !tbaa !66
  %i.ca = add nsw i32 %i.f, -1
  %i.cb = icmp slt i32 %i.f, 1
  %spec.select.i = select i1 %i.cb, i8 45, i8 43
  %spec.select23.i = tail call i32 @llvm.abs.i32(i32 %i.ca, i1 true) ; 5 uses
  store i8 %spec.select.i, ptr %i.bz, align 1, !tbaa !66
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
  %i.cj = load i8, ptr %i.ch, align 1, !tbaa !66
  %i.ck = getelementptr inbounds nuw i8, ptr %.1106, i64 3
  store i8 %i.cj, ptr %.017.i, align 1, !tbaa !66
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.118.i = phi ptr [ %i.ck, %bb.g ], [ %.017.i, %bb.f ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !66
  %i.cn = getelementptr inbounds nuw i8, ptr %.118.i, i64 1
  store i8 %i.cm, ptr %.118.i, align 1, !tbaa !66
  br label %_ZN10duckdb_fmt2v68internal14write_exponentIcPcEET0_iS4_.exit

_ZN10duckdb_fmt2v68internal14write_exponentIcPcEET0_iS4_.exit: ; preds = %bb.e, %bb.h
  %.2.i = phi ptr [ %i.cn, %bb.h ], [ %.017.i, %bb.e ] ; 3 uses
  %.1.i = phi i32 [ %i.ce, %bb.h ], [ %spec.select23.i, %bb.e ]
  %i.co = shl nuw nsw i32 %.1.i, 1
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.cp ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !66
  %i.cs = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  store i8 %i.cr, ptr %.2.i, align 1, !tbaa !66
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !66
  %i.cv = getelementptr inbounds nuw i8, ptr %.2.i, i64 2
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !66
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
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142
  %.2230 = phi ptr [ %1, %bb.k ], [ %.5, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142 ] ; 3 uses
  %.0108229 = phi i32 [ 0, %bb.k ], [ %i.fn, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142 ] ; 5 uses
  %storemerge228 = phi i32 [ %spec.select, %bb.k ], [ 3, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142 ] ; 5 uses
  %i.db = icmp sgt i32 %.0108229, 0
  br i1 %i.db, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %4 = load i32, ptr %i.h, align 4
  %5 = lshr i32 %4, 16
  %i.dc = trunc i32 %5 to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %.2230, i64 1
  store i8 %i.dc, ptr %.2230, align 1, !tbaa !66
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3 = phi ptr [ %i.dd, %bb.m ], [ %.2230, %bb.l ] ; 8 uses
  %.3317 = ptrtoaddr ptr %.3 to i64
  %i.de = load i32, ptr %i.b, align 8, !tbaa !3347 ; 2 uses
  %i.df = icmp slt i32 %.0108229, %i.de
  br i1 %i.df, label %iter.check336, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142.sink.split

iter.check336:                                    ; preds = %bb.n
  %i.dg = sub nsw i32 %i.de, %.0108229            ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %storemerge228, i32 %i.dg) ; 5 uses
  %i.dh = load ptr, ptr %0, align 8, !tbaa !3343  ; 3 uses
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
  %wide.load329 = load <16 x i8>, ptr %next.gep327, align 1, !tbaa !66
  %wide.load330 = load <16 x i8>, ptr %i.ds, align 1, !tbaa !66
  %i.dt = getelementptr i8, ptr %next.gep328, i64 16
  store <16 x i8> %wide.load329, ptr %next.gep328, align 1, !tbaa !66
  store <16 x i8> %wide.load330, ptr %i.dt, align 1, !tbaa !66
  %index.next331 = add nuw i64 %index326, 32      ; 2 uses
  %i.du = icmp eq i64 %index.next331, %n.vec324
  br i1 %i.du, label %middle.block332, label %vector.body325, !llvm.loop !3356

middle.block332:                                  ; preds = %vector.body325
  %cmp.n333 = icmp eq i64 %n.vec324, %i.dl
  br i1 %cmp.n333, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140, label %vec.epilog.iter.check338

vec.epilog.iter.check338:                         ; preds = %middle.block332
  %i.dv = and i32 %.sroa.speculated, 28
  %min.epilog.iters.check339 = icmp eq i32 %i.dv, 0
  br i1 %min.epilog.iters.check339, label %.lr.ph.i.i135.preheader, label %vec.epilog.ph340, !prof !2408

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
  %wide.load347 = load <4 x i8>, ptr %next.gep345, align 1, !tbaa !66
  store <4 x i8> %wide.load347, ptr %next.gep346, align 1, !tbaa !66
  %index.next348 = add nuw i64 %index344, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next348, %n.vec342
  br i1 %i.dy, label %vec.epilog.middle.block349, label %vec.epilog.vector.body343, !llvm.loop !3357

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
  %i.eg = load i8, ptr %.011.i.i136.prol, align 1, !tbaa !66
  store i8 %i.eg, ptr %.0810.i.i137.prol, align 1, !tbaa !66
  %i.eh = getelementptr inbounds nuw i8, ptr %.011.i.i136.prol, i64 1 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0810.i.i137.prol, i64 1 ; 3 uses
  %prol.iter560.next = add i64 %prol.iter560, 1   ; 2 uses
  %prol.iter560.cmp.not = icmp eq i64 %prol.iter560.next, %xtraiter558
  br i1 %prol.iter560.cmp.not, label %.lr.ph.i.i135.prol.loopexit, label %.lr.ph.i.i135.prol, !llvm.loop !3358

.lr.ph.i.i135.prol.loopexit:                      ; preds = %.lr.ph.i.i135.prol, %.lr.ph.i.i135.preheader
  %.lcssa554.unr = phi ptr [ poison, %.lr.ph.i.i135.preheader ], [ %i.ei, %.lr.ph.i.i135.prol ]
  %.011.i.i136.unr = phi ptr [ %.011.i.i136.ph, %.lr.ph.i.i135.preheader ], [ %i.eh, %.lr.ph.i.i135.prol ]
  %.0810.i.i137.unr = phi ptr [ %.0810.i.i137.ph, %.lr.ph.i.i135.preheader ], [ %i.ei, %.lr.ph.i.i135.prol ]
  %i.ej = icmp ult i64 %i.ef, 7
  br i1 %i.ej, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140, label %.lr.ph.i.i135

.lr.ph.i.i135:                                    ; preds = %.lr.ph.i.i135.prol.loopexit, %.lr.ph.i.i135
  %.011.i.i136 = phi ptr [ %i.fg, %.lr.ph.i.i135 ], [ %.011.i.i136.unr, %.lr.ph.i.i135.prol.loopexit ] ; 9 uses
  %.0810.i.i137 = phi ptr [ %i.fh, %.lr.ph.i.i135 ], [ %.0810.i.i137.unr, %.lr.ph.i.i135.prol.loopexit ] ; 9 uses
  %i.ek = load i8, ptr %.011.i.i136, align 1, !tbaa !66
  store i8 %i.ek, ptr %.0810.i.i137, align 1, !tbaa !66
  %i.el = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 1
  %i.em = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 1
  %i.en = load i8, ptr %i.el, align 1, !tbaa !66
  store i8 %i.en, ptr %i.em, align 1, !tbaa !66
  %i.eo = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 2
  %i.ep = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 2
  %i.eq = load i8, ptr %i.eo, align 1, !tbaa !66
  store i8 %i.eq, ptr %i.ep, align 1, !tbaa !66
  %i.er = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 3
  %i.es = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 3
  %i.et = load i8, ptr %i.er, align 1, !tbaa !66
  store i8 %i.et, ptr %i.es, align 1, !tbaa !66
  %i.eu = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 4
  %i.ew = load i8, ptr %i.eu, align 1, !tbaa !66
  store i8 %i.ew, ptr %i.ev, align 1, !tbaa !66
  %i.ex = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 5
  %i.ey = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 5
  %i.ez = load i8, ptr %i.ex, align 1, !tbaa !66
  store i8 %i.ez, ptr %i.ey, align 1, !tbaa !66
  %i.fa = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 6
  %i.fb = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 6
  %i.fc = load i8, ptr %i.fa, align 1, !tbaa !66
  store i8 %i.fc, ptr %i.fb, align 1, !tbaa !66
  %i.fd = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 7
  %i.fe = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 7
  %i.ff = load i8, ptr %i.fd, align 1, !tbaa !66
  store i8 %i.ff, ptr %i.fe, align 1, !tbaa !66
  %i.fg = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 8 ; 2 uses
  %.not.i.i138.7 = icmp eq ptr %i.fg, %i.dm
  br i1 %.not.i.i138.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140, label %.lr.ph.i.i135, !llvm.loop !3359

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
  br i1 %i.fo, label %bb.l, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153, !llvm.loop !3360

bb.o:                                             ; preds = %bb.j
  %i.fp = load ptr, ptr %0, align 8, !tbaa !3343  ; 8 uses
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
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !66
  %wide.load304 = load <16 x i8>, ptr %i.fx, align 1, !tbaa !66
  %i.fy = getelementptr i8, ptr %next.gep303, i64 16
  store <16 x i8> %wide.load, ptr %next.gep303, align 1, !tbaa !66
  store <16 x i8> %wide.load304, ptr %i.fy, align 1, !tbaa !66
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !3361

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.fr
  br i1 %cmp.n, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ga = and i32 %i.c, 28
  %min.epilog.iters.check = icmp eq i32 %i.ga, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i146.preheader, label %vec.epilog.ph, !prof !2408

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
  %wide.load311 = load <4 x i8>, ptr %next.gep309, align 1, !tbaa !66
  store <4 x i8> %wide.load311, ptr %next.gep310, align 1, !tbaa !66
  %index.next312 = add nuw i64 %index308, 4       ; 2 uses
  %i.gd = icmp eq i64 %index.next312, %n.vec307
  br i1 %i.gd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3362

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
  %i.gg = load i8, ptr %.011.i.i147.prol, align 1, !tbaa !66
  store i8 %i.gg, ptr %.0810.i.i148.prol, align 1, !tbaa !66
  %i.gh = getelementptr inbounds nuw i8, ptr %.011.i.i147.prol, i64 1 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0810.i.i148.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i146.prol.loopexit, label %.lr.ph.i.i146.prol, !llvm.loop !3363

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
  %i.gl = load i8, ptr %.011.i.i147, align 1, !tbaa !66
  store i8 %i.gl, ptr %.0810.i.i148, align 1, !tbaa !66
  %i.gm = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 1
  %i.gn = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 1
  %i.go = load i8, ptr %i.gm, align 1, !tbaa !66
  store i8 %i.go, ptr %i.gn, align 1, !tbaa !66
  %i.gp = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 2
  %i.gq = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 2
  %i.gr = load i8, ptr %i.gp, align 1, !tbaa !66
  store i8 %i.gr, ptr %i.gq, align 1, !tbaa !66
  %i.gs = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 3
  %i.gt = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 3
  %i.gu = load i8, ptr %i.gs, align 1, !tbaa !66
  store i8 %i.gu, ptr %i.gt, align 1, !tbaa !66
  %i.gv = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 4
  %i.gw = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 4
  %i.gx = load i8, ptr %i.gv, align 1, !tbaa !66
  store i8 %i.gx, ptr %i.gw, align 1, !tbaa !66
  %i.gy = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 5
  %i.gz = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 5
  %i.ha = load i8, ptr %i.gy, align 1, !tbaa !66
  store i8 %i.ha, ptr %i.gz, align 1, !tbaa !66
  %i.hb = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 6
  %i.hc = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 6
  %i.hd = load i8, ptr %i.hb, align 1, !tbaa !66
  store i8 %i.hd, ptr %i.hc, align 1, !tbaa !66
  %i.he = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 7
  %i.hf = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 7
  %i.hg = load i8, ptr %i.he, align 1, !tbaa !66
  store i8 %i.hg, ptr %i.hf, align 1, !tbaa !66
  %i.hh = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 8 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 8 ; 2 uses
  %.not.i.i149.7 = icmp eq ptr %i.hh, %i.fs
  br i1 %.not.i.i149.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit, label %.lr.ph.i.i146, !llvm.loop !3364

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit: ; preds = %.lr.ph.i.i146.prol.loopexit, %.lr.ph.i.i146, %vec.epilog.middle.block, %middle.block
  %.lcssa301 = phi ptr [ %i.gc, %vec.epilog.middle.block ], [ %i.fw, %middle.block ], [ %.lcssa555.unr, %.lr.ph.i.i146.prol.loopexit ], [ %i.hi, %.lr.ph.i.i146 ]
  %.pre = load i32, ptr %i.b, align 8, !tbaa !3347
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
  %i.hr = load i8, ptr %i.hq, align 8, !tbaa !3349
  %i.hs = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 4 uses
  store i8 %i.hr, ptr %.6, align 1, !tbaa !66
  %i.ht = load i32, ptr %i.g, align 8, !tbaa !3351
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
  store i8 48, ptr %i.hs, align 1, !tbaa !66
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
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162
  %.0103233 = phi i32 [ 0, %bb.v ], [ %i.ir, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162 ] ; 3 uses
  %.0104232 = phi i32 [ %spec.select130, %bb.v ], [ 3, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162 ] ; 2 uses
  %.9231 = phi ptr [ %1, %bb.v ], [ %.lcssa548.unr.a, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162 ] ; 3 uses
  %i.ih = icmp sgt i32 %.0103233, 0
  br i1 %i.ih, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %6 = load i32, ptr %i.h, align 4
  %7 = lshr i32 %6, 16
  %i.ii = trunc i32 %7 to i8
  %i.ij = getelementptr inbounds nuw i8, ptr %.9231, i64 1
  store i8 %i.ii, ptr %.9231, align 1, !tbaa !66
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.10 = phi ptr [ %i.ij, %bb.x ], [ %.9231, %bb.w ]
  %i.ik = and i32 %.0104232, 7                    ; 2 uses
  %xtraiter569 = zext nneg i32 %i.ik to i64
  %lcmp.mod570.not = icmp eq i32 %i.ik, 0
  br i1 %lcmp.mod570.not, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162, label %.lr.ph.i.i157.prol.preheader

.lr.ph.i.i157.prol.preheader:                     ; preds = %bb.y
  %i.il = load ptr, ptr %0, align 8, !tbaa !3343
  %i.im = sext i32 %.0103233 to i64
  %i.in = getelementptr inbounds i8, ptr %i.il, i64 %i.im
  br label %.lr.ph.i.i157.prol

.lr.ph.i.i157.prol:                               ; preds = %.lr.ph.i.i157.prol, %.lr.ph.i.i157.prol.preheader
  %.011.i.i158.prol = phi ptr [ %i.ip, %.lr.ph.i.i157.prol ], [ %i.in, %.lr.ph.i.i157.prol.preheader ] ; 2 uses
  %.0810.i.i159.prol = phi ptr [ %i.iq, %.lr.ph.i.i157.prol ], [ %.10, %.lr.ph.i.i157.prol.preheader ] ; 2 uses
  %prol.iter571 = phi i64 [ %prol.iter571.next, %.lr.ph.i.i157.prol ], [ 0, %.lr.ph.i.i157.prol.preheader ]
  %i.io = load i8, ptr %.011.i.i158.prol, align 1, !tbaa !66
  store i8 %i.io, ptr %.0810.i.i159.prol, align 1, !tbaa !66
  %i.ip = getelementptr inbounds nuw i8, ptr %.011.i.i158.prol, i64 1
  %i.iq = getelementptr inbounds nuw i8, ptr %.0810.i.i159.prol, i64 1 ; 2 uses
  %prol.iter571.next = add i64 %prol.iter571, 1   ; 2 uses
  %prol.iter571.cmp.not = icmp eq i64 %prol.iter571.next, %xtraiter569
  br i1 %prol.iter571.cmp.not, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162, label %.lr.ph.i.i157.prol, !llvm.loop !3365

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162: ; preds = %bb.y, %.lr.ph.i.i157.prol
  %.lcssa548.unr.a = phi ptr [ poison, %bb.y ], [ %i.iq, %.lr.ph.i.i157.prol ] ; 2 uses
  %i.ir = add nsw i32 %.0103233, %.0104232        ; 2 uses
  %i.is = icmp slt i32 %i.ir, %i.f
  br i1 %i.is, label %bb.w, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169, !llvm.loop !3366

iter.check409:                                    ; preds = %bb.u
  %i.it = load ptr, ptr %0, align 8, !tbaa !3343  ; 8 uses
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
  %wide.load402 = load <16 x i8>, ptr %next.gep400, align 1, !tbaa !66
  %wide.load403 = load <16 x i8>, ptr %i.jb, align 1, !tbaa !66
  %i.jc = getelementptr i8, ptr %next.gep401, i64 16
  store <16 x i8> %wide.load402, ptr %next.gep401, align 1, !tbaa !66
  store <16 x i8> %wide.load403, ptr %i.jc, align 1, !tbaa !66
  %index.next404 = add nuw i64 %index399, 32      ; 2 uses
  %i.jd = icmp eq i64 %index.next404, %n.vec397
  br i1 %i.jd, label %middle.block405, label %vector.body398, !llvm.loop !3367

middle.block405:                                  ; preds = %vector.body398
  %cmp.n406 = icmp eq i64 %n.vec397, %i.iv
  br i1 %cmp.n406, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169, label %vec.epilog.iter.check411

vec.epilog.iter.check411:                         ; preds = %middle.block405
  %min.epilog.iters.check412 = icmp eq i64 %n.mod.vf396, 0
  br i1 %min.epilog.iters.check412, label %.lr.ph.i.i164.preheader, label %vec.epilog.ph413, !prof !2408

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
  %wide.load420 = load <4 x i8>, ptr %next.gep418, align 1, !tbaa !66
  store <4 x i8> %wide.load420, ptr %next.gep419, align 1, !tbaa !66
  %index.next421 = add nuw i64 %index417, 4       ; 2 uses
  %i.jg = icmp eq i64 %index.next421, %n.vec415
  br i1 %i.jg, label %vec.epilog.middle.block422, label %vec.epilog.vector.body416, !llvm.loop !3368

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
  %i.jj = load i8, ptr %.011.i.i165.prol, align 1, !tbaa !66
  store i8 %i.jj, ptr %.0810.i.i166.prol, align 1, !tbaa !66
  %i.jk = getelementptr inbounds nuw i8, ptr %.011.i.i165.prol, i64 1 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.0810.i.i166.prol, i64 1 ; 3 uses
  %prol.iter568.next = add i64 %prol.iter568, 1   ; 2 uses
  %prol.iter568.cmp.not = icmp eq i64 %prol.iter568.next, %xtraiter566
  br i1 %prol.iter568.cmp.not, label %.lr.ph.i.i164.prol.loopexit, label %.lr.ph.i.i164.prol, !llvm.loop !3369

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
  %i.jo = load i8, ptr %.011.i.i165, align 1, !tbaa !66
  store i8 %i.jo, ptr %.0810.i.i166, align 1, !tbaa !66
  %i.jp = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 1
  %i.jq = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 1
  %i.jr = load i8, ptr %i.jp, align 1, !tbaa !66
  store i8 %i.jr, ptr %i.jq, align 1, !tbaa !66
  %i.js = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 2
  %i.jt = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 2
  %i.ju = load i8, ptr %i.js, align 1, !tbaa !66
  store i8 %i.ju, ptr %i.jt, align 1, !tbaa !66
  %i.jv = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 3
  %i.jw = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 3
  %i.jx = load i8, ptr %i.jv, align 1, !tbaa !66
  store i8 %i.jx, ptr %i.jw, align 1, !tbaa !66
  %i.jy = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 4
  %i.jz = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 4
  %i.ka = load i8, ptr %i.jy, align 1, !tbaa !66
  store i8 %i.ka, ptr %i.jz, align 1, !tbaa !66
  %i.kb = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 5
  %i.kc = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 5
  %i.kd = load i8, ptr %i.kb, align 1, !tbaa !66
  store i8 %i.kd, ptr %i.kc, align 1, !tbaa !66
  %i.ke = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 6
  %i.kf = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 6
  %i.kg = load i8, ptr %i.ke, align 1, !tbaa !66
  store i8 %i.kg, ptr %i.kf, align 1, !tbaa !66
  %i.kh = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 7
  %i.ki = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 7
  %i.kj = load i8, ptr %i.kh, align 1, !tbaa !66
  store i8 %i.kj, ptr %i.ki, align 1, !tbaa !66
  %i.kk = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 8 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 8 ; 2 uses
  %.not.i.i167.7 = icmp eq ptr %i.kk, %i.iw
  br i1 %.not.i.i167.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169, label %.lr.ph.i.i164, !llvm.loop !3370

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169: ; preds = %.lr.ph.i.i164.prol.loopexit, %.lr.ph.i.i164, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162, %middle.block405, %vec.epilog.middle.block422
  %.11 = phi ptr [ %.lcssa548.unr.a, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162 ], [ %i.jf, %vec.epilog.middle.block422 ], [ %i.ja, %middle.block405 ], [ %.lcssa550.unr, %.lr.ph.i.i164.prol.loopexit ], [ %i.kl, %.lr.ph.i.i164 ] ; 7 uses
  %.11430 = ptrtoaddr ptr %.11 to i64             ; 2 uses
  %i.km = load i32, ptr %i.h, align 4
  %i.kn = and i32 %i.km, 536870912
  %.not = icmp eq i32 %i.kn, 0
  br i1 %.not, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169
  %i.ko = load i32, ptr %i.b, align 8, !tbaa !3347 ; 3 uses
  %i.kp = icmp sgt i32 %i.ko, %i.f
  br i1 %i.kp, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.z
  %i.kq = load ptr, ptr %0, align 8, !tbaa !3343
  %i.kr = zext nneg i32 %i.ko to i64
  %i.ks = zext nneg i32 %i.f to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.ab
  %indvars.iv = phi i64 [ %i.kr, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 3 uses
  %i.kt = getelementptr i8, ptr %i.kq, i64 %indvars.iv
  %i.ku = getelementptr i8, ptr %i.kt, i64 -1
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !66
  %i.kw = icmp eq i8 %i.kv, 48
  br i1 %i.kw, label %bb.ab, label %.critedge.loopexit

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.kx = icmp sgt i64 %indvars.iv.next, %i.ks
  br i1 %i.kx, label %bb.aa, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, !llvm.loop !3371
end_hunk_0
