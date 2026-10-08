Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngerror?download=true
inline.NumInlined: 22
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@png_warning_parameter:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1.i
  store i8 0, ptr %i.n, align 1, !tbaa !29
  br label %png_safecat.exit

png_safecat.exit:                                 ; preds = %.loopexit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @png_warning_parameter_unsigned(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.c = icmp eq i32 %2, 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.p, %bb.a
  %i.d = phi i8 [ 0, %bb.a ], [ %i.ag, %bb.p ]    ; 3 uses
  %.056.i = phi i32 [ 0, %bb.a ], [ %.251.i, %bb.p ] ; 3 uses
  %.02855.i = phi i32 [ 1, %bb.a ], [ %.350.i, %bb.p ] ; 4 uses
  %.03154.i = phi i32 [ 0, %bb.a ], [ %i.ah, %bb.p ] ; 3 uses
  %.03253.i = phi i64 [ %3, %bb.a ], [ %.13349.i, %bb.p ] ; 7 uses
  %.03452.i = phi ptr [ %i.b, %bb.a ], [ %.337.i, %bb.p ] ; 6 uses
  %i.e = icmp ne i64 %.03253.i, 0
  %i.f = icmp slt i32 %.03154.i, %.02855.i
  %i.g = select i1 %i.e, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %png_format_number.exit

bb.c:                                             ; preds = %bb.b
  switch i32 %2, label %bb.k [
    i32 5, label %bb.d
    i32 2, label %bb.g
    i32 1, label %bb.h
    i32 4, label %bb.i
    i32 3, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %.056.i, 0
  %i.h = urem i64 %.03253.i, 10                   ; 2 uses
  %.not39.i = icmp eq i64 %i.h, 0
  %or.cond41.i = and i1 %.not.i, %.not39.i
  br i1 %or.cond41.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr @png_format_number.digits, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !29    ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.03452.i, i64 -1 ; 2 uses
  store i8 %i.j, ptr %i.k, align 1, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi i8 [ %i.j, %bb.e ], [ %i.d, %bb.d ]
  %.135.i = phi ptr [ %i.k, %bb.e ], [ %.03452.i, %bb.d ]
  %.1.i = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.m = udiv i64 %.03253.i, 10
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.129.i = phi i32 [ 2, %bb.g ], [ %.02855.i, %bb.c ]
  %i.n = urem i64 %.03253.i, 10
  %i.o = getelementptr inbounds nuw i8, ptr @png_format_number.digits, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29    ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.03452.i, i64 -1 ; 2 uses
  store i8 %i.p, ptr %i.q, align 1, !tbaa !29
  %i.r = udiv i64 %.03253.i, 10
  br label %.thread.i

bb.i:                                             ; preds = %bb.c
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.230.i = phi i32 [ 2, %bb.i ], [ %.02855.i, %bb.c ]
  %i.s = and i64 %.03253.i, 15
  %i.t = getelementptr inbounds nuw i8, ptr @png_format_number.digits, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !29    ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.03452.i, i64 -1 ; 2 uses
  store i8 %i.u, ptr %i.v, align 1, !tbaa !29
  %i.w = lshr i64 %.03253.i, 4
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.h
  %i.x = phi i8 [ %i.p, %bb.h ], [ %i.u, %bb.j ]
  %.236.ph.i = phi ptr [ %i.q, %bb.h ], [ %i.v, %bb.j ]
  %.133.ph.i = phi i64 [ %i.r, %bb.h ], [ %i.w, %bb.j ]
  %.3.ph.i = phi i32 [ %.129.i, %bb.h ], [ %.230.i, %bb.j ]
  %i.y = add nuw nsw i32 %.03154.i, 1
  br label %bb.p

bb.k:                                             ; preds = %bb.f, %bb.c
  %i.z = phi i8 [ %i.d, %bb.c ], [ %i.l, %bb.f ]  ; 2 uses
  %.236.i = phi ptr [ %.03452.i, %bb.c ], [ %.135.i, %bb.f ] ; 5 uses
  %.133.i = phi i64 [ 0, %bb.c ], [ %i.m, %bb.f ] ; 4 uses
  %.3.i = phi i32 [ %.02855.i, %bb.c ], [ 5, %bb.f ] ; 4 uses
  %.2.i = phi i32 [ %.056.i, %bb.c ], [ %.1.i, %bb.f ] ; 2 uses
  %i.aa = add nuw nsw i32 %.03154.i, 1            ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 5
  %or.cond.i = select i1 %i.c, i1 %i.ab, i1 false
  %i.ac = icmp ugt ptr %.236.i, %i.a
  %or.cond42.i = and i1 %or.cond.i, %i.ac
  br i1 %or.cond42.i, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %.not40.i = icmp eq i32 %.2.i, 0
  br i1 %.not40.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds i8, ptr %.236.i, i64 -1 ; 2 uses
  store i8 46, ptr %i.ad, align 1, !tbaa !29
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ae = icmp eq i64 %.133.i, 0
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds i8, ptr %.236.i, i64 -1 ; 2 uses
  store i8 48, ptr %i.af, align 1, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %.thread.i
  %i.ag = phi i8 [ 46, %bb.m ], [ 48, %bb.o ], [ %i.z, %bb.n ], [ %i.z, %bb.k ], [ %i.x, %.thread.i ] ; 2 uses
  %i.ah = phi i32 [ 5, %bb.m ], [ 5, %bb.o ], [ 5, %bb.n ], [ %i.aa, %bb.k ], [ %i.y, %.thread.i ]
  %.251.i = phi i32 [ 1, %bb.m ], [ 0, %bb.o ], [ 0, %bb.n ], [ %.2.i, %bb.k ], [ %.056.i, %.thread.i ]
  %.350.i = phi i32 [ %.3.i, %bb.m ], [ %.3.i, %bb.o ], [ %.3.i, %bb.n ], [ %.3.i, %bb.k ], [ %.3.ph.i, %.thread.i ]
  %.13349.i = phi i64 [ %.133.i, %bb.m ], [ 0, %bb.o ], [ %.133.i, %bb.n ], [ %.133.i, %bb.k ], [ %.133.ph.i, %.thread.i ]
  %.337.i = phi ptr [ %i.ad, %bb.m ], [ %i.af, %bb.o ], [ %.236.i, %bb.n ], [ %.236.i, %bb.k ], [ %.236.ph.i, %.thread.i ] ; 3 uses
  %i.ai = icmp ugt ptr %.337.i, %i.a
  br i1 %i.ai, label %bb.b, label %png_format_number.exit, !llvm.loop !1

png_format_number.exit:                           ; preds = %bb.b, %bb.p
  %i.aj = phi i8 [ %i.d, %bb.b ], [ %i.ag, %bb.p ] ; 2 uses
  %.034.lcssa.i = phi ptr [ %.03452.i, %bb.b ], [ %.337.i, %bb.p ]
  %i.ak = add i32 %1, -1
  %or.cond.i3 = icmp ult i32 %i.ak, 8
  br i1 %or.cond.i3, label %bb.q, label %png_warning_parameter.exit

bb.q:                                             ; preds = %png_format_number.exit
  %i.al = zext nneg i32 %1 to i64
  %i.am = getelementptr [32 x i8], ptr %0, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -32    ; 3 uses
  %.not.i.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i.not.i, label %png_warning_parameter.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.q
  %.not.i4 = icmp eq i8 %i.aj, 0
  br i1 %.not.i4, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.ao = phi i8 [ %i.as, %.lr.ph.i.i ], [ %i.aj, %.preheader.i.i ]
  %.020.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %.034.lcssa.i, %.preheader.i.i ]
  %.01219.i.i = phi i64 [ %i.aq, %.lr.ph.i.i ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 1 ; 2 uses
  %i.aq = add nuw nsw i64 %.01219.i.i, 1          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %.01219.i.i
  store i8 %i.ao, ptr %i.ar, align 1, !tbaa !29
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !29  ; 2 uses
  %i.at = icmp ne i8 %i.as, 0
  %i.au = icmp samesign ult i64 %.01219.i.i, 30
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br i1 %i.av, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !0

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.1.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.aq, %.lr.ph.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 %.1.i.i
  store i8 0, ptr %i.aw, align 1, !tbaa !29
  br label %png_warning_parameter.exit

png_warning_parameter.exit:                       ; preds = %png_format_number.exit, %bb.q, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @png_warning_parameter_signed(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = icmp slt i32 %3, 0
  %i.c = tail call i32 @llvm.abs.i32(i32 %3, i1 false)
  %spec.select = zext i32 %i.c to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.e = icmp eq i32 %2, 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.p, %bb.a
  %i.f = phi i8 [ 0, %bb.a ], [ %i.ai, %bb.p ]    ; 3 uses
  %.056.i = phi i32 [ 0, %bb.a ], [ %.251.i, %bb.p ] ; 3 uses
  %.02855.i = phi i32 [ 1, %bb.a ], [ %.350.i, %bb.p ] ; 4 uses
  %.03154.i = phi i32 [ 0, %bb.a ], [ %i.aj, %bb.p ] ; 3 uses
  %.03253.i = phi i64 [ %spec.select, %bb.a ], [ %.13349.i, %bb.p ] ; 7 uses
  %.03452.i = phi ptr [ %i.d, %bb.a ], [ %.337.i, %bb.p ] ; 8 uses
  %i.g = icmp ne i64 %.03253.i, 0
  %i.h = icmp slt i32 %.03154.i, %.02855.i
  %i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %i.i, label %bb.c, label %png_format_number.exit

bb.c:                                             ; preds = %bb.b
  switch i32 %2, label %bb.k [
    i32 5, label %bb.d
    i32 2, label %bb.g
    i32 1, label %bb.h
    i32 4, label %bb.i
    i32 3, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %.056.i, 0
  %i.j = urem i64 %.03253.i, 10                   ; 2 uses
  %.not39.i = icmp eq i64 %i.j, 0
  %or.cond41.i = and i1 %.not.i, %.not39.i
  br i1 %or.cond41.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr @png_format_number.digits, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !29    ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.03452.i, i64 -1 ; 2 uses
  store i8 %i.l, ptr %i.m, align 1, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = phi i8 [ %i.l, %bb.e ], [ %i.f, %bb.d ]
  %.135.i = phi ptr [ %i.m, %bb.e ], [ %.03452.i, %bb.d ]
  %.1.i = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.o = udiv i64 %.03253.i, 10
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.129.i = phi i32 [ 2, %bb.g ], [ %.02855.i, %bb.c ]
  %i.p = urem i64 %.03253.i, 10
  %i.q = getelementptr inbounds nuw i8, ptr @png_format_number.digits, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !29    ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.03452.i, i64 -1 ; 2 uses
  store i8 %i.r, ptr %i.s, align 1, !tbaa !29
  %i.t = udiv i64 %.03253.i, 10
  br label %.thread.i

bb.i:                                             ; preds = %bb.c
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.230.i = phi i32 [ 2, %bb.i ], [ %.02855.i, %bb.c ]
  %i.u = and i64 %.03253.i, 15
  %i.v = getelementptr inbounds nuw i8, ptr @png_format_number.digits, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29    ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.03452.i, i64 -1 ; 2 uses
  store i8 %i.w, ptr %i.x, align 1, !tbaa !29
  %i.y = lshr i64 %.03253.i, 4
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.h
  %i.z = phi i8 [ %i.r, %bb.h ], [ %i.w, %bb.j ]
  %.236.ph.i = phi ptr [ %i.s, %bb.h ], [ %i.x, %bb.j ]
  %.133.ph.i = phi i64 [ %i.t, %bb.h ], [ %i.y, %bb.j ]
  %.3.ph.i = phi i32 [ %.129.i, %bb.h ], [ %.230.i, %bb.j ]
  %i.aa = add nuw nsw i32 %.03154.i, 1
  br label %bb.p

bb.k:                                             ; preds = %bb.f, %bb.c
  %i.ab = phi i8 [ %i.f, %bb.c ], [ %i.n, %bb.f ] ; 2 uses
  %.236.i = phi ptr [ %.03452.i, %bb.c ], [ %.135.i, %bb.f ] ; 5 uses
  %.133.i = phi i64 [ 0, %bb.c ], [ %i.o, %bb.f ] ; 4 uses
  %.3.i = phi i32 [ %.02855.i, %bb.c ], [ 5, %bb.f ] ; 4 uses
  %.2.i = phi i32 [ %.056.i, %bb.c ], [ %.1.i, %bb.f ] ; 2 uses
  %i.ac = add nuw nsw i32 %.03154.i, 1            ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 5
  %or.cond.i = select i1 %i.e, i1 %i.ad, i1 false
  %i.ae = icmp ugt ptr %.236.i, %i.a
  %or.cond42.i = and i1 %or.cond.i, %i.ae
  br i1 %or.cond42.i, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %.not40.i = icmp eq i32 %.2.i, 0
  br i1 %.not40.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds i8, ptr %.236.i, i64 -1 ; 2 uses
  store i8 46, ptr %i.af, align 1, !tbaa !29
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ag = icmp eq i64 %.133.i, 0
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds i8, ptr %.236.i, i64 -1 ; 2 uses
  store i8 48, ptr %i.ah, align 1, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %.thread.i
  %i.ai = phi i8 [ 46, %bb.m ], [ 48, %bb.o ], [ %i.ab, %bb.n ], [ %i.ab, %bb.k ], [ %i.z, %.thread.i ] ; 2 uses
  %i.aj = phi i32 [ 5, %bb.m ], [ 5, %bb.o ], [ 5, %bb.n ], [ %i.ac, %bb.k ], [ %i.aa, %.thread.i ]
  %.251.i = phi i32 [ 1, %bb.m ], [ 0, %bb.o ], [ 0, %bb.n ], [ %.2.i, %bb.k ], [ %.056.i, %.thread.i ]
  %.350.i = phi i32 [ %.3.i, %bb.m ], [ %.3.i, %bb.o ], [ %.3.i, %bb.n ], [ %.3.i, %bb.k ], [ %.3.ph.i, %.thread.i ]
  %.13349.i = phi i64 [ %.133.i, %bb.m ], [ 0, %bb.o ], [ %.133.i, %bb.n ], [ %.133.i, %bb.k ], [ %.133.ph.i, %.thread.i ]
  %.337.i = phi ptr [ %i.af, %bb.m ], [ %i.ah, %bb.o ], [ %.236.i, %bb.n ], [ %.236.i, %bb.k ], [ %.236.ph.i, %.thread.i ] ; 3 uses
  %i.ak = icmp ugt ptr %.337.i, %i.a
  br i1 %i.ak, label %bb.b, label %bb.r, !llvm.loop !1

png_format_number.exit:                           ; preds = %bb.b
  %i.al = icmp ugt ptr %.03452.i, %i.a
  %or.cond = and i1 %i.b, %i.al
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %png_format_number.exit
  %i.am = getelementptr inbounds i8, ptr %.03452.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.am, align 1, !tbaa !29
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %png_format_number.exit
  %4 = phi i8 [ 45, %bb.q ], [ %i.f, %png_format_number.exit ], [ %i.ai, %bb.p ] ; 2 uses
  %.0 = phi ptr [ %i.am, %bb.q ], [ %.03452.i, %png_format_number.exit ], [ %.337.i, %bb.p ]
  %i.an = add i32 %1, -1
  %or.cond.i14 = icmp ult i32 %i.an, 8
  br i1 %or.cond.i14, label %bb.s, label %png_warning_parameter.exit

bb.s:                                             ; preds = %bb.r
  %i.ao = zext nneg i32 %1 to i64
  %i.ap = getelementptr [32 x i8], ptr %0, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -32    ; 3 uses
  %.not.i.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.not.i, label %png_warning_parameter.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.s
  %.not.i15 = icmp eq i8 %4, 0
  br i1 %.not.i15, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.ar = phi i8 [ %i.av, %.lr.ph.i.i ], [ %4, %.preheader.i.i ]
  %.020.i.i = phi ptr [ %i.as, %.lr.ph.i.i ], [ %.0, %.preheader.i.i ]
  %.01219.i.i = phi i64 [ %i.at, %.lr.ph.i.i ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 1 ; 2 uses
  %i.at = add nuw nsw i64 %.01219.i.i, 1          ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.01219.i.i
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !29
  %i.av = load i8, ptr %i.as, align 1, !tbaa !29  ; 2 uses
  %i.aw = icmp ne i8 %i.av, 0
  %i.ax = icmp samesign ult i64 %.01219.i.i, 30
  %i.ay = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %i.ay, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !0

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.1.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.at, %.lr.ph.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.1.i.i
  store i8 0, ptr %i.az, align 1, !tbaa !29
  br label %png_warning_parameter.exit

png_warning_parameter.exit:                       ; preds = %bb.r, %bb.s, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_formatted_warning(ptr noalias noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [192 x i8], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %.not40.not = icmp eq ptr %1, null
  br i1 %.not40.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %.thread.us.3
  %.03255.us = phi i64 [ %i.p, %.thread.us.3 ], [ 0, %bb.a ] ; 7 uses
  %.03354.us = phi ptr [ %i.o, %.thread.us.3 ], [ %2, %bb.a ] ; 5 uses
  %i.b = load i8, ptr %.03354.us, align 1, !tbaa !29 ; 2 uses
  %.not.us = icmp eq i8 %i.b, 0
  br i1 %.not.us, label %.critedge, label %.thread.us

.thread.us:                                       ; preds = %.split.us
  %i.c = getelementptr inbounds nuw i8, ptr %.03354.us, i64 1
  %i.d = or disjoint i64 %.03255.us, 1            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03255.us
  store i8 %i.b, ptr %i.e, align 4, !tbaa !29
  %i.f = load i8, ptr %i.c, align 1, !tbaa !29    ; 2 uses
  %.not.us.1 = icmp eq i8 %i.f, 0
  br i1 %.not.us.1, label %.critedge, label %.thread.us.1

.thread.us.1:                                     ; preds = %.thread.us
  %i.g = getelementptr inbounds nuw i8, ptr %.03354.us, i64 2
  %i.h = or disjoint i64 %.03255.us, 2            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  store i8 %i.f, ptr %i.i, align 1, !tbaa !29
  %i.j = load i8, ptr %i.g, align 1, !tbaa !29    ; 2 uses
  %.not.us.2 = icmp eq i8 %i.j, 0
  br i1 %.not.us.2, label %.critedge, label %.thread.us.2

.thread.us.2:                                     ; preds = %.thread.us.1
  %i.k = or disjoint i64 %.03255.us, 3            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  store i8 %i.j, ptr %i.l, align 2, !tbaa !29
  %exitcond59.not.2 = icmp eq i64 %.03255.us, 188
  br i1 %exitcond59.not.2, label %.critedge, label %.split.us.3

.split.us.3:                                      ; preds = %.thread.us.2
  %i.m = getelementptr inbounds nuw i8, ptr %.03354.us, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !29    ; 2 uses
  %.not.us.3 = icmp eq i8 %i.n, 0
  br i1 %.not.us.3, label %.critedge, label %.thread.us.3

.thread.us.3:                                     ; preds = %.split.us.3
  %i.o = getelementptr inbounds nuw i8, ptr %.03354.us, i64 4
  %i.p = add nuw nsw i64 %.03255.us, 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k
  store i8 %i.n, ptr %i.q, align 1, !tbaa !29
  br label %.split.us

.split:                                           ; preds = %bb.a, %.backedge
  %.03255 = phi i64 [ %.032.be, %.backedge ], [ 0, %bb.a ] ; 5 uses
  %.03354 = phi ptr [ %.033.be, %.backedge ], [ %2, %bb.a ] ; 5 uses
  %i.r = load i8, ptr %.03354, align 1, !tbaa !29 ; 2 uses
  switch i8 %i.r, label %.thread [
    i8 0, label %.critedge
    i8 64, label %bb.b
  ]

bb.b:                                             ; preds = %.split
  %i.s = getelementptr inbounds nuw i8, ptr %.03354, i64 1 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !29    ; 3 uses
  %.not41 = icmp eq i8 %i.t, 0
  br i1 %.not41, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %bb.b ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr @png_formatted_warning.valid_parameters, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1, !tbaa !29
  %.not42 = icmp eq i8 %i.v, %i.t
  %.not43 = icmp eq i64 %indvars.iv, 9
  %or.cond45 = or i1 %.not43, %.not42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %or.cond45, label %.critedge2, label %.preheader, !llvm.loop !48

.critedge2:                                       ; preds = %.preheader
  %i.w = icmp samesign ult i64 %indvars.iv, 8
  br i1 %i.w, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %.critedge2
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv
  %i.y = sub nuw nsw i64 191, %.03255
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.030.idx51 = phi i64 [ %.030.add, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.150 = phi i64 [ %i.ab, %bb.c ], [ %.03255, %.lr.ph.preheader ] ; 3 uses
  %.030.ptr = getelementptr inbounds nuw i8, ptr %i.x, i64 %.030.idx51
  %i.z = load i8, ptr %.030.ptr, align 1, !tbaa !29 ; 2 uses
  %.not44 = icmp ne i8 %i.z, 0
  %i.aa = icmp samesign ult i64 %.030.idx51, 32
  %or.cond46 = select i1 %.not44, i1 %i.aa, i1 false
  br i1 %or.cond46, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %.030.add = add nuw nsw i64 %.030.idx51, 1      ; 2 uses
  %i.ab = add nuw nsw i64 %.150, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %.150
  store i8 %i.z, ptr %i.ac, align 1, !tbaa !29
  %exitcond.not = icmp eq i64 %.030.add, %i.y
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !49

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.1.lcssa.ph = phi i64 [ %.150, %.lr.ph ], [ 191, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.03354, i64 2
  br label %.backedge

.thread:                                          ; preds = %.critedge2, %.split, %bb.b
  %i.ae = phi i8 [ %i.r, %.split ], [ 64, %bb.b ], [ %i.t, %.critedge2 ]
  %.235 = phi ptr [ %.03354, %.split ], [ %.03354, %bb.b ], [ %i.s, %.critedge2 ]
  %i.af = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %i.ag = add nuw nsw i64 %.03255, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03255
  store i8 %i.ae, ptr %i.ah, align 1, !tbaa !29
  br label %.backedge

.backedge:                                        ; preds = %.thread, %._crit_edge
  %.033.be = phi ptr [ %i.af, %.thread ], [ %i.ad, %._crit_edge ]
  %.032.be = phi i64 [ %i.ag, %.thread ], [ %.1.lcssa.ph, %._crit_edge ] ; 3 uses
  %i.ai = icmp ult i64 %.032.be, 191
  br i1 %i.ai, label %.split, label %.critedge, !llvm.loop !50

.critedge:                                        ; preds = %.backedge, %.split, %.split.us, %.thread.us, %.thread.us.1, %.thread.us.2, %.split.us.3
  %.us-phi = phi i64 [ %i.h, %.thread.us.1 ], [ 191, %.thread.us.2 ], [ %.03255.us, %.split.us ], [ %i.d, %.thread.us ], [ %i.k, %.split.us.3 ], [ %.032.be, %.backedge ], [ %.03255, %.split ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.us-phi
  store i8 0, ptr %i.aj, align 1, !tbaa !29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %.split.i, label %bb.d

.split.i:                                         ; preds = %.critedge
  call fastcc void @png_default_warning(ptr noundef nonnull %i.a), !noalias !53
  br label %png_warning.exit

bb.d:                                             ; preds = %.critedge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31, !alias.scope !53 ; 2 uses
  %.not10.i = icmp eq ptr %i.al, null
  br i1 %.not10.i, label %.split8.i, label %bb.e

.split8.i:                                        ; preds = %bb.d
  call fastcc void @png_default_warning(ptr noundef nonnull %i.a), !noalias !53
  br label %png_warning.exit

bb.e:                                             ; preds = %bb.d
  call void %i.al(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #20, !inline_history !32
  br label %png_warning.exit

png_warning.exit:                                 ; preds = %.split.i, %.split8.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_benign_error(ptr noalias noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [214 x i8], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.c = load <2 x i32>, ptr %i.b, align 4, !tbaa !60
  %i.d = and <2 x i32> %i.c, <i32 32768, i32 1048576>
  %i.e = icmp eq <2 x i32> %i.d, zeroinitializer  ; 3 uses
  %i.f = extractelement <2 x i1> %i.e, i64 1
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = extractelement <2 x i1> %i.e, i64 0
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.i = load i32, ptr %i.h, align 8, !tbaa !33   ; 2 uses
  %.not16 = icmp eq i32 %i.i, 0
  br i1 %.not16, label %bb.f, label %bb.d

end_hunk_0
