inline.NumInlined: 52
inline.NumDeleted: 13
begin_hunk_0_@SetupCPUEmFloatArrays:bb.a
  store i8 0, ptr %4, align 2, !tbaa !11
  br label %Int32ToInternalFPF.exit

.lr.ph.i.i:                                       ; preds = %bb.c, %.thread.i
  %.028.i = phi i32 [ %i.p, %.thread.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.r = lshr i32 %.028.i, 16
  %i.s = trunc nuw nsw i32 %i.r to i16
  %i.t = trunc i32 %.028.i to i16
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.u = phi i16 [ 32, %.lr.ph.i.i ], [ %i.w, %bb.e ]
  %i.v = phi i16 [ %i.t, %.lr.ph.i.i ], [ %spec.select.2.i.i.i, %bb.e ] ; 2 uses
  %spec.select.3.i67.i.i = phi i16 [ %i.s, %.lr.ph.i.i ], [ %spec.select.3.i.i.i, %bb.e ]
  %spec.select.2.i.i.i = shl i16 %i.v, 1          ; 2 uses
  %spec.select.3.i.i.i = tail call i16 @llvm.fshl.i16(i16 %spec.select.3.i67.i.i, i16 %i.v, i16 1) ; 3 uses
  %i.w = add i16 %i.u, -1                         ; 2 uses
  %i.x = icmp sgt i16 %spec.select.3.i.i.i, -1
  br i1 %i.x, label %bb.e, label %._crit_edge.i.i, !llvm.loop !12

._crit_edge.i.i:                                  ; preds = %bb.e
  store i16 0, ptr %i.f, align 2, !tbaa !14
  store i16 0, ptr %i.g, align 2, !tbaa !14
  store i16 %spec.select.2.i.i.i, ptr %i.e, align 2, !tbaa !14
  store i16 %spec.select.3.i.i.i, ptr %i.c, align 2, !tbaa !14
  br label %Int32ToInternalFPF.exit

Int32ToInternalFPF.exit:                          ; preds = %bb.d, %._crit_edge.i.i
  %storemerge = phi i16 [ 0, %bb.d ], [ %i.w, %._crit_edge.i.i ]
  store i16 %storemerge, ptr %i.d, align 2, !tbaa !15
  %i.y = tail call i32 @randwc(i32 noundef 50000) #9 ; 3 uses
  %i.z = icmp slt i32 %i.y, -1
  br i1 %i.z, label %.thread.i12, label %bb.f

.thread.i12:                                      ; preds = %Int32ToInternalFPF.exit
  %i.aa = xor i32 %i.y, -1
  store i8 1, ptr %i.h, align 1, !tbaa !8
  store i8 2, ptr %5, align 2, !tbaa !11
  br label %.lr.ph.i.i6

bb.f:                                             ; preds = %Int32ToInternalFPF.exit
  %i.ab = add nsw i32 %i.y, 1                     ; 2 uses
  store i8 0, ptr %i.h, align 1, !tbaa !8
  store i8 2, ptr %5, align 2, !tbaa !11
  store i64 0, ptr %i.i, align 2
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %.lr.ph.i.i6

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %5, align 2, !tbaa !11
  br label %Int32ToInternalFPF.exit13

.lr.ph.i.i6:                                      ; preds = %bb.f, %.thread.i12
  %.028.i7 = phi i32 [ %i.aa, %.thread.i12 ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ad = lshr i32 %.028.i7, 16
  %i.ae = trunc nuw nsw i32 %i.ad to i16
  %i.af = trunc i32 %.028.i7 to i16
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i6
  %i.ag = phi i16 [ 32, %.lr.ph.i.i6 ], [ %i.ai, %bb.h ]
  %i.ah = phi i16 [ %i.af, %.lr.ph.i.i6 ], [ %spec.select.2.i.i.i9, %bb.h ] ; 2 uses
  %spec.select.3.i67.i.i8 = phi i16 [ %i.ae, %.lr.ph.i.i6 ], [ %spec.select.3.i.i.i10, %bb.h ]
  %spec.select.2.i.i.i9 = shl i16 %i.ah, 1        ; 2 uses
  %spec.select.3.i.i.i10 = tail call i16 @llvm.fshl.i16(i16 %spec.select.3.i67.i.i8, i16 %i.ah, i16 1) ; 3 uses
  %i.ai = add i16 %i.ag, -1                       ; 2 uses
  %i.aj = icmp sgt i16 %spec.select.3.i.i.i10, -1
  br i1 %i.aj, label %bb.h, label %._crit_edge.i.i11, !llvm.loop !12

._crit_edge.i.i11:                                ; preds = %bb.h
  store i16 0, ptr %i.l, align 2, !tbaa !14
  store i16 0, ptr %i.m, align 2, !tbaa !14
  store i16 %spec.select.2.i.i.i9, ptr %i.k, align 2, !tbaa !14
  store i16 %spec.select.3.i.i.i10, ptr %i.i, align 2, !tbaa !14
  br label %Int32ToInternalFPF.exit13

Int32ToInternalFPF.exit13:                        ; preds = %bb.g, %._crit_edge.i.i11
  %storemerge35 = phi i16 [ 0, %bb.g ], [ %i.ai, %._crit_edge.i.i11 ]
  store i16 %storemerge35, ptr %i.j, align 2, !tbaa !15
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.024
  call fastcc void @DivideInternalFPF(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %i.ak)
  %i.al = tail call i32 @randwc(i32 noundef 50000) #9 ; 3 uses
  %i.am = icmp slt i32 %i.al, -1
  br i1 %i.am, label %.thread.i20, label %bb.i

.thread.i20:                                      ; preds = %Int32ToInternalFPF.exit13
  %i.an = xor i32 %i.al, -1
  store i8 1, ptr %i.h, align 1, !tbaa !8
  store i8 2, ptr %5, align 2, !tbaa !11
  br label %.lr.ph.i.i14

bb.i:                                             ; preds = %Int32ToInternalFPF.exit13
  %i.ao = add nsw i32 %i.al, 1                    ; 2 uses
  store i8 0, ptr %i.h, align 1, !tbaa !8
  store i8 2, ptr %5, align 2, !tbaa !11
  store i64 0, ptr %i.i, align 2
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %.lr.ph.i.i14

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %5, align 2, !tbaa !11
  br label %Int32ToInternalFPF.exit21

.lr.ph.i.i14:                                     ; preds = %bb.i, %.thread.i20
  %.028.i15 = phi i32 [ %i.an, %.thread.i20 ], [ %i.ao, %bb.i ] ; 2 uses
  %i.aq = lshr i32 %.028.i15, 16
  %i.ar = trunc nuw nsw i32 %i.aq to i16
  %i.as = trunc i32 %.028.i15 to i16
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i14
  %i.at = phi i16 [ 32, %.lr.ph.i.i14 ], [ %i.av, %bb.k ]
  %i.au = phi i16 [ %i.as, %.lr.ph.i.i14 ], [ %spec.select.2.i.i.i17, %bb.k ] ; 2 uses
  %spec.select.3.i67.i.i16 = phi i16 [ %i.ar, %.lr.ph.i.i14 ], [ %spec.select.3.i.i.i18, %bb.k ]
  %spec.select.2.i.i.i17 = shl i16 %i.au, 1       ; 2 uses
  %spec.select.3.i.i.i18 = tail call i16 @llvm.fshl.i16(i16 %spec.select.3.i67.i.i16, i16 %i.au, i16 1) ; 3 uses
  %i.av = add i16 %i.at, -1                       ; 2 uses
  %i.aw = icmp sgt i16 %spec.select.3.i.i.i18, -1
  br i1 %i.aw, label %bb.k, label %._crit_edge.i.i19, !llvm.loop !12

._crit_edge.i.i19:                                ; preds = %bb.k
  store i16 0, ptr %i.l, align 2, !tbaa !14
  store i16 0, ptr %i.m, align 2, !tbaa !14
  store i16 %spec.select.2.i.i.i17, ptr %i.k, align 2, !tbaa !14
  store i16 %spec.select.3.i.i.i18, ptr %i.i, align 2, !tbaa !14
  br label %Int32ToInternalFPF.exit21

Int32ToInternalFPF.exit21:                        ; preds = %bb.j, %._crit_edge.i.i19
  %storemerge36 = phi i16 [ 0, %bb.j ], [ %i.av, %._crit_edge.i.i19 ]
  store i16 %storemerge36, ptr %i.j, align 2, !tbaa !15
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.024
  call fastcc void @DivideInternalFPF(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %i.ax)
  %i.ay = add nuw i64 %.024, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !16

._crit_edge:                                      ; preds = %Int32ToInternalFPF.exit21, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @randnum(i32 noundef) local_unnamed_addr #2

declare i32 @randwc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @DivideInternalFPF(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 2, !tbaa !11      ; 2 uses
  %i.b = zext i8 %i.a to i32
  %i.c = mul nuw nsw i32 %i.b, 5
  %i.d = load i8, ptr %1, align 2, !tbaa !11
  %i.e = zext i8 %i.d to i32
  %i.f = add nuw nsw i32 %i.c, %i.e
  switch i32 %i.f, label %.loopexit112 [
    i32 0, label %bb.b
    i32 18, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.e
    i32 8, label %bb.e
    i32 13, label %bb.e
    i32 5, label %bb.f
    i32 10, label %bb.f
    i32 15, label %bb.h
    i32 16, label %bb.h
    i32 17, label %bb.h
    i32 20, label %bb.i
    i32 21, label %bb.i
    i32 22, label %bb.i
    i32 23, label %bb.i
    i32 4, label %bb.j
    i32 9, label %bb.j
    i32 14, label %bb.j
    i32 19, label %bb.j
    i32 6, label %bb.k
    i32 11, label %bb.k
    i32 7, label %bb.k
    i32 12, label %bb.k
    i32 24, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  store i8 4, ptr %2, align 2, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 32767, ptr %i.g, align 2, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 1, ptr %i.h, align 1, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 16384, ptr %i.i, align 2, !tbaa !14
  %scevgep.i = getelementptr nuw i8, ptr %2, i64 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %scevgep.i, i8 0, i64 6, i1 false), !tbaa !14
  br label %.loopexit112

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %3 = load i64, ptr %i.j, align 2, !tbaa !14
  %.not.i.not = icmp eq i64 %3, 0
  br i1 %.not.i.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 4, ptr %2, align 2, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 32767, ptr %i.k, align 2, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 1, ptr %i.l, align 1, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 16384, ptr %i.m, align 2, !tbaa !14
  %scevgep.i64 = getelementptr nuw i8, ptr %2, i64 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %scevgep.i64, i8 0, i64 6, i1 false), !tbaa !14
  br label %.loopexit112

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.a, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %i.r = xor i8 %i.q, %i.o
  store i8 0, ptr %2, align 2, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.r, ptr %i.s, align 1, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 -32767, ptr %i.t, align 2, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i64 0, ptr %i.u, align 2
  br label %.loopexit112

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %4 = load i64, ptr %i.v, align 2, !tbaa !14
  %.not.i65.not = icmp eq i64 %4, 0
  br i1 %.not.i65.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 4, ptr %2, align 2, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 32767, ptr %i.w, align 2, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 1, ptr %i.x, align 1, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 16384, ptr %i.y, align 2, !tbaa !14
  %scevgep.i66 = getelementptr nuw i8, ptr %2, i64 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %scevgep.i66, i8 0, i64 6, i1 false), !tbaa !14
  br label %.loopexit112

bb.h:                                             ; preds = %bb.f, %bb.a, %bb.a, %bb.a
  store i8 3, ptr %2, align 2, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.z, align 1, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 -32767, ptr %i.aa, align 2, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i64 0, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = xor i8 %i.af, %i.ad
  store i8 %i.ag, ptr %i.z, align 1, !tbaa !8
  br label %.loopexit112

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  br label %.loopexit112

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  br label %.loopexit112

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.3.0.copyload = load i16, ptr %.sroa.3.0..sroa_idx, align 2 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..sroa_idx, align 2 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 2 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  %.sroa.12.0.copyload = load i16, ptr %.sroa.12.0..sroa_idx, align 2 ; 2 uses
  %i.ah = or i16 %.sroa.6.0.copyload, %.sroa.3.0.copyload
  %i.ai = or i16 %i.ah, %.sroa.9.0.copyload
  %i.aj = or i16 %i.ai, %.sroa.12.0.copyload
  %.not.i67.not = icmp eq i16 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %5 = load i64, ptr %i.ak, align 2, !tbaa !14
  %.not.i68.not = icmp eq i64 %5, 0               ; 2 uses
  br i1 %.not.i67.not, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  br i1 %.not.i68.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 4, ptr %2, align 2, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 32767, ptr %i.am, align 2, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 1, ptr %i.an, align 1, !tbaa !8
  store i16 16384, ptr %i.al, align 2, !tbaa !14
  %scevgep.i69 = getelementptr nuw i8, ptr %2, i64 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %scevgep.i69, i8 0, i64 6, i1 false), !tbaa !14
  br label %.loopexit112

bb.n:                                             ; preds = %bb.l
  store i8 0, ptr %2, align 2, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.ao, align 1, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 -32767, ptr %i.ap, align 2, !tbaa !15
  store i64 0, ptr %i.al, align 2
  br label %.loopexit112

bb.o:                                             ; preds = %bb.k
  br i1 %.not.i68.not, label %bb.p, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  store i8 3, ptr %2, align 2, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.aq, align 1, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 -32767, ptr %i.ar, align 2, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i64 0, ptr %i.as, align 2
  br label %.loopexit112

.lr.ph:                                           ; preds = %bb.o
  store i8 %i.a, ptr %2, align 2, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8
  %i.ax = xor i8 %i.aw, %i.au
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !15
  %i.bd = add i16 %i.ba, 128
  %i.be = sub i16 %i.bd, %i.bc                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i64 0, ptr %i.bg, align 2
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 10
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %.loopexit
  %i.bq = phi i16 [ 0, %.lr.ph ], [ %i.dj, %.loopexit ] ; 2 uses
  %i.br = phi i16 [ 0, %.lr.ph ], [ %i.dk, %.loopexit ] ; 2 uses
  %i.bs = phi i16 [ 0, %.lr.ph ], [ %i.dl, %.loopexit ] ; 2 uses
  %i.bt = phi i16 [ 0, %.lr.ph ], [ %i.dm, %.loopexit ] ; 2 uses
  %i.bu = phi i16 [ %i.be, %.lr.ph ], [ %i.do, %.loopexit ]
  %i.bv = phi i16 [ 0, %.lr.ph ], [ %spec.select.2.i85, %.loopexit ] ; 2 uses
  %i.bw = phi i16 [ 0, %.lr.ph ], [ %spec.select.1.i83, %.loopexit ] ; 2 uses
  %i.bx = phi i16 [ 0, %.lr.ph ], [ %spec.select.i81, %.loopexit ] ; 2 uses
  %.sroa.3.0122 = phi i16 [ %.sroa.3.0.copyload, %.lr.ph ], [ %spec.select.3.i, %.loopexit ] ; 2 uses
  %.sroa.6.0121 = phi i16 [ %.sroa.6.0.copyload, %.lr.ph ], [ %spec.select.2.i, %.loopexit ] ; 2 uses
  %.sroa.9.0120 = phi i16 [ %.sroa.9.0.copyload, %.lr.ph ], [ %spec.select.1.i, %.loopexit ] ; 2 uses
  %.sroa.12.0119 = phi i16 [ %.sroa.12.0.copyload, %.lr.ph ], [ %i.by, %.loopexit ] ; 2 uses
  %spec.select.3.i87117118 = phi i16 [ 0, %.lr.ph ], [ %spec.select.3.i87, %.loopexit ]
  %i.by = shl i16 %.sroa.12.0119, 1
  %spec.select.1.i = tail call i16 @llvm.fshl.i16(i16 %.sroa.9.0120, i16 %.sroa.12.0119, i16 1)
  %spec.select.2.i = tail call i16 @llvm.fshl.i16(i16 %.sroa.6.0121, i16 %.sroa.9.0120, i16 1)
  %spec.select.3.i = tail call i16 @llvm.fshl.i16(i16 %.sroa.3.0122, i16 %.sroa.6.0121, i16 1)
  %spec.select.i73 = tail call i16 @llvm.fshl.i16(i16 %i.bt, i16 %.sroa.3.0122, i16 1) ; 6 uses
  %spec.select.1.i75 = tail call i16 @llvm.fshl.i16(i16 %i.bs, i16 %i.bt, i16 1) ; 7 uses
  %spec.select.2.i77 = tail call i16 @llvm.fshl.i16(i16 %i.br, i16 %i.bs, i16 1) ; 7 uses
  %spec.select.3.i79 = tail call i16 @llvm.fshl.i16(i16 %i.bq, i16 %i.br, i16 1) ; 7 uses
  %i.bz = icmp sgt i16 %i.bq, -1
  br i1 %i.bz, label %.preheader, label %.loopexit109

.preheader:                                       ; preds = %bb.q
  %i.ca = load i16, ptr %i.ak, align 2, !tbaa !14 ; 2 uses
  %i.cb = icmp ugt i16 %i.ca, %spec.select.3.i79
  br i1 %i.cb, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.preheader
  %.not = icmp ult i16 %i.ca, %spec.select.3.i79
  br i1 %.not, label %.loopexit109, label %.preheader.1

.preheader.1:                                     ; preds = %bb.r
  %i.cc = load i16, ptr %i.bn, align 2, !tbaa !14 ; 2 uses
  %i.cd = icmp ugt i16 %i.cc, %spec.select.2.i77
  br i1 %i.cd, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.preheader.1
  %.not142 = icmp ult i16 %i.cc, %spec.select.2.i77
  br i1 %.not142, label %.loopexit109, label %.preheader.2

.preheader.2:                                     ; preds = %bb.s
  %i.ce = load i16, ptr %i.bo, align 2, !tbaa !14 ; 2 uses
  %i.cf = icmp ugt i16 %i.ce, %spec.select.1.i75
  br i1 %i.cf, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %.preheader.2
  %.not143 = icmp ult i16 %i.ce, %spec.select.1.i75
  br i1 %.not143, label %.loopexit109, label %.preheader.3

.preheader.3:                                     ; preds = %bb.t
  %i.cg = load i16, ptr %i.bp, align 2, !tbaa !14
  %i.ch = icmp ugt i16 %i.cg, %spec.select.i73
  br i1 %i.ch, label %.loopexit, label %.loopexit109

.loopexit109:                                     ; preds = %bb.r, %bb.s, %bb.t, %.preheader.3, %bb.q
  %i.ci = load i16, ptr %i.bk, align 2, !tbaa !14
  %i.cj = zext i16 %spec.select.i73 to i32
  %i.ck = zext i16 %i.ci to i32
  %i.cl = sub nsw i32 %i.cj, %i.ck                ; 2 uses
  %i.cm = lshr i32 %i.cl, 16
  %i.cn = and i32 %i.cm, 1
  %i.co = trunc i32 %i.cl to i16
  %i.cp = load i16, ptr %i.bl, align 2, !tbaa !14
  %i.cq = zext i16 %spec.select.1.i75 to i32
  %i.cr = zext i16 %i.cp to i32
  %i.cs = add nuw nsw i32 %i.cn, %i.cr
  %i.ct = sub nsw i32 %i.cq, %i.cs                ; 2 uses
  %i.cu = lshr i32 %i.ct, 16
  %i.cv = and i32 %i.cu, 1
  %i.cw = trunc i32 %i.ct to i16
  %i.cx = load i16, ptr %i.bm, align 2, !tbaa !14
  %i.cy = zext i16 %spec.select.2.i77 to i32
  %i.cz = zext i16 %i.cx to i32
  %i.da = add nuw nsw i32 %i.cv, %i.cz
  %i.db = sub nsw i32 %i.cy, %i.da                ; 2 uses
  %i.dc = lshr i32 %i.db, 16
  %i.dd = trunc i32 %i.db to i16
  %i.de = load i16, ptr %i.ak, align 2, !tbaa !14
  %i.df = trunc nuw i32 %i.dc to i16
  %i.dg = and i16 %i.df, 1
  %i.dh = add i16 %i.dg, %i.de
  %i.di = sub i16 %spec.select.3.i79, %i.dh
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.loopexit109
  %i.dj = phi i16 [ %i.di, %.loopexit109 ], [ %spec.select.3.i79, %.preheader.3 ], [ %spec.select.3.i79, %.preheader.2 ], [ %spec.select.3.i79, %.preheader.1 ], [ %spec.select.3.i79, %.preheader ]
  %i.dk = phi i16 [ %i.dd, %.loopexit109 ], [ %spec.select.2.i77, %.preheader.3 ], [ %spec.select.2.i77, %.preheader.2 ], [ %spec.select.2.i77, %.preheader.1 ], [ %spec.select.2.i77, %.preheader ]
  %i.dl = phi i16 [ %i.cw, %.loopexit109 ], [ %spec.select.1.i75, %.preheader.3 ], [ %spec.select.1.i75, %.preheader.2 ], [ %spec.select.1.i75, %.preheader.1 ], [ %spec.select.1.i75, %.preheader ]
  %i.dm = phi i16 [ %i.co, %.loopexit109 ], [ %spec.select.i73, %.preheader.3 ], [ %spec.select.i73, %.preheader.2 ], [ %spec.select.i73, %.preheader.1 ], [ %spec.select.i73, %.preheader ]
  %.not.i80 = phi i16 [ 1, %.loopexit109 ], [ 0, %.preheader.3 ], [ 0, %.preheader.2 ], [ 0, %.preheader.1 ], [ 0, %.preheader ]
  %i.dn = shl i16 %i.bx, 1
  %spec.select.i81 = or disjoint i16 %i.dn, %.not.i80 ; 2 uses
  store i16 %spec.select.i81, ptr %i.bh, align 2, !tbaa !14
  %spec.select.1.i83 = tail call i16 @llvm.fshl.i16(i16 %i.bw, i16 %i.bx, i16 1) ; 2 uses
  store i16 %spec.select.1.i83, ptr %i.bi, align 2, !tbaa !14
  %spec.select.2.i85 = tail call i16 @llvm.fshl.i16(i16 %i.bv, i16 %i.bw, i16 1) ; 2 uses
  store i16 %spec.select.2.i85, ptr %i.bj, align 2, !tbaa !14
  %spec.select.3.i87 = tail call i16 @llvm.fshl.i16(i16 %spec.select.3.i87117118, i16 %i.bv, i16 1) ; 3 uses
  store i16 %spec.select.3.i87, ptr %i.bg, align 2, !tbaa !14
  %i.do = add i16 %i.bu, -1                       ; 2 uses
  store i16 %i.do, ptr %i.bf, align 2, !tbaa !15
  %i.dp = icmp sgt i16 %spec.select.3.i87, -1
  br i1 %i.dp, label %bb.q, label %.loopexit112, !llvm.loop !17

bb.u:                                             ; preds = %bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ds = load i16, ptr %i.dq, align 2, !tbaa !14 ; 2 uses
  %i.dt = load i16, ptr %i.dr, align 2, !tbaa !14 ; 2 uses
  %i.du = icmp ugt i16 %i.ds, %i.dt
  br i1 %i.du, label %choose_nan.exit, label %bb.ab

bb.v:                                             ; preds = %bb.ab
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !14 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !14 ; 2 uses
  %i.dz = icmp ugt i16 %i.dw, %i.dy
  br i1 %i.dz, label %choose_nan.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ea = icmp ult i16 %i.dw, %i.dy
  br i1 %i.ea, label %choose_nan.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !14 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !14 ; 2 uses
  %i.ef = icmp ugt i16 %i.ec, %i.ee
  br i1 %i.ef, label %choose_nan.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eg = icmp ult i16 %i.ec, %i.ee
  br i1 %i.eg, label %choose_nan.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !14 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !14 ; 2 uses
  %i.el = icmp ugt i16 %i.ei, %i.ek
  br i1 %i.el, label %choose_nan.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = icmp ult i16 %i.ei, %i.ek
  %spec.select = select i1 %i.em, ptr %1, ptr %0
  br label %choose_nan.exit

bb.ab:                                            ; preds = %bb.u
  %i.en = icmp ult i16 %i.ds, %i.dt
  br i1 %i.en, label %choose_nan.exit, label %bb.v

choose_nan.exit:                                  ; preds = %bb.aa, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.ab
  %.sink.i = phi ptr [ %1, %bb.ab ], [ %1, %bb.w ], [ %0, %bb.u ], [ %1, %bb.y ], [ %0, %bb.z ], [ %0, %bb.x ], [ %0, %bb.v ], [ %spec.select, %bb.aa ]
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sink.i, ptr noundef nonnull readonly align 1 dereferenceable(12) %2, i64 12, i1 false)
  br label %.loopexit112

.loopexit112:                                     ; preds = %.loopexit, %bb.m, %bb.n, %choose_nan.exit, %bb.p, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.b, %bb.a
  %i.eo = load i8, ptr %2, align 2, !tbaa !11     ; 2 uses
  %.off.i = add i8 %i.eo, -1
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %bb.ac, label %RoundInternalFPF.exit

bb.ac:                                            ; preds = %.loopexit112
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 3 uses
  %6 = load i64, ptr %i.ep, align 2, !tbaa !14
  %.not.i.not.i.i = icmp eq i64 %6, 0
  br i1 %.not.i.not.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %puts.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.pr.pre.pre.i = load i8, ptr %2, align 2, !tbaa !11
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pr.pre.i = phi i8 [ %.pr.pre.pre.i, %bb.ad ], [ %i.eo, %bb.ac ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !15
  %i.ev = icmp eq i16 %i.eu, -32768
  br i1 %i.ev, label %bb.af, label %denormalize.exit.i

bb.af:                                            ; preds = %bb.ae
  store i16 -32767, ptr %i.et, align 2, !tbaa !15
  %.not.i12.i.i = icmp eq i8 %.pr.pre.i, 0
  br i1 %.not.i12.i.i, label %RoundInternalFPF.exit, label %denormalize.exit.thread7.i

denormalize.exit.thread7.i:                       ; preds = %bb.af
  %.promoted.i.i.i = load i16, ptr %i.ep, align 2, !tbaa !14 ; 2 uses
  %.promoted20.i.i.i = load i16, ptr %i.eq, align 2, !tbaa !14 ; 2 uses
  %.promoted21.i.i.i = load i16, ptr %i.er, align 2, !tbaa !14 ; 2 uses
  %.promoted22.i.i.i = load i16, ptr %i.es, align 2, !tbaa !14 ; 2 uses
  %spec.select.1.i.i.i.i = tail call i16 @llvm.fshl.i16(i16 %.promoted.i.i.i, i16 %.promoted20.i.i.i, i16 15)
  %spec.select.2.i.i.i.i = tail call i16 @llvm.fshl.i16(i16 %.promoted20.i.i.i, i16 %.promoted21.i.i.i, i16 15)
  %spec.select.3.i.i.i.i = tail call i16 @llvm.fshl.i16(i16 %.promoted21.i.i.i, i16 %.promoted22.i.i.i, i16 15)
  %i.ew = and i16 %.promoted22.i.i.i, 1
  %spec.select.i.i.i = or i16 %spec.select.3.i.i.i.i, %i.ew
  %i.ex = lshr i16 %.promoted.i.i.i, 1
  store i16 %i.ex, ptr %i.ep, align 2, !tbaa !14
  store i16 %spec.select.1.i.i.i.i, ptr %i.eq, align 2, !tbaa !14
  store i16 %spec.select.2.i.i.i.i, ptr %i.er, align 2, !tbaa !14
  br label %bb.ag

denormalize.exit.i:                               ; preds = %bb.ae
  %.not.i88 = icmp eq i8 %.pr.pre.i, 0
  br i1 %.not.i88, label %RoundInternalFPF.exit, label %denormalize.exit.i._crit_edge

denormalize.exit.i._crit_edge:                    ; preds = %denormalize.exit.i
  %.pre = load i16, ptr %i.es, align 2, !tbaa !14
  br label %bb.ag

bb.ag:                                            ; preds = %denormalize.exit.i._crit_edge, %denormalize.exit.thread7.i
  %i.ey = phi i16 [ %.pre, %denormalize.exit.i._crit_edge ], [ %spec.select.i.i.i, %denormalize.exit.thread7.i ]
  %i.ez = and i16 %i.ey, -8
  store i16 %i.ez, ptr %i.es, align 2, !tbaa !14
  br label %RoundInternalFPF.exit

RoundInternalFPF.exit:                            ; preds = %.loopexit112, %bb.af, %denormalize.exit.i, %bb.ag
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @DoEmFloatIteration(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 (...) @StartStopwatch() #9
  %.not32 = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %.not32, %i.b
  br i1 %or.cond, label %.preheader, label %._crit_edge.split

..loopexit_crit_edge:                             ; preds = %MultiplyInternalFPF.exit
  %i.c = add i64 %.in, -1                         ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge.split, label %.preheader, !llvm.loop !18

.preheader:                                       ; preds = %bb.a, %..loopexit_crit_edge
  %.in = phi i64 [ %i.c, %..loopexit_crit_edge ], [ %4, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %MultiplyInternalFPF.exit
  %.031 = phi i64 [ 0, %.preheader ], [ %i.fc, %MultiplyInternalFPF.exit ] ; 14 uses
  %i.d = and i64 %.031, 15
  %i.e = getelementptr inbounds nuw i8, ptr @DoEmFloatIteration.jtable, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !19
  switch i8 %i.f, label %MultiplyInternalFPF.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.ah
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.031
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.031
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.031
  tail call fastcc void @AddSubInternalFPF(i8 noundef zeroext 0, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i)
  br label %MultiplyInternalFPF.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.031
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.031
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.031
  tail call fastcc void @AddSubInternalFPF(i8 noundef zeroext 1, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l)
  br label %MultiplyInternalFPF.exit

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.031 ; 20 uses
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.031 ; 19 uses
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.031 ; 30 uses
  %i.p = load i8, ptr %i.m, align 2, !tbaa !11    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = mul nuw nsw i32 %i.q, 5
  %i.s = load i8, ptr %i.n, align 2, !tbaa !11
  %i.t = zext i8 %i.s to i32
  %i.u = add nuw nsw i32 %i.r, %i.t
  switch i32 %i.u, label %bb.ab [
    i32 16, label %bb.f
    i32 17, label %bb.f
    i32 18, label %bb.f
    i32 0, label %bb.f
    i32 1, label %bb.f
    i32 2, label %bb.f
    i32 8, label %bb.g
    i32 13, label %bb.g
    i32 5, label %bb.g
    i32 10, label %bb.g
    i32 3, label %bb.h
    i32 15, label %bb.h
    i32 20, label %bb.i
    i32 21, label %bb.i
    i32 22, label %bb.i
    i32 23, label %bb.i
    i32 4, label %bb.j
    i32 9, label %bb.j
    i32 14, label %bb.j
    i32 19, label %bb.j
    i32 6, label %bb.k
    i32 7, label %bb.k
    i32 11, label %bb.k
    i32 12, label %bb.k
    i32 24, label %bb.t
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.m, ptr noundef nonnull align 1 dereferenceable(12) %i.o, i64 12, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = xor i8 %i.y, %i.w
  store i8 %i.z, ptr %i.x, align 1, !tbaa !8
  br label %bb.ab

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.n, ptr noundef nonnull align 1 dereferenceable(12) %i.o, i64 12, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.ae = xor i8 %i.ad, %i.ab
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !8
  br label %bb.ab

bb.h:                                             ; preds = %bb.e, %bb.e
  store i8 4, ptr %i.o, align 2, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i16 32767, ptr %i.af, align 2, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.ag, align 1, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i16 16384, ptr %i.ah, align 2, !tbaa !14
  %scevgep.i.i = getelementptr nuw i8, ptr %i.o, i64 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %scevgep.i.i, i8 0, i64 6, i1 false), !tbaa !14
  br label %bb.ab

bb.i:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.m, ptr noundef nonnull align 1 dereferenceable(12) %i.o, i64 12, i1 false)
  br label %bb.ab

bb.j:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.n, ptr noundef nonnull align 1 dereferenceable(12) %i.o, i64 12, i1 false)
  br label %bb.ab

bb.k:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.3.0.copyload.i = load i16, ptr %.sroa.3.0..sroa_idx.i, align 2 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %.sroa.5.0.copyload.i = load i16, ptr %.sroa.5.0..sroa_idx.i, align 2 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.7.0.copyload.i = load i16, ptr %.sroa.7.0..sroa_idx.i, align 2 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  %.sroa.9.0.copyload.i = load i16, ptr %.sroa.9.0..sroa_idx.i, align 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %5 = load i64, ptr %i.ai, align 2, !tbaa !14
  %.not.i.not.i = icmp eq i64 %5, 0
  br i1 %.not.i.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = or i16 %.sroa.5.0.copyload.i, %.sroa.3.0.copyload.i
  %i.an = or i16 %i.am, %.sroa.7.0.copyload.i
  %i.ao = or i16 %i.an, %.sroa.9.0.copyload.i
  %.not.i56.not.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i56.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  store i8 3, ptr %i.o, align 2, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 0, ptr %i.ap, align 1, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i16 -32767, ptr %i.aq, align 2, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i64 0, ptr %i.ar, align 2
  %.pre.i = load i8, ptr %i.m, align 2, !tbaa !11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.as = phi i8 [ %.pre.i, %bb.m ], [ %i.p, %bb.l ]
  %i.at = icmp eq i8 %i.as, 1
  br i1 %i.at, label %.preheader121.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load i8, ptr %i.n, align 2, !tbaa !11
  %i.av = icmp eq i8 %i.au, 1
  %spec.select.i = select i1 %i.av, i8 1, i8 2
  br label %.preheader121.i

.preheader121.i:                                  ; preds = %bb.o, %bb.n
  %storemerge.i = phi i8 [ 1, %bb.n ], [ %spec.select.i, %bb.o ]
  store i8 %storemerge.i, ptr %i.o, align 2, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8
  %i.ba = xor i8 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !15
  %i.bg = add i16 %i.bf, %i.bd                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 2 uses
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  store i64 0, ptr %i.bi, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 6 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 10 ; 4 uses
  br label %bb.p

.preheader.i:                                     ; preds = %bb.q
  %i.bm = icmp sgt i16 %.promoted141.i, -1
  br i1 %i.bm, label %.lr.ph.i, label %bb.r

bb.p:                                             ; preds = %bb.q, %.preheader121.i
  %i.bn = phi i16 [ 0, %.preheader121.i ], [ %.promoted141.i, %bb.q ] ; 3 uses
  %i.bo = phi i16 [ 0, %.preheader121.i ], [ %spec.select.1.i61.i, %bb.q ] ; 2 uses
  %i.bp = phi i16 [ 0, %.preheader121.i ], [ %spec.select.2.i63.i, %bb.q ] ; 2 uses
  %i.bq = phi i16 [ 0, %.preheader121.i ], [ %spec.select.3.i65.i, %bb.q ] ; 2 uses
  %.1140.i = phi i32 [ 0, %.preheader121.i ], [ %i.dc, %bb.q ]
  %.sroa.3.0139.i = phi i16 [ %.sroa.3.0.copyload.i, %.preheader121.i ], [ %i.br, %bb.q ] ; 2 uses
  %.sroa.5.0138.i = phi i16 [ %.sroa.5.0.copyload.i, %.preheader121.i ], [ %spec.select.1.i.i, %bb.q ] ; 2 uses
  %.sroa.7.0137.i = phi i16 [ %.sroa.7.0.copyload.i, %.preheader121.i ], [ %spec.select.2.i.i, %bb.q ] ; 2 uses
  %.sroa.9.0136.i = phi i16 [ %.sroa.9.0.copyload.i, %.preheader121.i ], [ %spec.select.3.i.i, %bb.q ] ; 2 uses
  %spec.select.i67125135.i = phi i16 [ 0, %.preheader121.i ], [ %spec.select.i67.i, %bb.q ] ; 2 uses
  %spec.select.1.i69127134.i = phi i16 [ 0, %.preheader121.i ], [ %spec.select.1.i69.i, %bb.q ] ; 2 uses
  %spec.select.2.i71129133.i = phi i16 [ 0, %.preheader121.i ], [ %spec.select.2.i71.i, %bb.q ] ; 2 uses
  %spec.select.3.i73131132.i = phi i16 [ 0, %.preheader121.i ], [ %spec.select.3.i73.i, %bb.q ]
  %i.br = lshr i16 %.sroa.3.0139.i, 1
  %spec.select.1.i.i = tail call i16 @llvm.fshl.i16(i16 %.sroa.3.0139.i, i16 %.sroa.5.0138.i, i16 15)
  %spec.select.2.i.i = tail call i16 @llvm.fshl.i16(i16 %.sroa.5.0138.i, i16 %.sroa.7.0137.i, i16 15)
  %i.bs = and i16 %.sroa.9.0136.i, 1
  %spec.select.3.i.i = tail call i16 @llvm.fshl.i16(i16 %.sroa.7.0137.i, i16 %.sroa.9.0136.i, i16 15)
  %.not55.i = icmp eq i16 %i.bs, 0
  br i1 %.not55.i, label %.thread.i, label %.preheader120.preheader.i

.preheader120.preheader.i:                        ; preds = %bb.p
  %i.bt = load i16, ptr %i.al, align 2, !tbaa !14
  %i.bu = zext i16 %i.bq to i32
  %i.bv = zext i16 %i.bt to i32
  %i.bw = add nuw nsw i32 %i.bv, %i.bu
  %.fr.i = freeze i32 %i.bw                       ; 2 uses
  %i.bx = lshr i32 %.fr.i, 16
  %i.by = and i32 %i.bx, 1
  %i.bz = trunc i32 %.fr.i to i16                 ; 2 uses
  store i16 %i.bz, ptr %i.bl, align 2, !tbaa !14
  %i.ca = load i16, ptr %i.ak, align 2, !tbaa !14
  %i.cb = zext i16 %i.bp to i32
  %i.cc = zext i16 %i.ca to i32
  %i.cd = add nuw nsw i32 %i.cc, %i.cb
  %.fr = freeze i32 %i.cd
  %i.ce = add i32 %.fr, %i.by                     ; 2 uses
  %i.cf = lshr i32 %i.ce, 16
  %i.cg = and i32 %i.cf, 1
  %i.ch = trunc i32 %i.ce to i16                  ; 2 uses
  store i16 %i.ch, ptr %i.bk, align 2, !tbaa !14
  %i.ci = load i16, ptr %i.aj, align 2, !tbaa !14
  %i.cj = zext i16 %i.bo to i32
  %i.ck = zext i16 %i.ci to i32
  %i.cl = add nuw nsw i32 %i.ck, %i.cj
  %.fr33 = freeze i32 %i.cl
  %i.cm = add i32 %.fr33, %i.cg                   ; 2 uses
  %i.cn = lshr i32 %i.cm, 16
  %i.co = and i32 %i.cn, 1
  %i.cp = trunc i32 %i.cm to i16                  ; 2 uses
  store i16 %i.cp, ptr %i.bj, align 2, !tbaa !14
  %i.cq = load i16, ptr %i.ai, align 2, !tbaa !14
  %i.cr = zext i16 %i.bn to i32
  %i.cs = zext i16 %i.cq to i32
  %i.ct = add nuw nsw i32 %i.cs, %i.cr
  %i.cu = add nuw nsw i32 %i.ct, %i.co
  %.fr.3.i = freeze i32 %i.cu                     ; 2 uses
  %i.cv = lshr i32 %.fr.3.i, 16
  %i.cw = trunc nuw i32 %i.cv to i16
  %i.cx = trunc i32 %.fr.3.i to i16               ; 2 uses
  %spec.select118.i = tail call i16 @llvm.fshl.i16(i16 %i.cw, i16 %i.cx, i16 15)
  br label %bb.q

.thread.i:                                        ; preds = %bb.p
  %i.cy = lshr i16 %i.bn, 1
  br label %bb.q

bb.q:                                             ; preds = %.thread.i, %.preheader120.preheader.i
  %i.cz = phi i16 [ %i.bz, %.preheader120.preheader.i ], [ %i.bq, %.thread.i ] ; 2 uses
  %i.da = phi i16 [ %i.ch, %.preheader120.preheader.i ], [ %i.bp, %.thread.i ] ; 2 uses
  %i.db = phi i16 [ %i.cp, %.preheader120.preheader.i ], [ %i.bo, %.thread.i ] ; 2 uses
  %.in.i = phi i16 [ %i.cx, %.preheader120.preheader.i ], [ %i.bn, %.thread.i ]
  %.promoted141.i = phi i16 [ %spec.select118.i, %.preheader120.preheader.i ], [ %i.cy, %.thread.i ] ; 4 uses
  store i16 %.promoted141.i, ptr %i.bi, align 2, !tbaa !14
  %spec.select.1.i61.i = tail call i16 @llvm.fshl.i16(i16 %.in.i, i16 %i.db, i16 15) ; 3 uses
  store i16 %spec.select.1.i61.i, ptr %i.bj, align 2, !tbaa !14
  %spec.select.2.i63.i = tail call i16 @llvm.fshl.i16(i16 %i.db, i16 %i.da, i16 15) ; 3 uses
  store i16 %spec.select.2.i63.i, ptr %i.bk, align 2, !tbaa !14
  %spec.select.3.i65.i = tail call i16 @llvm.fshl.i16(i16 %i.da, i16 %i.cz, i16 15) ; 4 uses
  store i16 %spec.select.3.i65.i, ptr %i.bl, align 2, !tbaa !14
  %spec.select.i67.i = tail call i16 @llvm.fshl.i16(i16 %i.cz, i16 %spec.select.i67125135.i, i16 15) ; 3 uses
  %spec.select.1.i69.i = tail call i16 @llvm.fshl.i16(i16 %spec.select.i67125135.i, i16 %spec.select.1.i69127134.i, i16 15) ; 3 uses
  %spec.select.2.i71.i = tail call i16 @llvm.fshl.i16(i16 %spec.select.1.i69127134.i, i16 %spec.select.2.i71129133.i, i16 15) ; 3 uses
  %spec.select.3.i73.i = tail call i16 @llvm.fshl.i16(i16 %spec.select.2.i71129133.i, i16 %spec.select.3.i73131132.i, i16 15) ; 3 uses
  %i.dc = add nuw nsw i32 %.1140.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dc, 64
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.p, !llvm.loop !20

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.dd = phi i16 [ %i.dj, %.lr.ph.i ], [ %i.bg, %.preheader.i ]
  %i.de = phi i16 [ %spec.select.2.i87.i, %.lr.ph.i ], [ %spec.select.1.i61.i, %.preheader.i ] ; 2 uses
  %i.df = phi i16 [ %spec.select.1.i85.i, %.lr.ph.i ], [ %spec.select.2.i63.i, %.preheader.i ] ; 2 uses
  %i.dg = phi i16 [ %spec.select.i83.i, %.lr.ph.i ], [ %spec.select.3.i65.i, %.preheader.i ] ; 2 uses
  %spec.select.2.i79151.i = phi i16 [ %spec.select.2.i79.i, %.lr.ph.i ], [ %spec.select.1.i69.i, %.preheader.i ] ; 2 uses
  %spec.select.1.i77149.i = phi i16 [ %spec.select.1.i77.i, %.lr.ph.i ], [ %spec.select.2.i71.i, %.preheader.i ] ; 2 uses
  %i.dh = phi i16 [ %i.di, %.lr.ph.i ], [ %spec.select.3.i73.i, %.preheader.i ] ; 2 uses
  %spec.select.3.i89142146.i = phi i16 [ %spec.select.3.i89.i, %.lr.ph.i ], [ %.promoted141.i, %.preheader.i ]
  %spec.select.3.i81144145.i = phi i16 [ %spec.select.3.i81.i, %.lr.ph.i ], [ %spec.select.i67.i, %.preheader.i ] ; 2 uses
  %i.di = shl i16 %i.dh, 1                        ; 2 uses
  %spec.select.1.i77.i = tail call i16 @llvm.fshl.i16(i16 %spec.select.1.i77149.i, i16 %i.dh, i16 1) ; 2 uses
  %spec.select.2.i79.i = tail call i16 @llvm.fshl.i16(i16 %spec.select.2.i79151.i, i16 %spec.select.1.i77149.i, i16 1) ; 2 uses
  %spec.select.3.i81.i = tail call i16 @llvm.fshl.i16(i16 %spec.select.3.i81144145.i, i16 %spec.select.2.i79151.i, i16 1) ; 2 uses
  %spec.select.i83.i = tail call i16 @llvm.fshl.i16(i16 %i.dg, i16 %spec.select.3.i81144145.i, i16 1) ; 3 uses
  %spec.select.1.i85.i = tail call i16 @llvm.fshl.i16(i16 %i.df, i16 %i.dg, i16 1) ; 2 uses
  %spec.select.2.i87.i = tail call i16 @llvm.fshl.i16(i16 %i.de, i16 %i.df, i16 1) ; 2 uses
  %spec.select.3.i89.i = tail call i16 @llvm.fshl.i16(i16 %spec.select.3.i89142146.i, i16 %i.de, i16 1) ; 3 uses
  %i.dj = add i16 %i.dd, -1                       ; 2 uses
  %i.dk = icmp sgt i16 %spec.select.3.i89.i, -1
  br i1 %i.dk, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !21

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store i16 %spec.select.i83.i, ptr %i.bl, align 2, !tbaa !14
  store i16 %spec.select.1.i85.i, ptr %i.bk, align 2, !tbaa !14
  store i16 %spec.select.2.i87.i, ptr %i.bj, align 2, !tbaa !14
  store i16 %spec.select.3.i89.i, ptr %i.bi, align 2, !tbaa !14
  store i16 %i.dj, ptr %i.bh, align 2, !tbaa !15
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i, %.preheader.i
  %i.dl = phi i16 [ %spec.select.i83.i, %._crit_edge.i ], [ %spec.select.3.i65.i, %.preheader.i ]
  %.sroa.6.0.i = phi i16 [ %spec.select.2.i79.i, %._crit_edge.i ], [ %spec.select.1.i69.i, %.preheader.i ]
  %.sroa.11.0.i = phi i16 [ %spec.select.1.i77.i, %._crit_edge.i ], [ %spec.select.2.i71.i, %.preheader.i ]
  %.sroa.16.0.i = phi i16 [ %i.di, %._crit_edge.i ], [ %spec.select.3.i73.i, %.preheader.i ]
  %spec.select.3.i81144.lcssa.i = phi i16 [ %spec.select.3.i81.i, %._crit_edge.i ], [ %spec.select.i67.i, %.preheader.i ]
  %i.dm = or i16 %.sroa.11.0.i, %.sroa.6.0.i
  %i.dn = or i16 %i.dm, %.sroa.16.0.i
  %i.do = or i16 %i.dn, %spec.select.3.i81144.lcssa.i
  %.not.i90.not.i = icmp eq i16 %i.do, 0
  br i1 %.not.i90.not.i, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.dp = or i16 %i.dl, 1
  store i16 %i.dp, ptr %i.bl, align 2, !tbaa !14
  br label %bb.ab

bb.t:                                             ; preds = %bb.e
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ds = load i16, ptr %i.dq, align 2, !tbaa !14 ; 2 uses
  %i.dt = load i16, ptr %i.dr, align 2, !tbaa !14 ; 2 uses
  %i.du = icmp ugt i16 %i.ds, %i.dt
  br i1 %i.du, label %choose_nan.exit.i, label %bb.aa

bb.u:                                             ; preds = %bb.aa
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !14 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !14 ; 2 uses
  %i.dz = icmp ugt i16 %i.dw, %i.dy
  br i1 %i.dz, label %choose_nan.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ea = icmp ult i16 %i.dw, %i.dy
  br i1 %i.ea, label %choose_nan.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !14 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !14 ; 2 uses
  %i.ef = icmp ugt i16 %i.ec, %i.ee
  br i1 %i.ef, label %choose_nan.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eg = icmp ult i16 %i.ec, %i.ee
  br i1 %i.eg, label %choose_nan.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !14 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !14 ; 2 uses
  %i.el = icmp ugt i16 %i.ei, %i.ek
  br i1 %i.el, label %choose_nan.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.em = icmp ult i16 %i.ei, %i.ek
  %spec.select119.i = select i1 %i.em, ptr %i.n, ptr %i.m
  br label %choose_nan.exit.i

bb.aa:                                            ; preds = %bb.t
  %i.en = icmp ult i16 %i.ds, %i.dt
  br i1 %i.en, label %choose_nan.exit.i, label %bb.u

choose_nan.exit.i:                                ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.sink.i.i = phi ptr [ %i.n, %bb.aa ], [ %i.n, %bb.v ], [ %i.m, %bb.t ], [ %i.n, %bb.x ], [ %i.m, %bb.y ], [ %i.m, %bb.w ], [ %i.m, %bb.u ], [ %spec.select119.i, %bb.z ]
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sink.i.i, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.o, i64 12, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %choose_nan.exit.i, %bb.s, %bb.r, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.eo = load i8, ptr %i.o, align 2, !tbaa !11   ; 2 uses
  %.off.i.i = add i8 %i.eo, -1
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  br i1 %switch.i.i, label %bb.ac, label %MultiplyInternalFPF.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ep = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.o, i64 6 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.o, i64 10 ; 3 uses
  %6 = load i64, ptr %i.ep, align 2, !tbaa !14
  %.not.i.not.i.i.i = icmp eq i64 %6, 0
  br i1 %.not.i.not.i.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %puts.i.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.pr.pre.pre.i.i = load i8, ptr %i.o, align 2, !tbaa !11
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pr.pre.i.i = phi i8 [ %.pr.pre.pre.i.i, %bb.ad ], [ %i.eo, %bb.ac ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 2 uses
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !15
  %i.ev = icmp eq i16 %i.eu, -32768
  br i1 %i.ev, label %bb.af, label %denormalize.exit.i.i

bb.af:                                            ; preds = %bb.ae
  store i16 -32767, ptr %i.et, align 2, !tbaa !15
  %.not.i12.i.i.i = icmp eq i8 %.pr.pre.i.i, 0
  br i1 %.not.i12.i.i.i, label %MultiplyInternalFPF.exit, label %denormalize.exit.thread7.i.i

denormalize.exit.thread7.i.i:                     ; preds = %bb.af
  %.promoted.i.i.i.i = load i16, ptr %i.ep, align 2, !tbaa !14 ; 2 uses
  %.promoted20.i.i.i.i = load i16, ptr %i.eq, align 2, !tbaa !14 ; 2 uses
  %.promoted21.i.i.i.i = load i16, ptr %i.er, align 2, !tbaa !14 ; 2 uses
  %.promoted22.i.i.i.i = load i16, ptr %i.es, align 2, !tbaa !14
  %spec.select.1.i.i.i.i.i = tail call i16 @llvm.fshl.i16(i16 %.promoted.i.i.i.i, i16 %.promoted20.i.i.i.i, i16 15)
  %spec.select.2.i.i.i.i.i = tail call i16 @llvm.fshl.i16(i16 %.promoted20.i.i.i.i, i16 %.promoted21.i.i.i.i, i16 15)
  %spec.select.3.i.i.i.i.i = tail call i16 @llvm.fshl.i16(i16 %.promoted21.i.i.i.i, i16 %.promoted22.i.i.i.i, i16 15)
  %i.ew = lshr i16 %.promoted.i.i.i.i, 1
  store i16 %i.ew, ptr %i.ep, align 2, !tbaa !14
  store i16 %spec.select.1.i.i.i.i.i, ptr %i.eq, align 2, !tbaa !14
  store i16 %spec.select.2.i.i.i.i.i, ptr %i.er, align 2, !tbaa !14
  br label %bb.ag

denormalize.exit.i.i:                             ; preds = %bb.ae
  %.not.i91.i = icmp eq i8 %.pr.pre.i.i, 0
  br i1 %.not.i91.i, label %MultiplyInternalFPF.exit, label %denormalize.exit.i._crit_edge.i

denormalize.exit.i._crit_edge.i:                  ; preds = %denormalize.exit.i.i
  %.pre167.i = load i16, ptr %i.es, align 2, !tbaa !14
  br label %bb.ag

bb.ag:                                            ; preds = %denormalize.exit.i._crit_edge.i, %denormalize.exit.thread7.i.i
  %i.ex = phi i16 [ %.pre167.i, %denormalize.exit.i._crit_edge.i ], [ %spec.select.3.i.i.i.i.i, %denormalize.exit.thread7.i.i ]
  %i.ey = and i16 %i.ex, -8
  store i16 %i.ey, ptr %i.es, align 2, !tbaa !14
  br label %MultiplyInternalFPF.exit

bb.ah:                                            ; preds = %bb.b
  %i.ez = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.031
  %i.fa = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.031
  %i.fb = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.031
  tail call fastcc void @DivideInternalFPF(ptr noundef %i.ez, ptr noundef %i.fa, ptr noundef %i.fb)
  br label %MultiplyInternalFPF.exit

MultiplyInternalFPF.exit:                         ; preds = %bb.ag, %denormalize.exit.i.i, %bb.af, %bb.ab, %bb.b, %bb.c, %bb.d, %bb.ah
  %i.fc = add nuw i64 %.031, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fc, %3
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.b, !llvm.loop !22

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %bb.a
  %i.fd = tail call i64 @StopStopwatch(i64 noundef %i.a) #9
  ret i64 %i.fd
}

declare i64 @StartStopwatch(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @AddSubInternalFPF(i8 noundef zeroext range(i8 0, 2) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %1, align 2, !tbaa !11      ; 5 uses
  %i.b = zext i8 %i.a to i32
  %i.c = mul nuw nsw i32 %i.b, 5
  %i.d = load i8, ptr %2, align 2, !tbaa !11      ; 5 uses
  %i.e = zext i8 %i.d to i32
  %i.f = add nuw nsw i32 %i.c, %i.e
  switch i32 %i.f, label %bb.ac [
    i32 0, label %bb.b
    i32 20, label %bb.d
    i32 21, label %bb.d
    i32 22, label %bb.d
    i32 23, label %bb.d
    i32 5, label %bb.d
    i32 10, label %bb.d
    i32 15, label %bb.d
    i32 16, label %bb.d
    i32 17, label %bb.d
    i32 4, label %bb.e
    i32 9, label %bb.e
    i32 14, label %bb.e
    i32 19, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.f
    i32 3, label %bb.f
    i32 8, label %bb.f
    i32 13, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.g
    i32 11, label %bb.g
    i32 12, label %bb.g
    i32 18, label %bb.u
    i32 24, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(12) %3, i64 12, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8
  %i.k = xor i8 %i.j, %i.h
  %.not80 = icmp eq i8 %i.k, %0
  br i1 %.not80, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.l, align 1, !tbaa !8
  br label %bb.ac

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(12) %3, i64 12, i1 false)
  br label %bb.ac

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(12) %3, i64 12, i1 false)
  br label %bb.ac

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(12) %3, i64 12, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = xor i8 %i.n, %0
  store i8 %i.o, ptr %i.m, align 1, !tbaa !8
  br label %bb.ac

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %.sroa.7146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.7146.0.copyload = load i8, ptr %.sroa.7146.0..sroa_idx, align 1 ; 3 uses
  %.sroa.10149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.10149.0.copyload = load i16, ptr %.sroa.10149.0..sroa_idx, align 2 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.11.0.copyload = load i16, ptr %.sroa.11.0..sroa_idx, align 2 ; 5 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.16.0.copyload = load i16, ptr %.sroa.16.0..sroa_idx, align 2 ; 5 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.20.0.copyload = load i16, ptr %.sroa.20.0..sroa_idx, align 2 ; 5 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.sroa.24.0.copyload = load i16, ptr %.sroa.24.0..sroa_idx, align 2 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 2 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..sroa_idx, align 2 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.sroa.15.0.copyload = load i16, ptr %.sroa.15.0..sroa_idx, align 2 ; 5 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.19.0.copyload = load i16, ptr %.sroa.19.0..sroa_idx, align 2 ; 5 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 10
  %.sroa.23.0.copyload = load i16, ptr %.sroa.23.0..sroa_idx, align 2 ; 5 uses
  %i.p = sext i16 %.sroa.10149.0.copyload to i32  ; 3 uses
  %i.q = sext i16 %.sroa.9.0.copyload to i32      ; 3 uses
  %i.r = sub nsw i32 %i.p, %i.q                   ; 6 uses
  %i.s = icmp eq i16 %.sroa.10149.0.copyload, %.sroa.9.0.copyload
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = icmp eq i8 %i.a, 1
  %i.u = icmp eq i8 %i.d, 1
  %or.cond = or i1 %i.t, %i.u
  %. = select i1 %or.cond, i8 1, i8 2
  store i8 %., ptr %3, align 2, !tbaa !11
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.v = icmp sgt i32 %i.r, 0
  br i1 %i.v, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %StickyShiftRightMant.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = icmp samesign ugt i32 %i.r, 63
  br i1 %i.w, label %StickyShiftRightMant.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.k
  %xtraiter185 = and i32 %i.r, 1
  %i.x = add nsw i32 %i.p, -1
  %i.y = icmp eq i32 %i.x, %i.q
  br i1 %i.y, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter200 = and i32 %i.r, 62
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %i.z = phi i16 [ %.sroa.23.0.copyload, %.lr.ph.i.preheader.new ], [ %spec.select.i.1, %.lr.ph.i ] ; 2 uses
  %i.aa = phi i16 [ %.sroa.19.0.copyload, %.lr.ph.i.preheader.new ], [ %spec.select.2.i.i.1, %.lr.ph.i ] ; 2 uses
  %i.ab = phi i16 [ %.sroa.15.0.copyload, %.lr.ph.i.preheader.new ], [ %spec.select.1.i.i.1, %.lr.ph.i ] ; 2 uses
  %i.ac = phi i16 [ %.sroa.10.0.copyload, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ] ; 3 uses
end_hunk_0
begin_hunk_1_@AddSubInternalFPF:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 2 uses
  %i.bq = zext i16 %.sroa.16.1 to i32
  %i.br = zext i16 %.sroa.15.1 to i32
  %i.bs = add nuw nsw i32 %i.bn, %i.br
  %i.bt = sub nsw i32 %i.bq, %i.bs                ; 3 uses
  %i.bu = lshr i32 %i.bt, 16
  %i.bv = and i32 %i.bu, 1
  %i.bw = trunc i32 %i.bt to i16                  ; 2 uses
  store i16 %i.bw, ptr %i.bp, align 2, !tbaa !14
  %i.bx = zext i16 %.sroa.11.1 to i32
  %i.by = zext i16 %.sroa.10.1 to i32
  %i.bz = add nuw nsw i32 %i.bv, %i.by
  %i.ca = sub nsw i32 %i.bx, %i.bz                ; 3 uses
  %i.cb = trunc i32 %i.ca to i16                  ; 2 uses
  store i16 %i.cb, ptr %i.az, align 2, !tbaa !14
  %i.cc = and i32 %i.ca, 65536
  %.not78 = icmp eq i32 %i.cc, 0
  br i1 %.not78, label %.loopexit, label %.loopexit.loopexit

.preheader:                                       ; preds = %bb.n
  %add.narrowed = add i16 %.sroa.24.1, %.sroa.23.1 ; 3 uses
  %add.narrowed.overflow = icmp ult i16 %add.narrowed, %.sroa.24.1
  store i16 %add.narrowed, ptr %i.ba, align 2, !tbaa !14
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ce = zext i16 %.sroa.20.1 to i32
  %i.cf = zext i16 %.sroa.19.1 to i32
  %i.cg = zext i1 %add.narrowed.overflow to i32
  %i.ch = add nuw nsw i32 %i.ce, %i.cg
  %i.ci = add nuw nsw i32 %i.ch, %i.cf            ; 2 uses
  %i.cj = lshr i32 %i.ci, 16
  %i.ck = trunc i32 %i.ci to i16                  ; 3 uses
  store i16 %i.ck, ptr %i.cd, align 2, !tbaa !14
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.cm = zext i16 %.sroa.16.1 to i32
  %i.cn = zext i16 %.sroa.15.1 to i32
  %i.co = add nuw nsw i32 %i.cj, %i.cm
  %i.cp = add nuw nsw i32 %i.co, %i.cn            ; 2 uses
  %i.cq = lshr i32 %i.cp, 16
  %i.cr = trunc i32 %i.cp to i16                  ; 3 uses
  store i16 %i.cr, ptr %i.cl, align 2, !tbaa !14
  %i.cs = zext i16 %.sroa.11.1 to i32
  %i.ct = zext i16 %.sroa.10.1 to i32
  %i.cu = add nuw nsw i32 %i.cq, %i.cs
  %i.cv = add nuw nsw i32 %i.cu, %i.ct            ; 2 uses
  %i.cw = trunc i32 %i.cv to i16                  ; 4 uses
  store i16 %i.cw, ptr %i.az, align 2, !tbaa !14
  %.not76 = icmp samesign ult i32 %i.cv, 65536
  br i1 %.not76, label %bb.s, label %bb.r

.loopexit.loopexit:                               ; preds = %.preheader115
  %i.cx = xor i8 %.sroa.7.0.copyload, %0
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !8
  %i.cz = and i32 %i.bd, 65535
  %i.da = sub nsw i32 0, %i.cz                    ; 2 uses
  %i.db = ashr i32 %i.da, 31
  %i.dc = trunc i32 %i.da to i16                  ; 2 uses
  store i16 %i.dc, ptr %i.ba, align 2, !tbaa !14
  %i.dd = and i32 %i.bl, 65535
  %.neg = sub nsw i32 %i.db, %i.dd                ; 2 uses
  %i.de = ashr i32 %.neg, 16
  %i.df = trunc i32 %.neg to i16                  ; 2 uses
  store i16 %i.df, ptr %i.bh, align 2, !tbaa !14
  %i.dg = and i32 %i.bt, 65535
  %.neg169 = sub nsw i32 %i.de, %i.dg             ; 2 uses
  %i.dh = lshr i32 %.neg169, 16
  %i.di = trunc i32 %.neg169 to i16               ; 2 uses
  store i16 %i.di, ptr %i.bp, align 2, !tbaa !14
  %.neg170 = sub nsw i32 %i.dh, %i.ca
  %i.dj = trunc i32 %.neg170 to i16               ; 2 uses
  store i16 %i.dj, ptr %i.az, align 2, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader115
  %i.dk = phi i16 [ %i.dc, %.loopexit.loopexit ], [ %i.bg, %.preheader115 ]
  %i.dl = phi i16 [ %i.df, %.loopexit.loopexit ], [ %i.bo, %.preheader115 ]
  %i.dm = phi i16 [ %i.di, %.loopexit.loopexit ], [ %i.bw, %.preheader115 ]
  %i.dn = phi i16 [ %i.dj, %.loopexit.loopexit ], [ %i.cb, %.preheader115 ]
  %i.do = or i16 %i.dm, %i.dn
  %i.dp = or i16 %i.do, %i.dl
  %i.dq = or i16 %i.dp, %i.dk
  %.not.i98.not = icmp eq i16 %i.dq, 0
  br i1 %.not.i98.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.loopexit
  store i8 0, ptr %3, align 2, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.dr, align 1, !tbaa !8
  br label %bb.ac

bb.p:                                             ; preds = %.loopexit
  %i.ds = icmp eq i8 %i.a, 2
  %i.dt = icmp eq i8 %i.d, 2
  %or.cond7 = or i1 %i.ds, %i.dt
  br i1 %or.cond7, label %bb.q, label %bb.ac

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @normalize(ptr noundef nonnull %3)
  br label %bb.ac

bb.r:                                             ; preds = %.preheader
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.dv = add i16 %.sroa.10149.0.copyload.sink, 1
  store i16 %i.dv, ptr %i.du, align 2, !tbaa !15
  %i.dw = lshr i16 %i.cw, 1
  %i.dx = or disjoint i16 %i.dw, -32768
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 6
  %spec.select.1.i = tail call i16 @llvm.fshl.i16(i16 %i.cw, i16 %i.cr, i16 15)
  store i16 %spec.select.1.i, ptr %i.dy, align 2, !tbaa !14
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %spec.select.2.i = tail call i16 @llvm.fshl.i16(i16 %i.cr, i16 %i.ck, i16 15)
  store i16 %spec.select.2.i, ptr %i.dz, align 2, !tbaa !14
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 10
  %spec.select.3.i = tail call i16 @llvm.fshl.i16(i16 %i.ck, i16 %add.narrowed, i16 15)
  store i16 %spec.select.3.i, ptr %i.ea, align 2, !tbaa !14
  store i16 %i.dx, ptr %i.az, align 2, !tbaa !14
  store i8 2, ptr %3, align 2, !tbaa !11
  br label %bb.ac

bb.s:                                             ; preds = %.preheader
  %.not77 = icmp sgt i16 %i.cw, -1
  br i1 %.not77, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 2, ptr %3, align 2, !tbaa !11
  br label %bb.ac

bb.u:                                             ; preds = %bb.a
  store i8 4, ptr %3, align 2, !tbaa !11
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 32767, ptr %i.eb, align 2, !tbaa !15
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 1, ptr %i.ec, align 1, !tbaa !8
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 16384, ptr %i.ed, align 2, !tbaa !14
  %scevgep.i = getelementptr nuw i8, ptr %3, i64 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %scevgep.i, i8 0, i64 6, i1 false), !tbaa !14
  br label %bb.ac

bb.v:                                             ; preds = %bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.eg = load i16, ptr %i.ee, align 2, !tbaa !14 ; 2 uses
  %i.eh = load i16, ptr %i.ef, align 2, !tbaa !14 ; 2 uses
  %i.ei = icmp ugt i16 %i.eg, %i.eh
  br i1 %i.ei, label %choose_nan.exit, label %bb.ab

bb.w:                                             ; preds = %bb.ab
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !14 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.em = load i16, ptr %i.el, align 2, !tbaa !14 ; 2 uses
  %i.en = icmp ugt i16 %i.ek, %i.em
  br i1 %i.en, label %choose_nan.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eo = icmp ult i16 %i.ek, %i.em
  br i1 %i.eo, label %choose_nan.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !14 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.es = load i16, ptr %i.er, align 2, !tbaa !14 ; 2 uses
  %i.et = icmp ugt i16 %i.eq, %i.es
  br i1 %i.et, label %choose_nan.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = icmp ult i16 %i.eq, %i.es
  br i1 %i.eu, label %choose_nan.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !14
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !14
  %i.ez = icmp ugt i16 %i.ew, %i.ey
  %spec.select = select i1 %i.ez, ptr %1, ptr %2
  br label %choose_nan.exit

bb.ab:                                            ; preds = %bb.v
  %i.fa = icmp ult i16 %i.eg, %i.eh
  br i1 %i.fa, label %choose_nan.exit, label %bb.w

choose_nan.exit:                                  ; preds = %bb.aa, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.ab
  %.sink.i = phi ptr [ %2, %bb.ab ], [ %2, %bb.x ], [ %1, %bb.v ], [ %2, %bb.z ], [ %spec.select, %bb.aa ], [ %1, %bb.y ], [ %1, %bb.w ]
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sink.i, ptr noundef nonnull readonly align 1 dereferenceable(12) %3, i64 12, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.q, %bb.p, %bb.o, %bb.s, %bb.t, %bb.r, %bb.b, %bb.c, %choose_nan.exit, %bb.u, %bb.f, %bb.e, %bb.d, %bb.a
  %i.fb = load i8, ptr %3, align 2, !tbaa !11     ; 2 uses
  %.off.i = add i8 %i.fb, -1
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %bb.ad, label %RoundInternalFPF.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 3 uses
  %4 = load i64, ptr %i.fc, align 2, !tbaa !14
  %.not.i.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.not.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %puts.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.pr.pre.pre.i = load i8, ptr %3, align 2, !tbaa !11
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pr.pre.i = phi i8 [ %.pr.pre.pre.i, %bb.ae ], [ %i.fb, %bb.ad ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !15
  %i.fi = icmp eq i16 %i.fh, -32768
  br i1 %i.fi, label %bb.ag, label %denormalize.exit.i

bb.ag:                                            ; preds = %bb.af
  store i16 -32767, ptr %i.fg, align 2, !tbaa !15
  %.not.i12.i.i = icmp eq i8 %.pr.pre.i, 0
  br i1 %.not.i12.i.i, label %RoundInternalFPF.exit, label %denormalize.exit.thread7.i

denormalize.exit.thread7.i:                       ; preds = %bb.ag
  %.promoted.i.i.i = load i16, ptr %i.fc, align 2, !tbaa !14 ; 2 uses
  %.promoted20.i.i.i = load i16, ptr %i.fd, align 2, !tbaa !14 ; 2 uses
  %.promoted21.i.i.i = load i16, ptr %i.fe, align 2, !tbaa !14 ; 2 uses
  %.promoted22.i.i.i = load i16, ptr %i.ff, align 2, !tbaa !14 ; 2 uses
  %spec.select.1.i.i.i.i = tail call i16 @llvm.fshl.i16(i16 %.promoted.i.i.i, i16 %.promoted20.i.i.i, i16 15)
  %spec.select.2.i.i.i.i = tail call i16 @llvm.fshl.i16(i16 %.promoted20.i.i.i, i16 %.promoted21.i.i.i, i16 15)
  %spec.select.3.i.i.i.i = tail call i16 @llvm.fshl.i16(i16 %.promoted21.i.i.i, i16 %.promoted22.i.i.i, i16 15)
  %i.fj = and i16 %.promoted22.i.i.i, 1
  %spec.select.i.i.i = or i16 %spec.select.3.i.i.i.i, %i.fj
  %i.fk = lshr i16 %.promoted.i.i.i, 1
  store i16 %i.fk, ptr %i.fc, align 2, !tbaa !14
  store i16 %spec.select.1.i.i.i.i, ptr %i.fd, align 2, !tbaa !14
  store i16 %spec.select.2.i.i.i.i, ptr %i.fe, align 2, !tbaa !14
  br label %bb.ah

denormalize.exit.i:                               ; preds = %bb.af
  %.not.i101 = icmp eq i8 %.pr.pre.i, 0
  br i1 %.not.i101, label %RoundInternalFPF.exit, label %denormalize.exit.i._crit_edge

denormalize.exit.i._crit_edge:                    ; preds = %denormalize.exit.i
  %.pre = load i16, ptr %i.ff, align 2, !tbaa !14
  br label %bb.ah

bb.ah:                                            ; preds = %denormalize.exit.i._crit_edge, %denormalize.exit.thread7.i
  %i.fl = phi i16 [ %.pre, %denormalize.exit.i._crit_edge ], [ %spec.select.i.i.i, %denormalize.exit.thread7.i ]
  %i.fm = and i16 %i.fl, -8
  store i16 %i.fm, ptr %i.ff, align 2, !tbaa !14
  br label %RoundInternalFPF.exit

RoundInternalFPF.exit:                            ; preds = %bb.ac, %bb.ag, %denormalize.exit.i, %bb.ah
  ret void
}

declare i64 @StopStopwatch(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @RoundInternalFPF(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 2, !tbaa !11      ; 2 uses
  %.off = add i8 %i.a, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.b, label %denormalize.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
  %1 = load i64, ptr %i.b, align 2, !tbaa !14
  %.not.i.not.i = icmp eq i64 %1, 0
  br i1 %.not.i.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.pr.pre.pre = load i8, ptr %0, align 2, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pr.pre = phi i8 [ %.pr.pre.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !15
  %i.h = icmp eq i16 %i.g, -32768
  br i1 %i.h, label %bb.e, label %denormalize.exit

bb.e:                                             ; preds = %bb.d
  store i16 -32767, ptr %i.f, align 2, !tbaa !15
  %.not.i12.i = icmp eq i8 %.pr.pre, 0
  br i1 %.not.i12.i, label %denormalize.exit.thread, label %denormalize.exit.thread7

denormalize.exit.thread7:                         ; preds = %bb.e
  %.promoted.i.i = load i16, ptr %i.b, align 2, !tbaa !14 ; 2 uses
  %.promoted20.i.i = load i16, ptr %i.c, align 2, !tbaa !14 ; 2 uses
  %.promoted21.i.i = load i16, ptr %i.d, align 2, !tbaa !14 ; 2 uses
  %.promoted22.i.i = load i16, ptr %i.e, align 2, !tbaa !14 ; 2 uses
  %spec.select.1.i.i.i = tail call i16 @llvm.fshl.i16(i16 %.promoted.i.i, i16 %.promoted20.i.i, i16 15)
  %spec.select.2.i.i.i = tail call i16 @llvm.fshl.i16(i16 %.promoted20.i.i, i16 %.promoted21.i.i, i16 15)
  %spec.select.3.i.i.i = tail call i16 @llvm.fshl.i16(i16 %.promoted21.i.i, i16 %.promoted22.i.i, i16 15)
  %i.i = and i16 %.promoted22.i.i, 1
  %spec.select.i.i = or i16 %spec.select.3.i.i.i, %i.i
  %i.j = lshr i16 %.promoted.i.i, 1
  store i16 %i.j, ptr %i.b, align 2, !tbaa !14
  store i16 %spec.select.1.i.i.i, ptr %i.c, align 2, !tbaa !14
  store i16 %spec.select.2.i.i.i, ptr %i.d, align 2, !tbaa !14
  store i16 %spec.select.i.i, ptr %i.e, align 2, !tbaa !14
  br label %bb.f

denormalize.exit:                                 ; preds = %bb.d
  %.not = icmp eq i8 %.pr.pre, 0
  br i1 %.not, label %denormalize.exit.thread, label %bb.f

bb.f:                                             ; preds = %denormalize.exit.thread7, %denormalize.exit
  %i.k = load i16, ptr %i.e, align 2, !tbaa !14
  %i.l = and i16 %i.k, -8
  store i16 %i.l, ptr %i.e, align 2, !tbaa !14
  br label %denormalize.exit.thread

denormalize.exit.thread:                          ; preds = %bb.e, %bb.a, %denormalize.exit, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @normalize(ptr nofree noundef captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.promoted = load i16, ptr %i.a, align 2, !tbaa !14 ; 2 uses
  %i.b = icmp sgt i16 %.promoted, -1
  br i1 %i.b, label %.lr.ph, label %bb.c

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.promoted8 = load i16, ptr %i.c, align 2, !tbaa !14
  %.promoted9 = load i16, ptr %i.d, align 2, !tbaa !14
  %.promoted10 = load i16, ptr %i.e, align 2, !tbaa !14
  %.promoted11 = load i16, ptr %i.f, align 2, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.g = phi i16 [ %.promoted11, %.lr.ph ], [ %i.l, %bb.b ]
  %i.h = phi i16 [ %.promoted10, %.lr.ph ], [ %spec.select.2.i, %bb.b ] ; 2 uses
  %i.i = phi i16 [ %.promoted9, %.lr.ph ], [ %spec.select.1.i, %bb.b ] ; 2 uses
  %i.j = phi i16 [ %.promoted8, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %spec.select.3.i67 = phi i16 [ %.promoted, %.lr.ph ], [ %spec.select.3.i, %bb.b ]
  %i.k = shl i16 %i.j, 1                          ; 2 uses
  %spec.select.1.i = tail call i16 @llvm.fshl.i16(i16 %i.i, i16 %i.j, i16 1) ; 2 uses
  %spec.select.2.i = tail call i16 @llvm.fshl.i16(i16 %i.h, i16 %i.i, i16 1) ; 2 uses
  %spec.select.3.i = tail call i16 @llvm.fshl.i16(i16 %spec.select.3.i67, i16 %i.h, i16 1) ; 3 uses
  %i.l = add i16 %i.g, -1                         ; 2 uses
  %i.m = icmp sgt i16 %spec.select.3.i, -1
  br i1 %i.m, label %bb.b, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.b
  store i16 %i.k, ptr %i.c, align 2, !tbaa !14
  store i16 %spec.select.1.i, ptr %i.d, align 2, !tbaa !14
  store i16 %spec.select.2.i, ptr %i.e, align 2, !tbaa !14
  store i16 %spec.select.3.i, ptr %i.a, align 2, !tbaa !14
  store i16 %i.l, ptr %i.f, align 2, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !6, i64 1}
!9 = !{!"", !6, i64 0, !6, i64 1, !10, i64 2, !6, i64 4}
!10 = !{!"short", !6, i64 0}
!11 = !{!9, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!10, !10, i64 0}
!15 = !{!9, !10, i64 2}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = !{!6, !6, i64 0}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
end_hunk_1
