inline.NumInlined: 17
inline.NumDeleted: 6
begin_hunk_0_@XzBlock_WriteHeader:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17
  %i.o = call i32 @Xz_WriteVarInt(ptr noundef nonnull %i.l, i64 noundef %i.n) #4
  %i.p = add i32 %i.o, %.0
  %.pre = load i8, ptr %i.b, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = phi i8 [ %.pre, %bb.d ], [ %i.j, %bb.c ]
  %.1 = phi i32 [ %i.p, %bb.d ], [ %.0, %bb.c ]
  %i.r = and i8 %i.q, 3
  %narrow = add nuw nsw i8 %i.r, 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.trip.count = zext nneg i8 %narrow to i64
  br label %bb.f

.preheader:                                       ; preds = %bb.f
  %i.t = and i32 %i.am, 3
  %.not3538 = icmp eq i32 %i.t, 0
  br i1 %.not3538, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.e, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.237 = phi i32 [ %.1, %bb.e ], [ %i.am, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv ; 3 uses
  %i.v = zext i32 %.237 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.v
  %i.x = load i64, ptr %i.u, align 8, !tbaa !18
  %i.y = call i32 @Xz_WriteVarInt(ptr noundef nonnull %i.w, i64 noundef %i.x) #4
  %i.z = add i32 %i.y, %.237                      ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !20
  %i.ae = zext i32 %i.ad to i64
  %i.af = call i32 @Xz_WriteVarInt(ptr noundef nonnull %i.ab, i64 noundef %i.ae) #4
  %i.ag = add i32 %i.af, %i.z                     ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ak = load i32, ptr %i.ac, align 8, !tbaa !20 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull align 4 %i.aj, i64 %i.al, i1 false)
  %i.am = add i32 %i.ag, %i.ak                    ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.f, !llvm.loop !21

.lr.ph:                                           ; preds = %.preheader
  %i.an = add i32 %i.am, 1                        ; 3 uses
  %i.ao = zext i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ao
  store i8 0, ptr %i.ap, align 1, !tbaa !8
  %i.aq = and i32 %i.an, 3
  %.not35 = icmp eq i32 %i.aq, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ar = add i32 %i.am, 2                        ; 3 uses
  %i.as = zext i32 %i.an to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.as
  store i8 0, ptr %i.at, align 1, !tbaa !8
  %i.au = and i32 %i.ar, 3
  %.not35.1 = icmp eq i32 %i.au, 0
  br i1 %.not35.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.av = add i32 %i.am, 3                        ; 3 uses
  %i.aw = zext i32 %i.ar to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aw
  store i8 0, ptr %i.ax, align 1, !tbaa !8
  %i.ay = and i32 %i.av, 3
  %.not35.2 = icmp eq i32 %i.ay, 0
  br i1 %.not35.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.az = add i32 %i.am, 4
  %i.ba = zext i32 %i.av to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ba
  store i8 0, ptr %i.bb, align 1, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.preheader
  %.3.lcssa = phi i32 [ %i.am, %.preheader ], [ %i.an, %.lr.ph ], [ %i.ar, %.lr.ph.1 ], [ %i.av, %.lr.ph.2 ], [ %i.az, %.lr.ph.3 ] ; 3 uses
  %i.bc = lshr exact i32 %.3.lcssa, 2
  %i.bd = trunc i32 %i.bc to i8
  store i8 %i.bd, ptr %i.a, align 16, !tbaa !8
  %i.be = zext i32 %.3.lcssa to i64               ; 2 uses
  %i.bf = call i32 @CrcCalc(ptr noundef nonnull %i.a, i64 noundef %i.be) #4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  store i32 %i.bf, ptr %i.bg, align 1, !tbaa !4
  %i.bh = add i32 %.3.lcssa, 4
  %i.bi = load ptr, ptr %1, align 8, !tbaa !9
  %i.bj = zext i32 %i.bh to i64                   ; 2 uses
  %i.bk = call i64 %i.bi(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %i.bj) #4, !inline_history !12
  %i.bl = icmp eq i64 %i.bk, %i.bj
  %i.bm = select i1 %i.bl, i32 0, i32 9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %i.bm
}

declare i32 @Xz_WriteVarInt(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 10) i32 @Xz_WriteFooter(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23
  %i.e = call i32 @Xz_WriteVarInt(ptr noundef nonnull %i.b, i64 noundef %i.d) #4
  %i.f = add i32 %i.e, 1
  %i.g = zext i32 %i.f to i64                     ; 5 uses
  store i8 0, ptr %i.a, align 16, !tbaa !8
  %i.h = call i32 @CrcUpdate(i32 noundef -1, ptr noundef nonnull %i.a, i64 noundef %i.g) #4 ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !9
  %i.j = call i64 %i.i(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %i.g) #4, !inline_history !27
  %i.k = icmp eq i64 %i.j, %i.g
  br i1 %i.k, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.a
  %i.l = load i64, ptr %i.c, align 8, !tbaa !23
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.04978 = phi i64 [ %i.g, %.lr.ph ], [ %i.ac, %bb.c ]
  %.05277 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.c ] ; 2 uses
  %.076 = phi i32 [ %i.h, %.lr.ph ], [ %i.y, %bb.c ]
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.05277 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !29
  %i.r = call i32 @Xz_WriteVarInt(ptr noundef nonnull %i.a, i64 noundef %i.q) #4 ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.s
  %i.u = load i64, ptr %i.o, align 8, !tbaa !31
  %i.v = call i32 @Xz_WriteVarInt(ptr noundef nonnull %i.t, i64 noundef %i.u) #4
  %i.w = add i32 %i.v, %i.r
  %i.x = zext i32 %i.w to i64                     ; 4 uses
  %i.y = call i32 @CrcUpdate(i32 noundef %.076, ptr noundef nonnull %i.a, i64 noundef %i.x) #4 ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !9
  %i.aa = call i64 %i.z(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %i.x) #4, !inline_history !27
  %i.ab = icmp eq i64 %i.aa, %i.x
  br i1 %i.ab, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ac = add i64 %.04978, %i.x                   ; 2 uses
  %i.ad = add nuw i64 %.05277, 1                  ; 2 uses
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !23
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.b, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %.0.lcssa = phi i32 [ %i.h, %.preheader ], [ %i.y, %bb.c ] ; 2 uses
  %.049.lcssa = phi i64 [ %i.g, %.preheader ], [ %i.ac, %bb.c ] ; 3 uses
  %i.ag = trunc i64 %.049.lcssa to i32
  %i.ah = and i32 %i.ag, 3                        ; 2 uses
  %.not61 = icmp eq i32 %i.ah, 0
  br i1 %.not61, label %bb.f, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.ai, align 2, !tbaa !8
  store i8 0, ptr %i.b, align 1, !tbaa !8
  store i8 0, ptr %i.a, align 16, !tbaa !8
  %i.aj = sub nuw nsw i32 4, %i.ah
  %i.ak = zext nneg i32 %i.aj to i64              ; 4 uses
  %i.al = call i32 @CrcUpdate(i32 noundef %.0.lcssa, ptr noundef nonnull %i.a, i64 noundef %i.ak) #4
  %i.am = load ptr, ptr %1, align 8, !tbaa !9
  %i.an = call i64 %i.am(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %i.ak) #4, !inline_history !27
  %i.ao = icmp eq i64 %i.an, %i.ak
  br i1 %i.ao, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ap = add i64 %.049.lcssa, %i.ak
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %.170 = phi i32 [ %.0.lcssa, %._crit_edge ], [ %i.al, %bb.e ]
  %.150 = phi i64 [ %.049.lcssa, %._crit_edge ], [ %i.ap, %bb.e ]
  %i.aq = xor i32 %.170, -1
  store i32 %i.aq, ptr %i.a, align 16, !tbaa !4
  %i.ar = load ptr, ptr %1, align 8, !tbaa !9
  %i.as = call i64 %i.ar(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 4) #4, !inline_history !12
  %i.at = icmp eq i64 %i.as, 4
  br i1 %i.at, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.au = add i64 %.150, 4
  %i.av = lshr i64 %i.au, 2
  %i.aw = trunc i64 %i.av to i32
  %i.ax = add i32 %i.aw, -1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !4
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 1
  %2 = load i8, ptr %.shift, align 1, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %2, ptr %i.az, align 8, !tbaa !8
  %3 = load i16, ptr %0, align 8, !tbaa !33
  %i.ba = trunc i16 %3 to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !8
  %i.bc = call i32 @CrcCalc(ptr noundef nonnull %i.ay, i64 noundef 6) #4
  store i32 %i.bc, ptr %i.a, align 16, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.be = load i16, ptr @XZ_FOOTER_SIG, align 1
  store i16 %i.be, ptr %i.bd, align 2
  %i.bf = load ptr, ptr %1, align 8, !tbaa !9
  %i.bg = call i64 %i.bf(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 12) #4, !inline_history !12
  %i.bh = icmp eq i64 %i.bg, 12
  %i.bi = select i1 %i.bh, i32 0, i32 9
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.d, %bb.a, %bb.f, %bb.g
  %.7 = phi i32 [ %i.bi, %bb.g ], [ 9, %bb.f ], [ 9, %bb.d ], [ 9, %bb.a ], [ 9, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 3) i32 @Xz_AddIndexRecord(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.i = phi i64 [ %.pre, %._crit_edge ], [ %i.e, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = shl i64 %i.i, 1
  %i.l = add i64 %i.k, 2                          ; 3 uses
  %.not = icmp ult i64 %i.l, 1152921504606846976
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.m = shl nuw i64 %i.l, 4
  %i.n = load ptr, ptr %3, align 8, !tbaa !35
  %i.o = tail call ptr %i.n(ptr noundef nonnull %3, i64 noundef %i.m) #4 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  %.not31 = icmp eq i64 %i.q, 0
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.s = shl i64 %i.q, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.r, i64 %i.s, i1 false)
  tail call void @Xz_Free(ptr noundef nonnull %0, ptr noundef nonnull %3) #4
  %.pre34.pre = load i64, ptr %i.j, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.pre34 = phi i64 [ 0, %bb.e ], [ %.pre34.pre, %bb.f ]
  store ptr %i.o, ptr %i.a, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.t, align 8, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %i.u = phi i64 [ %.pre34, %bb.g ], [ %i.g, %bb.b ] ; 2 uses
  %i.v = phi ptr [ %i.o, %bb.g ], [ %i.b, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = add i64 %i.u, 1
  store i64 %i.x, ptr %i.w, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.u ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %2, ptr %i.z, align 8, !tbaa !29
  store i64 %1, ptr %i.y, align 8, !tbaa !31
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %bb.h
  %.1 = phi i32 [ 0, %bb.h ], [ 2, %bb.c ], [ 2, %bb.d ]
  ret i32 %.1
}

declare void @Xz_Free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @SeqCheckInStream_Init(ptr noundef initializes((16, 24)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @XzCheck_Init(ptr noundef nonnull %i.b, i32 noundef %1) #4
  ret void
}

declare void @XzCheck_Init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @SeqCheckInStream_GetDigest(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call i32 @XzCheck_Final(ptr noundef nonnull %i.a, ptr noundef %1) #4 ; 0 uses
  ret void
}

declare i32 @XzCheck_Final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Xz_Encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 7 uses
  %5 = alloca %struct.CSeqCheckInStream, align 8  ; 9 uses
  %6 = alloca %struct.CSeqSizeOutStream, align 8  ; 11 uses
  %7 = alloca %struct.CXzBlock, align 8           ; 9 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %8 = alloca %struct.CXzStream, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  call void @Xz_Construct(ptr noundef nonnull %8) #4
  %i.c = call ptr @Lzma2Enc_Create(ptr noundef nonnull @g_Alloc, ptr noundef nonnull @g_BigAlloc) #4 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %Lzma2WithFilters_Free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i16 1, ptr %8, align 8, !tbaa !33
  %i.d = call i32 @Lzma2Enc_SetProps(ptr noundef nonnull %i.c, ptr noundef %2) #4 ; 2 uses
  %.not.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.not.i, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.e = load i16, ptr %8, align 8, !tbaa !33     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @XZ_SIG, i64 6, i1 false)
  %i.f = lshr i16 %i.e, 8
  %i.g = trunc nuw i16 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  store i8 %i.g, ptr %i.h, align 1, !tbaa !8
  %i.i = trunc i16 %i.e to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.i, ptr %i.j, align 1, !tbaa !8
  %i.k = call i32 @CrcCalc(ptr noundef nonnull %i.h, i64 noundef 2) #4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.k, ptr %i.l, align 1, !tbaa !4
  %i.m = load ptr, ptr %0, align 8, !tbaa !9
  %i.n = call i64 %i.m(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 12) #4, !inline_history !41
  %.not.i = icmp eq i64 %i.n, 12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br i1 %.not.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.not74.i = icmp ne i32 %3, 0                   ; 2 uses
  %i.p = zext i1 %.not74.i to i8
  store i8 %i.p, ptr %i.o, align 8, !tbaa !13
  br i1 %.not74.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 1, ptr %i.q, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 0, ptr %i.r, align 8, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.068.i = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %.068.i ; 3 uses
  store i64 33, ptr %i.t, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 1, ptr %i.u, align 8, !tbaa !20
  %i.v = call zeroext i8 @Lzma2Enc_WriteProperties(ptr noundef nonnull %i.c) #4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i8 %i.v, ptr %i.w, align 4, !tbaa !8
  store ptr @MyWrite, ptr %6, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %i.x, align 8, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store i64 0, ptr %i.y, align 8, !tbaa !45
  %i.z = call i32 @XzBlock_WriteHeader(ptr noundef nonnull %7, ptr noundef nonnull %6) ; 2 uses
  %.not75.i = icmp eq i32 %i.z, 0
  br i1 %.not75.i, label %bb.g, label %.critedge.thread.i

bb.g:                                             ; preds = %bb.f
  store ptr @SeqCheckInStream_Read, ptr %5, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.aa, align 8, !tbaa !47
  %i.ab = load i16, ptr %8, align 8, !tbaa !33
  %i.ac = and i16 %i.ab, 15
  %i.ad = zext nneg i16 %i.ac to i32
end_hunk_0
