inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_test_control:bb.a
bb.gb:                                            ; preds = %bb.ga
  %i.abr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.abs = load ptr, ptr %i.abr, align 16
  %i.abt = zext nneg i32 %i.abj to i64
  %i.abu = getelementptr i8, ptr %i.abs, i64 %i.abt
  %i.abv = add nuw nsw i32 %i.aaz, 16             ; 2 uses
  store i32 %i.abv, ptr %1, align 16
  %i.abw = load ptr, ptr %i.abu, align 8, !tbaa !1338 ; 2 uses
  %i.abx = icmp ult i32 %i.aaz, 25
  br i1 %i.abx, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.aby = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.abz = load ptr, ptr %i.aby, align 16
  %i.aca = zext nneg i32 %i.abv to i64
  %i.acb = getelementptr i8, ptr %i.abz, i64 %i.aca
  %i.acc = add nuw nsw i32 %i.aaz, 24
  store i32 %i.acc, ptr %1, align 16
  br label %bb.ge

bb.gd:                                            ; preds = %.thread282, %bb.gb
  %i.acd = phi ptr [ %i.abq, %.thread282 ], [ %i.abw, %bb.gb ]
  %i.ace = phi ptr [ %i.abm, %.thread282 ], [ %i.abk, %bb.gb ]
  %i.acf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.acg = load ptr, ptr %i.acf, align 8          ; 2 uses
  %i.ach = getelementptr i8, ptr %i.acg, i64 8
  store ptr %i.ach, ptr %i.acf, align 8
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.aci = phi ptr [ %i.abw, %bb.gc ], [ %i.acd, %bb.gd ] ; 2 uses
  %i.acj = phi ptr [ %i.abk, %bb.gc ], [ %i.ace, %bb.gd ]
  %i.ack = phi ptr [ %i.acb, %bb.gc ], [ %i.acg, %bb.gd ]
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !348
  %i.acm = sext i16 %.0.i103 to i32
  store i32 %i.acm, ptr %i.acj, align 4, !tbaa !5
  %i.acn = icmp sgt i16 %.0.i103, 609
  br i1 %i.acn, label %.preheader23.i.thread, label %sqlite3LogEstToInt.exit

.preheader23.i.thread:                            ; preds = %bb.ge
  store i64 9223372036854775807, ptr %i.aci, align 8, !tbaa !18
  br label %.lr.ph.i109.preheader

sqlite3LogEstToInt.exit:                          ; preds = %bb.ge
  %i.aco = sdiv i16 %.0.i103, 10
  %.sext17.i = sext i16 %i.aco to i32             ; 2 uses
  %i.acp = srem i16 %.0.i103, 10                  ; 3 uses
  %i.acq = icmp ugt i16 %i.acp, 4
  %i.acr = sext i16 %i.acp to i64                 ; 2 uses
  %i.acs = add nsw i64 %i.acr, -2
  %.not.i105 = icmp eq i16 %i.acp, 0
  %i.act = add nsw i64 %i.acr, -1
  %spec.select.i106 = select i1 %.not.i105, i64 0, i64 %i.act
  %.0.i107 = select i1 %i.acq, i64 %i.acs, i64 %spec.select.i106
  %i.acu = icmp sgt i16 %.0.i103, 29
  %i.acv = add nsw i64 %.0.i107, 8                ; 2 uses
  %i.acw = sub nsw i32 3, %.sext17.i
  %i.acx = zext nneg i32 %i.acw to i64
  %i.acy = lshr i64 %i.acv, %i.acx
  %i.acz = add nsw i32 %.sext17.i, -3
  %i.ada = zext nneg i32 %i.acz to i64
  %i.adb = shl i64 %i.acv, %i.ada
  %.013.i = select i1 %i.acu, i64 %i.adb, i64 %i.acy ; 7 uses
  store i64 %.013.i, ptr %i.aci, align 8, !tbaa !18
  %i.adc = icmp ult i64 %.013.i, 8
  br i1 %i.adc, label %bb.gf, label %.preheader23.i

.preheader23.i:                                   ; preds = %sqlite3LogEstToInt.exit
  %i.add = icmp ugt i64 %.013.i, 255
  br i1 %i.add, label %.lr.ph.i109.preheader, label %.preheader21.i

.lr.ph.i109.preheader:                            ; preds = %.preheader23.i.thread, %.preheader23.i
  %.11524.i.ph = phi i64 [ %.013.i, %.preheader23.i ], [ 9223372036854775807, %.preheader23.i.thread ]
  br label %.lr.ph.i109

bb.gf:                                            ; preds = %sqlite3LogEstToInt.exit
  %i.ade = icmp samesign ult i64 %.013.i, 2
  br i1 %i.ade, label %sqlite3LogEst.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.gf, %.lr.ph34.i
  %.033.i = phi i16 [ %i.adf, %.lr.ph34.i ], [ 40, %bb.gf ]
  %.01432.i = phi i64 [ %i.adg, %.lr.ph34.i ], [ %.013.i, %bb.gf ] ; 2 uses
  %i.adf = add i16 %.033.i, -10                   ; 2 uses
  %i.adg = shl nuw nsw i64 %.01432.i, 1           ; 2 uses
  %i.adh = icmp ult i64 %.01432.i, 4
  br i1 %i.adh, label %.lr.ph34.i, label %.loopexit.i108, !llvm.loop !1340

.preheader21.i:                                   ; preds = %.lr.ph.i109, %.preheader23.i
  %.115.lcssa.i = phi i64 [ %.013.i, %.preheader23.i ], [ %i.adk, %.lr.ph.i109 ] ; 3 uses
  %.1.lcssa.i = phi i16 [ 40, %.preheader23.i ], [ %i.adj, %.lr.ph.i109 ] ; 2 uses
  %i.adi = icmp samesign ugt i64 %.115.lcssa.i, 15
  br i1 %i.adi, label %.lr.ph29.i, label %.loopexit.i108

.lr.ph.i109:                                      ; preds = %.lr.ph.i109.preheader, %.lr.ph.i109
  %.125.i = phi i16 [ %i.adj, %.lr.ph.i109 ], [ 40, %.lr.ph.i109.preheader ]
  %.11524.i = phi i64 [ %i.adk, %.lr.ph.i109 ], [ %.11524.i.ph, %.lr.ph.i109.preheader ] ; 2 uses
  %i.adj = add nuw nsw i16 %.125.i, 40            ; 2 uses
  %i.adk = lshr i64 %.11524.i, 4                  ; 2 uses
  %i.adl = icmp ugt i64 %.11524.i, 4095
  br i1 %i.adl, label %.lr.ph.i109, label %.preheader21.i, !llvm.loop !1341

.lr.ph29.i:                                       ; preds = %.preheader21.i, %.lr.ph29.i
  %.228.i = phi i16 [ %i.adm, %.lr.ph29.i ], [ %.1.lcssa.i, %.preheader21.i ]
  %.21627.i = phi i64 [ %i.adn, %.lr.ph29.i ], [ %.115.lcssa.i, %.preheader21.i ] ; 2 uses
  %i.adm = add nuw nsw i16 %.228.i, 10            ; 2 uses
  %i.adn = lshr i64 %.21627.i, 1                  ; 2 uses
  %i.ado = icmp samesign ugt i64 %.21627.i, 31
  br i1 %i.ado, label %.lr.ph29.i, label %.loopexit.i108, !llvm.loop !1342

.loopexit.i108:                                   ; preds = %.lr.ph34.i, %.lr.ph29.i, %.preheader21.i
  %.317.i = phi i64 [ %.115.lcssa.i, %.preheader21.i ], [ %i.adn, %.lr.ph29.i ], [ %i.adg, %.lr.ph34.i ]
  %.3.i = phi i16 [ %.1.lcssa.i, %.preheader21.i ], [ %i.adm, %.lr.ph29.i ], [ %i.adf, %.lr.ph34.i ]
  %i.adp = and i64 %.317.i, 7
  %i.adq = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.adp
  %i.adr = load i16, ptr %i.adq, align 2, !tbaa !330
  %i.ads = add i16 %.3.i, -10
  %i.adt = add i16 %i.ads, %i.adr
  %i.adu = sext i16 %i.adt to i32
  br label %sqlite3LogEst.exit

sqlite3LogEst.exit:                               ; preds = %bb.gf, %.loopexit.i108
  %.018.i = phi i32 [ %i.adu, %.loopexit.i108 ], [ 0, %bb.gf ]
  store i32 %.018.i, ptr %i.acl, align 4, !tbaa !5
  br label %sqlite3_randomness.exit

sqlite3_randomness.exit:                          ; preds = %bb.fd, %bb.fc, %bb.ey, %sqlite3FindDbName.exit.thread, %bb.bw, %bb.bv, %sqlite3_mutex_enter.exit.thread95.i, %sqlite3_mutex_enter.exit.i, %sqlite3_mutex_enter.exit.thread.i, %bb.j, %bb.eb, %bb.fn, %bb.fo, %bb.fp, %bb.fq, %bb.fr, %bb.cf, %bb.cg, %bb.q, %bb.r, %bb.de, %bb.df, %sqlite3LogEst.exit, %bb.fi, %bb.ea, %bb.dv, %bb.dr, %bb.dn, %bb.dj, %bb.cw, %bb.cr, %bb.cm, %bb.cl, %bb.ch, %bb.cb, %sqlite3BitvecBuiltinTest.exit, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ %.052111.i, %sqlite3BitvecBuiltinTest.exit ], [ 0, %sqlite3_mutex_enter.exit.thread95.i ], [ 0, %bb.cb ], [ 0, %bb.q ], [ %.0..0..0..0.32, %bb.ch ], [ %i.mx, %bb.cl ], [ 123410, %bb.cm ], [ 0, %bb.cr ], [ 0, %bb.cw ], [ 0, %bb.de ], [ 0, %bb.df ], [ 0, %bb.dj ], [ 0, %bb.dn ], [ 0, %bb.dr ], [ 0, %bb.dv ], [ 0, %sqlite3LogEst.exit ], [ 0, %bb.ea ], [ %i.lz, %bb.cf ], [ %spec.select93, %bb.eb ], [ 0, %bb.bv ], [ 0, %bb.ey ], [ 0, %bb.fi ], [ 0, %bb.r ], [ %i.lz, %bb.cg ], [ 0, %bb.fr ], [ 0, %bb.fq ], [ 0, %bb.fp ], [ 0, %bb.j ], [ 0, %sqlite3_mutex_enter.exit.thread.i ], [ 0, %sqlite3_mutex_enter.exit.i ], [ %i.kz, %bb.bw ], [ 0, %sqlite3FindDbName.exit.thread ], [ 0, %bb.fc ], [ 0, %bb.fd ]
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #59
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define internal fastcc signext i16 @sqlite3LogEst(i64 noundef %0) unnamed_addr #25 {
bb.a:
  %i.a = icmp ult i64 %0, 8
  br i1 %i.a, label %bb.b, label %.preheader23

.preheader23:                                     ; preds = %bb.a
  %i.b = icmp ugt i64 %0, 255
  br i1 %i.b, label %.lr.ph, label %.preheader21

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %0, 2
  br i1 %i.c, label %bb.c, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.b, %.lr.ph34
  %.033 = phi i16 [ %i.d, %.lr.ph34 ], [ 40, %bb.b ]
  %.01432 = phi i64 [ %i.e, %.lr.ph34 ], [ %0, %bb.b ] ; 2 uses
  %i.d = add i16 %.033, -10                       ; 2 uses
  %i.e = shl nuw nsw i64 %.01432, 1               ; 2 uses
  %i.f = icmp ult i64 %.01432, 4
  br i1 %i.f, label %.lr.ph34, label %.loopexit, !llvm.loop !1340

.preheader21:                                     ; preds = %.lr.ph, %.preheader23
  %.115.lcssa = phi i64 [ %0, %.preheader23 ], [ %i.i, %.lr.ph ] ; 3 uses
  %.1.lcssa = phi i16 [ 40, %.preheader23 ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.g = icmp samesign ugt i64 %.115.lcssa, 15
  br i1 %i.g, label %.lr.ph29, label %.loopexit

.lr.ph:                                           ; preds = %.preheader23, %.lr.ph
  %.125 = phi i16 [ %i.h, %.lr.ph ], [ 40, %.preheader23 ]
  %.11524 = phi i64 [ %i.i, %.lr.ph ], [ %0, %.preheader23 ] ; 2 uses
  %i.h = add nuw nsw i16 %.125, 40                ; 2 uses
  %i.i = lshr i64 %.11524, 4                      ; 2 uses
  %i.j = icmp ugt i64 %.11524, 4095
  br i1 %i.j, label %.lr.ph, label %.preheader21, !llvm.loop !1341

.lr.ph29:                                         ; preds = %.preheader21, %.lr.ph29
  %.228 = phi i16 [ %i.k, %.lr.ph29 ], [ %.1.lcssa, %.preheader21 ]
  %.21627 = phi i64 [ %i.l, %.lr.ph29 ], [ %.115.lcssa, %.preheader21 ] ; 2 uses
  %i.k = add nuw nsw i16 %.228, 10                ; 2 uses
  %i.l = lshr i64 %.21627, 1                      ; 2 uses
  %i.m = icmp samesign ugt i64 %.21627, 31
  br i1 %i.m, label %.lr.ph29, label %.loopexit, !llvm.loop !1342

.loopexit:                                        ; preds = %.lr.ph29, %.lr.ph34, %.preheader21
  %.317 = phi i64 [ %.115.lcssa, %.preheader21 ], [ %i.e, %.lr.ph34 ], [ %i.l, %.lr.ph29 ]
  %.3 = phi i16 [ %.1.lcssa, %.preheader21 ], [ %i.d, %.lr.ph34 ], [ %i.k, %.lr.ph29 ]
  %i.n = and i64 %.317, 7
  %i.o = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !330
  %i.q = add i16 %.3, -10
  %i.r = add i16 %i.q, %i.p
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  %.018 = phi i16 [ %i.r, %.loopexit ], [ 0, %bb.b ]
  ret i16 %.018
}

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3_create_filename(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #60
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #60
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #60
  %i.d = add i64 %i.a, 10
  %i.e = add i64 %i.d, %i.b
  %i.f = add i64 %i.e, %i.c                       ; 2 uses
  %i.g = shl i32 %3, 1                            ; 2 uses
  %i.h = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.03135 = phi i64 [ %i.f, %.lr.ph.preheader ], [ %i.m, %.lr.ph ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !251
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #60
  %i.l = add i64 %.03135, 1
  %i.m = add i64 %i.l, %i.k                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1343

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.031.lcssa = phi i64 [ %i.f, %bb.a ], [ %i.m, %.lr.ph ]
  %i.n = tail call i32 @sqlite3_initialize(), !inline_history !396
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %sqlite3_malloc64.exit, label %sqlite3_malloc64.exit.thread

sqlite3_malloc64.exit:                            ; preds = %._crit_edge
  %i.o = tail call fastcc ptr @sqlite3Malloc(i64 noundef %.031.lcssa), !inline_history !396 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %sqlite3_malloc64.exit.thread, label %bb.b

bb.b:                                             ; preds = %sqlite3_malloc64.exit
  store i32 0, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  %i.r = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #60 ; 2 uses
  %i.s = add i64 %i.r, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %0, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 2 uses
  %.038 = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  br i1 %i.h, label %.lr.ph42.preheader, label %._crit_edge43

.lr.ph42.preheader:                               ; preds = %bb.b
  %smax52 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %wide.trip.count53 = zext nneg i32 %smax52 to i64
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader, %.lr.ph42
  %indvars.iv49 = phi i64 [ 0, %.lr.ph42.preheader ], [ %indvars.iv.next50, %.lr.ph42 ] ; 2 uses
  %.040 = phi ptr [ %.038, %.lr.ph42.preheader ], [ %.0, %.lr.ph42 ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv49
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !251  ; 2 uses
  %i.w = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.v) #60 ; 2 uses
  %i.x = add i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.040, ptr nonnull readonly align 1 %i.v, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.040, i64 %i.w ; 2 uses
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count53
  br i1 %exitcond54.not, label %._crit_edge43, label %.lr.ph42, !llvm.loop !1344

._crit_edge43:                                    ; preds = %.lr.ph42, %bb.b
  %.pn.lcssa = phi ptr [ %i.t, %bb.b ], [ %i.y, %.lr.ph42 ]
  %.0.lcssa = phi ptr [ %.038, %bb.b ], [ %.0, %.lr.ph42 ]
  %i.z = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 2 ; 2 uses
  store i8 0, ptr %.0.lcssa, align 1, !tbaa !227
  %i.aa = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #60 ; 2 uses
  %i.ab = add i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %1, i64 %i.ab, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %i.ae = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #60 ; 2 uses
  %i.af = add i64 %i.ae, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull readonly align 1 %2, i64 %i.af, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  store i8 0, ptr %i.ah, align 1, !tbaa !227
  store i8 0, ptr %i.ai, align 1, !tbaa !227
  br label %sqlite3_malloc64.exit.thread

sqlite3_malloc64.exit.thread:                     ; preds = %._crit_edge, %sqlite3_malloc64.exit, %._crit_edge43
  %.029 = phi ptr [ %i.q, %._crit_edge43 ], [ null, %sqlite3_malloc64.exit ], [ null, %._crit_edge ]
  ret ptr %.029
}

; Function Attrs: nounwind uwtable
define hidden void @sqlite3_free_filename(ptr noundef %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sqlite3_free.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader.backedge
  %.0.i = phi ptr [ %i.b, %.preheader.backedge ], [ %0, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !227
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %.preheader.backedge

bb.b:                                             ; preds = %.preheader
  %i.d = getelementptr inbounds i8, ptr %.0.i, i64 -2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !227
  %.not6.i = icmp eq i8 %i.e, 0
  br i1 %.not6.i, label %bb.c, label %.preheader.backedge

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.0.i, i64 -3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !227
  %.not7.i = icmp eq i8 %i.g, 0
  br i1 %.not7.i, label %bb.d, label %.preheader.backedge

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %.0.i, i64 -4
  %i.i = load i8, ptr %i.h, align 1, !tbaa !227
  %.not8.i = icmp eq i8 %i.i, 0
  br i1 %.not8.i, label %databaseName.exit, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.d, %bb.c, %bb.b, %.preheader
  br label %.preheader, !llvm.loop !439

databaseName.exit:                                ; preds = %bb.d
  %i.j = getelementptr inbounds i8, ptr %.0.i, i64 -4 ; 3 uses
  %i.k = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i3 = icmp eq i32 %i.k, 0
  br i1 %.not.i3, label %bb.h, label %bb.e

bb.e:                                             ; preds = %databaseName.exit
  %i.l = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.m(ptr noundef nonnull %i.l) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.f, %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.o = tail call i32 %i.n(ptr noundef nonnull %i.j) #59, !inline_history !269
  %i.p = sext i32 %i.o to i64
  %i.q = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.r = sub nsw i64 %i.q, %i.p
  store i64 %i.r, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.t = add nsw i64 %i.s, -1
  store i64 %i.t, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.u(ptr noundef nonnull %i.j) #59, !inline_history !270
  %i.v = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.v, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.w(ptr noundef nonnull %i.v) #59, !inline_history !271
  br label %sqlite3_free.exit

bb.h:                                             ; preds = %databaseName.exit
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.x(ptr noundef nonnull %i.j) #59, !inline_history !270
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.h, %bb.g, %sqlite3_mutex_enter.exit.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden ptr @sqlite3_uri_parameter(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef readonly captures(address_is_null) %1) #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %uriParameter.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader.backedge
  %.0.i = phi ptr [ %i.c, %.preheader.backedge ], [ %0, %bb.a ] ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !227
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.b, label %.preheader.backedge

bb.b:                                             ; preds = %.preheader
  %i.e = getelementptr inbounds i8, ptr %.0.i, i64 -2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !227
  %.not6.i = icmp eq i8 %i.f, 0
  br i1 %.not6.i, label %bb.c, label %.preheader.backedge

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.0.i, i64 -3
  %i.h = load i8, ptr %i.g, align 1, !tbaa !227
  %.not7.i = icmp eq i8 %i.h, 0
  br i1 %.not7.i, label %bb.d, label %.preheader.backedge

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %.0.i, i64 -4
  %i.j = load i8, ptr %i.i, align 1, !tbaa !227
  %.not8.i = icmp eq i8 %i.j, 0
  br i1 %.not8.i, label %databaseName.exit, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.d, %bb.c, %bb.b, %.preheader
  br label %.preheader, !llvm.loop !439
end_hunk_0
begin_hunk_1_@sessionRebase:bb.a
  %.not.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i, label %sqlite3_realloc64.exit.i.i, label %sessionAppendVarint.exit

sqlite3_realloc64.exit.i.i:                       ; preds = %bb.o
  %i.av = call fastcc ptr @sqlite3Realloc(ptr noundef %i.at, i64 noundef %.1.i.i), !inline_history !1057 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %sessionAppendVarint.exit, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i

sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i: ; preds = %sqlite3_realloc64.exit.i.i
  store ptr %i.av, ptr %6, align 8, !tbaa !1625
  %i.ax = trunc nsw i64 %.1.i.i to i32
  store i32 %i.ax, ptr %i.n, align 4, !tbaa !1624
  %.pre9.i = load i32, ptr %i.m, align 8, !tbaa !1616 ; 2 uses
  %.pre10.i = sext i32 %.pre9.i to i64
  br label %bb.p

bb.p:                                             ; preds = %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i, %.sessionBufferGrow.exit.thread5_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre10.i, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i ], [ %i.ao, %.sessionBufferGrow.exit.thread5_crit_edge.i ]
  %i.ay = phi i32 [ %.pre9.i, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i ], [ %i.an, %.sessionBufferGrow.exit.thread5_crit_edge.i ]
  %i.az = phi ptr [ %i.av, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i ], [ %.pre.i, %.sessionBufferGrow.exit.thread5_crit_edge.i ]
  %i.ba = add nsw i32 %i.ay, 1
  store i32 %i.ba, ptr %i.m, align 8, !tbaa !1616
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %.pre-phi.i
  store i8 84, ptr %i.bb, align 1, !tbaa !227
  %.pr388 = load i32, ptr %i.m, align 8, !tbaa !1616 ; 2 uses
  %i.bc = load i32, ptr %i.o, align 8, !tbaa !1673 ; 6 uses
  %i.bd = sext i32 %.pr388 to i64                 ; 2 uses
  %i.be = add nsw i64 %i.bd, 9                    ; 2 uses
  %i.bf = load i32, ptr %i.n, align 4, !tbaa !1624 ; 2 uses
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = icmp sgt i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.q, label %.sessionBufferGrow.exit.thread6_crit_edge.i

.sessionBufferGrow.exit.thread6_crit_edge.i:      ; preds = %bb.p
  %.pre.i81 = load ptr, ptr %6, align 8, !tbaa !1625
  br label %sessionBufferGrow.exit.thread6.i

bb.q:                                             ; preds = %bb.p
  %.not.i.i83 = icmp eq i32 %i.bf, 0
  %spec.select.i.i84 = select i1 %.not.i.i83, i64 128, i64 %i.bg
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.024.i.i85 = phi i64 [ %spec.select.i.i84, %bb.q ], [ %i.bi, %bb.r ] ; 2 uses
  %i.bi = shl nsw i64 %.024.i.i85, 1              ; 3 uses
  %i.bj = icmp slt i64 %i.bi, %i.be
  br i1 %i.bj, label %bb.r, label %bb.s, !llvm.loop !1626

bb.s:                                             ; preds = %bb.r
  %i.bk = icmp sgt i64 %.024.i.i85, 1073741695
  br i1 %i.bk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bl = icmp sgt i32 %.pr388, 2147483382
  br i1 %i.bl, label %sessionAppendVarint.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.i.i86 = phi i64 [ 2147483391, %bb.t ], [ %i.bi, %bb.s ] ; 2 uses
  %i.bm = load ptr, ptr %6, align 8, !tbaa !1625
  %i.bn = call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i87 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i87, label %sqlite3_realloc64.exit.i.i89, label %sessionAppendVarint.exit

sqlite3_realloc64.exit.i.i89:                     ; preds = %bb.u
  %i.bo = call fastcc ptr @sqlite3Realloc(ptr noundef %i.bm, i64 noundef %.1.i.i86), !inline_history !1057 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %sessionAppendVarint.exit, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread6_crit_edge.i

sessionBufferGrow.exit.sessionBufferGrow.exit.thread6_crit_edge.i: ; preds = %sqlite3_realloc64.exit.i.i89
  store ptr %i.bo, ptr %6, align 8, !tbaa !1625
  %i.bq = trunc nsw i64 %.1.i.i86 to i32
  store i32 %i.bq, ptr %i.n, align 4, !tbaa !1624
  %.pre8.i = load i32, ptr %i.m, align 8, !tbaa !1616
  %.pre9.i93 = sext i32 %.pre8.i to i64
  br label %sessionBufferGrow.exit.thread6.i

sessionBufferGrow.exit.thread6.i:                 ; preds = %sessionBufferGrow.exit.sessionBufferGrow.exit.thread6_crit_edge.i, %.sessionBufferGrow.exit.thread6_crit_edge.i
  %.pre-phi.i82 = phi i64 [ %.pre9.i93, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread6_crit_edge.i ], [ %i.bd, %.sessionBufferGrow.exit.thread6_crit_edge.i ]
  %i.br = phi ptr [ %i.bo, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread6_crit_edge.i ], [ %.pre.i81, %.sessionBufferGrow.exit.thread6_crit_edge.i ]
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %.pre-phi.i82 ; 4 uses
  %i.bt = icmp ult i32 %i.bc, 128
  br i1 %i.bt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %sessionBufferGrow.exit.thread6.i
  %i.bu = trunc nuw nsw i32 %i.bc to i8
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !227
  br label %sessionAppendVarint.exit.thread

bb.w:                                             ; preds = %sessionBufferGrow.exit.thread6.i
  %i.bv = icmp ult i32 %i.bc, 16384
  br i1 %i.bv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bw = lshr i32 %i.bc, 7
  %i.bx = trunc nuw nsw i32 %i.bw to i8
  %i.by = or disjoint i8 %i.bx, -128
  store i8 %i.by, ptr %i.bs, align 1, !tbaa !227
  %i.bz = trunc i32 %i.bc to i8
  %i.ca = and i8 %i.bz, 127
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !227
  br label %sessionAppendVarint.exit.thread

bb.y:                                             ; preds = %bb.w
  %i.cc = sext i32 %i.bc to i64
  %i.cd = call fastcc i32 @putVarint64(ptr noundef %i.bs, i64 noundef %i.cc)
  %i.ce = and i32 %i.cd, 255
  br label %sessionAppendVarint.exit.thread

sessionAppendVarint.exit:                         ; preds = %bb.u, %sqlite3_realloc64.exit.i.i89, %bb.t, %bb.o, %sqlite3_realloc64.exit.i.i, %bb.n, %sqlite3_stricmp.exit.thread
  %.sink = phi i32 [ 7, %bb.o ], [ 7, %bb.t ], [ 7, %bb.n ], [ 1, %sqlite3_stricmp.exit.thread ], [ 7, %sqlite3_realloc64.exit.i.i ], [ 7, %sqlite3_realloc64.exit.i.i89 ], [ 7, %bb.u ] ; 2 uses
  store i32 %.sink, ptr %i.f, align 4, !tbaa !5
  br label %sessionAppendBlob.exit

sessionAppendVarint.exit.thread:                  ; preds = %bb.v, %bb.x, %bb.y
  %i.cf = phi i32 [ 1, %bb.v ], [ %i.ce, %bb.y ], [ 2, %bb.x ]
  %i.cg = load i32, ptr %i.m, align 8, !tbaa !1616
  %i.ch = add nsw i32 %i.cg, %i.cf
  store i32 %i.ch, ptr %i.m, align 8, !tbaa !1616
  %.pr390594 = load i32, ptr %i.o, align 8, !tbaa !1673 ; 3 uses
  %i.ci = load ptr, ptr %i.p, align 8, !tbaa !1686
  %i.cj = icmp sgt i32 %.pr390594, 0
  br i1 %i.cj, label %bb.z, label %sessionAppendBlob.exit

bb.z:                                             ; preds = %sessionAppendVarint.exit.thread
  %i.ck = zext nneg i32 %.pr390594 to i64         ; 2 uses
  %i.cl = load i32, ptr %i.m, align 8, !tbaa !1616
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %i.cn = add nsw i64 %i.cm, %i.ck                ; 3 uses
  %i.co = load i32, ptr %i.n, align 4, !tbaa !1624 ; 2 uses
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = icmp sgt i64 %i.cn, %i.cp
  br i1 %i.cq, label %bb.aa, label %.sessionBufferGrow.exit.thread10_crit_edge.i

.sessionBufferGrow.exit.thread10_crit_edge.i:     ; preds = %bb.z
  %.pre.i95 = load ptr, ptr %6, align 8, !tbaa !1625
  br label %sessionBufferGrow.exit.thread10.i

bb.aa:                                            ; preds = %bb.z
  %.not.i.i97 = icmp eq i32 %i.co, 0
  %spec.select.i.i98 = select i1 %.not.i.i97, i64 128, i64 %i.cp
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.024.i.i99 = phi i64 [ %spec.select.i.i98, %bb.aa ], [ %i.cr, %bb.ab ] ; 2 uses
  %i.cr = shl nsw i64 %.024.i.i99, 1              ; 3 uses
  %i.cs = icmp slt i64 %i.cr, %i.cn
  br i1 %i.cs, label %bb.ab, label %bb.ac, !llvm.loop !1626

bb.ac:                                            ; preds = %bb.ab
  %i.ct = icmp sgt i64 %.024.i.i99, 1073741695
  br i1 %i.ct, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cu = icmp sgt i64 %i.cn, 2147483391
  br i1 %i.cu, label %.critedge.i.i107, label %bb.ae

.critedge.i.i107:                                 ; preds = %bb.ad
  store i32 7, ptr %i.f, align 4, !tbaa !5
  br label %sessionAppendBlob.exit

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1.i.i100 = phi i64 [ 2147483391, %bb.ad ], [ %i.cr, %bb.ac ] ; 2 uses
  %i.cv = load ptr, ptr %6, align 8, !tbaa !1625
  %i.cw = call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i101 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i101, label %sqlite3_realloc64.exit.i.i103, label %sqlite3_realloc64.exit.thread.i.i102

sqlite3_realloc64.exit.i.i103:                    ; preds = %bb.ae
  %i.cx = call fastcc ptr @sqlite3Realloc(ptr noundef %i.cv, i64 noundef %.1.i.i100), !inline_history !1057 ; 3 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %sqlite3_realloc64.exit.thread.i.i102, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i

sqlite3_realloc64.exit.thread.i.i102:             ; preds = %sqlite3_realloc64.exit.i.i103, %bb.ae
  store i32 7, ptr %i.f, align 4, !tbaa !5
  br label %sessionAppendBlob.exit

sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i: ; preds = %sqlite3_realloc64.exit.i.i103
  store ptr %i.cx, ptr %6, align 8, !tbaa !1625
  %i.cz = trunc nsw i64 %.1.i.i100 to i32
  store i32 %i.cz, ptr %i.n, align 4, !tbaa !1624
  %.pre12.i = load i32, ptr %i.m, align 8, !tbaa !1616
  %.pre13.i = sext i32 %.pre12.i to i64
  br label %sessionBufferGrow.exit.thread10.i

sessionBufferGrow.exit.thread10.i:                ; preds = %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i, %.sessionBufferGrow.exit.thread10_crit_edge.i
  %.pre-phi.i96 = phi i64 [ %.pre13.i, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i ], [ %i.cm, %.sessionBufferGrow.exit.thread10_crit_edge.i ]
  %i.da = phi ptr [ %i.cx, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i ], [ %.pre.i95, %.sessionBufferGrow.exit.thread10_crit_edge.i ]
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %.pre-phi.i96
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr readonly align 1 %i.ci, i64 %i.ck, i1 false)
  %i.dc = load i32, ptr %i.m, align 8, !tbaa !1616
  %i.dd = add nsw i32 %i.dc, %.pr390594
  store i32 %i.dd, ptr %i.m, align 8, !tbaa !1616
  br label %sessionAppendBlob.exit

sessionAppendBlob.exit:                           ; preds = %sessionAppendVarint.exit, %sessionAppendVarint.exit.thread, %.critedge.i.i107, %sqlite3_realloc64.exit.thread.i.i102, %sessionBufferGrow.exit.thread10.i
  %i.de = phi i32 [ %.sink, %sessionAppendVarint.exit ], [ 0, %sessionAppendVarint.exit.thread ], [ 7, %.critedge.i.i107 ], [ 7, %sqlite3_realloc64.exit.thread.i.i102 ], [ 0, %sessionBufferGrow.exit.thread10.i ] ; 2 uses
  %i.df = load ptr, ptr %i.j, align 8, !tbaa !1687 ; 2 uses
  %i.dg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.df) #60
  %i.dh = trunc i64 %i.dg to i32                  ; 2 uses
  %i.di = add nsw i32 %i.dh, 1                    ; 2 uses
  %i.dj = icmp sgt i32 %i.dh, -1
  br i1 %i.dj, label %bb.af, label %sessionAppendBlob.exit126

bb.af:                                            ; preds = %sessionAppendBlob.exit
  %i.dk = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dl = load i32, ptr %i.m, align 8, !tbaa !1616
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = add nsw i64 %i.dm, %i.dk                ; 3 uses
  %i.do = icmp eq i32 %i.de, 0
  br i1 %i.do, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.dp = load i32, ptr %i.n, align 4, !tbaa !1624 ; 2 uses
  %i.dq = sext i32 %i.dp to i64                   ; 2 uses
  %i.dr = icmp sgt i64 %i.dn, %i.dq
  br i1 %i.dr, label %bb.ah, label %.sessionBufferGrow.exit.thread10_crit_edge.i108

.sessionBufferGrow.exit.thread10_crit_edge.i108:  ; preds = %bb.ag
  %.pre.i109 = load ptr, ptr %6, align 8, !tbaa !1625
  br label %sessionBufferGrow.exit.thread10.i110

bb.ah:                                            ; preds = %bb.ag
  %.not.i.i112 = icmp eq i32 %i.dp, 0
  %spec.select.i.i113 = select i1 %.not.i.i112, i64 128, i64 %i.dq
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %.024.i.i114 = phi i64 [ %spec.select.i.i113, %bb.ah ], [ %i.ds, %bb.ai ] ; 2 uses
  %i.ds = shl nsw i64 %.024.i.i114, 1             ; 3 uses
  %i.dt = icmp slt i64 %i.ds, %i.dn
  br i1 %i.dt, label %bb.ai, label %bb.aj, !llvm.loop !1626

bb.aj:                                            ; preds = %bb.ai
  %i.du = icmp sgt i64 %.024.i.i114, 1073741695
  br i1 %i.du, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dv = icmp sgt i64 %i.dn, 2147483391
  br i1 %i.dv, label %sessionAppendByte.exit357.sink.split, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.1.i.i115 = phi i64 [ 2147483391, %bb.ak ], [ %i.ds, %bb.aj ] ; 2 uses
  %i.dw = load ptr, ptr %6, align 8, !tbaa !1625
  %i.dx = call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i116 = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i.i116, label %sqlite3_realloc64.exit.i.i118, label %sessionAppendByte.exit357.sink.split

sqlite3_realloc64.exit.i.i118:                    ; preds = %bb.al
  %i.dy = call fastcc ptr @sqlite3Realloc(ptr noundef %i.dw, i64 noundef %.1.i.i115), !inline_history !1057 ; 3 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %sessionAppendByte.exit357.sink.split, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i122

sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i122: ; preds = %sqlite3_realloc64.exit.i.i118
  store ptr %i.dy, ptr %6, align 8, !tbaa !1625
  %i.ea = trunc nsw i64 %.1.i.i115 to i32
  store i32 %i.ea, ptr %i.n, align 4, !tbaa !1624
  %.pre12.i123 = load i32, ptr %i.m, align 8, !tbaa !1616
  %.pre13.i124 = sext i32 %.pre12.i123 to i64
  br label %sessionBufferGrow.exit.thread10.i110

sessionBufferGrow.exit.thread10.i110:             ; preds = %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i122, %.sessionBufferGrow.exit.thread10_crit_edge.i108
  %.pre-phi.i111 = phi i64 [ %.pre13.i124, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i122 ], [ %i.dm, %.sessionBufferGrow.exit.thread10_crit_edge.i108 ]
  %i.eb = phi ptr [ %i.dy, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i122 ], [ %.pre.i109, %.sessionBufferGrow.exit.thread10_crit_edge.i108 ]
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %.pre-phi.i111
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ec, ptr nonnull readonly align 1 %i.df, i64 %i.dk, i1 false)
  %i.ed = load i32, ptr %i.m, align 8, !tbaa !1616
  %i.ee = add nsw i32 %i.ed, %i.di
  store i32 %i.ee, ptr %i.m, align 8, !tbaa !1616
  br label %sessionAppendBlob.exit126

sessionAppendBlob.exit126:                        ; preds = %sessionBufferGrow.exit.thread10.i110, %sessionAppendBlob.exit, %bb.c
  %.pr399 = phi i32 [ 0, %sessionBufferGrow.exit.thread10.i110 ], [ %i.de, %sessionAppendBlob.exit ], [ 0, %bb.c ]
  %.2.ph = phi ptr [ %.1421, %sessionBufferGrow.exit.thread10.i110 ], [ %.1421, %sessionAppendBlob.exit ], [ %.060, %bb.c ] ; 31 uses
  %i.ef = icmp ne ptr %.2.ph, null
  %i.eg = icmp eq i32 %.pr399, 0                  ; 2 uses
  %or.cond = and i1 %i.ef, %i.eg
  br i1 %or.cond, label %bb.am, label %.thread391

bb.am:                                            ; preds = %sessionAppendBlob.exit126
  %i.eh = load ptr, ptr %i.g, align 8, !tbaa !251 ; 8 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.2.ph, i64 68
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !1603
  %i.ek = call fastcc i32 @sessionChangeHash(ptr noundef nonnull %.2.ph, i32 noundef 0, ptr noundef %i.eh, i32 noundef %i.ej)
  %i.el = getelementptr inbounds nuw i8, ptr %.2.ph, i64 72
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1604
  %i.en = sext i32 %i.ek to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.en
  %.061447 = load ptr, ptr %i.eo, align 8, !tbaa !1605 ; 2 uses
  %.not72448 = icmp eq ptr %.061447, null
  br i1 %.not72448, label %.thread391.thread600, label %.lr.ph450

.thread391.thread600:                             ; preds = %bb.am
  %i.ep = load i32, ptr %i.m, align 8, !tbaa !1616
  br label %bb.ev

.lr.ph450:                                        ; preds = %bb.am, %bb.an
  %.061449 = phi ptr [ %.061, %bb.an ], [ %.061447, %bb.am ] ; 10 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.061449, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1618 ; 3 uses
  %i.es = call fastcc i32 @sessionChangeEqual(ptr noundef nonnull %.2.ph, i32 noundef 0, ptr noundef %i.eh, i32 noundef 0, ptr noundef %i.er)
  %.not73 = icmp eq i32 %i.es, 0
  br i1 %.not73, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph450
  %i.et = getelementptr inbounds nuw i8, ptr %.061449, i64 24
  %.061 = load ptr, ptr %i.et, align 8, !tbaa !1605 ; 2 uses
  %.not72 = icmp eq ptr %.061, null
  br i1 %.not72, label %.thread391, label %.lr.ph450, !llvm.loop !1785

bb.ao:                                            ; preds = %.lr.ph450
  %i.eu = getelementptr inbounds nuw i8, ptr %.061449, i64 16 ; 3 uses
  %i.ev = load i32, ptr %i.q, align 4, !tbaa !1689
  %i.ew = load i8, ptr %.061449, align 8, !tbaa !1623 ; 3 uses
  switch i32 %i.ev, label %bb.ei [
    i32 18, label %bb.ap
    i32 23, label %bb.bq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.ex = icmp eq i8 %i.ew, 18
  br i1 %i.ex, label %bb.aq, label %.thread391

bb.aq:                                            ; preds = %bb.ap
  %i.ey = getelementptr inbounds nuw i8, ptr %.061449, i64 1
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !1627
  %i.fa = icmp eq i8 %i.ez, 0
  br i1 %i.fa, label %bb.ar, label %.critedge

bb.ar:                                            ; preds = %bb.aq
  %i.fb = load i32, ptr %i.m, align 8, !tbaa !1616 ; 4 uses
  %i.fc = sext i32 %i.fb to i64                   ; 2 uses
  %i.fd = load i32, ptr %i.n, align 4, !tbaa !1624 ; 3 uses
  %.not.i127 = icmp slt i32 %i.fb, %i.fd
  br i1 %.not.i127, label %.sessionBufferGrow.exit.thread5_crit_edge.i146, label %bb.as

.sessionBufferGrow.exit.thread5_crit_edge.i146:   ; preds = %bb.ar
  %.pre.i147 = load ptr, ptr %6, align 8, !tbaa !1625
  br label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %.not.i.i128 = icmp eq i32 %i.fd, 0
  %narrow.i129 = select i1 %.not.i.i128, i32 128, i32 %i.fd
  %spec.select.i.i130 = sext i32 %narrow.i129 to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %bb.as
  %.024.i.i131 = phi i64 [ %spec.select.i.i130, %bb.as ], [ %i.fe, %bb.at ] ; 2 uses
  %i.fe = shl nsw i64 %.024.i.i131, 1             ; 3 uses
  %.not7.i132 = icmp sgt i64 %i.fe, %i.fc
  br i1 %.not7.i132, label %bb.au, label %bb.at, !llvm.loop !1626

bb.au:                                            ; preds = %bb.at
  %i.ff = icmp sgt i64 %.024.i.i131, 1073741695
  br i1 %i.ff, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fg = icmp sgt i32 %i.fb, 2147483390
  br i1 %i.fg, label %sessionAppendByte.exit170, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.1.i.i133 = phi i64 [ 2147483391, %bb.av ], [ %i.fe, %bb.au ] ; 2 uses
  %i.fh = load ptr, ptr %6, align 8, !tbaa !1625
  %i.fi = call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i134 = icmp eq i32 %i.fi, 0
  br i1 %.not.i.i.i134, label %sqlite3_realloc64.exit.i.i136, label %sessionAppendByte.exit170

sqlite3_realloc64.exit.i.i136:                    ; preds = %bb.aw
  %i.fj = call fastcc ptr @sqlite3Realloc(ptr noundef %i.fh, i64 noundef %.1.i.i133), !inline_history !1057 ; 3 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %sessionAppendByte.exit170, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i140

sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i140: ; preds = %sqlite3_realloc64.exit.i.i136
  store ptr %i.fj, ptr %6, align 8, !tbaa !1625
  %i.fl = trunc nsw i64 %.1.i.i133 to i32
  store i32 %i.fl, ptr %i.n, align 4, !tbaa !1624
  %.pre9.i141 = load i32, ptr %i.m, align 8, !tbaa !1616 ; 2 uses
  %.pre10.i142 = sext i32 %.pre9.i141 to i64
  br label %bb.ax

bb.ax:                                            ; preds = %.sessionBufferGrow.exit.thread5_crit_edge.i146, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i140
  %.pre-phi.i144 = phi i64 [ %.pre10.i142, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i140 ], [ %i.fc, %.sessionBufferGrow.exit.thread5_crit_edge.i146 ]
  %i.fm = phi i32 [ %.pre9.i141, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i140 ], [ %i.fb, %.sessionBufferGrow.exit.thread5_crit_edge.i146 ]
  %i.fn = phi ptr [ %i.fj, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i140 ], [ %.pre.i147, %.sessionBufferGrow.exit.thread5_crit_edge.i146 ]
  %i.fo = add nsw i32 %i.fm, 1
  store i32 %i.fo, ptr %i.m, align 8, !tbaa !1616
  %i.fp = getelementptr inbounds i8, ptr %i.fn, i64 %.pre-phi.i144
  store i8 23, ptr %i.fp, align 1, !tbaa !227
  %.pr396 = load i32, ptr %i.m, align 8, !tbaa !1616 ; 4 uses
  %i.fq = load i32, ptr %i.r, align 8, !tbaa !1690
  %i.fr = trunc i32 %i.fq to i8
  %i.fs = sext i32 %.pr396 to i64                 ; 2 uses
  %i.ft = load i32, ptr %i.n, align 4, !tbaa !1624 ; 3 uses
  %.not.i149 = icmp slt i32 %.pr396, %i.ft
  br i1 %.not.i149, label %.sessionBufferGrow.exit.thread5_crit_edge.i168, label %bb.ay

.sessionBufferGrow.exit.thread5_crit_edge.i168:   ; preds = %bb.ax
  %.pre.i169 = load ptr, ptr %6, align 8, !tbaa !1625
  br label %sessionAppendByte.exit170.thread

bb.ay:                                            ; preds = %bb.ax
  %.not.i.i150 = icmp eq i32 %i.ft, 0
  %narrow.i151 = select i1 %.not.i.i150, i32 128, i32 %i.ft
  %spec.select.i.i152 = sext i32 %narrow.i151 to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %bb.ay
  %.024.i.i153 = phi i64 [ %spec.select.i.i152, %bb.ay ], [ %i.fu, %bb.az ] ; 2 uses
  %i.fu = shl nsw i64 %.024.i.i153, 1             ; 3 uses
  %.not7.i154 = icmp sgt i64 %i.fu, %i.fs
  br i1 %.not7.i154, label %bb.ba, label %bb.az, !llvm.loop !1626

bb.ba:                                            ; preds = %bb.az
  %i.fv = icmp sgt i64 %.024.i.i153, 1073741695
  br i1 %i.fv, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fw = icmp sgt i32 %.pr396, 2147483390
  br i1 %i.fw, label %sessionAppendByte.exit170, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.1.i.i155 = phi i64 [ 2147483391, %bb.bb ], [ %i.fu, %bb.ba ] ; 2 uses
  %i.fx = load ptr, ptr %6, align 8, !tbaa !1625
  %i.fy = call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i156 = icmp eq i32 %i.fy, 0
  br i1 %.not.i.i.i156, label %sqlite3_realloc64.exit.i.i158, label %sessionAppendByte.exit170

sqlite3_realloc64.exit.i.i158:                    ; preds = %bb.bc
  %i.fz = call fastcc ptr @sqlite3Realloc(ptr noundef %i.fx, i64 noundef %.1.i.i155), !inline_history !1057 ; 3 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %sessionAppendByte.exit170, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i162

sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i162: ; preds = %sqlite3_realloc64.exit.i.i158
  store ptr %i.fz, ptr %6, align 8, !tbaa !1625
  %i.gb = trunc nsw i64 %.1.i.i155 to i32
  store i32 %i.gb, ptr %i.n, align 4, !tbaa !1624
  %.pre9.i163 = load i32, ptr %i.m, align 8, !tbaa !1616 ; 2 uses
  %.pre10.i164 = sext i32 %.pre9.i163 to i64
  br label %sessionAppendByte.exit170.thread

sessionAppendByte.exit170:                        ; preds = %bb.bc, %sqlite3_realloc64.exit.i.i158, %bb.bb, %bb.aw, %sqlite3_realloc64.exit.i.i136, %bb.av
  store i32 7, ptr %i.f, align 4, !tbaa !5
  br label %sessionAppendBlob.exit189

sessionAppendByte.exit170.thread:                 ; preds = %.sessionBufferGrow.exit.thread5_crit_edge.i168, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i162
  %.pre-phi.i166 = phi i64 [ %.pre10.i164, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i162 ], [ %i.fs, %.sessionBufferGrow.exit.thread5_crit_edge.i168 ]
  %i.gc = phi i32 [ %.pre9.i163, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i162 ], [ %.pr396, %.sessionBufferGrow.exit.thread5_crit_edge.i168 ]
  %i.gd = phi ptr [ %i.fz, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i162 ], [ %.pre.i169, %.sessionBufferGrow.exit.thread5_crit_edge.i168 ]
  %i.ge = add nsw i32 %i.gc, 1
  store i32 %i.ge, ptr %i.m, align 8, !tbaa !1616
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 %.pre-phi.i166
  store i8 %i.fr, ptr %i.gf, align 1, !tbaa !227
  %i.gg = load ptr, ptr %i.eu, align 8, !tbaa !1618
  %i.gh = getelementptr inbounds nuw i8, ptr %.061449, i64 8
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !1643 ; 3 uses
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %bb.bd, label %sessionAppendBlob.exit189

bb.bd:                                            ; preds = %sessionAppendByte.exit170.thread
  %i.gk = zext nneg i32 %i.gi to i64              ; 2 uses
  %i.gl = load i32, ptr %i.m, align 8, !tbaa !1616
  %i.gm = sext i32 %i.gl to i64                   ; 2 uses
  %i.gn = add nsw i64 %i.gm, %i.gk                ; 3 uses
  %i.go = load i32, ptr %i.n, align 4, !tbaa !1624 ; 2 uses
  %i.gp = sext i32 %i.go to i64                   ; 2 uses
  %i.gq = icmp sgt i64 %i.gn, %i.gp
end_hunk_1
begin_hunk_2_@sessionPreupdateDepth
define internal i32 @sessionPreupdateDepth(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !868  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3_preupdate_depth.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !910
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.e = load i32, ptr %i.d, align 8, !tbaa !911
  br label %sqlite3_preupdate_depth.exit

sqlite3_preupdate_depth.exit:                     ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sessionAppendTableHdr(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = select i1 %.not, i8 84, i8 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1616 ; 4 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !5
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %sessionAppendByte.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1624 ; 3 uses
  %.not.i = icmp slt i32 %i.c, %i.h
  br i1 %.not.i, label %.sessionBufferGrow.exit.thread5_crit_edge.i, label %bb.c

.sessionBufferGrow.exit.thread5_crit_edge.i:      ; preds = %bb.b
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !1625
  br label %sessionBufferGrow.exit.thread5.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.h, 0
  %narrow.i = select i1 %.not.i.i, i32 128, i32 %i.h
  %spec.select.i.i = sext i32 %narrow.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.024.i.i = phi i64 [ %spec.select.i.i, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %i.i = shl nsw i64 %.024.i.i, 1                 ; 3 uses
  %.not7.i = icmp sgt i64 %i.i, %i.d
  br i1 %.not7.i, label %bb.e, label %bb.d, !llvm.loop !1626

bb.e:                                             ; preds = %bb.d
  %i.j = icmp sgt i64 %.024.i.i, 1073741695
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = icmp sgt i32 %i.c, 2147483390
  br i1 %i.k, label %.critedge.i.i, label %bb.g

.critedge.i.i:                                    ; preds = %bb.f
  store i32 7, ptr %3, align 4, !tbaa !5
  br label %sessionAppendByte.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi i64 [ 2147483391, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !1625
  %i.m = tail call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i, label %sqlite3_realloc64.exit.i.i, label %sqlite3_realloc64.exit.thread.i.i

sqlite3_realloc64.exit.i.i:                       ; preds = %bb.g
  %i.n = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.l, i64 noundef %.1.i.i), !inline_history !1057 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %sqlite3_realloc64.exit.thread.i.i, label %sessionBufferGrow.exit.i

sqlite3_realloc64.exit.thread.i.i:                ; preds = %sqlite3_realloc64.exit.i.i, %bb.g
  store i32 7, ptr %3, align 4, !tbaa !5
  br label %sessionAppendByte.exit

sessionBufferGrow.exit.i:                         ; preds = %sqlite3_realloc64.exit.i.i
  store ptr %i.n, ptr %0, align 8, !tbaa !1625
  %i.p = trunc nsw i64 %.1.i.i to i32
  store i32 %i.p, ptr %i.g, align 4, !tbaa !1624
  %.pre.i.i = load i32, ptr %3, align 4, !tbaa !5
  %.not8.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not8.i, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i, label %sessionAppendByte.exit

sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i: ; preds = %sessionBufferGrow.exit.i
  %.pre9.i = load i32, ptr %i.b, align 8, !tbaa !1616 ; 2 uses
  %.pre10.i = sext i32 %.pre9.i to i64
  br label %sessionBufferGrow.exit.thread5.i

sessionBufferGrow.exit.thread5.i:                 ; preds = %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i, %.sessionBufferGrow.exit.thread5_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre10.i, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i ], [ %i.d, %.sessionBufferGrow.exit.thread5_crit_edge.i ]
  %i.q = phi i32 [ %.pre9.i, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i ], [ %i.c, %.sessionBufferGrow.exit.thread5_crit_edge.i ]
  %i.r = phi ptr [ %i.n, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i ], [ %.pre.i, %.sessionBufferGrow.exit.thread5_crit_edge.i ]
  %i.s = add nsw i32 %i.q, 1
  store i32 %i.s, ptr %i.b, align 8, !tbaa !1616
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %.pre-phi.i
  store i8 %i.a, ptr %i.t, align 1, !tbaa !227
  br label %sessionAppendByte.exit

sessionAppendByte.exit:                           ; preds = %bb.a, %.critedge.i.i, %sqlite3_realloc64.exit.thread.i.i, %sessionBufferGrow.exit.i, %sessionBufferGrow.exit.thread5.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1553
  tail call fastcc void @sessionAppendVarint(ptr noundef nonnull %0, i32 noundef %i.v, ptr noundef %3)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1556
  %i.y = load i32, ptr %i.u, align 8, !tbaa !1553 ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.h, label %sessionAppendBlob.exit

bb.h:                                             ; preds = %sessionAppendByte.exit
  %i.aa = zext nneg i32 %i.y to i64               ; 2 uses
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !1616
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = add nsw i64 %i.ac, %i.aa                ; 3 uses
  %i.ae = load i32, ptr %3, align 4, !tbaa !5
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %sessionAppendBlob.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1624 ; 2 uses
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = icmp sgt i64 %i.ad, %i.ai
  br i1 %i.aj, label %bb.j, label %.sessionBufferGrow.exit.thread10_crit_edge.i

.sessionBufferGrow.exit.thread10_crit_edge.i:     ; preds = %bb.i
  %.pre.i13 = load ptr, ptr %0, align 8, !tbaa !1625
  br label %sessionBufferGrow.exit.thread10.i

bb.j:                                             ; preds = %bb.i
  %.not.i.i15 = icmp eq i32 %i.ah, 0
  %spec.select.i.i16 = select i1 %.not.i.i15, i64 128, i64 %i.ai
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.024.i.i17 = phi i64 [ %spec.select.i.i16, %bb.j ], [ %i.ak, %bb.k ] ; 2 uses
  %i.ak = shl nsw i64 %.024.i.i17, 1              ; 3 uses
  %i.al = icmp slt i64 %i.ak, %i.ad
  br i1 %i.al, label %bb.k, label %bb.l, !llvm.loop !1626

bb.l:                                             ; preds = %bb.k
  %i.am = icmp sgt i64 %.024.i.i17, 1073741695
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = icmp sgt i64 %i.ad, 2147483391
  br i1 %i.an, label %.critedge.i.i25, label %bb.n

.critedge.i.i25:                                  ; preds = %bb.m
  store i32 7, ptr %3, align 4, !tbaa !5
  br label %sessionAppendBlob.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.i.i18 = phi i64 [ 2147483391, %bb.m ], [ %i.ak, %bb.l ] ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !1625
  %i.ap = tail call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i19 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i19, label %sqlite3_realloc64.exit.i.i21, label %sqlite3_realloc64.exit.thread.i.i20

sqlite3_realloc64.exit.i.i21:                     ; preds = %bb.n
  %i.aq = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.ao, i64 noundef %.1.i.i18), !inline_history !1057 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %sqlite3_realloc64.exit.thread.i.i20, label %sessionBufferGrow.exit.i22

sqlite3_realloc64.exit.thread.i.i20:              ; preds = %sqlite3_realloc64.exit.i.i21, %bb.n
  store i32 7, ptr %3, align 4, !tbaa !5
  br label %sessionAppendBlob.exit

sessionBufferGrow.exit.i22:                       ; preds = %sqlite3_realloc64.exit.i.i21
  store ptr %i.aq, ptr %0, align 8, !tbaa !1625
  %i.as = trunc nsw i64 %.1.i.i18 to i32
  store i32 %i.as, ptr %i.ag, align 4, !tbaa !1624
  %.pre.i.i23 = load i32, ptr %3, align 4, !tbaa !5
  %.not.i24 = icmp eq i32 %.pre.i.i23, 0
  br i1 %.not.i24, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i, label %sessionAppendBlob.exit

sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i: ; preds = %sessionBufferGrow.exit.i22
  %.pre12.i = load i32, ptr %i.b, align 8, !tbaa !1616
  %.pre13.i = sext i32 %.pre12.i to i64
  br label %sessionBufferGrow.exit.thread10.i

sessionBufferGrow.exit.thread10.i:                ; preds = %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i, %.sessionBufferGrow.exit.thread10_crit_edge.i
  %.pre-phi.i14 = phi i64 [ %.pre13.i, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i ], [ %i.ac, %.sessionBufferGrow.exit.thread10_crit_edge.i ]
  %i.at = phi ptr [ %i.aq, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i ], [ %.pre.i13, %.sessionBufferGrow.exit.thread10_crit_edge.i ]
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %.pre-phi.i14
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr readonly align 1 %i.x, i64 %i.aa, i1 false)
  %i.av = load i32, ptr %i.b, align 8, !tbaa !1616
  %i.aw = add nsw i32 %i.av, %i.y
  store i32 %i.aw, ptr %i.b, align 8, !tbaa !1616
  br label %sessionAppendBlob.exit

sessionAppendBlob.exit:                           ; preds = %sessionAppendByte.exit, %bb.h, %.critedge.i.i25, %sqlite3_realloc64.exit.thread.i.i20, %sessionBufferGrow.exit.i22, %sessionBufferGrow.exit.thread10.i
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1559 ; 2 uses
  %i.az = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #60
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  %i.bb = add nsw i32 %i.ba, 1                    ; 2 uses
  %i.bc = icmp sgt i32 %i.ba, -1
  br i1 %i.bc, label %bb.o, label %sessionAppendBlob.exit44

bb.o:                                             ; preds = %sessionAppendBlob.exit
  %i.bd = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.be = load i32, ptr %i.b, align 8, !tbaa !1616
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = add nsw i64 %i.bf, %i.bd                ; 3 uses
  %i.bh = load i32, ptr %3, align 4, !tbaa !5
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.p, label %sessionAppendBlob.exit44

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !1624 ; 2 uses
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = icmp sgt i64 %i.bg, %i.bl
  br i1 %i.bm, label %bb.q, label %.sessionBufferGrow.exit.thread10_crit_edge.i26

.sessionBufferGrow.exit.thread10_crit_edge.i26:   ; preds = %bb.p
  %.pre.i27 = load ptr, ptr %0, align 8, !tbaa !1625
  br label %sessionBufferGrow.exit.thread10.i28

bb.q:                                             ; preds = %bb.p
  %.not.i.i30 = icmp eq i32 %i.bk, 0
  %spec.select.i.i31 = select i1 %.not.i.i30, i64 128, i64 %i.bl
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.024.i.i32 = phi i64 [ %spec.select.i.i31, %bb.q ], [ %i.bn, %bb.r ] ; 2 uses
  %i.bn = shl nsw i64 %.024.i.i32, 1              ; 3 uses
  %i.bo = icmp slt i64 %i.bn, %i.bg
  br i1 %i.bo, label %bb.r, label %bb.s, !llvm.loop !1626

bb.s:                                             ; preds = %bb.r
  %i.bp = icmp sgt i64 %.024.i.i32, 1073741695
  br i1 %i.bp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bq = icmp sgt i64 %i.bg, 2147483391
  br i1 %i.bq, label %.critedge.i.i43, label %bb.u

.critedge.i.i43:                                  ; preds = %bb.t
  store i32 7, ptr %3, align 4, !tbaa !5
  br label %sessionAppendBlob.exit44

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.i.i33 = phi i64 [ 2147483391, %bb.t ], [ %i.bn, %bb.s ] ; 2 uses
  %i.br = load ptr, ptr %0, align 8, !tbaa !1625
  %i.bs = tail call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i34 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i.i34, label %sqlite3_realloc64.exit.i.i36, label %sqlite3_realloc64.exit.thread.i.i35

sqlite3_realloc64.exit.i.i36:                     ; preds = %bb.u
  %i.bt = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.br, i64 noundef %.1.i.i33), !inline_history !1057 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %sqlite3_realloc64.exit.thread.i.i35, label %sessionBufferGrow.exit.i37

sqlite3_realloc64.exit.thread.i.i35:              ; preds = %sqlite3_realloc64.exit.i.i36, %bb.u
  store i32 7, ptr %3, align 4, !tbaa !5
  br label %sessionAppendBlob.exit44

sessionBufferGrow.exit.i37:                       ; preds = %sqlite3_realloc64.exit.i.i36
  store ptr %i.bt, ptr %0, align 8, !tbaa !1625
  %i.bv = trunc nsw i64 %.1.i.i33 to i32
  store i32 %i.bv, ptr %i.bj, align 4, !tbaa !1624
  %.pre.i.i38 = load i32, ptr %3, align 4, !tbaa !5
  %.not.i39 = icmp eq i32 %.pre.i.i38, 0
  br i1 %.not.i39, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i40, label %sessionAppendBlob.exit44

sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i40: ; preds = %sessionBufferGrow.exit.i37
  %.pre12.i41 = load i32, ptr %i.b, align 8, !tbaa !1616
  %.pre13.i42 = sext i32 %.pre12.i41 to i64
  br label %sessionBufferGrow.exit.thread10.i28

sessionBufferGrow.exit.thread10.i28:              ; preds = %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i40, %.sessionBufferGrow.exit.thread10_crit_edge.i26
  %.pre-phi.i29 = phi i64 [ %.pre13.i42, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i40 ], [ %i.bf, %.sessionBufferGrow.exit.thread10_crit_edge.i26 ]
  %i.bw = phi ptr [ %i.bt, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i40 ], [ %.pre.i27, %.sessionBufferGrow.exit.thread10_crit_edge.i26 ]
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %.pre-phi.i29
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr nonnull readonly align 1 %i.ay, i64 %i.bd, i1 false)
  %i.by = load i32, ptr %i.b, align 8, !tbaa !1616
  %i.bz = add nsw i32 %i.by, %i.bb
  store i32 %i.bz, ptr %i.b, align 8, !tbaa !1616
  br label %sessionAppendBlob.exit44

sessionAppendBlob.exit44:                         ; preds = %sessionAppendBlob.exit, %bb.o, %.critedge.i.i43, %sqlite3_realloc64.exit.thread.i.i35, %sessionBufferGrow.exit.i37, %sessionBufferGrow.exit.thread10.i28
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sessionSelectStmt(ptr noundef %0, i32 noundef range(i32 0, 256) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull writeonly captures(none) %7, ptr nofree noundef writeonly captures(address_is_null) %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 18 uses
  %9 = alloca %struct.SessionBuffer, align 8      ; 14 uses
  %10 = alloca %struct.SessionBuffer, align 8     ; 10 uses
  %11 = alloca %struct.SessionBuffer, align 8     ; 14 uses
  %12 = alloca %struct.SessionBuffer, align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i32 0, ptr %i.a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.d = tail call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %sqlite3_realloc64.exit.i.i, label %sqlite3_realloc64.exit.thread.i.i

sqlite3_realloc64.exit.i.i:                       ; preds = %bb.a
  %i.e = tail call fastcc ptr @sqlite3Realloc(ptr noundef null, i64 noundef 256), !inline_history !1057 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %sqlite3_realloc64.exit.thread.i.i, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i

sqlite3_realloc64.exit.thread.i.i:                ; preds = %sqlite3_realloc64.exit.i.i, %bb.a
  store i32 7, ptr %i.a, align 4, !tbaa !5
  br label %sessionAppendStr.exit

sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i: ; preds = %sqlite3_realloc64.exit.i.i
  store ptr %i.e, ptr %10, align 8, !tbaa !1625
  store i32 256, ptr %i.b, align 4, !tbaa !1624
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.e, ptr noundef nonnull align 1 dereferenceable(3) @.str.2118, i64 3, i1 false)
  store i32 3, ptr %i.c, align 8, !tbaa !1616
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  store i8 0, ptr %i.g, align 1, !tbaa !227
  br label %sessionAppendStr.exit

sessionAppendStr.exit:                            ; preds = %sqlite3_realloc64.exit.thread.i.i, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i
  %i.h = phi ptr [ null, %sqlite3_realloc64.exit.thread.i.i ], [ %i.e, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i ] ; 2 uses
  %.not.i.i40 = phi i64 [ 128, %sqlite3_realloc64.exit.thread.i.i ], [ 256, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i ]
  %i.i = phi i64 [ 0, %sqlite3_realloc64.exit.thread.i.i ], [ 256, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i ]
  %i.j = phi i1 [ false, %sqlite3_realloc64.exit.thread.i.i ], [ true, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i ]
  %i.k = phi i32 [ 7, %sqlite3_realloc64.exit.thread.i.i ], [ 0, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i ] ; 2 uses
  %i.l = phi i32 [ 0, %sqlite3_realloc64.exit.thread.i.i ], [ 3, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i ] ; 2 uses
  %i.m = icmp eq ptr %3, null
  br i1 %i.m, label %sqlite3_stricmp.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sessionAppendStr.exit, %bb.d
  %.013.i.i = phi ptr [ %i.y, %bb.d ], [ %3, %sessionAppendStr.exit ] ; 2 uses
  %.0.i.i = phi ptr [ %i.x, %bb.d ], [ @.str.405, %sessionAppendStr.exit ] ; 2 uses
  %i.n = load i8, ptr %.0.i.i, align 1, !tbaa !227 ; 3 uses
  %i.o = load i8, ptr %.013.i.i, align 1, !tbaa !227 ; 2 uses
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.i
  %i.q = icmp eq i8 %i.n, 0
  br i1 %i.q, label %sqlite3_stricmp.exit.thread, label %bb.d

bb.c:                                             ; preds = %.preheader.i
  %i.r = zext i8 %i.n to i64
  %i.s = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !227
  %i.u = zext i8 %i.o to i64
  %i.v = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !227
  %.not.i.i34 = icmp eq i8 %i.t, %i.w
  br i1 %.not.i.i34, label %bb.d, label %sqlite3_stricmp.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  br label %.preheader.i

sqlite3_stricmp.exit:                             ; preds = %bb.c, %sessionAppendStr.exit
  %i.z = icmp sgt i32 %4, 0
  br i1 %i.z, label %.lr.ph, label %sessionAppendStr.exit114

.lr.ph:                                           ; preds = %sqlite3_stricmp.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  %wide.trip.count = zext nneg i32 %4 to i64
  %invariant.op = add nuw nsw i32 %4, 1
  br label %bb.v

sqlite3_stricmp.exit.thread:                      ; preds = %bb.b
  %i.ag = zext nneg i32 %i.l to i64               ; 2 uses
  %i.ah = or disjoint i64 %i.ag, 24               ; 2 uses
  br i1 %i.j, label %bb.e, label %sessionAppendStr.exit54

bb.e:                                             ; preds = %sqlite3_stricmp.exit.thread
  %i.ai = icmp samesign ugt i64 %i.ah, %i.i
  br i1 %i.ai, label %.preheader, label %sessionBufferGrow.exit.thread12.i38

.preheader:                                       ; preds = %bb.e, %.preheader
  %.024.i.i42 = phi i64 [ %i.aj, %.preheader ], [ %.not.i.i40, %bb.e ] ; 2 uses
  %i.aj = shl nsw i64 %.024.i.i42, 1              ; 3 uses
  %i.ak = icmp slt i64 %i.aj, %i.ah
  br i1 %i.ak, label %.preheader, label %bb.f, !llvm.loop !1626

bb.f:                                             ; preds = %.preheader
  %i.al = icmp sgt i64 %.024.i.i42, 1073741695
  %spec.select = select i1 %i.al, i64 2147483391, i64 %i.aj ; 2 uses
  %i.am = tail call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i44 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i44, label %sqlite3_realloc64.exit.i.i46, label %sqlite3_free.exit

sqlite3_realloc64.exit.i.i46:                     ; preds = %bb.f
  %i.an = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.h, i64 noundef %spec.select), !inline_history !1057 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %sqlite3_free.exit, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i50

sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i50: ; preds = %sqlite3_realloc64.exit.i.i46
  store ptr %i.an, ptr %10, align 8, !tbaa !1625
  %i.ap = trunc nsw i64 %spec.select to i32
  store i32 %i.ap, ptr %i.b, align 4, !tbaa !1624
  br label %sessionBufferGrow.exit.thread12.i38

sessionBufferGrow.exit.thread12.i38:              ; preds = %bb.e, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i50
  %i.aq = phi ptr [ %i.an, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i50 ], [ %i.h, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.ar, ptr noundef nonnull align 1 dereferenceable(23) @.str.2119, i64 23, i1 false)
  %i.as = add nuw nsw i32 %i.l, 23                ; 2 uses
  store i32 %i.as, ptr %i.c, align 8, !tbaa !1616
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  store i8 0, ptr %i.au, align 1, !tbaa !227
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !1616
  %.pre228 = load i32, ptr %i.a, align 4, !tbaa !5
  br label %sessionAppendStr.exit54

sessionAppendStr.exit54:                          ; preds = %sqlite3_stricmp.exit.thread, %sessionBufferGrow.exit.thread12.i38
  %i.av = phi i32 [ %i.k, %sqlite3_stricmp.exit.thread ], [ %.pre228, %sessionBufferGrow.exit.thread12.i38 ] ; 2 uses
  %i.aw = phi i32 [ 0, %sqlite3_stricmp.exit.thread ], [ %.pre, %sessionBufferGrow.exit.thread12.i38 ] ; 3 uses
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = add nsw i64 %i.ax, 9                    ; 2 uses
  %i.az = icmp eq i32 %i.av, 0
  br i1 %i.az, label %bb.g, label %sqlite3_free.exit

bb.g:                                             ; preds = %sessionAppendStr.exit54
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !1624 ; 2 uses
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = icmp sgt i64 %i.ay, %i.bc
  tail call void @llvm.assume(i1 %i.bd)
  %.not.i.i60 = icmp eq i32 %i.bb, 0
  %spec.select.i.i61 = select i1 %.not.i.i60, i64 128, i64 %i.bc
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.024.i.i62 = phi i64 [ %spec.select.i.i61, %bb.g ], [ %i.be, %bb.h ] ; 2 uses
  %i.be = shl nsw i64 %.024.i.i62, 1              ; 3 uses
  %i.bf = icmp slt i64 %i.be, %i.ay
  br i1 %i.bf, label %bb.h, label %bb.i, !llvm.loop !1626

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp sgt i64 %.024.i.i62, 1073741695
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp sgt i32 %i.aw, 2147483382
  br i1 %i.bh, label %sqlite3_free.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.i.i63 = phi i64 [ 2147483391, %bb.j ], [ %i.be, %bb.i ]
  %i.bi = tail call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i64 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i64, label %sqlite3_realloc64.exit.i.i66, label %sqlite3_free.exit

sqlite3_realloc64.exit.i.i66:                     ; preds = %bb.k
  %i.bj = tail call fastcc ptr @sqlite3Realloc(ptr noundef null, i64 noundef %.1.i.i63), !inline_history !1057 ; 4 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %sqlite3_free.exit, label %bb.l

bb.l:                                             ; preds = %sqlite3_realloc64.exit.i.i66
  store ptr %i.bj, ptr %11, align 8, !tbaa !1625
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 %i.ax
  store i64 8675174369127588468, ptr %i.bl, align 1
  %i.bm = sext i32 %i.aw to i64
  %i.bn = getelementptr i8, ptr %i.bj, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
end_hunk_2
begin_hunk_3_@sessionConflictHandler:bb.a
bb.p:                                             ; preds = %sqlite3_column_count.exit, %bb.f
  %.041 = phi i32 [ %i.w, %bb.f ], [ 0, %sqlite3_column_count.exit ]
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1719
  %i.br = tail call i32 @sqlite3_reset(ptr noundef %i.bq) ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %.thread58, label %sessionAppendBlob.exit

.thread58:                                        ; preds = %bb.o, %bb.p
  %.162 = phi i32 [ %.041, %bb.p ], [ %i.bn, %bb.o ]
  switch i32 %.162, label %bb.r [
    i32 1, label %bb.q
    i32 0, label %.thread58.thread
    i32 2, label %sessionAppendBlob.exit
  ]

bb.q:                                             ; preds = %.thread58
  store i32 1, ptr %5, align 4, !tbaa !5
  br label %.thread58.thread

bb.r:                                             ; preds = %.thread58
  br label %sessionAppendBlob.exit

.thread58.thread:                                 ; preds = %bb.n, %bb.q, %.thread58
  %i.bt = phi i8 [ 0, %.thread58 ], [ 1, %bb.q ], [ 0, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store i32 0, ptr %i.b, align 4, !tbaa !5
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !1707
  %.not.i45 = icmp eq i8 %i.bv, 0
  br i1 %.not.i45, label %sessionRebaseAdd.exit, label %bb.s

bb.s:                                             ; preds = %.thread58.thread
  %i.bw = load i32, ptr %i.c, align 4, !tbaa !1689 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !1723
  %i.bz = icmp eq i8 %i.by, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 21 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !1616 ; 5 uses
  %i.cc = sext i32 %i.cb to i64                   ; 3 uses
  br i1 %i.bz, label %bb.t, label %.thread.i

.thread.i:                                        ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ce = icmp eq i32 %i.bw, 9                    ; 2 uses
  %i.cf = select i1 %i.ce, i8 9, i8 18
  br label %bb.ao

bb.t:                                             ; preds = %bb.s
  %i.cg = load ptr, ptr %i.f, align 8, !tbaa !1687 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 14 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 6 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !1624 ; 3 uses
  %.not.i.i46 = icmp slt i32 %i.cb, %i.cj
  br i1 %.not.i.i46, label %.sessionBufferGrow.exit.thread5_crit_edge.i.i, label %bb.u

.sessionBufferGrow.exit.thread5_crit_edge.i.i:    ; preds = %bb.t
  %.pre.i.i48 = load ptr, ptr %i.ch, align 8, !tbaa !1625
  br label %sessionBufferGrow.exit.thread5.i.i

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i47 = icmp eq i32 %i.cj, 0
  %narrow.i.i = select i1 %.not.i.i.i47, i32 128, i32 %i.cj
  %spec.select.i.i.i = sext i32 %narrow.i.i to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.024.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.u ], [ %i.ck, %bb.v ] ; 2 uses
  %i.ck = shl nsw i64 %.024.i.i.i, 1              ; 3 uses
  %.not7.i.i = icmp sgt i64 %i.ck, %i.cc
  br i1 %.not7.i.i, label %bb.w, label %bb.v, !llvm.loop !1626

bb.w:                                             ; preds = %bb.v
  %i.cl = icmp sgt i64 %.024.i.i.i, 1073741695
  br i1 %i.cl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cm = icmp sgt i32 %i.cb, 2147483390
  br i1 %i.cm, label %.critedge.i.i.i, label %bb.y

.critedge.i.i.i:                                  ; preds = %bb.x
  store i32 7, ptr %i.b, align 4, !tbaa !5
  br label %sessionAppendByte.exit.i

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1.i.i.i = phi i64 [ 2147483391, %bb.x ], [ %i.ck, %bb.w ] ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !1625
  %i.co = tail call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i.i = icmp eq i32 %i.co, 0
  br i1 %.not.i.i.i.i, label %sqlite3_realloc64.exit.i.i.i, label %sqlite3_realloc64.exit.thread.i.i.i

sqlite3_realloc64.exit.i.i.i:                     ; preds = %bb.y
  %i.cp = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.cn, i64 noundef %.1.i.i.i), !inline_history !1057 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %sqlite3_realloc64.exit.thread.i.i.i, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i.i

sqlite3_realloc64.exit.thread.i.i.i:              ; preds = %sqlite3_realloc64.exit.i.i.i, %bb.y
  store i32 7, ptr %i.b, align 4, !tbaa !5
  br label %sessionAppendByte.exit.i

sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i.i: ; preds = %sqlite3_realloc64.exit.i.i.i
  store ptr %i.cp, ptr %i.ch, align 8, !tbaa !1625
  %i.cr = trunc nsw i64 %.1.i.i.i to i32
  store i32 %i.cr, ptr %i.ci, align 4, !tbaa !1624
  %.pre9.i.i = load i32, ptr %i.ca, align 8, !tbaa !1616 ; 2 uses
  %.pre10.i.i = sext i32 %.pre9.i.i to i64
  br label %sessionBufferGrow.exit.thread5.i.i

sessionBufferGrow.exit.thread5.i.i:               ; preds = %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i.i, %.sessionBufferGrow.exit.thread5_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre10.i.i, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i.i ], [ %i.cc, %.sessionBufferGrow.exit.thread5_crit_edge.i.i ]
  %i.cs = phi i32 [ %.pre9.i.i, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i.i ], [ %i.cb, %.sessionBufferGrow.exit.thread5_crit_edge.i.i ]
  %i.ct = phi ptr [ %i.cp, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i.i ], [ %.pre.i.i48, %.sessionBufferGrow.exit.thread5_crit_edge.i.i ]
  %i.cu = add nsw i32 %i.cs, 1
  store i32 %i.cu, ptr %i.ca, align 8, !tbaa !1616
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 %.pre-phi.i.i
  store i8 84, ptr %i.cv, align 1, !tbaa !227
  br label %sessionAppendByte.exit.i

sessionAppendByte.exit.i:                         ; preds = %sessionBufferGrow.exit.thread5.i.i, %sqlite3_realloc64.exit.thread.i.i.i, %.critedge.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !1726
  call fastcc void @sessionAppendVarint(ptr noundef nonnull %i.ch, i32 noundef %i.cx, ptr noundef %i.b)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1727
  %i.da = load i32, ptr %i.cw, align 8, !tbaa !1726 ; 3 uses
  %i.db = icmp sgt i32 %i.da, 0
  %.pre.pre.pre.i = load i32, ptr %i.b, align 4, !tbaa !5 ; 3 uses
  br i1 %i.db, label %bb.z, label %sessionAppendBlob.exit.i

bb.z:                                             ; preds = %sessionAppendByte.exit.i
  %i.dc = zext nneg i32 %i.da to i64              ; 2 uses
  %i.dd = load i32, ptr %i.ca, align 8, !tbaa !1616
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = add nsw i64 %i.de, %i.dc                ; 3 uses
  %i.dg = icmp eq i32 %.pre.pre.pre.i, 0
  br i1 %i.dg, label %bb.aa, label %sessionAppendBlob.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.dh = load i32, ptr %i.ci, align 4, !tbaa !1624 ; 2 uses
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  %i.dj = icmp sgt i64 %i.df, %i.di
  br i1 %i.dj, label %bb.ab, label %.sessionBufferGrow.exit.thread10_crit_edge.i.i

.sessionBufferGrow.exit.thread10_crit_edge.i.i:   ; preds = %bb.aa
  %.pre.i31.i = load ptr, ptr %i.ch, align 8, !tbaa !1625
  br label %sessionBufferGrow.exit.thread10.i.i

bb.ab:                                            ; preds = %bb.aa
  %.not.i.i33.i = icmp eq i32 %i.dh, 0
  %spec.select.i.i34.i = select i1 %.not.i.i33.i, i64 128, i64 %i.di
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.024.i.i35.i = phi i64 [ %spec.select.i.i34.i, %bb.ab ], [ %i.dk, %bb.ac ] ; 2 uses
  %i.dk = shl nsw i64 %.024.i.i35.i, 1            ; 3 uses
  %i.dl = icmp slt i64 %i.dk, %i.df
  br i1 %i.dl, label %bb.ac, label %bb.ad, !llvm.loop !1626

bb.ad:                                            ; preds = %bb.ac
  %i.dm = icmp sgt i64 %.024.i.i35.i, 1073741695
  br i1 %i.dm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dn = icmp sgt i64 %i.df, 2147483391
  br i1 %i.dn, label %sessionAppendBlob.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.1.i.i36.i = phi i64 [ 2147483391, %bb.ae ], [ %i.dk, %bb.ad ] ; 2 uses
  %i.do = load ptr, ptr %i.ch, align 8, !tbaa !1625
  %i.dp = tail call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i37.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i.i37.i, label %sqlite3_realloc64.exit.i.i39.i, label %sessionAppendBlob.exit.i

sqlite3_realloc64.exit.i.i39.i:                   ; preds = %bb.af
  %i.dq = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.do, i64 noundef %.1.i.i36.i), !inline_history !1057 ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %sessionAppendBlob.exit.i, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i.i

sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i.i: ; preds = %sqlite3_realloc64.exit.i.i39.i
  store ptr %i.dq, ptr %i.ch, align 8, !tbaa !1625
  %i.ds = trunc nsw i64 %.1.i.i36.i to i32
  store i32 %i.ds, ptr %i.ci, align 4, !tbaa !1624
  %.pre12.i.i = load i32, ptr %i.ca, align 8, !tbaa !1616
  %.pre13.i.i = sext i32 %.pre12.i.i to i64
  br label %sessionBufferGrow.exit.thread10.i.i

sessionBufferGrow.exit.thread10.i.i:              ; preds = %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i.i, %.sessionBufferGrow.exit.thread10_crit_edge.i.i
  %.pre-phi.i32.i = phi i64 [ %.pre13.i.i, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i.i ], [ %i.de, %.sessionBufferGrow.exit.thread10_crit_edge.i.i ]
  %i.dt = phi ptr [ %i.dq, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i.i ], [ %.pre.i31.i, %.sessionBufferGrow.exit.thread10_crit_edge.i.i ]
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 %.pre-phi.i32.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.du, ptr readonly align 1 %i.cz, i64 %i.dc, i1 false)
  %i.dv = load i32, ptr %i.ca, align 8, !tbaa !1616
  %i.dw = add nsw i32 %i.dv, %i.da
  store i32 %i.dw, ptr %i.ca, align 8, !tbaa !1616
  br label %sessionAppendBlob.exit.i

sessionAppendBlob.exit.i:                         ; preds = %bb.af, %sqlite3_realloc64.exit.i.i39.i, %bb.ae, %sessionBufferGrow.exit.thread10.i.i, %bb.z, %sessionAppendByte.exit.i
  %.pre.pre.i = phi i32 [ %.pre.pre.pre.i, %sessionAppendByte.exit.i ], [ %.pre.pre.pre.i, %bb.z ], [ 0, %sessionBufferGrow.exit.thread10.i.i ], [ 7, %bb.ae ], [ 7, %sqlite3_realloc64.exit.i.i39.i ], [ 7, %bb.af ] ; 4 uses
  %i.dx = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cg) #60
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  %i.dz = add nsw i32 %i.dy, 1                    ; 2 uses
  %i.ea = icmp sgt i32 %i.dy, -1
  br i1 %i.ea, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %sessionAppendBlob.exit.i
  %i.eb = zext nneg i32 %i.dz to i64              ; 2 uses
  %i.ec = load i32, ptr %i.ca, align 8, !tbaa !1616
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  %i.ee = add nsw i64 %i.ed, %i.eb                ; 3 uses
  %i.ef = icmp eq i32 %.pre.pre.i, 0
  br i1 %i.ef, label %bb.ah, label %.thread169.i

bb.ah:                                            ; preds = %bb.ag
  %i.eg = load i32, ptr %i.ci, align 4, !tbaa !1624 ; 2 uses
  %i.eh = sext i32 %i.eg to i64                   ; 2 uses
  %i.ei = icmp sgt i64 %i.ee, %i.eh
  br i1 %i.ei, label %bb.ai, label %.sessionBufferGrow.exit.thread10_crit_edge.i44.i

.sessionBufferGrow.exit.thread10_crit_edge.i44.i: ; preds = %bb.ah
  %.pre.i45.i = load ptr, ptr %i.ch, align 8, !tbaa !1625
  br label %.thread171.i

bb.ai:                                            ; preds = %bb.ah
  %.not.i.i48.i = icmp eq i32 %i.eg, 0
  %spec.select.i.i49.i = select i1 %.not.i.i48.i, i64 128, i64 %i.eh
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.024.i.i50.i = phi i64 [ %spec.select.i.i49.i, %bb.ai ], [ %i.ej, %bb.aj ] ; 2 uses
  %i.ej = shl nsw i64 %.024.i.i50.i, 1            ; 3 uses
  %i.ek = icmp slt i64 %i.ej, %i.ee
  br i1 %i.ek, label %bb.aj, label %bb.ak, !llvm.loop !1626

bb.ak:                                            ; preds = %bb.aj
  %i.el = icmp sgt i64 %.024.i.i50.i, 1073741695
  br i1 %i.el, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.em = icmp sgt i64 %i.ee, 2147483391
  br i1 %i.em, label %.thread169.i, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.1.i.i51.i = phi i64 [ 2147483391, %bb.al ], [ %i.ej, %bb.ak ] ; 2 uses
  %i.en = load ptr, ptr %i.ch, align 8, !tbaa !1625
  %i.eo = tail call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i52.i = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i.i52.i, label %sqlite3_realloc64.exit.i.i54.i, label %.thread169.i

sqlite3_realloc64.exit.i.i54.i:                   ; preds = %bb.am
  %i.ep = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.en, i64 noundef %.1.i.i51.i), !inline_history !1057 ; 3 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %.thread169.i, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i58.i

sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i58.i: ; preds = %sqlite3_realloc64.exit.i.i54.i
  store ptr %i.ep, ptr %i.ch, align 8, !tbaa !1625
  %i.er = trunc nsw i64 %.1.i.i51.i to i32
  store i32 %i.er, ptr %i.ci, align 4, !tbaa !1624
  %.pre12.i59.i = load i32, ptr %i.ca, align 8, !tbaa !1616
  %.pre13.i60.i = sext i32 %.pre12.i59.i to i64
  br label %.thread171.i

.thread171.i:                                     ; preds = %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i58.i, %.sessionBufferGrow.exit.thread10_crit_edge.i44.i
  %.pre-phi.i47.i = phi i64 [ %.pre13.i60.i, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i58.i ], [ %i.ed, %.sessionBufferGrow.exit.thread10_crit_edge.i44.i ]
  %i.es = phi ptr [ %i.ep, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread10_crit_edge.i58.i ], [ %.pre.i45.i, %.sessionBufferGrow.exit.thread10_crit_edge.i44.i ]
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 %.pre-phi.i47.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.et, ptr nonnull readonly align 1 %i.cg, i64 %i.eb, i1 false)
  %i.eu = load i32, ptr %i.ca, align 8, !tbaa !1616
  %i.ev = add nsw i32 %i.eu, %i.dz                ; 3 uses
  store i32 %i.ev, ptr %i.ca, align 8, !tbaa !1616
  store i8 1, ptr %i.bx, align 8, !tbaa !1723
  %i.ew = icmp eq i32 %i.bw, 9                    ; 2 uses
  %i.ex = select i1 %i.ew, i8 9, i8 18
  %i.ey = sext i32 %i.ev to i64
  br label %bb.ao

.thread169.i:                                     ; preds = %bb.al, %bb.am, %sqlite3_realloc64.exit.i.i54.i, %bb.ag
  %.pre.ph.i = phi i32 [ %.pre.pre.i, %bb.ag ], [ 7, %sqlite3_realloc64.exit.i.i54.i ], [ 7, %bb.am ], [ 7, %bb.al ]
  store i8 1, ptr %i.bx, align 8, !tbaa !1723
  %i.ez = icmp eq i32 %i.bw, 9
  br label %sessionAppendByte.exit106.i

bb.an:                                            ; preds = %sessionAppendBlob.exit.i
  store i8 1, ptr %i.bx, align 8, !tbaa !1723
  %i.fa = icmp eq i32 %i.bw, 9                    ; 3 uses
  %i.fb = select i1 %i.fa, i8 9, i8 18
  %i.fc = load i32, ptr %i.ca, align 8, !tbaa !1616 ; 2 uses
  %i.fd = sext i32 %i.fc to i64
  %i.fe = icmp eq i32 %.pre.pre.i, 0
  br i1 %i.fe, label %bb.ao, label %sessionAppendByte.exit106.i

bb.ao:                                            ; preds = %bb.an, %.thread171.i, %.thread.i
  %i.ff = phi i64 [ %i.cc, %.thread.i ], [ %i.fd, %bb.an ], [ %i.ey, %.thread171.i ] ; 2 uses
  %i.fg = phi i32 [ %i.cb, %.thread.i ], [ %i.fc, %bb.an ], [ %i.ev, %.thread171.i ] ; 3 uses
  %i.fh = phi i8 [ %i.cf, %.thread.i ], [ %i.fb, %bb.an ], [ %i.ex, %.thread171.i ]
  %i.fi = phi i1 [ %i.ce, %.thread.i ], [ %i.fa, %bb.an ], [ %i.ew, %.thread171.i ] ; 7 uses
  %i.fj = phi ptr [ %i.cd, %.thread.i ], [ %i.ch, %bb.an ], [ %i.ch, %.thread171.i ] ; 13 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 4 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !1624 ; 3 uses
  %.not.i63.i = icmp slt i32 %i.fg, %i.fl
  br i1 %.not.i63.i, label %.sessionBufferGrow.exit.thread5_crit_edge.i82.i, label %bb.ap

.sessionBufferGrow.exit.thread5_crit_edge.i82.i:  ; preds = %bb.ao
  %.pre.i83.i = load ptr, ptr %i.fj, align 8, !tbaa !1625
  br label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %.not.i.i64.i = icmp eq i32 %i.fl, 0
  %narrow.i65.i = select i1 %.not.i.i64.i, i32 128, i32 %i.fl
  %spec.select.i.i66.i = sext i32 %narrow.i65.i to i64
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %bb.ap
  %.024.i.i67.i = phi i64 [ %spec.select.i.i66.i, %bb.ap ], [ %i.fm, %bb.aq ] ; 2 uses
  %i.fm = shl nsw i64 %.024.i.i67.i, 1            ; 3 uses
  %.not7.i68.i = icmp sgt i64 %i.fm, %i.ff
  br i1 %.not7.i68.i, label %bb.ar, label %bb.aq, !llvm.loop !1626

bb.ar:                                            ; preds = %bb.aq
  %i.fn = icmp sgt i64 %.024.i.i67.i, 1073741695
  br i1 %i.fn, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fo = icmp sgt i32 %i.fg, 2147483390
  br i1 %i.fo, label %sessionAppendByte.exit106.i, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.1.i.i69.i = phi i64 [ 2147483391, %bb.as ], [ %i.fm, %bb.ar ] ; 2 uses
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !1625
  %i.fq = tail call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i70.i = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i.i70.i, label %sqlite3_realloc64.exit.i.i72.i, label %sessionAppendByte.exit106.i

sqlite3_realloc64.exit.i.i72.i:                   ; preds = %bb.at
  %i.fr = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.fp, i64 noundef %.1.i.i69.i), !inline_history !1057 ; 3 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %sessionAppendByte.exit106.i, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i76.i

sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i76.i: ; preds = %sqlite3_realloc64.exit.i.i72.i
  store ptr %i.fr, ptr %i.fj, align 8, !tbaa !1625
  %i.ft = trunc nsw i64 %.1.i.i69.i to i32
  store i32 %i.ft, ptr %i.fk, align 4, !tbaa !1624
  %.pre9.i77.i = load i32, ptr %i.ca, align 8, !tbaa !1616 ; 2 uses
  %.pre10.i78.i = sext i32 %.pre9.i77.i to i64
  br label %bb.au

bb.au:                                            ; preds = %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i76.i, %.sessionBufferGrow.exit.thread5_crit_edge.i82.i
  %.pre-phi.i80.i = phi i64 [ %.pre10.i78.i, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i76.i ], [ %i.ff, %.sessionBufferGrow.exit.thread5_crit_edge.i82.i ]
  %i.fu = phi i32 [ %.pre9.i77.i, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i76.i ], [ %i.fg, %.sessionBufferGrow.exit.thread5_crit_edge.i82.i ]
  %i.fv = phi ptr [ %i.fr, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i76.i ], [ %.pre.i83.i, %.sessionBufferGrow.exit.thread5_crit_edge.i82.i ]
  %i.fw = add nsw i32 %i.fu, 1
  store i32 %i.fw, ptr %i.ca, align 8, !tbaa !1616
  %i.fx = getelementptr inbounds i8, ptr %i.fv, i64 %.pre-phi.i80.i
  store i8 %i.fh, ptr %i.fx, align 1, !tbaa !227
  %i.fy = load i32, ptr %i.ca, align 8, !tbaa !1616 ; 4 uses
  %i.fz = sext i32 %i.fy to i64                   ; 2 uses
  %i.ga = load i32, ptr %i.fk, align 4, !tbaa !1624 ; 3 uses
  %.not.i85.i = icmp slt i32 %i.fy, %i.ga
  br i1 %.not.i85.i, label %.sessionBufferGrow.exit.thread5_crit_edge.i104.i, label %bb.av

.sessionBufferGrow.exit.thread5_crit_edge.i104.i: ; preds = %bb.au
  %.pre.i105.i = load ptr, ptr %i.fj, align 8, !tbaa !1625
  br label %sessionBufferGrow.exit.thread5.i101.i

bb.av:                                            ; preds = %bb.au
  %.not.i.i86.i = icmp eq i32 %i.ga, 0
  %narrow.i87.i = select i1 %.not.i.i86.i, i32 128, i32 %i.ga
  %spec.select.i.i88.i = sext i32 %narrow.i87.i to i64
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %bb.av
  %.024.i.i89.i = phi i64 [ %spec.select.i.i88.i, %bb.av ], [ %i.gb, %bb.aw ] ; 2 uses
  %i.gb = shl nsw i64 %.024.i.i89.i, 1            ; 3 uses
  %.not7.i90.i = icmp sgt i64 %i.gb, %i.fz
  br i1 %.not7.i90.i, label %bb.ax, label %bb.aw, !llvm.loop !1626

bb.ax:                                            ; preds = %bb.aw
  %i.gc = icmp sgt i64 %.024.i.i89.i, 1073741695
  br i1 %i.gc, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gd = icmp sgt i32 %i.fy, 2147483390
  br i1 %i.gd, label %sessionAppendByte.exit106.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.1.i.i91.i = phi i64 [ 2147483391, %bb.ay ], [ %i.gb, %bb.ax ] ; 2 uses
  %i.ge = load ptr, ptr %i.fj, align 8, !tbaa !1625
  %i.gf = tail call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i92.i = icmp eq i32 %i.gf, 0
  br i1 %.not.i.i.i92.i, label %sqlite3_realloc64.exit.i.i94.i, label %sessionAppendByte.exit106.i

sqlite3_realloc64.exit.i.i94.i:                   ; preds = %bb.az
  %i.gg = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.ge, i64 noundef %.1.i.i91.i), !inline_history !1057 ; 3 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %sessionAppendByte.exit106.i, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i98.i

sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i98.i: ; preds = %sqlite3_realloc64.exit.i.i94.i
  store ptr %i.gg, ptr %i.fj, align 8, !tbaa !1625
  %i.gi = trunc nsw i64 %.1.i.i91.i to i32
  store i32 %i.gi, ptr %i.fk, align 4, !tbaa !1624
  %.pre9.i99.i = load i32, ptr %i.ca, align 8, !tbaa !1616 ; 2 uses
  %.pre10.i100.i = sext i32 %.pre9.i99.i to i64
  br label %sessionBufferGrow.exit.thread5.i101.i

sessionBufferGrow.exit.thread5.i101.i:            ; preds = %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i98.i, %.sessionBufferGrow.exit.thread5_crit_edge.i104.i
  %.pre-phi.i102.i = phi i64 [ %.pre10.i100.i, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i98.i ], [ %i.fz, %.sessionBufferGrow.exit.thread5_crit_edge.i104.i ]
  %i.gj = phi i32 [ %.pre9.i99.i, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i98.i ], [ %i.fy, %.sessionBufferGrow.exit.thread5_crit_edge.i104.i ]
  %i.gk = phi ptr [ %i.gg, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread5_crit_edge.i98.i ], [ %.pre.i105.i, %.sessionBufferGrow.exit.thread5_crit_edge.i104.i ]
  %i.gl = add nsw i32 %i.gj, 1
  store i32 %i.gl, ptr %i.ca, align 8, !tbaa !1616
  %i.gm = getelementptr inbounds i8, ptr %i.gk, i64 %.pre-phi.i102.i
  store i8 %i.bt, ptr %i.gm, align 1, !tbaa !227
  br label %sessionAppendByte.exit106.i

sessionAppendByte.exit106.i:                      ; preds = %bb.az, %sqlite3_realloc64.exit.i.i94.i, %bb.ay, %bb.at, %sqlite3_realloc64.exit.i.i72.i, %bb.as, %sessionBufferGrow.exit.thread5.i101.i, %bb.an, %.thread169.i
  %i.gn = phi i1 [ %i.fi, %sessionBufferGrow.exit.thread5.i101.i ], [ %i.fi, %bb.as ], [ %i.ez, %.thread169.i ], [ %i.fa, %bb.an ], [ %i.fi, %bb.at ], [ %i.fi, %bb.ay ], [ %i.fi, %sqlite3_realloc64.exit.i.i72.i ], [ %i.fi, %sqlite3_realloc64.exit.i.i94.i ], [ %i.fi, %bb.az ]
  %i.go = phi ptr [ %i.fj, %sessionBufferGrow.exit.thread5.i101.i ], [ %i.fj, %bb.as ], [ %i.ch, %.thread169.i ], [ %i.ch, %bb.an ], [ %i.fj, %bb.at ], [ %i.fj, %bb.ay ], [ %i.fj, %sqlite3_realloc64.exit.i.i72.i ], [ %i.fj, %sqlite3_realloc64.exit.i.i94.i ], [ %i.fj, %bb.az ] ; 3 uses
  %.promoted.i = phi i32 [ 0, %sessionBufferGrow.exit.thread5.i101.i ], [ 7, %bb.as ], [ %.pre.ph.i, %.thread169.i ], [ %.pre.pre.i, %bb.an ], [ 7, %bb.at ], [ 7, %bb.ay ], [ 7, %sqlite3_realloc64.exit.i.i72.i ], [ 7, %sqlite3_realloc64.exit.i.i94.i ], [ 7, %bb.az ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !1726 ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph.i, label %sessionRebaseAdd.exit

.lr.ph.i:                                         ; preds = %sessionAppendByte.exit106.i
  %i.gs = icmp eq i32 %i.bw, 23
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %sessionAppendValue.exit.i, %.lr.ph.i
  %i.gw = phi i32 [ %i.gq, %.lr.ph.i ], [ %i.in, %sessionAppendValue.exit.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %sessionAppendValue.exit.i ] ; 6 uses
  %.0.ph.i127128.i = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %.0.ph.i125.i, %sessionAppendValue.exit.i ] ; 2 uses
  br i1 %i.gn, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.gs, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.gx = load ptr, ptr %i.gt, align 8, !tbaa !1727
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv.i
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !227
  %.not30.i = icmp eq i8 %i.gz, 0
  br i1 %.not30.i, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %i.ha = load i32, ptr %i.c, align 4, !tbaa !1689
  switch i32 %i.ha, label %sqlite3changeset_old.exit.i [
    i32 23, label %bb.be
    i32 9, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd, %bb.bd
  %i.hb = load i32, ptr %i.e, align 8, !tbaa !1673
  %i.hc = sext i32 %i.hb to i64
  %.not11.i.i = icmp slt i64 %indvars.iv.i, %i.hc
  br i1 %.not11.i.i, label %bb.bf, label %sqlite3changeset_old.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.hd = load ptr, ptr %i.gu, align 8, !tbaa !1672
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.i
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !288
  br label %sqlite3changeset_old.exit.i

bb.bg:                                            ; preds = %bb.bc, %bb.bb
  %i.hg = load i32, ptr %i.c, align 4, !tbaa !1689
end_hunk_3
