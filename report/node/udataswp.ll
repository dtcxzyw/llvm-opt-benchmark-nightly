Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/udataswp?download=true
inline.NumInlined: 13
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL16uprv_swapArray16PK12UDataSwapperPKviPvP10UErrorCode:bb.a
  %i.w = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load40)
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.v, ptr %next.gep, align 2
  store <8 x i16> %i.w, ptr %i.x, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.l
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %i.l, 1073741816             ; 4 uses
  %i.z = trunc nuw nsw i64 %n.vec43 to i32
  %i.aa = sub nsw i32 %i.k, %i.z
  %i.ab = shl nuw nsw i64 %n.vec43, 1             ; 2 uses
  %i.ac = getelementptr i8, ptr %3, i64 %i.ab
  %i.ad = getelementptr i8, ptr %1, i64 %i.ab
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 2 uses
  %i.ae = shl i64 %index44, 1                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %3, i64 %i.ae
  %next.gep46 = getelementptr i8, ptr %1, i64 %i.ae
  %wide.load47 = load <8 x i16>, ptr %next.gep46, align 2
  %i.af = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load47)
  store <8 x i16> %i.af, ptr %next.gep45, align 2
  %index.next48 = add nuw i64 %index44, 8         ; 2 uses
  %i.ag = icmp eq i64 %index.next48, %n.vec43
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %n.vec43, %i.l
  br i1 %cmp.n49, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.034.ph = phi i32 [ %i.k, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  %.02333.ph = phi ptr [ %3, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  %.02432.ph = phi ptr [ %1, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.034 = phi i32 [ %i.al, %.lr.ph ], [ %.034.ph, %.lr.ph.preheader ] ; 2 uses
  %.02333 = phi ptr [ %i.ak, %.lr.ph ], [ %.02333.ph, %.lr.ph.preheader ] ; 2 uses
  %.02432 = phi ptr [ %i.ah, %.lr.ph ], [ %.02432.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.02432, i64 2
  %i.ai = load i16, ptr %.02432, align 2
  %i.aj = tail call i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %.02333, i64 2
  store i16 %i.aj, ptr %.02333, align 2
  %i.al = add nsw i32 %.034, -1
  %i.am = icmp samesign ugt i32 %.034, 1
  br i1 %i.am, label %.lr.ph, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.a, %bb.b, %bb.d
  %.025 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ %2, %middle.block ], [ %2, %vec.epilog.middle.block ], [ %2, %.lr.ph ]
  ret i32 %.025
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef range(i32 0, -2147483648) i32 @_ZL16uprv_swapArray32PK12UDataSwapperPKviPvP10UErrorCode(ptr nofree noundef readnone captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4) #9 {
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
  %i.n = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond42 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond42, label %.lr.ph.preheader43, label %vector.ph

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
  %next.gep38 = getelementptr i8, ptr %1, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep38, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep38, align 4
  %wide.load39 = load <4 x i32>, ptr %i.u, align 4
  %i.v = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.w = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load39)
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.v, ptr %next.gep, align 4
  store <4 x i32> %i.w, ptr %i.x, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader43

.lr.ph.preheader43:                               ; preds = %.lr.ph.preheader, %middle.block
  %.034.ph = phi i32 [ %i.l, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  %.02533.ph = phi ptr [ %3, %.lr.ph.preheader ], [ %i.r, %middle.block ]
  %.02632.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader43, %.lr.ph
  %.034 = phi i32 [ %i.ad, %.lr.ph ], [ %.034.ph, %.lr.ph.preheader43 ] ; 2 uses
  %.02533 = phi ptr [ %i.ac, %.lr.ph ], [ %.02533.ph, %.lr.ph.preheader43 ] ; 2 uses
  %.02632 = phi ptr [ %i.z, %.lr.ph ], [ %.02632.ph, %.lr.ph.preheader43 ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02632, i64 4
  %i.aa = load i32, ptr %.02632, align 4
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %.02533, i64 4
  store i32 %i.ab, ptr %.02533, align 4
  %i.ad = add nsw i32 %.034, -1
  %i.ae = icmp samesign ugt i32 %.034, 1
  br i1 %i.ae, label %.lr.ph, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.f, %bb.a, %bb.b, %bb.e
  %.027 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.f ], [ %2, %middle.block ], [ %2, %.lr.ph ]
  ret i32 %.027
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef range(i32 0, -2147483648) i32 @_ZL16uprv_swapArray64PK12UDataSwapperPKviPvP10UErrorCode(ptr nofree noundef readnone captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4) #9 {
bb.a:
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
  %xtraiter = and i32 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.03039.prol = phi i32 [ %9, %.lr.ph.prol ], [ %i.j, %.lr.ph.preheader ]
  %.03138.prol = phi ptr [ %8, %.lr.ph.prol ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.03237.prol = phi ptr [ %5, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %5 = getelementptr inbounds nuw i8, ptr %.03237.prol, i64 8 ; 2 uses
  %6 = load i64, ptr %.03237.prol, align 8
  %7 = tail call i64 @llvm.bswap.i64(i64 %6)
  %8 = getelementptr inbounds nuw i8, ptr %.03138.prol, i64 8 ; 2 uses
  store i64 %7, ptr %.03138.prol, align 8
  %9 = add nsw i32 %.03039.prol, -1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !16

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.03039.unr = phi i32 [ %i.j, %.lr.ph.preheader ], [ %9, %.lr.ph.prol ]
  %.03138.unr = phi ptr [ %3, %.lr.ph.preheader ], [ %8, %.lr.ph.prol ]
  %.03237.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %5, %.lr.ph.prol ]
  %10 = icmp ult i32 %2, 32
  br i1 %10, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03039 = phi i32 [ %i.o, %.lr.ph ], [ %.03039.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.03138 = phi ptr [ %i.n, %.lr.ph ], [ %.03138.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03237 = phi ptr [ %i.k, %.lr.ph ], [ %.03237.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %11 = getelementptr inbounds nuw i8, ptr %.03237, i64 8
  %12 = load i64, ptr %.03237, align 8
  %13 = tail call i64 @llvm.bswap.i64(i64 %12)
  %14 = getelementptr inbounds nuw i8, ptr %.03138, i64 8
  store i64 %13, ptr %.03138, align 8
  %15 = getelementptr inbounds nuw i8, ptr %.03237, i64 16
  %16 = load i64, ptr %11, align 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %16)
  %18 = getelementptr inbounds nuw i8, ptr %.03138, i64 16
  store i64 %17, ptr %14, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.03237, i64 24
  %20 = load i64, ptr %15, align 8
  %21 = tail call i64 @llvm.bswap.i64(i64 %20)
  %22 = getelementptr inbounds nuw i8, ptr %.03138, i64 24
  store i64 %21, ptr %18, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.03237, i64 32
  %i.l = load i64, ptr %19, align 8
  %i.m = tail call i64 @llvm.bswap.i64(i64 %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %.03138, i64 32
  store i64 %i.m, ptr %22, align 8
  %i.o = add nsw i32 %.03039, -4
  %23 = icmp sgt i32 %.03039, 4
  br i1 %23, label %.lr.ph, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.f, %bb.a, %bb.b, %bb.e
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.f ], [ %2, %.lr.ph ], [ %2, %.lr.ph.prol.loopexit ]
  ret i32 %.0
}

declare i32 @uprv_copyAscii_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #7

declare i32 @uprv_ebcdicFromAscii_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #7

declare i32 @uprv_copyEbcdic_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #7

declare i32 @uprv_asciiFromEbcdic_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @udata_openSwapperForInputData_78(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i8 noundef signext %2, i8 noundef zeroext %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #0 {
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
  %.043 = phi i16 [ %i.r, %bb.k ], [ %i.t, %bb.l ] ; 3 uses
  %.0 = phi i16 [ %i.s, %bb.k ], [ %i.v, %bb.l ]  ; 2 uses
  %i.w = icmp ult i16 %.043, 24
  %i.x = icmp ult i16 %.0, 20
  %or.cond9 = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond9, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = zext i16 %.0 to i64
  %i.z = zext i16 %.043 to i64
  %i.aa = add nuw nsw i64 %i.y, 4
  %i.ab = icmp samesign ugt i64 %i.aa, %i.z
  %i.ac = zext i16 %.043 to i32
  %or.cond54 = icmp ult i32 %1, %i.ac
  %or.cond55 = or i1 %or.cond54, %i.ab
  br i1 %or.cond55, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 16, ptr %4, align 4
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ad = tail call ptr @udata_openSwapper_78(i8 noundef signext %i.n, i8 noundef zeroext %i.p, i8 noundef signext %2, i8 noundef zeroext %3, ptr noundef nonnull %4)
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.b, %bb.p, %bb.o, %bb.i, %bb.e
  %.044 = phi ptr [ %i.ad, %bb.p ], [ null, %bb.e ], [ null, %bb.i ], [ null, %bb.o ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.044
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
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #10

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
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5, !6, !7}
!11 = distinct !{!11, !5, !6, !7}
!12 = distinct !{!12, !5, !6}
!13 = !{!"branch_weights", i32 8, i32 8}
!14 = distinct !{!14, !5, !6, !7}
!15 = distinct !{!15, !5, !6}
!16 = distinct !{!16, !18}
!17 = distinct !{!17, !5}
!18 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
