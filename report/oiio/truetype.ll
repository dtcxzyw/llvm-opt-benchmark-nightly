inline.NumInlined: 294
inline.NumDeleted: 158
begin_hunk_0_@iup_worker_interpolate_:bb.a
  %i.ab = sub i64 %i.w, %i.u
  %i.ac = sub i64 %.088, %.087
  br label %bb.f

.lr.ph123:                                        ; preds = %bb.e, %.lr.ph123
  %.085122 = phi i32 [ %i.aj, %.lr.ph123 ], [ %1, %bb.e ] ; 2 uses
  %i.ad = zext i32 %.085122 to i64                ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !264 ; 4 uses
  %.not110 = icmp sgt i64 %i.af, %i.o
  %i.ag = add i64 %i.af, %i.x
  %.not111 = icmp slt i64 %i.af, %i.q
  %i.ah = add i64 %i.af, %i.y
  %spec.select = select i1 %.not111, i64 %i.u, i64 %i.ah
  %.082 = select i1 %.not110, i64 %spec.select, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.ad
  store i64 %.082, ptr %i.ai, align 8, !tbaa !264
  %i.aj = add i32 %.085122, 1                     ; 2 uses
  %.not109 = icmp ugt i32 %i.aj, %2
  br i1 %.not109, label %.loopexit, label %.lr.ph123, !llvm.loop !406

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %.pre126127 = phi ptr [ %i.s, %.lr.ph ], [ %.pre126128, %bb.m ] ; 3 uses
  %i.ak = phi ptr [ %i.s, %.lr.ph ], [ %i.bg, %bb.m ] ; 2 uses
  %i.al = phi ptr [ %i.e, %.lr.ph ], [ %i.bh, %bb.m ] ; 3 uses
  %.078120 = phi i8 [ 0, %.lr.ph ], [ %.2, %bb.m ] ; 3 uses
  %.079119 = phi i64 [ 0, %.lr.ph ], [ %.281, %bb.m ] ; 3 uses
  %.186118 = phi i32 [ %1, %.lr.ph ], [ %i.bj, %bb.m ] ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !397
  %i.an = zext i32 %.186118 to i64                ; 3 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !264 ; 4 uses
  %.not106 = icmp sgt i64 %i.ap, %i.o
  br i1 %.not106, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = add i64 %i.ap, %i.x
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %.not107 = icmp slt i64 %i.ap, %i.q
  br i1 %.not107, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = add i64 %i.ap, %i.y
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %.not108 = icmp eq i8 %.078120, 0
  br i1 %.not108, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = tail call i64 @FT_DivFix(i64 noundef %i.ab, i64 noundef %i.ac) #22
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !400
  %.pre126.pre = load ptr, ptr %i.r, align 8, !tbaa !399
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre126 = phi ptr [ %.pre126127, %bb.j ], [ %.pre126.pre, %bb.k ] ; 2 uses
  %i.at = phi ptr [ %i.al, %bb.j ], [ %.pre, %bb.k ] ; 2 uses
  %.180 = phi i64 [ %.079119, %bb.j ], [ %i.as, %bb.k ] ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.an
  %i.av = load i64, ptr %i.au, align 8, !tbaa !264
  %i.aw = sub i64 %i.av, %.087
  %sext = shl i64 %i.aw, 32
  %i.ax = ashr exact i64 %sext, 32
  %sext113 = shl i64 %.180, 32
  %i.ay = ashr exact i64 %sext113, 32
  %i.az = mul nsw i64 %i.ax, %i.ay                ; 2 uses
  %i.ba = ashr i64 %i.az, 63
  %i.bb = add nsw i64 %i.az, 32768
  %i.bc = add nsw i64 %i.bb, %i.ba
  %i.bd = shl i64 %i.bc, 16
  %i.be = ashr i64 %i.bd, 32
  %i.bf = add i64 %i.be, %i.u
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.g
  %.pre126128 = phi ptr [ %.pre126127, %bb.g ], [ %.pre126127, %bb.i ], [ %.pre126, %bb.l ]
  %i.bg = phi ptr [ %i.ak, %bb.g ], [ %i.ak, %bb.i ], [ %.pre126, %bb.l ] ; 2 uses
  %i.bh = phi ptr [ %i.al, %bb.g ], [ %i.al, %bb.i ], [ %i.at, %bb.l ]
  %.281 = phi i64 [ %.079119, %bb.g ], [ %.079119, %bb.i ], [ %.180, %bb.l ]
  %.2 = phi i8 [ %.078120, %bb.g ], [ %.078120, %bb.i ], [ 1, %bb.l ]
  %.0 = phi i64 [ %i.aq, %bb.g ], [ %i.ar, %bb.i ], [ %i.bf, %bb.l ]
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.an
  store i64 %.0, ptr %i.bi, align 8, !tbaa !264
  %i.bj = add i32 %.186118, 1                     ; 2 uses
  %.not105 = icmp ugt i32 %i.bj, %2
  br i1 %.not105, label %.loopexit, label %bb.f, !llvm.loop !407

.loopexit:                                        ; preds = %bb.m, %.lr.ph123, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext range(i8 0, 2) i8 @Compute_Point_Displacement(ptr noundef %0, ptr noundef nonnull writeonly captures(none) %1, ptr noundef nonnull writeonly captures(none) %2, ptr noundef nonnull writeonly captures(none) %3, ptr noundef nonnull writeonly captures(none) initializes((0, 2)) %4) unnamed_addr #2 {
bb.a:
  %.sroa.0 = alloca [12 x i8], align 8            ; 4 uses
  %.sroa.10 = alloca { ptr, ptr, ptr, i16 }, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.b = load i8, ptr %i.a, align 8, !tbaa !327
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0                      ; 7 uses
  %. = select i1 %.not, i64 136, i64 72
  %.58 = select i1 %.not, i64 148, i64 84
  %.59 = select i1 %.not, i64 150, i64 86
  %.60 = select i1 %.not, i64 152, i64 88
  %.61 = select i1 %.not, i64 160, i64 96
  %.62 = select i1 %.not, i64 168, i64 104
  %.63 = select i1 %.not, i64 540, i64 538
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false)
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 %.58
  %.sroa.5.0.copyload9 = load i16, ptr %.sroa.5.0..sroa_idx8, align 4, !tbaa !135 ; 2 uses
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 %.59
  %.sroa.6.0.copyload13 = load i16, ptr %.sroa.6.0..sroa_idx12, align 2, !tbaa !135
  %.sroa.616.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 %.60
  %.sroa.616.0.copyload18 = load ptr, ptr %.sroa.616.0..sroa_idx17, align 8, !tbaa !254 ; 2 uses
  %.sroa.8.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 %.61
  %.sroa.8.0.copyload23 = load ptr, ptr %.sroa.8.0..sroa_idx22, align 8, !tbaa !254 ; 2 uses
  %.sroa.10.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %0, i64 %.62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx27, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.63
  %.047 = load i16, ptr %i.e, align 2, !tbaa !135 ; 3 uses
  %.not49 = icmp ult i16 %.047, %.sroa.5.0.copyload9
  br i1 %.not49, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1001
  %i.g = load i8, ptr %i.f, align 1, !tbaa !239
  %.not50 = icmp eq i8 %i.g, 0
  br i1 %.not50, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 134, ptr %i.h, align 8, !tbaa !340
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i16 0, ptr %4, align 2, !tbaa !135
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, i64 12, i1 false), !tbaa.struct !807
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i16 %.sroa.5.0.copyload9, ptr %.sroa.5.0..sroa_idx10, align 4, !tbaa !135
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 %.sroa.6.0.copyload13, ptr %.sroa.6.0..sroa_idx14, align 2, !tbaa !135
  %.sroa.616.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sroa.616.0.copyload18, ptr %.sroa.616.0..sroa_idx19, align 8, !tbaa !254
  %.sroa.8.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %.sroa.8.0.copyload23, ptr %.sroa.8.0..sroa_idx24, align 8, !tbaa !254
  %.sroa.10.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx28, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, i64 32, i1 false), !tbaa.struct !893
  store i16 %.047, ptr %4, align 2, !tbaa !135
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !314
  %i.k = zext i16 %.047 to i64                    ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload23, i64 %i.k ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !264
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.sroa.616.0.copyload18, i64 %i.k ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !264
  %i.p = sub i64 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !345
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !345
  %i.u = sub i64 %i.r, %i.t
  %i.v = tail call i64 %i.j(ptr noundef nonnull %0, i64 noundef %i.p, i64 noundef %i.u) #22 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 550
  %i.x = load i16, ptr %i.w, align 2, !tbaa !309
  %i.y = sext i16 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !311
  %i.ab = tail call i64 @FT_MulDiv(i64 noundef %i.v, i64 noundef %i.y, i64 noundef %i.aa) #22
  store i64 %i.ab, ptr %1, align 8, !tbaa !223
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !312
  %i.ae = sext i16 %i.ad to i64
  %i.af = load i64, ptr %i.z, align 8, !tbaa !311
  %i.ag = tail call i64 @FT_MulDiv(i64 noundef %i.v, i64 noundef %i.ae, i64 noundef %i.af) #22
  store i64 %i.ag, ptr %2, align 8, !tbaa !223
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i8 [ 1, %bb.d ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  ret i8 %.0
}

declare hidden i64 @FT_MulDiv_No_Round(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare hidden ptr @FT_Get_Module_Interface(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc zeroext range(i8 0, 2) i8 @tt_check_trickyness(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [31 x i32], align 16              ; 14 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %tt_check_trickyness_family.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !894  ; 17 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.c) #23
  %i.e = icmp ult i64 %i.d, 8
  br i1 %i.e, label %tt_skip_pdffont_random_tag.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.g = load i8, ptr %i.f, align 1, !tbaa !224
  %.not.i.i = icmp eq i8 %i.g, 43
  br i1 %.not.i.i, label %.preheader.preheader.i.i, label %tt_skip_pdffont_random_tag.exit.i

.preheader.preheader.i.i:                         ; preds = %bb.d
  %i.h = load i8, ptr %i.c, align 1, !tbaa !224
  %i.i = sext i8 %i.h to i32
  %i.j = add nsw i32 %i.i, -65
  %i.k = icmp ult i32 %i.j, 26
  br i1 %i.k, label %.preheader.1.i.i, label %tt_skip_pdffont_random_tag.exit.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !224
  %i.n = sext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -65
  %i.p = icmp ult i32 %i.o, 26
  br i1 %i.p, label %.preheader.2.i.i, label %tt_skip_pdffont_random_tag.exit.i

.preheader.2.i.i:                                 ; preds = %.preheader.1.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !224
  %i.s = sext i8 %i.r to i32
  %i.t = add nsw i32 %i.s, -65
  %i.u = icmp ult i32 %i.t, 26
  br i1 %i.u, label %.preheader.3.i.i, label %tt_skip_pdffont_random_tag.exit.i

.preheader.3.i.i:                                 ; preds = %.preheader.2.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !224
  %i.x = sext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -65
  %i.z = icmp ult i32 %i.y, 26
  br i1 %i.z, label %.preheader.4.i.i, label %tt_skip_pdffont_random_tag.exit.i

.preheader.4.i.i:                                 ; preds = %.preheader.3.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !224
  %i.ac = sext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -65
  %i.ae = icmp ult i32 %i.ad, 26
  br i1 %i.ae, label %.preheader.5.i.i, label %tt_skip_pdffont_random_tag.exit.i

.preheader.5.i.i:                                 ; preds = %.preheader.4.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !224
  %i.ah = sext i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -65
  %i.aj = icmp ult i32 %i.ai, 26
  %spec.select.idx.i.i = select i1 %i.aj, i64 7, i64 0
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %spec.select.idx.i.i
  br label %tt_skip_pdffont_random_tag.exit.i

tt_skip_pdffont_random_tag.exit.i:                ; preds = %.preheader.5.i.i, %.preheader.4.i.i, %.preheader.3.i.i, %.preheader.2.i.i, %.preheader.1.i.i, %.preheader.preheader.i.i, %bb.d, %bb.c
  %.09.i.i = phi ptr [ %i.c, %.preheader.preheader.i.i ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %spec.select.i.i, %.preheader.5.i.i ], [ %i.c, %.preheader.4.i.i ], [ %i.c, %.preheader.3.i.i ], [ %i.c, %.preheader.2.i.i ], [ %i.c, %.preheader.1.i.i ] ; 20 uses
  %i.ak = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) @tt_check_trickyness_family.trick_names) #23
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.e, label %tt_check_trickyness_family.exit.thread

bb.e:                                             ; preds = %tt_skip_pdffont_random_tag.exit.i
  %i.al = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 20)) #23
  %.not.1.i = icmp eq ptr %i.al, null
  br i1 %.not.1.i, label %bb.f, label %tt_check_trickyness_family.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.am = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 40)) #23
  %.not.2.i = icmp eq ptr %i.am, null
  br i1 %.not.2.i, label %bb.g, label %tt_check_trickyness_family.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.an = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 60)) #23
  %.not.3.i = icmp eq ptr %i.an, null
  br i1 %.not.3.i, label %bb.h, label %tt_check_trickyness_family.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 80)) #23
  %.not.4.i = icmp eq ptr %i.ao, null
  br i1 %.not.4.i, label %bb.i, label %tt_check_trickyness_family.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 100)) #23
  %.not.5.i = icmp eq ptr %i.ap, null
  br i1 %.not.5.i, label %bb.j, label %tt_check_trickyness_family.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aq = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 120)) #23
  %.not.6.i = icmp eq ptr %i.aq, null
  br i1 %.not.6.i, label %bb.k, label %tt_check_trickyness_family.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ar = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 140)) #23
  %.not.7.i = icmp eq ptr %i.ar, null
  br i1 %.not.7.i, label %bb.l, label %tt_check_trickyness_family.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.as = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 160)) #23
  %.not.8.i = icmp eq ptr %i.as, null
  br i1 %.not.8.i, label %bb.m, label %tt_check_trickyness_family.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.at = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 180)) #23
  %.not.9.i = icmp eq ptr %i.at, null
  br i1 %.not.9.i, label %bb.n, label %tt_check_trickyness_family.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.au = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 200)) #23
  %.not.10.i = icmp eq ptr %i.au, null
  br i1 %.not.10.i, label %bb.o, label %tt_check_trickyness_family.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.av = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 220)) #23
  %.not.11.i = icmp eq ptr %i.av, null
  br i1 %.not.11.i, label %bb.p, label %tt_check_trickyness_family.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.aw = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 240)) #23
  %.not.12.i = icmp eq ptr %i.aw, null
  br i1 %.not.12.i, label %bb.q, label %tt_check_trickyness_family.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ax = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 260)) #23
  %.not.13.i = icmp eq ptr %i.ax, null
  br i1 %.not.13.i, label %bb.r, label %tt_check_trickyness_family.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ay = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 280)) #23
  %.not.14.i = icmp eq ptr %i.ay, null
  br i1 %.not.14.i, label %bb.s, label %tt_check_trickyness_family.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.az = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 300)) #23
  %.not.15.i = icmp eq ptr %i.az, null
  br i1 %.not.15.i, label %bb.t, label %tt_check_trickyness_family.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.ba = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 320)) #23
  %.not.16.i = icmp eq ptr %i.ba, null
  br i1 %.not.16.i, label %bb.u, label %tt_check_trickyness_family.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bb = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 340)) #23
  %.not.17.i = icmp eq ptr %i.bb, null
  br i1 %.not.17.i, label %bb.v, label %tt_check_trickyness_family.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.bc = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 360)) #23
  %.not.18.i = icmp eq ptr %i.bc, null
  br i1 %.not.18.i, label %tt_check_trickyness_family.exit, label %tt_check_trickyness_family.exit.thread

tt_check_trickyness_family.exit:                  ; preds = %bb.v
  %i.bd = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 380)) #23
  %.not.19.i.not = icmp eq ptr %i.bd, null
  br i1 %.not.19.i.not, label %bb.w, label %tt_check_trickyness_family.exit.thread

bb.w:                                             ; preds = %tt_check_trickyness_family.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(124) %i.a, i8 0, i64 124, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 8, !tbaa !895 ; 2 uses
  %.not61.i = icmp eq i16 %i.bf, 0
  br i1 %.not61.i, label %.preheader.split.i.preheader, label %.lr.ph.i

.preheader.split.i.preheader:                     ; preds = %.preheader.i, %bb.w
  br label %.preheader.split.i

.lr.ph.i:                                         ; preds = %bb.w
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  br label %bb.x

.preheader.i:                                     ; preds = %.loopexit51.i
  %i.bj = icmp eq i8 %.240.i, 0
  br i1 %i.bj, label %.preheader.split.i.preheader, label %tt_check_trickyness_sfnt_ids.exit

bb.x:                                             ; preds = %.loopexit51.i, %.lr.ph.i
  %i.bk = phi i16 [ %i.bf, %.lr.ph.i ], [ %i.cz, %.loopexit51.i ]
  %indvars.iv68.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next69.i, %.loopexit51.i ] ; 4 uses
  %.03858.i = phi i8 [ 0, %.lr.ph.i ], [ %.240.i, %.loopexit51.i ] ; 3 uses
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !896
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %indvars.iv68.i
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !897
  switch i64 %i.bn, label %.loopexit51.i [
    i64 1668707360, label %bb.aa
    i64 1718642541, label %bb.y
    i64 1886545264, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.139.i = phi i8 [ %.03858.i, %bb.z ], [ %.03858.i, %bb.y ], [ 1, %bb.x ]
  %.0.i9 = phi i64 [ 2, %bb.z ], [ 1, %bb.y ], [ 0, %bb.x ]
  %invariant.gep.i = getelementptr inbounds nuw [16 x i8], ptr @tt_check_trickyness_sfnt_ids.sfnt_id, i64 %.0.i9
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ah, %bb.aa
  %indvars.iv.i = phi i64 [ 0, %bb.aa ], [ %indvars.iv.next.i, %bb.ah ] ; 3 uses
  %.04156.i = phi i64 [ 0, %bb.aa ], [ %.243.i, %bb.ah ] ; 3 uses
  %i.bo = load ptr, ptr %i.bg, align 8, !tbaa !896
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %indvars.iv68.i ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !899
  %gep.i = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !900
  %i.bu = icmp eq i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %.not50.i = icmp eq i64 %.04156.i, 0
  br i1 %.not50.i, label %bb.ad, label %tt_get_sfnt_checksum.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.bv = load ptr, ptr %i.bh, align 8, !tbaa !497 ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i11, label %tt_get_sfnt_checksum.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bw = load i64, ptr %i.bp, align 8, !tbaa !897
  %i.bx = load ptr, ptr %i.bi, align 8, !tbaa !46
  %i.by = tail call i32 %i.bv(ptr noundef nonnull %0, i64 noundef %i.bw, ptr noundef %i.bx, ptr noundef null) #22, !inline_history !902
  %.not10.i.i = icmp eq i32 %i.by, 0
  br i1 %.not10.i.i, label %bb.af, label %tt_get_sfnt_checksum.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.bz = load ptr, ptr %i.bi, align 8, !tbaa !46 ; 4 uses
  %i.ca = load ptr, ptr %i.bg, align 8, !tbaa !896
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.ca, i64 %indvars.iv68.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !899 ; 4 uses
  %i.ce = tail call i32 @FT_Stream_EnterFrame(ptr noundef %i.bz, i64 noundef %i.cd) #22
  %.not.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i, label %.preheader19.i.i.i, label %tt_get_sfnt_checksum.exit.i

.preheader19.i.i.i:                               ; preds = %bb.af
  %i.cf = icmp ugt i64 %i.cd, 3
  br i1 %i.cf, label %.lr.ph.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.preheader19.i.i.i
  %.016.lcssa.i.i.i = phi i64 [ %i.cd, %.preheader19.i.i.i ], [ %i.ci, %.lr.ph.i.i.i ] ; 2 uses
  %.014.lcssa.i.i.i = phi i32 [ 0, %.preheader19.i.i.i ], [ %i.ch, %.lr.ph.i.i.i ] ; 2 uses
  %.not1823.i.i.i = icmp eq i64 %.016.lcssa.i.i.i, 0
  br i1 %.not1823.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph27.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader19.i.i.i, %.lr.ph.i.i.i
  %.01421.i.i.i = phi i32 [ %i.ch, %.lr.ph.i.i.i ], [ 0, %.preheader19.i.i.i ]
  %.01620.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i.i ], [ %i.cd, %.preheader19.i.i.i ]
  %i.cg = tail call i32 @FT_Stream_GetULong(ptr noundef %i.bz) #22
  %i.ch = add i32 %i.cg, %.01421.i.i.i            ; 2 uses
  %i.ci = add i64 %.01620.i.i.i, -4               ; 3 uses
  %i.cj = icmp ugt i64 %i.ci, 3
  br i1 %i.cj, label %.lr.ph.i.i.i, label %.preheader.i.i.i, !llvm.loop !903

.lr.ph27.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph27.i.i.i
  %.026.i.i.i = phi i32 [ %i.cq, %.lr.ph27.i.i.i ], [ 3, %.preheader.i.i.i ] ; 2 uses
  %.125.i.i.i = phi i32 [ %i.co, %.lr.ph27.i.i.i ], [ %.014.lcssa.i.i.i, %.preheader.i.i.i ]
  %.11724.i.i.i = phi i64 [ %i.cp, %.lr.ph27.i.i.i ], [ %.016.lcssa.i.i.i, %.preheader.i.i.i ]
  %i.ck = tail call zeroext i8 @FT_Stream_GetByte(ptr noundef %i.bz) #22
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl i32 %.026.i.i.i, 3
  %i.cn = shl i32 %i.cl, %i.cm
  %i.co = add i32 %i.cn, %.125.i.i.i              ; 2 uses
  %i.cp = add nsw i64 %.11724.i.i.i, -1           ; 2 uses
  %i.cq = add nsw i32 %.026.i.i.i, -1
  %.not18.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not18.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph27.i.i.i, !llvm.loop !904

._crit_edge.i.i.i:                                ; preds = %.lr.ph27.i.i.i, %.preheader.i.i.i
  %.1.lcssa.i.i.i = phi i32 [ %.014.lcssa.i.i.i, %.preheader.i.i.i ], [ %i.co, %.lr.ph27.i.i.i ]
  tail call void @FT_Stream_ExitFrame(ptr noundef %i.bz) #22
  %i.cr = zext i32 %.1.lcssa.i.i.i to i64
  br label %tt_get_sfnt_checksum.exit.i

tt_get_sfnt_checksum.exit.i:                      ; preds = %._crit_edge.i.i.i, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.142.i = phi i64 [ %.04156.i, %bb.ac ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ %i.cr, %._crit_edge.i.i.i ], [ 0, %bb.af ] ; 2 uses
  %i.cs = load i64, ptr %gep.i, align 16, !tbaa !905
  %i.ct = icmp eq i64 %i.cs, %.142.i
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3  ; 2 uses
  br i1 %i.ct, label %bb.ag, label %tt_get_sfnt_checksum.exit._crit_edge.i

bb.ag:                                            ; preds = %tt_get_sfnt_checksum.exit.i
  %i.cw = add nsw i32 %i.cv, 1                    ; 2 uses
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !3
  br label %tt_get_sfnt_checksum.exit._crit_edge.i

tt_get_sfnt_checksum.exit._crit_edge.i:           ; preds = %bb.ag, %tt_get_sfnt_checksum.exit.i
  %i.cx = phi i32 [ %i.cw, %bb.ag ], [ %i.cv, %tt_get_sfnt_checksum.exit.i ]
  %i.cy = icmp eq i32 %i.cx, 3
  br i1 %i.cy, label %tt_check_trickyness_sfnt_ids.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %tt_get_sfnt_checksum.exit._crit_edge.i, %bb.ab
  %.243.i = phi i64 [ %.142.i, %tt_get_sfnt_checksum.exit._crit_edge.i ], [ %.04156.i, %bb.ab ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 31
  br i1 %exitcond.not.i, label %.loopexit51.loopexit.i, label %bb.ab, !llvm.loop !906

.loopexit51.loopexit.i:                           ; preds = %bb.ah
  %.pre78.i = load i16, ptr %i.be, align 8, !tbaa !895
  br label %.loopexit51.i

.loopexit51.i:                                    ; preds = %.loopexit51.loopexit.i, %bb.x
  %i.cz = phi i16 [ %i.bk, %bb.x ], [ %.pre78.i, %.loopexit51.loopexit.i ] ; 2 uses
  %.240.i = phi i8 [ %.03858.i, %bb.x ], [ %.139.i, %.loopexit51.loopexit.i ] ; 2 uses
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %i.da = zext i16 %i.cz to i64
  %i.db = icmp samesign ult i64 %indvars.iv.next69.i, %i.da
  br i1 %i.db, label %bb.x, label %.preheader.i, !llvm.loop !907

bb.ai:                                            ; preds = %.preheader.split._crit_edge.i
  %exitcond77.not.i = icmp eq i64 %indvars.iv74.i, 30
  br i1 %exitcond77.not.i, label %tt_check_trickyness_sfnt_ids.exit.thread17, label %.preheader.split.i.1

.preheader.split.i.1:                             ; preds = %bb.ai
  %i.dc = trunc i64 %indvars.iv74.i to i32
  %i.dd = add nsw i32 %i.dc, -16
  %.not45.i.1 = icmp ult i32 %i.dd, 12
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv74.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3  ; 2 uses
  br i1 %.not45.i.1, label %bb.aj, label %.preheader.split._crit_edge.i.1

bb.aj:                                            ; preds = %.preheader.split.i.1
  %i.dh = add nsw i32 %i.dg, 1                    ; 2 uses
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !3
  br label %.preheader.split._crit_edge.i.1

.preheader.split._crit_edge.i.1:                  ; preds = %bb.aj, %.preheader.split.i.1
  %i.di = phi i32 [ %i.dh, %bb.aj ], [ %i.dg, %.preheader.split.i.1 ]
  %i.dj = icmp eq i32 %i.di, 3
  br i1 %i.dj, label %tt_check_trickyness_sfnt_ids.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %.preheader.split._crit_edge.i.1
  %indvars.iv.next75.i.1 = add nuw nsw i64 %indvars.iv74.i, 2
  br label %.preheader.split.i

tt_check_trickyness_sfnt_ids.exit.thread17:       ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.am

.preheader.split.i:                               ; preds = %bb.ak, %.preheader.split.i.preheader
  %indvars.iv74.i = phi i64 [ 0, %.preheader.split.i.preheader ], [ %indvars.iv.next75.i.1, %bb.ak ] ; 6 uses
  %i.dk = trunc i64 %indvars.iv74.i to i32
  %i.dl = add nsw i32 %i.dk, -16
  %.not45.i = icmp ult i32 %i.dl, 12
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv74.i ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !3  ; 2 uses
  br i1 %.not45.i, label %bb.al, label %.preheader.split._crit_edge.i

bb.al:                                            ; preds = %.preheader.split.i
  %i.do = add nsw i32 %i.dn, 1                    ; 2 uses
  store i32 %i.do, ptr %i.dm, align 8, !tbaa !3
  br label %.preheader.split._crit_edge.i

.preheader.split._crit_edge.i:                    ; preds = %bb.al, %.preheader.split.i
  %i.dp = phi i32 [ %i.do, %bb.al ], [ %i.dn, %.preheader.split.i ]
  %i.dq = icmp eq i32 %i.dp, 3
  br i1 %i.dq, label %tt_check_trickyness_sfnt_ids.exit.thread, label %bb.ai

tt_check_trickyness_sfnt_ids.exit.thread:         ; preds = %tt_get_sfnt_checksum.exit._crit_edge.i, %.preheader.split._crit_edge.i, %.preheader.split._crit_edge.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %tt_check_trickyness_family.exit.thread

tt_check_trickyness_sfnt_ids.exit:                ; preds = %.preheader.i
  %1 = load <16 x i32>, ptr %i.a, align 16
  %.fr = freeze <16 x i32> %1
  %2 = icmp ne <16 x i32> %.fr, splat (i32 3)     ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %4 = load <8 x i32>, ptr %3, align 16
  %.fr54 = freeze <8 x i32> %4
  %5 = icmp ne <8 x i32> %.fr54, splat (i32 3)
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %7 = load <4 x i32>, ptr %6, align 16
  %.fr55 = freeze <4 x i32> %7
  %8 = icmp ne <4 x i32> %.fr55, splat (i32 3)
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %10 = load i32, ptr %9, align 16
  %11 = icmp ne i32 %10, 3
  %12 = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %13 = load i32, ptr %12, align 4
  %.fr56 = freeze i32 %13
  %14 = icmp ne i32 %.fr56, 3
  %15 = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %16 = load i32, ptr %15, align 8
  %.fr58 = freeze i32 %16
  %17 = icmp ne i32 %.fr58, 3
  %18 = shufflevector <16 x i1> %2, <16 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %rdx.op = and <8 x i1> %18, %5                  ; 2 uses
  %19 = shufflevector <8 x i1> %rdx.op, <8 x i1> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %20 = shufflevector <16 x i1> %19, <16 x i1> %2, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %21 = shufflevector <8 x i1> %rdx.op, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op51 = and <4 x i1> %21, %8
  %22 = shufflevector <4 x i1> %rdx.op51, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <16 x i1> %22, <16 x i1> %20, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %24 = bitcast <16 x i1> %23 to i16
  %i.dr = icmp eq i16 %24, -1
  %op.rdx = select i1 %i.dr, i1 %11, i1 false
  %25 = freeze i1 %op.rdx
  %26 = and i1 %25, %14
  %op.rdx53 = and i1 %26, %17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br i1 %op.rdx53, label %bb.am, label %tt_check_trickyness_family.exit.thread

bb.am:                                            ; preds = %tt_check_trickyness_sfnt_ids.exit.thread17, %tt_check_trickyness_sfnt_ids.exit
  br label %tt_check_trickyness_family.exit.thread

tt_check_trickyness_family.exit.thread:           ; preds = %bb.s, %bb.m, %bb.p, %bb.l, %bb.t, %bb.k, %bb.r, %bb.j, %bb.u, %bb.i, %bb.o, %bb.h, %bb.v, %bb.g, %bb.q, %bb.f, %bb.e, %bb.n, %tt_skip_pdffont_random_tag.exit.i, %bb.am, %tt_check_trickyness_sfnt_ids.exit, %tt_check_trickyness_sfnt_ids.exit.thread, %tt_check_trickyness_family.exit, %bb.a
  %.0 = phi i8 [ 0, %bb.a ], [ 1, %tt_check_trickyness_sfnt_ids.exit.thread ], [ 1, %tt_check_trickyness_family.exit ], [ 0, %bb.am ], [ 1, %tt_check_trickyness_sfnt_ids.exit ], [ 1, %tt_skip_pdffont_random_tag.exit.i ], [ 1, %bb.n ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.q ], [ 1, %bb.g ], [ 1, %bb.v ], [ 1, %bb.h ], [ 1, %bb.o ], [ 1, %bb.i ], [ 1, %bb.u ], [ 1, %bb.j ], [ 1, %bb.r ], [ 1, %bb.k ], [ 1, %bb.t ], [ 1, %bb.l ], [ 1, %bb.p ], [ 1, %bb.m ], [ 1, %bb.s ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tt_face_load_hdmx(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !497
  %i.g = call i32 %i.f(ptr noundef %0, i64 noundef 1751412088, ptr noundef %1, ptr noundef nonnull %i.b) #22
  %i.h = icmp ne i32 %i.g, 0
  %i.i = load i64, ptr %i.b, align 8              ; 2 uses
  %i.j = icmp ult i64 %i.i, 8
  %or.cond = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 3 uses
  %i.l = call i32 @FT_Stream_ExtractFrame(ptr noundef nonnull %1, i64 noundef %i.i, ptr noundef nonnull %i.k) #22 ; 2 uses
  store i32 %i.l, ptr %i.a, align 4, !tbaa !3
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !908  ; 8 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !223
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !224   ; 2 uses
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !224   ; 2 uses
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = or disjoint i32 %i.s, %i.v               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.z = load i8, ptr %i.y, align 1, !tbaa !224
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !224
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 16
  %i.ag = or disjoint i64 %i.af, %i.ab            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !224
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 7
  %i.am = load i8, ptr %i.al, align 1, !tbaa !224
  %i.an = zext i8 %i.am to i64
  %i.ao = or disjoint i64 %i.ak, %i.an
  %i.ap = icmp eq i64 %i.ag, 4294901760
  %i.aq = select i1 %i.ap, i64 0, i64 %i.ag
  %spec.select = or disjoint i64 %i.ao, %i.aq     ; 3 uses
  %i.ar = icmp ne i8 %i.q, 0
  %i.as = icmp eq i32 %i.w, 0
  %or.cond3 = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond3, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !298
  %i.av = add nsw i64 %i.au, 5
  %i.aw = and i64 %i.av, -4
  %.not57 = icmp eq i64 %spec.select, %i.aw
  br i1 %.not57, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ax = zext nneg i32 %i.w to i64
  %i.ay = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 8, i64 noundef 0, i64 noundef %i.ax, ptr noundef null, ptr noundef nonnull %i.a) #22 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1320
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !98
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !3
  %.not58 = icmp eq i32 %i.ba, 0
  br i1 %.not58, label %.lr.ph.preheader, label %bb.h

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext i8 %i.u to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.05060 = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.bb, %bb.f ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05060, i64 %spec.select ; 2 uses
  %i.bc = icmp ugt ptr %i.bb, %i.o
  br i1 %i.bc, label %._crit_edge.split.loop.exit68, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  store ptr %.05060, ptr %i.bd, align 8, !tbaa !255
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !909

._crit_edge.split.loop.exit68:                    ; preds = %.lr.ph
  %i.be = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %._crit_edge.split.loop.exit68
  %.052.lcssa.ph = phi i32 [ %i.be, %._crit_edge.split.loop.exit68 ], [ %i.v, %bb.f ] ; 2 uses
  %i.bf = zext nneg i32 %.052.lcssa.ph to i64
  call void @qsort(ptr noundef %i.ay, i64 noundef %i.bf, i64 noundef 8, ptr noundef nonnull @compare_ppem) #22
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1304
  store i32 %.052.lcssa.ph, ptr %i.bg, align 8, !tbaa !891
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !223
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1296
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !910
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.h
  %.sink71 = phi i64 [ 1296, %bb.h ], [ 1312, %._crit_edge ]
  %.sink = phi i64 [ 0, %bb.h ], [ %spec.select, %._crit_edge ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.sink71
  store i64 %.sink, ptr %i.bj, align 8, !tbaa !223
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.b
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @FT_Stream_ReleaseFrame(ptr noundef nonnull %1, ptr noundef nonnull %i.k) #22
  br label %.sink.split

bb.i:                                             ; preds = %bb.a, %bb.g
  %.0 = phi i32 [ %i.bk, %bb.g ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tt_face_load_loca(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !497
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.e = tail call i32 %i.c(ptr noundef %0, i64 noundef 1735162214, ptr noundef %1, ptr noundef nonnull %i.d) #22 ; 3 uses
  %i.f = and i32 %i.e, 255
  %i.g = icmp eq i32 %i.f, 142
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !738
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76
  %.not64 = icmp eq ptr %i.k, null
  br i1 %.not64, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store i64 0, ptr %i.l, align 8, !tbaa !750
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = tail call i64 @FT_Stream_Pos(ptr noundef %1) #22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store i64 %i.m, ptr %i.n, align 8, !tbaa !750
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.e, %bb.f
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !497
  %i.p = call i32 %i.o(ptr noundef nonnull %0, i64 noundef 1819239265, ptr noundef %1, ptr noundef nonnull %i.a) #22
  %.not65 = icmp eq i32 %i.p, 0
  br i1 %.not65, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 390
  %i.r = load i16, ptr %i.q, align 2, !tbaa !733
  %.not66 = icmp eq i16 %i.r, 0
  %i.s = load i64, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %i.t = select i1 %.not66, i64 1, i64 2          ; 3 uses
  %i.u = shl nuw nsw i64 65536, %i.t              ; 3 uses
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.i, label %bb.j

end_hunk_0
