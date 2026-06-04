inline.NumInlined: 13
inline.NumDeleted: 2
begin_hunk_0_@_ZL22uprv_writeDirectUInt16Ptt:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZL20uprv_writeSwapUInt16Ptt(ptr noundef writeonly captures(none) initializes((0, 2)) %0, i16 noundef zeroext %1) #6 {
bb.a:
  %i.a = tail call i16 @llvm.bswap.i16(i16 %1)
  store i16 %i.a, ptr %0, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZL22uprv_writeDirectUInt32Pjj(ptr noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) #6 {
bb.a:
  store i32 %1, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZL20uprv_writeSwapUInt32Pjj(ptr noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) #6 {
bb.a:
  %i.a = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %i.a, ptr %0, align 4
  ret void
}

declare i32 @uprv_compareInvAscii_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #7

declare i32 @uprv_compareInvEbcdic_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 0, -2147483648) i32 @_ZL16uprv_copyArray16PK12UDataSwapperPKviPvP10UErrorCode(ptr noundef readnone captures(address_is_null) %0, ptr noundef readonly captures(address) %1, i32 noundef %2, ptr noundef writeonly captures(address) %3, ptr noundef captures(address_is_null) %4) #8 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %2, 0
  %or.cond3 = or i1 %or.cond, %i.f
  %i.g = trunc i32 %2 to i1
  %i.h = icmp eq ptr %3, null
  %or.cond5 = or i1 %i.h, %i.g
  %or.cond26 = or i1 %or.cond3, %or.cond5
  br i1 %or.cond26, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %4, align 4
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %2, 0
  %.not24 = icmp eq ptr %1, %3
  %or.cond27 = or i1 %i.i, %.not24
  br i1 %or.cond27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 1 %1, i64 %i.j, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.b, %bb.d
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ], [ %2, %bb.f ], [ %2, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 0, -2147483648) i32 @_ZL16uprv_copyArray32PK12UDataSwapperPKviPvP10UErrorCode(ptr noundef readnone captures(address_is_null) %0, ptr noundef readonly captures(address) %1, i32 noundef %2, ptr noundef writeonly captures(address) %3, ptr noundef captures(address_is_null) %4) #8 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %2, 0
  %or.cond3 = or i1 %or.cond, %i.f
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %2, 3
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp eq ptr %3, null
  %or.cond5 = or i1 %i.h, %i.i
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i32 %2, 0
  %.not24 = icmp eq ptr %1, %3
  %or.cond25 = or i1 %i.j, %.not24
  br i1 %or.cond25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 1 %1, i64 %i.k, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a, %bb.b, %bb.e
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ %2, %bb.g ], [ %2, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 0, -2147483648) i32 @_ZL16uprv_copyArray64PK12UDataSwapperPKviPvP10UErrorCode(ptr noundef readnone captures(address_is_null) %0, ptr noundef readonly captures(address) %1, i32 noundef %2, ptr noundef writeonly captures(address) %3, ptr noundef captures(address_is_null) %4) #8 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %2, 0
  %or.cond3 = or i1 %or.cond, %i.f
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %2, 7
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp eq ptr %3, null
  %or.cond5 = or i1 %i.h, %i.i
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i32 %2, 0
  %.not24 = icmp eq ptr %1, %3
  %or.cond25 = or i1 %i.j, %.not24
  br i1 %or.cond25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 1 %1, i64 %i.k, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a, %bb.b, %bb.e
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ %2, %bb.g ], [ %2, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef range(i32 0, -2147483648) i32 @_ZL16uprv_swapArray16PK12UDataSwapperPKviPvP10UErrorCode(ptr noundef readnone captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4) #9 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = icmp eq ptr %4, null
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %0, null
  %i.g = icmp eq ptr %1, null
  %or.cond = or i1 %i.f, %i.g
  %i.h = icmp slt i32 %2, 0
  %or.cond3 = or i1 %or.cond, %i.h
  %i.i = trunc i32 %2 to i1
  %i.j = icmp eq ptr %3, null
  %or.cond5 = or i1 %i.j, %i.i
  %or.cond31 = or i1 %or.cond3, %or.cond5
  br i1 %or.cond31, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %4, align 4
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %i.k = lshr exact i32 %2, 1                     ; 4 uses
  %i.l = zext nneg i32 %i.k to i64                ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.m = sub i64 %i.b, %i.a
  %diff.check = icmp ult i64 %i.m, 32
  %or.cond55 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond55, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check39 = icmp ult i32 %2, 32
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.l, 12
  %n.vec = and i64 %i.l, 1073741808               ; 5 uses
  %i.n = trunc nuw nsw i64 %n.vec to i32
  %i.o = sub nsw i32 %i.k, %i.n
  %i.p = shl nuw nsw i64 %n.vec, 1                ; 2 uses
  %i.q = getelementptr i8, ptr %3, i64 %i.p
  %i.r = getelementptr i8, ptr %1, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %3, i64 %i.s  ; 2 uses
  %next.gep40 = getelementptr i8, ptr %1, i64 %i.s ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep40, align 2
  %wide.load41 = load <8 x i16>, ptr %i.t, align 2
  %i.u = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.v = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load41)
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.u, ptr %next.gep, align 2
  store <8 x i16> %i.v, ptr %i.w, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.l
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !11

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.l, 1073741820             ; 4 uses
  %i.y = trunc nuw nsw i64 %n.vec45 to i32
  %i.z = sub nsw i32 %i.k, %i.y
  %i.aa = shl nuw nsw i64 %n.vec45, 1             ; 2 uses
  %i.ab = getelementptr i8, ptr %3, i64 %i.aa
  %i.ac = getelementptr i8, ptr %1, i64 %i.aa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ] ; 2 uses
  %i.ad = shl i64 %index46, 1                     ; 2 uses
  %next.gep47 = getelementptr i8, ptr %3, i64 %i.ad
  %next.gep48 = getelementptr i8, ptr %1, i64 %i.ad
  %wide.load49 = load <4 x i16>, ptr %next.gep48, align 2
  %5 = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load49)
  store <4 x i16> %5, ptr %next.gep47, align 2
  %index.next50 = add nuw i64 %index46, 4         ; 2 uses
  %i.ae = icmp eq i64 %index.next50, %n.vec45
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n51 = icmp eq i64 %n.vec45, %i.l
  br i1 %cmp.n51, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02334.ph = phi i32 [ %i.k, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  %.02433.ph = phi ptr [ %3, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  %.02532.ph = phi ptr [ %1, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02334 = phi i32 [ %i.aj, %.lr.ph ], [ %.02334.ph, %.lr.ph.preheader ] ; 2 uses
  %.02433 = phi ptr [ %i.ai, %.lr.ph ], [ %.02433.ph, %.lr.ph.preheader ] ; 2 uses
  %.02532 = phi ptr [ %i.af, %.lr.ph ], [ %.02532.ph, %.lr.ph.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.02532, i64 2
  %i.ag = load i16, ptr %.02532, align 2
  %i.ah = tail call i16 @llvm.bswap.i16(i16 %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %.02433, i64 2
  store i16 %i.ah, ptr %.02433, align 2
  %i.aj = add nsw i32 %.02334, -1
  %i.ak = icmp samesign ugt i32 %.02334, 1
  br i1 %i.ak, label %.lr.ph, label %.loopexit, !llvm.loop !13

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.a, %bb.b, %bb.d
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ %2, %middle.block ], [ %2, %vec.epilog.middle.block ], [ %2, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef range(i32 0, -2147483648) i32 @_ZL16uprv_swapArray32PK12UDataSwapperPKviPvP10UErrorCode(ptr noundef readnone captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4) #9 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = icmp eq ptr %4, null
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %0, null
  %i.g = icmp eq ptr %1, null
  %or.cond = or i1 %i.f, %i.g
  %i.h = icmp slt i32 %2, 0
  %or.cond3 = or i1 %or.cond, %i.h
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %2, 3
  %i.j = icmp ne i32 %i.i, 0
  %i.k = icmp eq ptr %3, null
  %or.cond5 = or i1 %i.j, %i.k
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.l = lshr exact i32 %2, 2                     ; 3 uses
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %min.iters.check = icmp ult i32 %2, 32
  %i.n = sub i64 %i.b, %i.a
  %diff.check = icmp ult i64 %i.n, 32
  %or.cond43 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond43, label %.lr.ph.preheader44, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.m, 536870904                ; 4 uses
  %i.o = trunc nuw nsw i64 %n.vec to i32
  %i.p = sub nsw i32 %i.l, %i.o
  %i.q = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.r = getelementptr i8, ptr %3, i64 %i.q
  %i.s = getelementptr i8, ptr %1, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %3, i64 %i.t  ; 2 uses
  %next.gep39 = getelementptr i8, ptr %1, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep39, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep39, align 4
  %wide.load40 = load <4 x i32>, ptr %i.u, align 4
  %i.v = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.w = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load40)
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.v, ptr %next.gep, align 4
  store <4 x i32> %i.w, ptr %i.x, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader44

.lr.ph.preheader44:                               ; preds = %.lr.ph.preheader, %middle.block
  %.02534.ph = phi i32 [ %i.l, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  %.02633.ph = phi ptr [ %3, %.lr.ph.preheader ], [ %i.r, %middle.block ]
  %.02732.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader44, %.lr.ph
  %.02534 = phi i32 [ %i.ad, %.lr.ph ], [ %.02534.ph, %.lr.ph.preheader44 ] ; 2 uses
  %.02633 = phi ptr [ %i.ac, %.lr.ph ], [ %.02633.ph, %.lr.ph.preheader44 ] ; 2 uses
  %.02732 = phi ptr [ %i.z, %.lr.ph ], [ %.02732.ph, %.lr.ph.preheader44 ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02732, i64 4
  %i.aa = load i32, ptr %.02732, align 4
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %.02633, i64 4
  store i32 %i.ab, ptr %.02633, align 4
  %i.ad = add nsw i32 %.02534, -1
  %i.ae = icmp samesign ugt i32 %.02534, 1
  br i1 %i.ae, label %.lr.ph, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.f, %bb.a, %bb.b, %bb.e
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.f ], [ %2, %middle.block ], [ %2, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef range(i32 0, -2147483648) i32 @_ZL16uprv_swapArray64PK12UDataSwapperPKviPvP10UErrorCode(ptr noundef readnone captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4) #9 {
bb.a:
  %5 = ptrtoaddr ptr %1 to i64
  %6 = ptrtoaddr ptr %3 to i64
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %2, 0
  %or.cond3 = or i1 %or.cond, %i.f
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %2, 7
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp eq ptr %3, null
  %or.cond5 = or i1 %i.h, %i.i
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.j = lshr exact i32 %2, 3                     ; 3 uses
  %7 = zext nneg i32 %i.j to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %2, 48
  %8 = sub i64 %6, %5
  %diff.check = icmp ult i64 %8, 32
  %or.cond48 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond48, label %.lr.ph.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %7, 268435452                  ; 4 uses
  %9 = trunc nuw nsw i64 %n.vec to i32
  %10 = sub nsw i32 %i.j, %9
  %11 = shl nuw nsw i64 %n.vec, 3                 ; 2 uses
  %12 = getelementptr i8, ptr %3, i64 %11
  %13 = getelementptr i8, ptr %1, i64 %11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %14 = shl i64 %index, 3                         ; 2 uses
  %next.gep = getelementptr i8, ptr %3, i64 %14   ; 2 uses
  %next.gep44 = getelementptr i8, ptr %1, i64 %14 ; 2 uses
  %15 = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep44, align 8
  %wide.load45 = load <2 x i64>, ptr %15, align 8
  %16 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load)
  %17 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load45)
  %18 = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %16, ptr %next.gep, align 8
  store <2 x i64> %17, ptr %18, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %19 = icmp eq i64 %index.next, %n.vec
  br i1 %19, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %7
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader49

.lr.ph.preheader49:                               ; preds = %.lr.ph.preheader, %middle.block
  %.03039.ph = phi i32 [ %i.j, %.lr.ph.preheader ], [ %10, %middle.block ]
  %.03138.ph = phi ptr [ %3, %.lr.ph.preheader ], [ %12, %middle.block ]
  %.03237.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %13, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader49, %.lr.ph
  %.03039 = phi i32 [ %i.o, %.lr.ph ], [ %.03039.ph, %.lr.ph.preheader49 ] ; 2 uses
  %.03138 = phi ptr [ %i.n, %.lr.ph ], [ %.03138.ph, %.lr.ph.preheader49 ] ; 2 uses
  %.03237 = phi ptr [ %i.k, %.lr.ph ], [ %.03237.ph, %.lr.ph.preheader49 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.03237, i64 8
  %i.l = load i64, ptr %.03237, align 8
  %i.m = tail call i64 @llvm.bswap.i64(i64 %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %.03138, i64 8
  store i64 %i.m, ptr %.03138, align 8
  %i.o = add nsw i32 %.03039, -1
  %i.p = icmp samesign ugt i32 %.03039, 1
  br i1 %i.p, label %.lr.ph, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.f, %bb.a, %bb.b, %bb.e
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.f ], [ %2, %middle.block ], [ %2, %.lr.ph ]
  ret i32 %.0
}

declare i32 @uprv_copyAscii_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #7

declare i32 @uprv_ebcdicFromAscii_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #7

declare i32 @uprv_copyEbcdic_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #7

declare i32 @uprv_asciiFromEbcdic_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @udata_openSwapperForInputData_78(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, i8 noundef signext %2, i8 noundef zeroext %3, ptr noundef captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %or.cond = icmp ult i32 %1, 24
  %i.e = icmp ugt i8 %3, 1
  %or.cond4 = or i1 %or.cond, %i.e
  br i1 %or.cond4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4
  br label %bb.q

bb.f:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.f, align 2
  %.not50 = icmp eq i8 %i.g, -38
  br i1 %.not50, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1
  %.not51 = icmp eq i8 %i.i, 39
  br i1 %.not51, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.l = load i8, ptr %i.k, align 2
  %.not52 = icmp eq i8 %i.l, 2
  br i1 %.not52, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  store i32 16, ptr %4, align 4
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i8, ptr %i.m, align 2               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.n, 0
  %i.r = load i16, ptr %0, align 2                ; 2 uses
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.s = load i16, ptr %i.j, align 2
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.r)
  %i.u = load i16, ptr %i.j, align 2
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.044 = phi i16 [ %i.s, %bb.k ], [ %i.v, %bb.l ] ; 2 uses
  %.043 = phi i16 [ %i.r, %bb.k ], [ %i.t, %bb.l ] ; 3 uses
  %i.w = icmp ult i16 %.043, 24
  %i.x = icmp ult i16 %.044, 20
  %or.cond9 = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond9, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = zext i16 %.044 to i64
  %i.z = zext i16 %.043 to i64
  %i.aa = add nuw nsw i64 %i.y, 4
  %i.ab = icmp samesign ugt i64 %i.aa, %i.z
  %i.ac = zext i16 %.043 to i32
  %or.cond54 = icmp ult i32 %1, %i.ac
  %or.cond55 = or i1 %i.ab, %or.cond54
  br i1 %or.cond55, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 16, ptr %4, align 4
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ad = tail call ptr @udata_openSwapper_78(i8 noundef signext %i.n, i8 noundef zeroext %i.p, i8 noundef signext %2, i8 noundef zeroext %3, ptr noundef nonnull %4)
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.b, %bb.p, %bb.o, %bb.i, %bb.e
  %.0 = phi ptr [ %i.ad, %bb.p ], [ null, %bb.e ], [ null, %bb.i ], [ null, %bb.o ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @udata_closeSwapper_78(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @uprv_free_78(ptr noundef %0) #11
  ret void
}

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>) #10

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6, !9, !10}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = !{!"branch_weights", i32 4, i32 12}
!12 = distinct !{!12, !6, !9, !10}
!13 = distinct !{!13, !6, !9}
!14 = distinct !{!14, !6, !9, !10}
!15 = distinct !{!15, !6, !9}
!16 = distinct !{!16, !6, !9, !10}
!17 = distinct !{!17, !6, !9}
end_hunk_0
