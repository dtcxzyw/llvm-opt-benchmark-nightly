inline.NumInlined: 75
inline.NumDeleted: 38
begin_hunk_0_@_bt_truncate:bb.a
  br i1 %exitcond.not.i, label %_bt_keep_natts.exit, label %.lr.ph.i, !llvm.loop !14

_bt_keep_natts.exit:                              ; preds = %bb.e, %bb.a, %bb.b, %.thread.i
  %.0.i = phi i32 [ %i.i, %bb.a ], [ %.0227.i, %.thread.i ], [ 1, %bb.b ], [ %i.m, %bb.e ] ; 3 uses
  %i.z = tail call i32 @llvm.smin.i32(i32 %.0.i, i32 %i.i)
  %i.aa = tail call ptr @index_truncate_tuple(ptr noundef %i.d, ptr noundef %2, i32 noundef %i.z) #13 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 6 ; 5 uses
  %i.ac = load i16, ptr %i.ab, align 2            ; 4 uses
  %i.ad = and i16 %i.ac, 8192
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %BTreeTupleIsPosting.exit.thread, label %BTreeTupleIsPosting.exit

BTreeTupleIsPosting.exit:                         ; preds = %_bt_keep_natts.exit
  %i.af = getelementptr i8, ptr %i.aa, i64 4
  %.val.i = load i16, ptr %i.af, align 2
  %i.ag = and i16 %.val.i, 8192
  %.not49 = icmp eq i16 %i.ag, 0
  br i1 %.not49, label %BTreeTupleIsPosting.exit.thread, label %bb.f

bb.f:                                             ; preds = %BTreeTupleIsPosting.exit
  %i.ah = and i16 %i.ac, -8192                    ; 2 uses
  store i16 %i.ah, ptr %i.ab, align 2
  %i.ai = getelementptr i8, ptr %2, i64 2
  %.val39 = load i16, ptr %i.ai, align 2
  %i.aj = add i16 %.val39, 7
  %i.ak = and i16 %i.aj, -8200
  %i.al = or i16 %i.ak, %i.ah                     ; 2 uses
  store i16 %i.al, ptr %i.ab, align 2
  br label %BTreeTupleIsPosting.exit.thread

BTreeTupleIsPosting.exit.thread:                  ; preds = %_bt_keep_natts.exit, %bb.f, %BTreeTupleIsPosting.exit
  %.val37 = phi i16 [ %i.ac, %_bt_keep_natts.exit ], [ %i.al, %bb.f ], [ %i.ac, %BTreeTupleIsPosting.exit ] ; 2 uses
  %.not = icmp sgt i32 %.0.i, %i.i
  br i1 %.not, label %BTreeTupleIsPivot.exit.i, label %bb.g

bb.g:                                             ; preds = %BTreeTupleIsPosting.exit.thread
  %i.am = trunc i32 %.0.i to i16
  %i.an = or i16 %.val37, 8192
  store i16 %i.an, ptr %i.ab, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i16 %i.am, ptr %i.ao, align 2
  br label %bb.j

BTreeTupleIsPivot.exit.i:                         ; preds = %BTreeTupleIsPosting.exit.thread
  %i.ap = and i16 %.val37, 8191
  %narrow = add nuw nsw i16 %i.ap, 7
  %i.aq = and i16 %narrow, 16376
  %narrow50 = add nuw nsw i16 %i.aq, 8            ; 3 uses
  %i.ar = zext nneg i16 %narrow50 to i64
  %i.as = tail call ptr @palloc0(i64 noundef %i.ar) #13 ; 7 uses
  %.val = load i16, ptr %i.ab, align 2
  %i.at = and i16 %.val, 8191
  %narrow51 = add nuw nsw i16 %i.at, 7
  %i.au = and i16 %narrow51, 16376
  %i.av = zext nneg i16 %i.au to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.as, ptr nonnull align 2 %i.aa, i64 %i.av, i1 false)
  tail call void @pfree(ptr noundef nonnull %i.aa) #13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 6 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = and i16 %i.ax, -16384
  %i.az = or i16 %narrow50, %i.ay
  %i.ba = or i16 %i.az, 8192
  store i16 %i.ba, ptr %i.aw, align 2
  %i.bb = or i16 %i.h, 4096
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i16 %i.bb, ptr %i.bc, align 2
  %i.bd = and i16 %i.h, 8192
  %.not.i.i = icmp eq i16 %i.bd, 0
  br i1 %.not.i.i, label %bb.h, label %BTreeTupleIsPosting.exit.i

bb.h:                                             ; preds = %BTreeTupleIsPivot.exit.i
  %i.be = and i16 %narrow50, 8184
  %i.bf = zext nneg i16 %i.be to i64
  br label %BTreeTupleGetHeapTID.exit

BTreeTupleIsPosting.exit.i:                       ; preds = %BTreeTupleIsPivot.exit.i
  %.val.i11.i = load i16, ptr %i.as, align 2
  %i.bg = getelementptr i8, ptr %i.as, i64 2
  %.val2.i.i = load i16, ptr %i.bg, align 2
  %i.bh = zext i16 %.val.i11.i to i64
  %i.bi = shl nuw nsw i64 %i.bh, 16
  %i.bj = zext i16 %.val2.i.i to i64
  br label %BTreeTupleGetHeapTID.exit

BTreeTupleGetHeapTID.exit:                        ; preds = %bb.h, %BTreeTupleIsPosting.exit.i
  %.sink57 = phi i64 [ %i.bf, %bb.h ], [ %i.bi, %BTreeTupleIsPosting.exit.i ]
  %.sink56 = phi i64 [ -6, %bb.h ], [ %i.bj, %BTreeTupleIsPosting.exit.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink57
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %.sink56
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = and i16 %i.bn, 8192
  %i.bp = icmp eq i16 %i.bo, 0
  br i1 %i.bp, label %BTreeTupleGetMaxHeapTID.exit, label %BTreeTupleIsPosting.exit.i44

BTreeTupleIsPosting.exit.i44:                     ; preds = %BTreeTupleGetHeapTID.exit
  %i.bq = getelementptr i8, ptr %1, i64 4
  %.val.i.i45 = load i16, ptr %i.bq, align 2      ; 2 uses
  %i.br = and i16 %.val.i.i45, 8192
  %.not.i46 = icmp eq i16 %i.br, 0
  br i1 %.not.i46, label %BTreeTupleGetMaxHeapTID.exit, label %bb.i

bb.i:                                             ; preds = %BTreeTupleIsPosting.exit.i44
  %i.bs = and i16 %.val.i.i45, 4095
  %i.bt = zext nneg i16 %i.bs to i64
  %.val.i.i.i = load i16, ptr %1, align 2
  %i.bu = getelementptr i8, ptr %1, i64 2
  %.val2.i.i.i = load i16, ptr %i.bu, align 2
  %i.bv = zext i16 %.val.i.i.i to i64
  %i.bw = shl nuw nsw i64 %i.bv, 16
  %i.bx = zext i16 %.val2.i.i.i to i64
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  %i.ca = getelementptr [6 x i8], ptr %i.bz, i64 %i.bt
  %i.cb = getelementptr i8, ptr %i.ca, i64 -6
  br label %BTreeTupleGetMaxHeapTID.exit

BTreeTupleGetMaxHeapTID.exit:                     ; preds = %BTreeTupleGetHeapTID.exit, %BTreeTupleIsPosting.exit.i44, %bb.i
  %.0.i47 = phi ptr [ %i.cb, %bb.i ], [ %1, %BTreeTupleIsPosting.exit.i44 ], [ %1, %BTreeTupleGetHeapTID.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.bl, ptr noundef nonnull readonly align 2 dereferenceable(6) %.0.i47, i64 6, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %BTreeTupleGetMaxHeapTID.exit, %bb.g
  %.0 = phi ptr [ %i.aa, %bb.g ], [ %i.as, %BTreeTupleGetMaxHeapTID.exit ]
  ret ptr %.0
}

declare ptr @index_truncate_tuple(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

declare void @pfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @_bt_keep_natts_fast(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.h = load i16, ptr %i.g, align 2              ; 2 uses
  %.not26 = icmp slt i16 %i.h, 1
  br i1 %.not26, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %narrow = add nuw i16 %i.h, 1                   ; 2 uses
  %i.i = zext i16 %narrow to i32
  %wide.trip.count = zext i16 %narrow to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %indvars30 = trunc i64 %indvars.iv to i32       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.j = call fastcc i64 @index_getattr(ptr noundef %1, i32 noundef %indvars30, ptr noundef %i.d, ptr noundef %i.a)
  %i.k = call fastcc i64 @index_getattr(ptr noundef %2, i32 noundef %indvars30, ptr noundef %i.d, ptr noundef %i.b)
  %i.l = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.m = load i8, ptr %i.a, align 1, !range !4, !noundef !7 ; 2 uses
  %i.n = load i8, ptr %i.b, align 1, !range !4, !noundef !7
  %.not21 = icmp eq i8 %i.m, %i.n
  br i1 %.not21, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph
  %i.o = trunc nuw i8 %i.m to i1
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.l, i64 28
  %i.q = load i8, ptr %i.p, align 2, !range !4, !noundef !7
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr i8, ptr %i.l, i64 26
  %i.t = load i16, ptr %i.s, align 2
  %i.u = sext i16 %i.t to i32
  %i.v = tail call zeroext i1 @datum_image_eq(i64 noundef %i.j, i64 noundef %i.k, i1 noundef zeroext %i.r, i32 noundef %i.u) #13
  br i1 %i.v, label %bb.d, label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !15

.loopexit:                                        ; preds = %bb.d, %bb.a, %.thread
  %.025 = phi i32 [ %indvars30, %.thread ], [ 1, %bb.a ], [ %i.i, %bb.d ]
  ret i32 %.025
}

declare zeroext i1 @datum_image_eq(i64 noundef, i64 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @_bt_check_natts(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1, ptr nofree noundef readonly captures(address) %2, i16 noundef zeroext %3) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i16, ptr %i.c, align 4              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.f = load i16, ptr %i.e, align 2              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i16, ptr %i.g, align 8
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = load i16, ptr %i.k, align 4              ; 2 uses
  %i.m = and i16 %i.l, 20
  %.not = icmp eq i16 %i.m, 0
  br i1 %.not, label %bb.b, label %BTreeTupleIsPivot.exit69.thread

bb.b:                                             ; preds = %bb.a
  %i.n = zext i16 %3 to i64
  %i.o = getelementptr i8, ptr %2, i64 20
  %i.p = getelementptr [4 x i8], ptr %i.o, i64 %i.n
  %.val52 = load i32, ptr %i.p, align 4
  %i.q = and i32 %.val52, 32767
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.r ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.u = load i16, ptr %i.t, align 2
  %i.v = and i16 %i.u, 8192
  %i.w = icmp eq i16 %i.v, 0                      ; 3 uses
  br i1 %i.w, label %.thread80, label %BTreeTupleIsPivot.exit

BTreeTupleIsPivot.exit:                           ; preds = %bb.b
  %i.x = getelementptr i8, ptr %i.s, i64 4
  %.val.i = load i16, ptr %i.x, align 2           ; 3 uses
  %i.y = and i16 %.val.i, 8192
  %.not.i = icmp eq i16 %i.y, 0
  br i1 %.not.i, label %.thread, label %.thread90

.thread80:                                        ; preds = %bb.b
  %i.z = sext i16 %i.d to i32
  br label %BTreeTupleIsPosting.exit61.thread

.thread90:                                        ; preds = %BTreeTupleIsPivot.exit
  %i.aa = sext i16 %i.d to i32
  %i.ab = and i16 %.val.i, 4096
  %.not45 = icmp eq i16 %i.ab, 0
  %or.cond100 = and i1 %1, %.not45
  %.not4698 = icmp eq i16 %i.d, %i.f
  %or.cond101 = select i1 %or.cond100, i1 %.not4698, i1 false
  br i1 %or.cond101, label %BTreeTupleIsPosting.exit61.thread, label %BTreeTupleIsPivot.exit69.thread

.thread:                                          ; preds = %BTreeTupleIsPivot.exit
  %i.ac = and i16 %.val.i, 4095
  %i.ad = zext nneg i16 %i.ac to i32
  br label %BTreeTupleIsPosting.exit61.thread

BTreeTupleIsPosting.exit61.thread:                ; preds = %.thread, %.thread90, %.thread80
  %i.ae = phi i32 [ %i.z, %.thread80 ], [ %i.aa, %.thread90 ], [ %i.ad, %.thread ] ; 8 uses
  %i.af = sext i16 %i.d to i32                    ; 2 uses
  %i.ag = sext i16 %i.f to i32                    ; 4 uses
  %i.ah = and i16 %i.l, 1
  %.not47 = icmp eq i16 %i.ah, 0
  %i.ai = zext i16 %3 to i32                      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = select i1 %i.al, i32 1, i32 2           ; 2 uses
  br i1 %.not47, label %bb.g, label %bb.c

bb.c:                                             ; preds = %BTreeTupleIsPosting.exit61.thread
  %.not48 = icmp samesign ugt i32 %i.am, %i.ai
  br i1 %.not48, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.w, label %BTreeTupleIsPivot.exit65.thread, label %BTreeTupleIsPivot.exit65

BTreeTupleIsPivot.exit65.thread:                  ; preds = %bb.d
  %i.an = icmp eq i32 %i.ae, %i.af
  br label %BTreeTupleIsPivot.exit69.thread

BTreeTupleIsPivot.exit65:                         ; preds = %bb.d
  %i.ao = getelementptr i8, ptr %i.s, i64 4
  %.val.i62 = load i16, ptr %i.ao, align 2
  %.val.i62.fr = freeze i16 %.val.i62
  %i.ap = and i16 %.val.i62.fr, 8192
  %.not.i63 = icmp ne i16 %i.ap, 0
  %i.aq = icmp eq i32 %i.ae, %i.af
  %spec.select = select i1 %.not.i63, i1 %i.aq, i1 false
  br label %BTreeTupleIsPivot.exit69.thread

bb.e:                                             ; preds = %bb.c
  br i1 %1, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = icmp eq i32 %i.ae, %i.ag
  br label %BTreeTupleIsPivot.exit69.thread

bb.g:                                             ; preds = %BTreeTupleIsPosting.exit61.thread
  %i.as = icmp eq i32 %i.am, %i.ai
  br i1 %i.as, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.at = icmp eq i32 %i.ae, 0                    ; 2 uses
  %brmerge102 = select i1 %1, i1 true, i1 %i.at
  %not. = xor i1 %1, true
  %.mux = select i1 %not., i1 true, i1 %i.at
  br i1 %brmerge102, label %BTreeTupleIsPivot.exit69.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr i8, ptr %i.s, i64 4
  %.val53 = load i16, ptr %i.au, align 2
  %i.av = icmp eq i16 %.val53, 1
  br label %BTreeTupleIsPivot.exit69.thread

bb.j:                                             ; preds = %bb.g
  br i1 %1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = icmp eq i32 %i.ae, %i.ag
  br label %BTreeTupleIsPivot.exit69.thread

bb.l:                                             ; preds = %bb.j, %bb.e
  br i1 %i.w, label %BTreeTupleIsPivot.exit69.thread, label %BTreeTupleIsPivot.exit69

BTreeTupleIsPivot.exit69:                         ; preds = %bb.l
  %i.ax = getelementptr i8, ptr %i.s, i64 4
  %.val.i66 = load i16, ptr %i.ax, align 2
  %i.ay = and i16 %.val.i66, 8192
  %.not.i67 = icmp eq i16 %i.ay, 0
  br i1 %.not.i67, label %BTreeTupleIsPosting.exit72, label %BTreeTupleIsPivot.exit69.thread

BTreeTupleIsPosting.exit72:                       ; preds = %BTreeTupleIsPivot.exit69
  %4 = tail call fastcc ptr @BTreeTupleGetHeapTID(ptr noundef nonnull %i.s)
  %.not49 = icmp eq ptr %4, null
  %.not50 = icmp eq i32 %i.ae, %i.ag
  %or.cond = select i1 %.not49, i1 true, i1 %.not50
  br i1 %or.cond, label %bb.m, label %BTreeTupleIsPivot.exit69.thread

bb.m:                                             ; preds = %BTreeTupleIsPosting.exit72
  %i.az = icmp sgt i32 %i.ae, 0
  %i.ba = icmp sle i32 %i.ae, %i.ag
  %i.bb = select i1 %i.az, i1 %i.ba, i1 false
  br label %BTreeTupleIsPivot.exit69.thread

BTreeTupleIsPivot.exit69.thread:                  ; preds = %bb.h, %.thread90, %BTreeTupleIsPivot.exit65, %bb.l, %BTreeTupleIsPivot.exit65.thread, %BTreeTupleIsPosting.exit72, %BTreeTupleIsPivot.exit69, %bb.i, %bb.a, %bb.m, %bb.k, %bb.f
  %.0 = phi i1 [ true, %bb.a ], [ %spec.select, %BTreeTupleIsPivot.exit65 ], [ false, %.thread90 ], [ %i.aw, %bb.k ], [ false, %BTreeTupleIsPosting.exit72 ], [ false, %BTreeTupleIsPivot.exit69 ], [ %i.an, %BTreeTupleIsPivot.exit65.thread ], [ %i.bb, %bb.m ], [ %i.av, %bb.i ], [ %i.ar, %bb.f ], [ false, %bb.l ], [ %.mux, %bb.h ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @_bt_check_third_page(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %4, i64 6
  %.val = load i16, ptr %i.a, align 2
  %i.b = and i16 %.val, 8191
  %narrow = add nuw nsw i16 %i.b, 7
  %i.c = and i16 %narrow, 16376                   ; 3 uses
  %i.d = zext nneg i16 %i.c to i64                ; 2 uses
  %i.e = icmp samesign ugt i16 %i.c, 2704
  %i.f = icmp samesign ugt i16 %i.c, 2712
  %or.cond.not = select i1 %2, i1 true, i1 %i.f
  %or.cond = select i1 %i.e, i1 %or.cond.not, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load i16, ptr %i.g, align 8
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = load i16, ptr %i.k, align 4
  %i.m = and i16 %i.l, 1
  %.not = icmp eq i16 %i.m, 0
  %i.n = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.11, i64 noundef %i.d, ptr noundef nonnull %i.q) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1145, ptr noundef nonnull @__func__._bt_check_third_page) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = tail call i32 @errcode(i32 noundef 261) #13 ; 0 uses
  %i.t = select i1 %2, i32 4, i32 3
  %i.u = select i1 %2, i64 2704, i64 2712
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.12, i64 noundef %i.d, i32 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull %i.x) #13 ; 0 uses
  %i.z = tail call fastcc ptr @BTreeTupleGetHeapTID(ptr noundef nonnull %4) ; 3 uses
  %.val21 = load i16, ptr %i.z, align 2
  %i.aa = getelementptr i8, ptr %i.z, i64 2
  %.val22 = load i16, ptr %i.aa, align 2
  %i.ab = zext i16 %.val21 to i32
  %i.ac = shl nuw i32 %i.ab, 16
  %i.ad = zext i16 %.val22 to i32
  %i.ae = or disjoint i32 %i.ac, %i.ad
  %i.af = getelementptr i8, ptr %i.z, i64 4
  %.val20 = load i16, ptr %i.af, align 2
  %i.ag = zext i16 %.val20 to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.13, i32 noundef %i.ae, i32 noundef %i.ag, ptr noundef nonnull %i.aj) #13 ; 0 uses
  %i.al = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.14) #13 ; 0 uses
  %i.am = load ptr, ptr %i.v, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = tail call i32 @errtableconstraint(ptr noundef %1, ptr noundef nonnull %i.an) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1161, ptr noundef nonnull @__func__._bt_check_third_page) #13
  unreachable

bb.e:                                             ; preds = %bb.a
  ret void
}

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #2

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #2

declare i32 @errtableconstraint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @_bt_allequalimage(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i16, ptr %i.c, align 4              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.f = load i16, ptr %i.e, align 2
  %.not = icmp eq i16 %i.d, %i.f
  br i1 %.not, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.h = icmp slt i16 %i.d, 1
  br i1 %i.h, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.m = load i16, ptr %i.l, align 2
  %i.n = sext i16 %i.m to i64
  %.not38 = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %.not38, label %bb.c, label %.thread, !llvm.loop !16

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.o = load ptr, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4
  %i.r = load ptr, ptr %i.i, align 8
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = load ptr, ptr %i.j, align 8
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4
  %i.x = tail call i32 @get_opfamily_proc(i32 noundef %i.q, i32 noundef %i.t, i32 noundef %i.t, i16 noundef signext 4) #13 ; 2 uses
  %.not28 = icmp eq i32 %i.x, 0
  br i1 %.not28, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = zext i32 %i.t to i64
  %i.z = tail call i64 @OidFunctionCall1Coll(i32 noundef %i.x, i32 noundef %i.w, i64 noundef %i.y) #13
  %.not32 = icmp eq i64 %i.z, 0
  br i1 %.not32, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.d, %bb.b, %bb.c, %.preheader
  %.lcssa = phi i1 [ true, %.preheader ], [ false, %bb.c ], [ true, %bb.b ], [ false, %bb.d ] ; 5 uses
  br i1 %1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread
  %i.aa = tail call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #13
  br i1 %i.aa, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e
  %. = select i1 %.lcssa, i32 1211, i32 1214
  %.str.15..str.16 = select i1 %.lcssa, ptr @.str.15, ptr @.str.16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull %.str.15..str.16, ptr noundef nonnull %i.ad) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef %., ptr noundef nonnull @__func__._bt_allequalimage) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.sink.split, %.thread, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %.lcssa, %.sink.split ], [ %.lcssa, %bb.e ], [ %.lcssa, %.thread ]
  ret i1 %.0
}

declare i32 @get_opfamily_proc(i32 noundef, i32 noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

declare i64 @OidFunctionCall1Coll(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @nocache_index_getattr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @add_size(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @mul_size(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @ShmemRequestStructWithOpts(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #10

declare i64 @FunctionCall2Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
end_hunk_0
