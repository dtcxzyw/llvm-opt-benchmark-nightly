inline.NumInlined: 462
inline.NumDeleted: 124
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN8NArchive3N7z18CArchiveDatabaseEx25FillFolderStartPackStreamEv:bb.a
  store i32 %.056, ptr %i.l, align 4, !tbaa !4
  %i.m = load i32, ptr %i.g, align 4, !tbaa !8
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.g, align 4, !tbaa !8
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 76
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8
  %i.t = add i32 %i.s, %.056
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load i32, ptr %i.b, align 4, !tbaa !8
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.b, label %._crit_edge, !llvm.loop !191
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z18CArchiveDatabaseEx12FillStartPosEv(ptr noundef nonnull align 8 dereferenceable(696) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.c)
  %i.d = load i32, ptr %i.b, align 4, !tbaa !8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.056 = phi i64 [ 0, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.j = load i32, ptr %i.g, align 4, !tbaa !8    ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.k
  store i64 %.056, ptr %i.l, align 8, !tbaa !60
  %i.m = add nsw i32 %i.j, 1
  store i32 %i.m, ptr %i.g, align 4, !tbaa !8
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load i64, ptr %i.o, align 8, !tbaa !60
  %i.q = add i64 %i.p, %.056
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load i32, ptr %i.b, align 4, !tbaa !8
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.b, label %._crit_edge, !llvm.loop !192
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z18CArchiveDatabaseEx24FillFolderStartFileIndexEv(ptr noundef nonnull align 8 dereferenceable(696) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 4 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef %i.f)
  %i.g = load i32, ptr %i.e, align 4, !tbaa !8
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph34, label %._crit_edge35

.lr.ph34:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 660 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br label %bb.b

._crit_edge35:                                    ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph34, %bb.g
  %indvars.iv39 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next40, %bb.g ] ; 3 uses
  %.032 = phi i32 [ 0, %.lr.ph34 ], [ %.4, %bb.g ] ; 4 uses
  %.01831 = phi i32 [ 0, %.lr.ph34 ], [ %.220, %bb.g ] ; 3 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv39
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i8, ptr %i.r, align 8, !tbaa !184, !range !23, !noundef !24
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  %i.u = icmp ne i32 %.01831, 0                   ; 2 uses
  %or.cond.not = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.w = load i32, ptr %i.k, align 4, !tbaa !8
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  %i.z = load i32, ptr %i.k, align 4, !tbaa !8
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.k, align 4, !tbaa !8
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  br i1 %i.u, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !8
  %.not27 = icmp slt i32 %.032, %i.ab
  br i1 %.not27, label %.lr.ph.preheader, label %.preheader._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ac = sext i32 %.032 to i64
  %i.ad = trunc nuw nsw i64 %indvars.iv39 to i32
  br label %.lr.ph

.preheader._crit_edge:                            ; preds = %.preheader, %bb.e
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ %i.ac, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.af = load i32, ptr %i.m, align 4, !tbaa !8
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ag
  store i32 %i.ad, ptr %i.ah, align 4, !tbaa !4
  %i.ai = load i32, ptr %i.m, align 4, !tbaa !8
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.m, align 4, !tbaa !8
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %.not23 = icmp eq i32 %i.am, 0
  br i1 %.not23, label %bb.e, label %.loopexit.loopexit

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.an = load i32, ptr %i.b, align 4, !tbaa !8
  %i.ao = sext i32 %i.an to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %.not, label %.lr.ph, label %.preheader._crit_edge, !llvm.loop !193

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.ap = trunc nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d
  %.2 = phi i32 [ %.032, %bb.d ], [ %i.ap, %.loopexit.loopexit ] ; 4 uses
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.ar = load i32, ptr %i.k, align 4, !tbaa !8
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.as
  store i32 %.2, ptr %i.at, align 4, !tbaa !4
  %i.au = load i32, ptr %i.k, align 4, !tbaa !8
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.k, align 4, !tbaa !8
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.aw = add i32 %.01831, 1                      ; 2 uses
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.ay = sext i32 %.2 to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %.not24 = icmp uge i32 %i.aw, %i.ba             ; 2 uses
  %spec.select = select i1 %.not24, i32 0, i32 %i.aw
  %i.bb = zext i1 %.not24 to i32
  %spec.select25 = add nsw i32 %.2, %i.bb
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.f, %bb.c
  %.220 = phi i32 [ 0, %bb.c ], [ %spec.select, %bb.f ], [ %.01831, %.loopexit ]
  %.4 = phi i32 [ %.032, %bb.c ], [ %spec.select25, %bb.f ], [ %.2, %.loopexit ]
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.bc = load i32, ptr %i.e, align 4, !tbaa !8
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next40, %i.bd
  br i1 %i.be, label %bb.b, label %._crit_edge35, !llvm.loop !194
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z10CInArchive13ReadDatabase2ERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(696) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca [500 x i8], align 16              ; 5 uses
  %4 = alloca %"class.NArchive::N7z::CStreamSwitch", align 8 ; 8 uses
  %5 = alloca %class.CObjectVector.6, align 8     ; 13 uses
  tail call void @_ZN8NArchive3N7z16CArchiveDatabase5ClearEv(ptr noundef nonnull align 8 dereferenceable(696) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 520
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 552
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 584
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 616
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 648
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 488
  store i64 %i.k, ptr %i.m, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.o = load i8, ptr %i.n, align 2, !tbaa !58    ; 2 uses
  store i8 %i.o, ptr %i.l, align 8, !tbaa !179
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.q = load i8, ptr %i.p, align 1, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 481
  store i8 %i.q, ptr %i.r, align 1, !tbaa !180
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !4    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.v = load i64, ptr %i.u, align 4, !tbaa !60   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.x = load i64, ptr %i.w, align 4, !tbaa !60   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4    ; 2 uses
  %i.aa = tail call i32 @CrcCalc(ptr noundef nonnull %i.u, i64 noundef 20)
  %i.ab = icmp eq i32 %i.t, 0
  %i.ac = icmp eq i64 %i.v, 0
  %or.cond = select i1 %i.ab, i1 %i.ac, i1 false
  %i.ad = icmp eq i64 %i.x, 0
  %or.cond12 = select i1 %or.cond, i1 %i.ad, i1 false
  %i.ae = icmp eq i32 %i.z, 0
  %or.cond14 = select i1 %or.cond12, i1 %i.ae, i1 false
  br i1 %or.cond14, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.af = load ptr, ptr %0, align 8, !tbaa !86    ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef i32 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %i.a) ; 2 uses
  %.not143 = icmp eq i32 %i.aj, 0
  br i1 %.not143, label %bb.e, label %.thread185

.thread185:                                       ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ao

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.ak = load ptr, ptr %0, align 8, !tbaa !86    ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i64 noundef 0, i32 noundef 2, ptr noundef nonnull %i.b) ; 2 uses
  %.not144 = icmp eq i32 %i.ao, 0
  br i1 %.not144, label %bb.f, label %.thread192

bb.f:                                             ; preds = %bb.e
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !60
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !60
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  %spec.select213 = call i64 @llvm.umin.i64(i64 %i.ar, i64 500) ; 4 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !86    ; 2 uses
  %i.at = sub nsw i64 0, %spec.select213
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i64 noundef %i.at, i32 noundef 2, ptr noundef nonnull %i.b) ; 2 uses
  %.not145 = icmp eq i32 %i.ax, 0
  br i1 %.not145, label %bb.g, label %.thread192

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %0, align 8, !tbaa !86
  %i.az = call noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %i.ay, ptr noundef nonnull %i.c, i64 noundef %spec.select213) ; 2 uses
  %.not146 = icmp eq i32 %i.az, 0
  br i1 %.not146, label %bb.h, label %.thread192

bb.h:                                             ; preds = %bb.g
  %i.ba = icmp ugt i64 %i.ar, 1
  br i1 %i.ba, label %.lr.ph.preheader, label %.thread192

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.bb = add nuw nsw i64 %spec.select213, 4294967294
  %i.bc = and i64 %i.bb, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread
  %indvars.iv = phi i64 [ %i.bc, %.lr.ph.preheader ], [ %indvars.iv.next, %.thread ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv ; 4 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !58
  %i.bf = trunc nuw i64 %indvars.iv to i32
  switch i8 %i.be, label %.thread [
    i8 23, label %bb.i
    i8 1, label %bb.j
  ]

bb.i:                                             ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !58
  %i.bi = icmp eq i8 %i.bh, 6
  br i1 %i.bi, label %bb.k, label %.thread

bb.j:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !58
  %i.bl = icmp eq i8 %i.bk, 4
  br i1 %i.bl, label %bb.k, label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.i, %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bm = icmp sgt i32 %i.bf, 0
  br i1 %i.bm, label %.lr.ph, label %.thread192, !llvm.loop !196

.thread192:                                       ; preds = %.thread, %bb.h, %bb.e, %bb.f, %bb.g
  %.7.ph = phi i32 [ %i.ao, %bb.e ], [ %i.az, %bb.g ], [ %i.ax, %bb.f ], [ 1, %bb.h ], [ 1, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ao

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bn = sub i64 %spec.select213, %indvars.iv
  %sext = shl i64 %i.bn, 32
  %i.bo = ashr exact i64 %sext, 32                ; 2 uses
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !60
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !60
  %i.br = add i64 %i.bp, %indvars.iv
  %i.bs = sub i64 %i.br, %i.bq
  %i.bt = call i32 @CrcCalc(ptr noundef nonnull %i.bd, i64 noundef %i.bo)
  %i.bu = load ptr, ptr %0, align 8, !tbaa !86    ; 2 uses
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !60
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef i32 %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i64 noundef %i.bv, i32 noundef 0, ptr noundef null) ; 2 uses
  %.not147 = icmp eq i32 %i.bz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br i1 %.not147, label %bb.n, label %bb.ao

bb.l:                                             ; preds = %bb.c
  %.not142 = icmp eq i32 %i.aa, %i.t
  br i1 %.not142, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %.4107 = phi i32 [ %i.bt, %bb.k ], [ %i.z, %bb.l ]
  %.4102 = phi i64 [ %i.bo, %bb.k ], [ %i.x, %bb.l ] ; 7 uses
  %.497 = phi i64 [ %i.bs, %bb.k ], [ %i.v, %bb.l ] ; 3 uses
  %i.ca = load i64, ptr %i.j, align 8, !tbaa !79
  %i.cb = add i64 %i.ca, 32
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !156
  %i.cd = icmp eq i64 %.4102, 0
  br i1 %i.cd, label %bb.ao, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = icmp ugt i64 %.4102, 4294967295
  %i.cf = icmp slt i64 %.497, 0
  %or.cond159 = select i1 %i.ce, i1 true, i1 %i.cf
  br i1 %or.cond159, label %bb.ao, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = load ptr, ptr %0, align 8, !tbaa !86    ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call noundef i32 %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, i64 noundef %.497, i32 noundef 1, ptr noundef null) ; 2 uses
  %.not148 = icmp eq i32 %i.ck, 0
  br i1 %.not148, label %_ZN7CBufferIhE11SetCapacityEm.exit, label %bb.ao

_ZN7CBufferIhE11SetCapacityEm.exit:               ; preds = %bb.p
  %i.cl = call noalias noundef nonnull ptr @_Znam(i64 noundef %.4102) #18 ; 5 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !86
  %i.cn = invoke noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %i.cm, ptr noundef nonnull %i.cl, i64 noundef %.4102)
          to label %bb.q unwind label %bb.r       ; 2 uses

bb.q:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  %.not149 = icmp eq i32 %i.cn, 0
  br i1 %.not149, label %bb.s, label %_ZN7CBufferIhED2Ev.exit

bb.r:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.thread203

bb.s:                                             ; preds = %bb.q
  %i.cp = add nuw nsw i64 %.4102, 32              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !85
  %i.cs = add i64 %i.cp, %i.cr
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !85
  %i.ct = add nuw i64 %i.cp, %.497
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 688
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !197
  %i.cv = invoke i32 @CrcCalc(ptr noundef nonnull %i.cl, i64 noundef %.4102)
          to label %bb.t unwind label %.thread210

bb.t:                                             ; preds = %bb.s
  %.not150 = icmp eq i32 %i.cv, %.4107
  br i1 %.not150, label %_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
          to label %.noexc160 unwind label %.thread210

.noexc160:                                        ; preds = %bb.u
  unreachable

_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm.exit.i: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i8 0, ptr %i.cw, align 8, !tbaa !41
  store ptr %0, ptr %4, align 8, !tbaa !44
  %i.cx = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc163 unwind label %bb.x  ; 2 uses

.noexc163:                                        ; preds = %_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.cx, i8 0, i64 24, i1 false)
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cy)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %.noexc163
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !15
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !8  ; 2 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.dd
  store ptr %i.cx, ptr %i.de, align 8, !tbaa !28
  %i.df = add nsw i32 %i.dc, 1                    ; 2 uses
  store i32 %i.df, ptr %i.db, align 4, !tbaa !8
  %i.dg = load ptr, ptr %i.cz, align 8, !tbaa !15
  %i.dh = sext i32 %i.df to i64
  %i.di = getelementptr [8 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 -8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !28 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !45
  store ptr %i.cl, ptr %i.dk, align 8, !tbaa !52
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %.4102, ptr %i.dm, align 8, !tbaa !54
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i64 0, ptr %i.dn, align 8, !tbaa !55
  store i8 1, ptr %i.cw, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.dp, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI7CBufferIhEE, i64 16), ptr %5, align 8, !tbaa !13
  %i.dq = invoke noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dk)
          to label %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit unwind label %bb.y

_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit:       ; preds = %bb.v
  switch i64 %i.dq, label %bb.w [
    i64 1, label %.thread199
    i64 23, label %bb.z
  ]

bb.w:                                             ; preds = %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit
  invoke fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
          to label %.noexc166 unwind label %bb.y

.noexc166:                                        ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %.noexc163, %_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm.exit.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.y:                                             ; preds = %bb.w, %bb.v, %.thread199
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.z:                                             ; preds = %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit
  %i.dt = load i64, ptr %i.cc, align 8, !tbaa !156
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.dv = invoke noundef i32 @_ZN8NArchive3N7z10CInArchive26ReadAndDecodePackedStreamsEyRyR13CObjectVectorI7CBufferIhEEP22ICryptoGetTextPasswordRb(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.dt, ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.aa unwind label %bb.ab     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %.not153 = icmp eq i32 %i.dv, 0
  br i1 %.not153, label %bb.ac, label %bb.ah

bb.ab:                                            ; preds = %.invoke, %bb.ag, %bb.ae, %_ZN8NArchive3N7z13CStreamSwitch6RemoveEv.exit, %bb.z
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ac:                                            ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !8  ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ea = icmp sgt i32 %i.dy, 1
  br i1 %i.ea, label %.invoke, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cy)
          to label %.noexc170 unwind label %bb.ab

.noexc170:                                        ; preds = %bb.ae
  %i.eb = load i32, ptr %i.db, align 4, !tbaa !8  ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %_ZN8NArchive3N7z13CStreamSwitch6RemoveEv.exit, label %bb.af

bb.af:                                            ; preds = %.noexc170
  %i.ed = load ptr, ptr %i.cz, align 8, !tbaa !15
  %i.ee = sext i32 %i.eb to i64
  %i.ef = getelementptr [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = getelementptr i8, ptr %i.ef, i64 -8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !28
  store ptr %i.eh, ptr %i.dl, align 8, !tbaa !45
  br label %_ZN8NArchive3N7z13CStreamSwitch6RemoveEv.exit

_ZN8NArchive3N7z13CStreamSwitch6RemoveEv.exit:    ; preds = %.noexc170, %bb.af
  store i8 0, ptr %i.cw, align 8, !tbaa !41
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !15
end_hunk_0
