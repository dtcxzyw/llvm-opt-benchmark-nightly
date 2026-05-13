inline.NumInlined: 21
inline.NumDeleted: 9
begin_hunk_0_@PCF_Size_Request:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.v = load i64, ptr %i.u, align 8, !tbaa !95
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.x = load i64, ptr %i.w, align 8, !tbaa !96
  %i.y = add nsw i64 %i.x, %i.v
  %i.z = icmp eq i64 %i.n, %i.y
  br i1 %i.z, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.d, %bb.e
  tail call void @FT_Select_Metrics(ptr noundef nonnull %i.a, i64 noundef 0) #13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !118
  %i.ac = shl nsw i64 %i.ab, 6
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !119
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !120
  %.neg.i = mul i64 %i.af, -64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.neg.i, ptr %i.ag, align 8, !tbaa !121
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 436
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !122
  %i.aj = sext i16 %i.ai to i32
  %i.ak = shl nsw i32 %i.aj, 6
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.al, ptr %i.am, align 8, !tbaa !123
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.016 = phi i32 [ 0, %bb.f ], [ 23, %bb.e ], [ 23, %bb.d ], [ 7, %bb.c ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @PCF_Size_Select(ptr noundef captures(none) initializes((48, 64), (72, 80)) %0, i64 noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 4 uses
  tail call void @FT_Select_Metrics(ptr noundef %i.a, i64 noundef %1) #13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.c = load i64, ptr %i.b, align 8, !tbaa !118
  %i.d = shl nsw i64 %i.c, 6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.d, ptr %i.e, align 8, !tbaa !119
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.g = load i64, ptr %i.f, align 8, !tbaa !120
  %.neg = mul i64 %i.g, -64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.neg, ptr %i.h, align 8, !tbaa !121
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 436
  %i.j = load i16, ptr %i.i, align 4, !tbaa !122
  %i.k = sext i16 %i.j to i32
  %i.l = shl nsw i32 %i.k, 6
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.m, ptr %i.n, align 8, !tbaa !123
  ret i32 0
}

declare hidden ptr @ft_service_list_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @pcf_get_charset_id(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 8)) %1, ptr noundef writeonly captures(none) initializes((0, 8)) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  store ptr %i.b, ptr %1, align 8, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  store ptr %i.d, ptr %2, align 8, !tbaa !124
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 7) i32 @pcf_get_bdf_property(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i, label %pcf_find_property.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(1) %1) #14
  %.fr.i = freeze i32 %i.i
  %.not14.i = icmp ne i32 %.fr.i, 0               ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.j = icmp samesign ult i64 %indvars.iv.next.i, %i.f
  %or.cond.i = and i1 %i.j, %.not14.i
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !125

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %indvars.iv.next.i ; 3 uses
  br i1 %.not14.i, label %pcf_find_property.exit.thread, label %pcf_find_property.exit

pcf_find_property.exit:                           ; preds = %.critedge.i
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -16
  %i.m = load i8, ptr %i.l, align 8, !tbaa !54
  %.not13 = icmp eq i8 %i.m, 0
  br i1 %.not13, label %bb.c, label %bb.b

bb.b:                                             ; preds = %pcf_find_property.exit
  store i32 1, ptr %2, align 8, !tbaa !126
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !40
  br label %pcf_find_property.exit.thread

bb.c:                                             ; preds = %pcf_find_property.exit
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 -8
  store i32 2, ptr %2, align 8, !tbaa !126
  %i.r = load i64, ptr %i.q, align 8, !tbaa !40
  %i.s = trunc i64 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.s, ptr %i.t, align 8, !tbaa !40
  br label %pcf_find_property.exit.thread

pcf_find_property.exit.thread:                    ; preds = %.critedge.i, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 6, %bb.a ], [ 6, %.critedge.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nofree norecurse nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @pcf_find_property(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.critedge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %1) #14
  %.fr = freeze i32 %i.i
  %.not14 = icmp ne i32 %.fr, 0                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.j = icmp samesign ult i64 %indvars.iv.next, %i.f
  %or.cond = and i1 %i.j, %.not14
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !125

.critedge:                                        ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -24
  br i1 %.not14, label %.critedge.thread, label %bb.b

.critedge.thread:                                 ; preds = %bb.a, %.critedge
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %.critedge.thread
  %i.m = phi ptr [ null, %.critedge.thread ], [ %i.l, %.critedge ]
  ret ptr %i.m
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @pcf_property_set(ptr readnone captures(none) %0, ptr readnone captures(none) %1, ptr readnone captures(none) %2, i8 zeroext %3) #0 {
bb.a:
  ret i32 12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @pcf_property_get(ptr readnone captures(none) %0, ptr readnone captures(none) %1, ptr readnone captures(none) %2) #0 {
bb.a:
  ret i32 12
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @pcf_load_font(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 25 uses
  %3 = alloca %struct.PCF_Compressed_MetricRec_, align 1 ; 7 uses
  %i.b = alloca i32, align 4                      ; 18 uses
  %i.c = alloca i32, align 4                      ; 28 uses
  %i.d = alloca i32, align 4                      ; 12 uses
  %4 = alloca %struct.PCF_TableRec_, align 8      ; 5 uses
  %i.e = alloca i32, align 4                      ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.i = tail call i32 @FT_Stream_Seek(ptr noundef %0, i64 noundef 0) #13
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.b, label %pcf_read_TOC.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @FT_Stream_ReadFields(ptr noundef %0, ptr noundef nonnull @pcf_toc_header, ptr noundef nonnull %i.h) #13 ; 2 uses
  store i32 %i.j, ptr %i.d, align 4, !tbaa !3
  %.not100.i = icmp eq i32 %i.j, 0
  br i1 %.not100.i, label %bb.c, label %pcf_read_TOC.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.h, align 8, !tbaa !128
  %.not101.i = icmp eq i64 %i.k, 1885562369
  br i1 %.not101.i, label %bb.d, label %pcf_read_TOC.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 9 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !129  ; 4 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %pcf_read_TOC.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !130  ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  br i1 %i.q, label %pcf_read_TOC.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = lshr i64 %i.p, 4                         ; 2 uses
  %i.s = icmp ugt i64 %i.m, %i.r
  %i.t = icmp ugt i64 %i.m, 9
  %or.cond.i = or i1 %i.t, %i.s
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = icmp ult i64 %i.p, 144
  %spec.select.i = select i1 %i.u, i64 %i.r, i64 9 ; 2 uses
  store i64 %spec.select.i, ptr %i.l, align 8, !tbaa !129
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = phi i64 [ %i.m, %bb.f ], [ %spec.select.i, %bb.g ]
  %i.w = call ptr @ft_mem_qrealloc(ptr noundef %i.g, i64 noundef 32, i64 noundef 0, i64 noundef %i.v, ptr noundef null, ptr noundef nonnull %i.d) #13 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 8 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !58
  %i.y = load i32, ptr %i.d, align 4, !tbaa !3
  %.not102.i = icmp eq i32 %i.y, 0
  br i1 %.not102.i, label %.preheader111.i, label %pcf_read_TOC.exit.thread

.preheader111.i:                                  ; preds = %bb.h
  %i.z = load i64, ptr %i.l, align 8, !tbaa !129
  %.not127.i = icmp eq i64 %i.z, 0
  br i1 %.not127.i, label %.preheader.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader111.i, %bb.i
  %.083115.i = phi i32 [ %i.ac, %bb.i ], [ 0, %.preheader111.i ]
  %.085114.i = phi ptr [ %i.ab, %bb.i ], [ %i.w, %.preheader111.i ] ; 2 uses
  %i.aa = call i32 @FT_Stream_ReadFields(ptr noundef %0, ptr noundef nonnull @pcf_table_header, ptr noundef %.085114.i) #13 ; 2 uses
  store i32 %i.aa, ptr %i.d, align 4, !tbaa !3
  %.not104.i = icmp eq i32 %i.aa, 0
  br i1 %.not104.i, label %bb.i, label %pcf_read_TOC.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.085114.i, i64 32
  %i.ac = add i32 %.083115.i, 1                   ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !129 ; 3 uses
  %i.af = icmp ugt i64 %i.ae, %i.ad
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !131

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !58 ; 3 uses
  %.not128.i = icmp eq i64 %i.ae, 1
  br i1 %.not128.i, label %.thread109.thread.i, label %.preheader.preheader.i

.thread109.thread.i:                              ; preds = %._crit_edge.i
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !130
  br label %._crit_edge125.i

.preheader.preheader.i:                           ; preds = %._crit_edge.i, %.preheader111.i
  %i.ah = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.w, %.preheader111.i ] ; 3 uses
  %i.ai = phi i64 [ %i.ae, %._crit_edge.i ], [ 0, %.preheader111.i ]
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  br label %.preheader.i

bb.j:                                             ; preds = %._crit_edge119.i
  %i.aj = add i32 %.184120.i, 1                   ; 2 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = add i64 %i.bh, -1
  %i.am = icmp ugt i64 %i.al, %i.ak
  br i1 %i.am, label %.preheader.i, label %.thread109.i, !llvm.loop !132

.preheader.i:                                     ; preds = %bb.j, %.preheader.preheader.i
  %i.an = phi i64 [ %i.bh, %bb.j ], [ %i.ai, %.preheader.preheader.i ] ; 2 uses
  %i.ao = phi i64 [ %i.ak, %bb.j ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %.184120.i = phi i32 [ %i.aj, %bb.j ], [ 0, %.preheader.preheader.i ]
  %.neg.i = add nuw nsw i64 %i.ao, 1
  %i.ap = xor i64 %i.ao, -1
  %.not129.i = icmp eq i64 %i.an, %.neg.i
  br i1 %.not129.i, label %.thread109.i, label %.lr.ph118.preheader.i

.lr.ph118.preheader.i:                            ; preds = %.preheader.i
  %.pre134.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !133
  br label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %bb.n, %.lr.ph118.preheader.i
  %i.aq = phi i64 [ %i.ba, %bb.n ], [ %.pre134.i, %.lr.ph118.preheader.i ]
  %i.ar = phi i64 [ %i.av, %bb.n ], [ 0, %.lr.ph118.preheader.i ]
  %.0117.i = phi i32 [ %.1.i, %bb.n ], [ 0, %.lr.ph118.preheader.i ]
  %.079116.i = phi i32 [ %i.au, %bb.n ], [ 0, %.lr.ph118.preheader.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ar ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = add i32 %.079116.i, 1                   ; 2 uses
  %i.av = zext i32 %i.au to i64                   ; 3 uses
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !133 ; 2 uses
  %i.az = icmp ugt i64 %i.aq, %i.ay
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph118.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false), !tbaa.struct !135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false), !tbaa.struct !135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !135
  %.pre132.i = load i64, ptr %i.ax, align 8, !tbaa !133
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph118.i
  %i.ba = phi i64 [ %.pre132.i, %bb.k ], [ %i.ay, %.lr.ph118.i ] ; 3 uses
  %.1.i = phi i32 [ 1, %bb.k ], [ %.0117.i, %.lr.ph118.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !136 ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, %i.ba
  br i1 %i.bd, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = load i64, ptr %i.at, align 8, !tbaa !133
  %i.bf = sub nuw i64 %i.ba, %i.bc
  %i.bg = icmp ugt i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bh = load i64, ptr %i.l, align 8, !tbaa !129 ; 5 uses
  %i.bi = add i64 %i.bh, %i.ap
  %i.bj = icmp ugt i64 %i.bi, %i.av
  br i1 %i.bj, label %.lr.ph118.i, label %._crit_edge119.i, !llvm.loop !137

._crit_edge119.i:                                 ; preds = %bb.n
  %i.bk = icmp eq i32 %.1.i, 0
  br i1 %i.bk, label %.thread109.i, label %bb.j

bb.o:                                             ; preds = %bb.m, %bb.l
  store i32 9, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %pcf_read_TOC.exit

.thread109.i:                                     ; preds = %._crit_edge119.i, %.preheader.i, %bb.j
  %i.bl = phi i64 [ %i.bh, %bb.j ], [ %i.bh, %._crit_edge119.i ], [ %i.an, %.preheader.i ]
  %.pre133.i = load ptr, ptr %i.x, align 8, !tbaa !58 ; 4 uses
  %i.bm = add i64 %i.bl, -1                       ; 2 uses
  %i.bn = load i64, ptr %i.o, align 8, !tbaa !130 ; 4 uses
  %.not130.i = icmp eq i64 %i.bm, 0
  br i1 %.not130.i, label %._crit_edge125.i, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %.thread109.i, %bb.r
  %.2123.i = phi i32 [ %i.bw, %bb.r ], [ 0, %.thread109.i ]
  %.186122.i = phi ptr [ %i.bv, %bb.r ], [ %.pre133.i, %.thread109.i ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.186122.i, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !136 ; 2 uses
  %i.bq = icmp ugt i64 %i.bp, %i.bn
  br i1 %i.bq, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph124.i
  %i.br = getelementptr inbounds nuw i8, ptr %.186122.i, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !133
  %i.bt = sub nuw i64 %i.bn, %i.bp
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %.lr.ph124.i
  store i32 8, ptr %i.d, align 4, !tbaa !3
  br label %pcf_read_TOC.exit

bb.r:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %.186122.i, i64 32 ; 2 uses
  %i.bw = add i32 %.2123.i, 1                     ; 2 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = icmp ugt i64 %i.bm, %i.bx
  br i1 %i.by, label %.lr.ph124.i, label %._crit_edge125.i, !llvm.loop !138

._crit_edge125.i:                                 ; preds = %bb.r, %.thread109.i, %.thread109.thread.i
  %i.bz = phi ptr [ %.pre133.i, %.thread109.i ], [ %.pre.i, %.thread109.thread.i ], [ %.pre133.i, %bb.r ]
  %i.ca = phi i64 [ %i.bn, %.thread109.i ], [ %i.ag, %.thread109.thread.i ], [ %i.bn, %bb.r ] ; 2 uses
end_hunk_0
begin_hunk_1_@pcf_load_font:bb.a

pcf_get_metrics.exit.thread247:                   ; preds = %bb.by, %bb.bv, %.preheader.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.e, align 4, !tbaa !3
  br label %bb.bz

pcf_get_metrics.exit:                             ; preds = %pcf_get_metric.exit.us.i, %.thread.loopexit72.i
  %i.is = load ptr, ptr %i.gz, align 8, !tbaa !48
  call void @ft_mem_free(ptr noundef %i.fq, ptr noundef %i.is) #13
  store ptr null, ptr %i.gz, align 8, !tbaa !48
  %.pre.i217 = load i32, ptr %i.b, align 4, !tbaa !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  store i32 %.pre.i217, ptr %i.e, align 4, !tbaa !3
  %.not173 = icmp eq i32 %.pre.i217, 0
  br i1 %.not173, label %bb.bz, label %.thread266

bb.bz:                                            ; preds = %pcf_get_metrics.exit.thread247, %pcf_get_metrics.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.it = load ptr, ptr %i.x, align 8, !tbaa !58
  %i.iu = load i64, ptr %i.l, align 8, !tbaa !141 ; 2 uses
  %.not26.i.i218 = icmp eq i64 %i.iu, 0
  br i1 %.not26.i.i218, label %pcf_get_bitmaps.exit.thread, label %.lr.ph.i.i219

bb.ca:                                            ; preds = %.lr.ph.i.i219
  %i.iv = add nuw i64 %.025.i.i220, 1             ; 2 uses
  %exitcond.not.i.i221 = icmp eq i64 %i.iv, %i.iu
  br i1 %exitcond.not.i.i221, label %pcf_get_bitmaps.exit.thread, label %.lr.ph.i.i219, !llvm.loop !142

.lr.ph.i.i219:                                    ; preds = %bb.bz, %bb.ca
  %.025.i.i220 = phi i64 [ %i.iv, %bb.ca ], [ 0, %bb.bz ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [32 x i8], ptr %i.it, i64 %.025.i.i220 ; 3 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !143
  %i.iy = icmp eq i64 %i.ix, 8
  br i1 %i.iy, label %bb.cb, label %bb.ca

bb.cb:                                            ; preds = %.lr.ph.i.i219
  %i.iz = load i64, ptr %i.fv, align 8, !tbaa !144 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !133 ; 2 uses
  %i.jc = icmp ugt i64 %i.iz, %i.jb
  br i1 %i.jc, label %pcf_get_bitmaps.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jd = sub nuw i64 %i.jb, %i.iz
  %i.je = call i32 @FT_Stream_Skip(ptr noundef nonnull %0, i64 noundef %i.jd) #13
  %.not.i.i224 = icmp eq i32 %i.je, 0
  br i1 %.not.i.i224, label %bb.cd, label %pcf_get_bitmaps.exit.thread

bb.cd:                                            ; preds = %bb.cc
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !136 ; 2 uses
  %i.jh = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %0, i64 noundef 8) #13 ; 2 uses
  store i32 %i.jh, ptr %i.a, align 4, !tbaa !3
  %.not42.i = icmp eq i32 %i.jh, 0
  br i1 %.not42.i, label %bb.ce, label %pcf_get_bitmaps.exit.thread

bb.ce:                                            ; preds = %bb.cd
  %i.ji = call i32 @FT_Stream_GetULongLE(ptr noundef nonnull %0) #13 ; 2 uses
  %i.jj = zext i32 %i.ji to i64                   ; 2 uses
  %i.jk = and i64 %i.jj, 4
  %.not43.i = icmp eq i64 %i.jk, 0                ; 3 uses
  br i1 %.not43.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jl = call i32 @FT_Stream_GetULong(ptr noundef nonnull %0) #13
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.jm = call i32 @FT_Stream_GetULongLE(ptr noundef nonnull %0) #13
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.037.in.i = phi i32 [ %i.jl, %bb.cf ], [ %i.jm, %bb.cg ] ; 2 uses
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %0) #13
  %i.jn = icmp ult i32 %i.ji, 256
  br i1 %i.jn, label %bb.ci, label %pcf_get_bitmaps.exit.thread

bb.ci:                                            ; preds = %bb.ch
  %narrow.i = call i32 @llvm.umin.i32(i32 %.037.in.i, i32 65534)
  %..037.i = zext nneg i32 %narrow.i to i64       ; 4 uses
  %i.jo = load i64, ptr %i.gx, align 8, !tbaa !152
  %i.jp = add i64 %i.jo, -1
  %.not44.i = icmp eq i64 %i.jp, %..037.i
  br i1 %.not44.i, label %bb.cj, label %pcf_get_bitmaps.exit.thread

bb.cj:                                            ; preds = %bb.ci
  %i.jq = load i64, ptr %i.fv, align 8, !tbaa !144
  %i.jr = shl nuw nsw i64 %..037.i, 2
  %i.js = add nuw nsw i64 %i.jr, 16
  %i.jt = add i64 %i.js, %i.jq                    ; 2 uses
  %.not4559.i = icmp eq i32 %.037.in.i, 0
  br i1 %.not4559.i, label %._crit_edge.i228, label %.lr.ph.i225

.lr.ph.i225:                                      ; preds = %bb.cj
  br i1 %.not43.i, label %.lr.ph.split.us.i232, label %.lr.ph.split.i226

.lr.ph.split.us.i232:                             ; preds = %.lr.ph.i225, %.lr.ph.split.us.i232
  %.03660.us.i = phi i64 [ %i.ka, %.lr.ph.split.us.i232 ], [ 1, %.lr.ph.i225 ] ; 3 uses
  %i.ju = call i32 @FT_Stream_ReadULongLE(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #13
  %.0.us.i = zext i32 %i.ju to i64                ; 2 uses
  %i.jv = icmp ult i64 %i.jg, %.0.us.i
  %i.jw = select i1 %i.jv, i64 0, i64 %.0.us.i
  %.sink.i233 = add i64 %i.jw, %i.jt
  %i.jx = load ptr, ptr %i.gz, align 8, !tbaa !48
  %i.jy = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %.03660.us.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store i64 %.sink.i233, ptr %i.jz, align 8, !tbaa !97
  %i.ka = add nuw nsw i64 %.03660.us.i, 1
  %exitcond66.not.i = icmp eq i64 %.03660.us.i, %..037.i
  br i1 %exitcond66.not.i, label %._crit_edge.i228.thread251, label %.lr.ph.split.us.i232, !llvm.loop !158

.lr.ph.split.i226:                                ; preds = %.lr.ph.i225, %.lr.ph.split.i226
  %.03660.i = phi i64 [ %i.kh, %.lr.ph.split.i226 ], [ 1, %.lr.ph.i225 ] ; 3 uses
  %i.kb = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #13
  %.0.i = zext i32 %i.kb to i64                   ; 2 uses
  %i.kc = icmp ult i64 %i.jg, %.0.i
  %i.kd = select i1 %i.kc, i64 0, i64 %.0.i
  %.sink90.i = add i64 %i.kd, %i.jt
  %i.ke = load ptr, ptr %i.gz, align 8, !tbaa !48
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %i.ke, i64 %.03660.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store i64 %.sink90.i, ptr %i.kg, align 8, !tbaa !97
  %i.kh = add nuw nsw i64 %.03660.i, 1
  %exitcond.not.i227 = icmp eq i64 %.03660.i, %..037.i
  br i1 %exitcond.not.i227, label %._crit_edge.i228.thread, label %.lr.ph.split.i226, !llvm.loop !158

._crit_edge.i228:                                 ; preds = %bb.cj
  %i.ki = load i32, ptr %i.a, align 4, !tbaa !3
  %.not46.i229 = icmp eq i32 %i.ki, 0
  br i1 %.not46.i229, label %.preheader.i230, label %pcf_get_bitmaps.exit.thread

._crit_edge.i228.thread251:                       ; preds = %.lr.ph.split.us.i232
  %i.kj = load i32, ptr %i.a, align 4, !tbaa !3
  %.not46.i229252 = icmp eq i32 %i.kj, 0
  br i1 %.not46.i229252, label %.preheader.split.us.preheader.i, label %pcf_get_bitmaps.exit.thread

._crit_edge.i228.thread:                          ; preds = %.lr.ph.split.i226
  %i.kk = load i32, ptr %i.a, align 4, !tbaa !3
  %.not46.i229250 = icmp eq i32 %i.kk, 0
  br i1 %.not46.i229250, label %.preheader.split.preheader.i, label %pcf_get_bitmaps.exit.thread

.preheader.i230:                                  ; preds = %._crit_edge.i228
  br i1 %.not43.i, label %.preheader.split.us.preheader.i, label %.preheader.split.preheader.i

.preheader.split.preheader.i:                     ; preds = %._crit_edge.i228.thread, %.preheader.i230
  %i.kl = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.km = load i32, ptr %i.a, align 4, !tbaa !3
  %.not48.i231 = icmp eq i32 %i.km, 0
  br i1 %.not48.i231, label %.preheader.split.1.i, label %pcf_get_bitmaps.exit.thread

.preheader.split.us.preheader.i:                  ; preds = %._crit_edge.i228.thread251, %.preheader.i230
  %i.kn = call i32 @FT_Stream_ReadULongLE(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.ko = load i32, ptr %i.a, align 4, !tbaa !3
  %.not48.us.i = icmp eq i32 %i.ko, 0
  br i1 %.not48.us.i, label %.preheader.split.us.1.i, label %pcf_get_bitmaps.exit.thread

.preheader.split.us.1.i:                          ; preds = %.preheader.split.us.preheader.i
  %i.kp = call i32 @FT_Stream_ReadULongLE(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.kq = load i32, ptr %i.a, align 4, !tbaa !3
  %.not48.us.1.i = icmp eq i32 %i.kq, 0
  br i1 %.not48.us.1.i, label %.preheader.split.us.2.i, label %pcf_get_bitmaps.exit.thread

.preheader.split.us.2.i:                          ; preds = %.preheader.split.us.1.i
  %i.kr = call i32 @FT_Stream_ReadULongLE(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.ks = load i32, ptr %i.a, align 4, !tbaa !3
  %.not48.us.2.i = icmp eq i32 %i.ks, 0
  br i1 %.not48.us.2.i, label %.preheader.split.us.3.i, label %pcf_get_bitmaps.exit.thread

.preheader.split.us.3.i:                          ; preds = %.preheader.split.us.2.i
  %i.kt = call i32 @FT_Stream_ReadULongLE(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.ku = load i32, ptr %i.a, align 4, !tbaa !3
  %.not48.us.3.i = icmp eq i32 %i.ku, 0
  br i1 %.not48.us.3.i, label %bb.ck, label %pcf_get_bitmaps.exit.thread

.preheader.split.1.i:                             ; preds = %.preheader.split.preheader.i
  %i.kv = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.kw = load i32, ptr %i.a, align 4, !tbaa !3
  %.not48.1.i = icmp eq i32 %i.kw, 0
  br i1 %.not48.1.i, label %.preheader.split.2.i, label %pcf_get_bitmaps.exit.thread

.preheader.split.2.i:                             ; preds = %.preheader.split.1.i
  %i.kx = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.ky = load i32, ptr %i.a, align 4, !tbaa !3
  %.not48.2.i = icmp eq i32 %i.ky, 0
  br i1 %.not48.2.i, label %.preheader.split.3.i, label %pcf_get_bitmaps.exit.thread

.preheader.split.3.i:                             ; preds = %.preheader.split.2.i
  %i.kz = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.la = load i32, ptr %i.a, align 4, !tbaa !3
  %.not48.3.i = icmp eq i32 %i.la, 0
  br i1 %.not48.3.i, label %bb.ck, label %pcf_get_bitmaps.exit.thread

pcf_get_bitmaps.exit.thread:                      ; preds = %bb.ca, %bb.cd, %.preheader.split.preheader.i, %bb.ch, %bb.ci, %.preheader.split.us.preheader.i, %._crit_edge.i228, %.preheader.split.us.3.i, %.preheader.split.us.2.i, %.preheader.split.us.1.i, %.preheader.split.3.i, %.preheader.split.2.i, %.preheader.split.1.i, %bb.cc, %bb.bz, %bb.cb, %._crit_edge.i228.thread, %._crit_edge.i228.thread251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.thread266

bb.ck:                                            ; preds = %.preheader.split.3.i, %.preheader.split.us.3.i
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 560
  store i64 %i.jj, ptr %i.lb, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.e, align 4, !tbaa !3
  %i.lc = call fastcc i32 @pcf_get_encodings(ptr noundef nonnull %0, ptr noundef nonnull %1) ; 2 uses
  store i32 %i.lc, ptr %i.e, align 4, !tbaa !3
  %.not175 = icmp eq i32 %i.lc, 0
  br i1 %.not175, label %bb.cl, label %.thread266

bb.cl:                                            ; preds = %bb.ck
  br i1 %.not171242, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ld = call fastcc i32 @pcf_get_accel(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef 256) ; 2 uses
  store i32 %i.ld, ptr %i.e, align 4, !tbaa !3
  %.not176 = icmp eq i32 %i.ld, 0
  br i1 %.not176, label %bb.cn, label %.thread266

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !159 ; 2 uses
  %i.lg = or i64 %i.lf, 18
  store i64 %i.lg, ptr %i.le, align 8, !tbaa !159
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 379
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !160
  %.not177 = icmp eq i8 %i.li, 0
  br i1 %.not177, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lj = or i64 %i.lf, 22
  store i64 %i.lj, ptr %i.le, align 8, !tbaa !159
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.lk = call fastcc i32 @pcf_interpret_style(ptr noundef nonnull %1) ; 2 uses
  store i32 %i.lk, ptr %i.e, align 4, !tbaa !3
  %.not178 = icmp eq i32 %i.lk, 0
  br i1 %.not178, label %bb.cq, label %.thread266

bb.cq:                                            ; preds = %bb.cp
  %i.ll = call fastcc ptr @pcf_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.10) ; 3 uses
  %.not179 = icmp eq ptr %i.ll, null
  br i1 %.not179, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = load i8, ptr %i.lm, align 8, !tbaa !54
  %.not180 = icmp eq i8 %i.ln, 0
  br i1 %.not180, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !40
  %i.lq = call ptr @ft_mem_strdup(ptr noundef %i.g, ptr noundef %i.lp, ptr noundef nonnull %i.e) #13
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.lq, ptr %i.lr, align 8, !tbaa !59
  %i.ls = load i32, ptr %i.e, align 4, !tbaa !3
  %.not181 = icmp eq i32 %i.ls, 0
  br i1 %.not181, label %bb.cu, label %.thread266

bb.ct:                                            ; preds = %bb.cr, %bb.cq
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr null, ptr %i.lt, align 8, !tbaa !59
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %i.lu = load i64, ptr %i.gx, align 8, !tbaa !152
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.lu, ptr %i.lv, align 8, !tbaa !161
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 1, ptr %i.lw, align 8, !tbaa !162
  %i.lx = call ptr @ft_mem_alloc(ptr noundef %i.g, i64 noundef 32, ptr noundef nonnull %i.e) #13 ; 12 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.lx, ptr %i.ly, align 8, !tbaa !61
  %i.lz = load i32, ptr %i.e, align 4, !tbaa !3
  %.not182 = icmp eq i32 %i.lz, 0
  br i1 %.not182, label %bb.cv, label %.thread266

bb.cv:                                            ; preds = %bb.cu
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !95
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !96
  %i.me = add nsw i64 %i.md, %i.mb                ; 2 uses
  %i.mf = add i64 %i.me, -32768
  %i.mg = icmp ult i64 %i.mf, -65535
  %i.mh = trunc i64 %i.me to i16
  %i.mi = call i16 @llvm.abs.i16(i16 %i.mh, i1 false)
  %storemerge = select i1 %i.mg, i16 32767, i16 %i.mi ; 2 uses
  store i16 %storemerge, ptr %i.lx, align 8, !tbaa !163
  %i.mj = call fastcc ptr @pcf_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.11) ; 2 uses
  %.not183 = icmp eq ptr %i.mj, null
  br i1 %.not183, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !40 ; 2 uses
  %i.mm = add i64 %i.ml, -327666
  %i.mn = icmp ult i64 %i.mm, -655331
  br i1 %i.mn, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.mo = trunc i64 %i.ml to i32
  %.lhs.trunc = add i32 %i.mo, 5
  %i.mp = sdiv i32 %.lhs.trunc, 10
  %i.mq = trunc i32 %i.mp to i16
  %i.mr = call i16 @llvm.abs.i16(i16 %i.mq, i1 true)
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cv
  %i.ms = sext i16 %storemerge to i32
  %i.mt = shl nsw i32 %i.ms, 1
  %i.mu = or disjoint i32 %i.mt, 1
  %i.mv = sdiv i32 %i.mu, 3
  %i.mw = trunc nsw i32 %i.mv to i16
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cw, %bb.cx, %bb.cy
  %.sink = phi i16 [ %i.mw, %bb.cy ], [ %i.mr, %bb.cx ], [ 32767, %bb.cw ]
  %i.mx = getelementptr inbounds nuw i8, ptr %i.lx, i64 2
  store i16 %.sink, ptr %i.mx, align 2, !tbaa !164
  %i.my = call fastcc ptr @pcf_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.12) ; 2 uses
  %.not184 = icmp eq ptr %i.my, null
  br i1 %.not184, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !40
  %i.nb = call i64 @llvm.abs.i64(i64 %i.na, i1 true) ; 2 uses
  %i.nc = icmp samesign ugt i64 %i.nb, 328898
  br i1 %i.nc, label %.sink.split, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.nd = call i64 @FT_MulDiv(i64 noundef %i.nb, i64 noundef 460800, i64 noundef 72270) #13
  br label %.sink.split

.sink.split:                                      ; preds = %bb.da, %bb.db
  %.sink396 = phi i64 [ %i.nd, %bb.db ], [ 32767, %bb.da ]
  %i.ne = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store i64 %.sink396, ptr %i.ne, align 8, !tbaa !165
  br label %bb.dc

bb.dc:                                            ; preds = %.sink.split, %bb.cz
  %i.nf = call fastcc ptr @pcf_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.13) ; 2 uses
  %.not185 = icmp eq ptr %i.nf, null
  br i1 %.not185, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !40 ; 2 uses
  %i.ni = add i64 %i.nh, -32768
  %i.nj = icmp ult i64 %i.ni, -65535
  br i1 %i.nj, label %.sink.split398, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.nk = trunc nsw i64 %i.nh to i16
  %i.nl = call i16 @llvm.abs.i16(i16 %i.nk, i1 true)
  %i.nm = zext nneg i16 %i.nl to i64
  %i.nn = shl nuw nsw i64 %i.nm, 6
  br label %.sink.split398

.sink.split398:                                   ; preds = %bb.dd, %bb.de
  %.sink399 = phi i64 [ %i.nn, %bb.de ], [ 2097088, %bb.dd ]
  %i.no = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  store i64 %.sink399, ptr %i.no, align 8, !tbaa !116
  br label %bb.df

bb.df:                                            ; preds = %.sink.split398, %bb.dc
  %i.np = call fastcc ptr @pcf_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.14) ; 2 uses
  %.not186 = icmp eq ptr %i.np, null
  br i1 %.not186, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !40 ; 2 uses
  %i.ns = add i64 %i.nr, -32768
  %i.nt = icmp ult i64 %i.ns, -65535
  br i1 %i.nt, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.nu = trunc nsw i64 %i.nr to i16
  %i.nv = call i16 @llvm.abs.i16(i16 %i.nu, i1 true)
  br label %bb.di

bb.di:                                            ; preds = %bb.dg, %bb.dh, %bb.df
  %.0137 = phi i16 [ 0, %bb.df ], [ %i.nv, %bb.dh ], [ 32767, %bb.dg ] ; 2 uses
  %i.nw = call fastcc ptr @pcf_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.15) ; 2 uses
  %.not187 = icmp eq ptr %i.nw, null
  br i1 %.not187, label %.thread369, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !40 ; 3 uses
  %i.nz = add i64 %i.ny, -32768
  %i.oa = icmp ult i64 %i.nz, -65535
  br i1 %i.oa, label %.thread, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ob = trunc nsw i64 %i.ny to i16
  %i.oc = call i16 @llvm.abs.i16(i16 %i.ob, i1 true) ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.lx, i64 24 ; 3 uses
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !116 ; 2 uses
  %i.of = icmp eq i64 %i.oe, 0
  br i1 %i.of, label %bb.dl, label %bb.dn

.thread369:                                       ; preds = %bb.di
  %i.og = getelementptr inbounds nuw i8, ptr %i.lx, i64 24 ; 2 uses
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !116 ; 2 uses
  %i.oi = icmp eq i64 %i.oh, 0
  br i1 %i.oi, label %.thread372, label %.thread263

.thread372:                                       ; preds = %.thread369
  %i.oj = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !165 ; 2 uses
  store i64 %i.ok, ptr %i.og, align 8, !tbaa !116
end_hunk_1
