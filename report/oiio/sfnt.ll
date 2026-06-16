inline.NumInlined: 86
inline.NumDeleted: 34
begin_hunk_0_@tt_cmap6_char_next:bb.a
bb.d:                                             ; preds = %bb.c
  %i.ak = add nuw nsw i32 %.13641, 1
  %i.al = add nuw nsw i32 %.043, 1                ; 2 uses
  %i.am = icmp ult i32 %i.al, %i.l
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %i.ai, %.lr.ph ], [ 0, %bb.d ]
  %.032 = phi i32 [ 0, %bb.b ], [ %.13641, %.lr.ph ], [ 0, %bb.d ]
  store i32 %.032, ptr %1, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.a, %._crit_edge
  %.031 = phi i32 [ 0, %bb.a ], [ %.1, %._crit_edge ], [ 0, %bb.c ]
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tt_cmap6_validate(ptr nofree noundef readonly captures(address) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.c = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = icmp ugt ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
  %i.k = zext i8 %i.j to i32
  %i.l = or disjoint i32 %i.h, %i.k               ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !16
  %i.s = zext i8 %i.r to i32
  %i.t = or disjoint i32 %i.p, %i.s               ; 3 uses
  %i.u = zext nneg i32 %i.l to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %i.w = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.x = icmp ugt ptr %i.v, %i.w
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = shl nuw nsw i32 %i.t, 1
  %i.z = add nuw nsw i32 %i.y, 10
  %i.aa = icmp samesign ult i32 %i.l, %i.z
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ac = load volatile i32, ptr %i.ab, align 8, !tbaa !21
  %.not = icmp eq i32 %i.ac, 0
  %.not2628 = icmp eq i32 %i.t, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not2628
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 224
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %.030 = phi ptr [ %i.a, %.lr.ph ], [ %i.ae, %bb.i ] ; 3 uses
  %.02529 = phi i32 [ %i.t, %.lr.ph ], [ %i.an, %bb.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.030, i64 2
  %i.af = load i8, ptr %.030, align 1, !tbaa !16
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.030, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.ak = zext i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ah, %i.ak
  %i.am = load i32, ptr %i.ad, align 8, !tbaa !22
  %.not27 = icmp ult i32 %i.al, %i.am
  br i1 %.not27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 16) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.an = add nsw i32 %.02529, -1                 ; 2 uses
  %.not26 = icmp eq i32 %i.an, 0
  br i1 %.not26, label %.loopexit, label %bb.g, !llvm.loop !44

.loopexit:                                        ; preds = %bb.i, %bb.f
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @tt_cmap6_get_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 6, ptr %i.d, align 8, !tbaa !25
  %i.e = load i8, ptr %i.c, align 1, !tbaa !16
  %i.f = zext i8 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16
  %i.j = zext i8 %i.i to i64
  %i.k = or disjoint i64 %i.g, %i.j
  store i64 %i.k, ptr %1, align 8, !tbaa !28
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @tt_cmap8_char_index(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8204
  %i.d = load i32, ptr %i.c, align 1              ; 2 uses
  %.not57 = icmp eq i32 %i.d, 0
  br i1 %.not57, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8208
  br label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.03759, i64 12
  %i.h = add i32 %.03858, -1                      ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !45

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.03759 = phi ptr [ %i.g, %bb.b ], [ %i.f, %.lr.ph.preheader ] ; 4 uses
  %.03858 = phi i32 [ %i.h, %bb.b ], [ %i.e, %.lr.ph.preheader ]
  %i.i = load i32, ptr %.03759, align 1
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)  ; 2 uses
  %i.k = icmp ult i32 %1, %i.j
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.03759, i64 4
  %i.m = load i32, ptr %i.l, align 1
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)
  %.not41 = icmp ugt i32 %1, %i.n
  br i1 %.not41, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.03759, i64 8
  %i.p = load i32, ptr %i.o, align 1
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)  ; 2 uses
  %i.r = sub i32 %1, %i.j                         ; 2 uses
  %i.s = xor i32 %i.r, -1
  %i.t = icmp ugt i32 %i.q, %i.s
  %i.u = add i32 %i.q, %i.r
  %spec.select = select i1 %i.t, i32 0, i32 %i.u
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ %spec.select, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, -1) i32 @tt_cmap8_char_next(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8204
  %i.g = load i32, ptr %i.f, align 1              ; 2 uses
  %.not71 = icmp eq i32 %i.g, 0
  br i1 %.not71, label %.loopexit61, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.b
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8208
  %i.j = add nuw i32 %i.b, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph75, %.loopexit
  %.05074 = phi i32 [ %i.j, %.lr.ph75 ], [ %.265, %.loopexit ]
  %.05173 = phi i32 [ %i.h, %.lr.ph75 ], [ %i.aq, %.loopexit ]
  %.05272 = phi ptr [ %i.i, %.lr.ph75 ], [ %i.o, %.loopexit ] ; 10 uses
  %i.l = load i32, ptr %.05272, align 1
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)  ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %.05272, i64 4
  %3 = load i8, ptr %2, align 1, !tbaa !16
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 %4, 24                         ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.05272, i64 5
  %7 = load i8, ptr %6, align 1, !tbaa !16
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 16                     ; 2 uses
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr inbounds nuw i8, ptr %.05272, i64 6
  %12 = load i8, ptr %11, align 1, !tbaa !16
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8                    ; 2 uses
  %15 = or disjoint i32 %10, %14
  %i.n = getelementptr inbounds nuw i8, ptr %.05272, i64 7
  %16 = load i8, ptr %i.n, align 1, !tbaa !16
  %17 = zext i8 %16 to i32                        ; 2 uses
  %18 = or disjoint i32 %15, %17                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05272, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %.05272, i64 8
  %i.q = load i8, ptr %i.p, align 1, !tbaa !16
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw i32 %i.r, 24
  %i.t = getelementptr inbounds nuw i8, ptr %.05272, i64 9
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 16
  %i.x = or disjoint i32 %i.w, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %.05272, i64 10
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = or disjoint i32 %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.05272, i64 11
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !16
  %i.af = zext i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ac, %i.af            ; 2 uses
  %spec.select = tail call i32 @llvm.umax.i32(i32 %.05074, i32 %i.m) ; 3 uses
  %.not5967 = icmp ugt i32 %spec.select, %18
  br i1 %.not5967, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %19 = or disjoint i32 %5, %9
  %20 = or disjoint i32 %19, %14
  %21 = or disjoint i32 %20, 1
  %22 = add i32 %21, %17
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.268 = phi i32 [ %i.an, %bb.f ], [ %spec.select, %.lr.ph.preheader ] ; 7 uses
  %i.ah = sub i32 %.268, %i.m                     ; 2 uses
  %i.ai = xor i32 %i.ah, -1
  %i.aj = icmp ugt i32 %i.ag, %i.ai
  br i1 %i.aj, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ak = add i32 %i.ah, %i.ag                    ; 3 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.am = icmp eq i32 %.268, -1
  br i1 %i.am, label %.loopexit61, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = add nuw i32 %.268, 1
  %.not59.not = icmp ult i32 %.268, %18
  br i1 %.not59.not, label %.lr.ph, label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.ao = load i64, ptr %i.k, align 8, !tbaa !46
  %i.ap = trunc i64 %i.ao to i32
  %.not60 = icmp ult i32 %i.ak, %i.ap
  br i1 %.not60, label %.loopexit61, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %bb.c, %bb.g
  %.265 = phi i32 [ %.268, %bb.g ], [ %spec.select, %bb.c ], [ %.268, %.lr.ph ], [ %22, %bb.f ]
  %i.aq = add i32 %.05173, -1                     ; 2 uses
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %.loopexit61, label %bb.c, !llvm.loop !62

.loopexit61:                                      ; preds = %.loopexit, %bb.g, %bb.e, %bb.b
  %.3 = phi i32 [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %.loopexit ], [ %i.ak, %bb.g ]
  %.049 = phi i32 [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %.loopexit ], [ %.268, %bb.g ]
  store i32 %.049, ptr %1, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %.loopexit61
  %.0 = phi i32 [ %.3, %.loopexit61 ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tt_cmap8_validate(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8208 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.c = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = icmp ugt ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 1
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.f)  ; 2 uses
  %i.h = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp ugt i32 %i.g, %i.l
  %i.n = icmp ult i32 %i.g, 8208
  %or.cond = or i1 %i.n, %i.m
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8204
  %i.q = load i8, ptr %i.p, align 1, !tbaa !16
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw i32 %i.r, 24                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8205
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 16                 ; 2 uses
  %i.x = or disjoint i32 %i.w, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8206
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8                ; 2 uses
  %i.ac = or disjoint i32 %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8207
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !16
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %i.ag = or disjoint i32 %i.ac, %i.af            ; 2 uses
  %i.ah = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.a to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = udiv i32 %i.al, 12
  %i.an = icmp ugt i32 %i.ag, %i.am
  br i1 %i.an, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %.lr.ph114

bb.f:                                             ; preds = %bb.e
  %.not115 = icmp eq i32 %i.ag, 0
  br i1 %.not115, label %._crit_edge, label %.lr.ph114

.lr.ph114:                                        ; preds = %.thread, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.aq = or disjoint i32 %i.s, %i.w
  %i.ar = or disjoint i32 %i.aq, %i.ab
  %i.as = or disjoint i32 %i.ar, %i.af
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph114, %.loopexit
  %.0113 = phi ptr [ %i.a, %.lr.ph114 ], [ %i.cc, %.loopexit ] ; 13 uses
  %.086112 = phi i32 [ 0, %.lr.ph114 ], [ %i.ej, %.loopexit ] ; 2 uses
  %.087111 = phi i32 [ 0, %.lr.ph114 ], [ %i.cb, %.loopexit ]
  %i.at = load i8, ptr %.0113, align 1, !tbaa !16
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw i32 %i.au, 24
  %i.aw = getelementptr inbounds nuw i8, ptr %.0113, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !16
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 16
  %i.ba = or disjoint i32 %i.az, %i.av            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0113, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !16
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.0113, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !16
  %i.bh = zext i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.be, %i.bh
  %i.bj = or disjoint i32 %i.bi, %i.ba            ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0113, i64 4
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !16
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw i32 %i.bm, 24
  %i.bo = getelementptr inbounds nuw i8, ptr %.0113, i64 5
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !16
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 16
  %i.bs = or disjoint i32 %i.br, %i.bn            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0113, i64 6
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.0113, i64 7
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !16
  %i.bz = zext i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bw, %i.bz
  %i.cb = or disjoint i32 %i.ca, %i.bs            ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0113, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr %.0113, i64 8
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !16
  %i.cf = zext i8 %i.ce to i32
  %i.cg = shl nuw i32 %i.cf, 24
  %i.ch = getelementptr inbounds nuw i8, ptr %.0113, i64 9
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !16
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 16
  %i.cl = or disjoint i32 %i.ck, %i.cg
  %i.cm = getelementptr inbounds nuw i8, ptr %.0113, i64 10
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !16
  %i.co = zext i8 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 8
  %i.cq = or disjoint i32 %i.cl, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.0113, i64 11
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !16
  %i.ct = zext i8 %i.cs to i32
  %i.cu = or disjoint i32 %i.cq, %i.ct
  %i.cv = icmp ugt i32 %i.bj, %i.cb
  br i1 %i.cv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ft_validator_error(ptr noundef %1, i32 noundef 8) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not = icmp eq i32 %.086112, 0
  %.not93 = icmp ugt i32 %i.bj, %.087111
  %or.cond101 = select i1 %.not, i1 true, i1 %.not93
  br i1 %or.cond101, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @ft_validator_error(ptr noundef %1, i32 noundef 8) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cw = load volatile i32, ptr %i.ao, align 8, !tbaa !21
  %.not94 = icmp eq i32 %i.cw, 0
  br i1 %.not94, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = sub i32 %i.cb, %i.bj                    ; 3 uses
  %i.cy = load i32, ptr %i.ap, align 8, !tbaa !22 ; 2 uses
  %i.cz = icmp ule i32 %i.cx, %i.cy
  %i.da = sub nuw i32 %i.cy, %i.cx
  %.not95 = icmp ult i32 %i.cu, %i.da
  %or.cond102 = select i1 %i.cz, i1 %.not95, i1 false
  br i1 %or.cond102, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 16) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.db = add i32 %i.cx, 1                        ; 4 uses
  %.not96 = icmp eq i32 %i.ba, 0
  br i1 %.not96, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.n
  %.not100104 = icmp eq i32 %i.db, 0
  br i1 %.not100104, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.r
  %.088106 = phi i32 [ %i.dw, %bb.r ], [ %i.db, %.preheader ]
  %.089105 = phi i32 [ %i.dx, %bb.r ], [ %i.bj, %.preheader ] ; 5 uses
  %i.dc = lshr i32 %.089105, 16
  %i.dd = lshr i32 %.089105, 19
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.de
end_hunk_0
begin_hunk_1_@tt_cmap12_char_map_binary:bb.a
  %i.g = zext nneg i8 %2 to i32
  %i.h = add i32 %i.f, %i.g                       ; 5 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.e
  %.071 = phi i32 [ %.172, %bb.e ], [ %i.e, %bb.a ] ; 2 uses
  %.069 = phi i32 [ %.170, %bb.e ], [ 0, %bb.a ]  ; 2 uses
  %i.i = add i32 %.069, %.071
  %i.j = lshr i32 %i.i, 1                         ; 5 uses
  %i.k = mul i32 %i.j, 12
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.l ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 1
  %i.p = tail call i32 @llvm.bswap.i32(i32 %i.o)  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.r = load i8, ptr %i.q, align 1, !tbaa !16
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw i32 %i.s, 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 21
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 16
  %i.y = or disjoint i32 %i.x, %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 22
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = or disjoint i32 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 23
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %i.ag = zext i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ad, %i.ag            ; 2 uses
  %i.ai = icmp ult i32 %i.h, %i.p
  br i1 %i.ai, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.aj = icmp ugt i32 %i.h, %i.ah
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ak = add nuw i32 %i.j, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.am = load i32, ptr %i.al, align 1
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.am) ; 2 uses
  %i.ao = sub i32 %i.h, %i.p                      ; 2 uses
  %i.ap = xor i32 %i.ao, -1
  %i.aq = icmp ugt i32 %i.an, %i.ap
  %i.ar = add i32 %i.an, %i.ao
  %spec.select = select i1 %i.aq, i32 0, i32 %i.ar
  br label %.loopexit

bb.e:                                             ; preds = %.preheader, %bb.c
  %.172 = phi i32 [ %.071, %bb.c ], [ %i.j, %.preheader ] ; 2 uses
  %.170 = phi i32 [ %i.ak, %bb.c ], [ %.069, %.preheader ] ; 2 uses
  %i.as = icmp ult i32 %.170, %.172
  br i1 %i.as, label %.preheader, label %.loopexit, !llvm.loop !72

.loopexit:                                        ; preds = %bb.e, %bb.d
  %.065 = phi i32 [ %spec.select, %bb.d ], [ 0, %bb.e ] ; 5 uses
  %.not76 = icmp eq i8 %2, 0
  br i1 %.not76, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.at = load ptr, ptr %0, align 8, !tbaa !40
  %i.au = icmp ugt i32 %i.h, %i.ah
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = add nuw i32 %i.j, 1                     ; 2 uses
  %i.aw = icmp eq i32 %i.av, %i.e
  br i1 %i.aw, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.068 = phi i32 [ %i.av, %bb.g ], [ %i.j, %bb.f ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 1, ptr %i.ax, align 8, !tbaa !71
  %i.ay = zext i32 %i.h to i64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !73
  %i.ba = zext i32 %.068 to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !741
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !46
  %i.be = trunc i64 %i.bd to i32
  %.not77 = icmp uge i32 %.065, %i.be
  %.not7880 = icmp eq i32 %.065, 0
  %.not78 = or i1 %.not7880, %.not77
  br i1 %.not78, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @tt_cmap12_next(ptr noundef nonnull %0)
  %i.bf = load i8, ptr %i.ax, align 8, !tbaa !71
  %.not79 = icmp eq i8 %i.bf, 0
  br i1 %.not79, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !74
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.065, ptr %i.bi, align 8, !tbaa !74
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.166 = phi i32 [ %.065, %bb.k ], [ %i.bh, %bb.j ], [ 0, %bb.i ]
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !73
  %i.bk = trunc i64 %i.bj to i32
  store i32 %i.bk, ptr %1, align 4, !tbaa !3
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.loopexit, %bb.l, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %.065, %.loopexit ], [ %.166, %bb.l ], [ 0, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @tt_cmap12_next(ptr nofree noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !741  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %.lr.ph65, label %.loopexit50

.lr.ph65:                                         ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !73
  %i.h = add i64 %i.g, 1
  %i.i = load ptr, ptr %0, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph65, %.loopexit
  %.064 = phi i64 [ %i.h, %.lr.ph65 ], [ %.254, %.loopexit ]
  %.04562 = phi i64 [ %i.c, %.lr.ph65 ], [ %i.bq, %.loopexit ] ; 3 uses
  %i.m = mul i64 %.04562, 12
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %i.o, align 1
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 24                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 21
  %i.y = load i8, ptr %i.x, align 1, !tbaa !16
  %i.z = zext i8 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 16                ; 2 uses
  %i.ab = or disjoint i64 %i.aa, %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 22
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 8                ; 2 uses
  %i.ag = or disjoint i64 %i.ab, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 23
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16
  %i.aj = zext i8 %i.ai to i64                    ; 2 uses
  %i.ak = or disjoint i64 %i.ag, %i.aj            ; 2 uses
  %i.al = load i8, ptr %i.s, align 1, !tbaa !16
  %i.am = zext i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 25
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 16
  %i.as = or disjoint i64 %i.ar, %i.an
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 26
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 8
  %i.ax = or disjoint i64 %i.as, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 27
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16
  %i.ba = zext i8 %i.az to i64
  %i.bb = or disjoint i64 %i.ax, %i.ba            ; 2 uses
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.064, i64 %i.r) ; 3 uses
  %.not58 = icmp ugt i64 %spec.select, %i.ak
  br i1 %.not58, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.bc = or disjoint i64 %i.w, %i.aa
  %i.bd = or disjoint i64 %i.bc, %i.af
  %i.be = or disjoint i64 %i.bd, 1
  %i.bf = add nuw nsw i64 %i.be, %i.aj
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.259 = phi i64 [ %i.bm, %bb.e ], [ %spec.select, %.lr.ph.preheader ] ; 7 uses
  %i.bg = sub nsw i64 %.259, %i.r                 ; 2 uses
  %i.bh = sub nsw i64 4294967295, %i.bg
  %i.bi = icmp ugt i64 %i.bb, %i.bh
  br i1 %i.bi, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.bj = add nsw i64 %i.bg, %i.bb
  %i.bk = trunc i64 %i.bj to i32                  ; 3 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %exitcond = icmp eq i64 %.259, 4294967295
  br i1 %exitcond, label %.loopexit50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = add nuw nsw i64 %.259, 1
  %.not.not = icmp ult i64 %.259, %i.ak
  br i1 %.not.not, label %.lr.ph, label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.bn = load i64, ptr %i.l, align 8, !tbaa !46
  %i.bo = trunc i64 %i.bn to i32
  %.not49 = icmp ult i32 %i.bk, %i.bo
  br i1 %.not49, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  store i64 %.259, ptr %i.a, align 8, !tbaa !73
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.bk, ptr %i.bp, align 8, !tbaa !74
  store i64 %.04562, ptr %i.b, align 8, !tbaa !741
  br label %bb.h

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %bb.b, %bb.f
  %.254 = phi i64 [ %.259, %bb.f ], [ %spec.select, %bb.b ], [ %.259, %.lr.ph ], [ %i.bf, %bb.e ]
  %i.bq = add nuw i64 %.04562, 1                  ; 2 uses
  %exitcond72.not = icmp eq i64 %i.bq, %i.e
  br i1 %exitcond72.not, label %.loopexit50, label %bb.b, !llvm.loop !742

.loopexit50:                                      ; preds = %.loopexit, %bb.d, %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.br, align 8, !tbaa !71
  br label %bb.h

bb.h:                                             ; preds = %.loopexit50, %bb.g
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @tt_cmap13_char_map_binary(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 1              ; 2 uses
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)  ; 2 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !3
  %i.g = zext nneg i8 %2 to i32
  %i.h = add i32 %i.f, %i.g                       ; 6 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.e
  %.065 = phi i32 [ %.166, %bb.e ], [ %i.e, %bb.a ] ; 2 uses
  %.063 = phi i32 [ %.164, %bb.e ], [ 0, %bb.a ]  ; 2 uses
  %i.i = add i32 %.063, %.065
  %i.j = lshr i32 %i.i, 1                         ; 5 uses
  %i.k = mul i32 %i.j, 12
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.l ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 1
  %i.p = tail call i32 @llvm.bswap.i32(i32 %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.r = load i8, ptr %i.q, align 1, !tbaa !16
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw i32 %i.s, 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 21
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 16
  %i.y = or disjoint i32 %i.x, %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 22
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = or disjoint i32 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 23
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %i.ag = zext i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ad, %i.ag            ; 2 uses
  %i.ai = icmp ult i32 %i.h, %i.p
  br i1 %i.ai, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.aj = icmp ugt i32 %i.h, %i.ah
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ak = add nuw i32 %i.j, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.am = load i32, ptr %i.al, align 1
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.am)
  br label %.loopexit

bb.e:                                             ; preds = %.preheader, %bb.c
  %.166 = phi i32 [ %.065, %bb.c ], [ %i.j, %.preheader ] ; 2 uses
  %.164 = phi i32 [ %i.ak, %bb.c ], [ %.063, %.preheader ] ; 2 uses
  %i.ao = icmp ult i32 %.164, %.166
  br i1 %i.ao, label %.preheader, label %.loopexit, !llvm.loop !81

.loopexit:                                        ; preds = %bb.e, %bb.d
  %.059 = phi i32 [ %i.an, %bb.d ], [ 0, %bb.e ]  ; 5 uses
  %.not69 = icmp eq i8 %2, 0
  br i1 %.not69, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !743
  %i.aq = icmp ugt i32 %i.h, %i.ah
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = add nuw i32 %i.j, 1                     ; 2 uses
  %i.as = icmp eq i32 %i.ar, %i.e
  br i1 %i.as, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.062 = phi i32 [ %i.ar, %bb.g ], [ %i.j, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 1, ptr %i.at, align 8, !tbaa !80
  %i.au = zext i32 %i.h to i64                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 %i.au, ptr %i.av, align 8, !tbaa !82
  %i.aw = zext i32 %.062 to i64                   ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !83
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !46
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  %.not70 = icmp uge i32 %.059, %i.ba
  %.not7174 = icmp eq i32 %.059, 0
  %.not71 = or i1 %.not7174, %.not70
  br i1 %.not71, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !79 ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, %i.aw
  br i1 %i.bd, label %.lr.ph.i, label %tt_cmap13_next.exit.thread

.lr.ph.i:                                         ; preds = %bb.i
  %i.be = add nuw nsw i64 %i.au, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i
  %.044.i = phi i64 [ %i.be, %.lr.ph.i ], [ %spec.select.i, %bb.k ]
  %.03843.i = phi i64 [ %i.aw, %.lr.ph.i ], [ %i.bu, %bb.k ] ; 3 uses
  %i.bf = mul i64 %.03843.i, 12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i32, ptr %i.bh, align 1
  %i.bj = tail call i32 @llvm.bswap.i32(i32 %i.bi)
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.bn = load i32, ptr %i.bm, align 1
  %i.bo = tail call i32 @llvm.bswap.i32(i32 %i.bn)
  %i.bp = zext i32 %i.bo to i64
  %i.bq = load i32, ptr %i.bl, align 1            ; 2 uses
  %i.br = tail call i32 @llvm.bswap.i32(i32 %i.bq) ; 3 uses
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %.044.i, i64 %i.bk) ; 4 uses
  %.not.i = icmp ule i64 %spec.select.i, %i.bp
  %.not41.i = icmp ne i32 %i.bq, 0
  %i.bs = icmp ult i32 %i.br, %i.ba
  %i.bt = and i1 %.not41.i, %i.bs
  %or.cond = select i1 %.not.i, i1 %i.bt, i1 false
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = add i64 %.03843.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bu, %i.bc
  br i1 %exitcond.not.i, label %tt_cmap13_next.exit.thread, label %bb.j, !llvm.loop !84

tt_cmap13_next.exit.thread:                       ; preds = %bb.k, %bb.i
  store i8 0, ptr %i.at, align 8, !tbaa !80
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  store i64 %spec.select.i, ptr %i.av, align 8, !tbaa !82
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.br, ptr %i.bv, align 8, !tbaa !85
  store i64 %.03843.i, ptr %i.ax, align 8, !tbaa !83
  %i.bw = trunc nuw i64 %spec.select.i to i32
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.059, ptr %i.bx, align 8, !tbaa !85
  br label %bb.n

bb.n:                                             ; preds = %tt_cmap13_next.exit.thread, %bb.l, %bb.m
  %i.by = phi i32 [ %i.h, %bb.m ], [ %i.bw, %bb.l ], [ %i.h, %tt_cmap13_next.exit.thread ]
  %.160 = phi i32 [ %.059, %bb.m ], [ %i.br, %bb.l ], [ 0, %tt_cmap13_next.exit.thread ]
  store i32 %i.by, ptr %1, align 4, !tbaa !3
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.loopexit, %bb.n, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %.059, %.loopexit ], [ %.160, %bb.n ], [ 0, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @tt_cmap14_get_def_chars(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !16      ; 2 uses
end_hunk_1
