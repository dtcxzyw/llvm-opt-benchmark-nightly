inline.NumInlined: 958
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@timegm_noleapsecond:bb.a
leap_year_p.exit.thread14.i:                      ; preds = %bb.e
  %i.q = sext i32 %i.e to i64
  %i.r = getelementptr [2 x i8], ptr @leap_year_yday_offset, i64 %i.q
  br label %calc_tm_yday.exit

leap_year_p.exit.i:                               ; preds = %bb.e
  %i.s = and i64 %.zext19.i, 3
  %.not.i = icmp eq i64 %i.s, 0
  %i.t = sext i32 %i.e to i64
  %spec.select.v.i = select i1 %.not.i, ptr @leap_year_yday_offset, ptr @common_year_yday_offset
  %spec.select.i = getelementptr [2 x i8], ptr %spec.select.v.i, i64 %i.t
  br label %calc_tm_yday.exit

calc_tm_yday.exit:                                ; preds = %leap_year_p.exit.thread.i, %leap_year_p.exit.thread14.i, %leap_year_p.exit.i
  %i.u = phi ptr [ %i.r, %leap_year_p.exit.thread14.i ], [ %spec.select.i, %leap_year_p.exit.i ], [ %i.n, %leap_year_p.exit.thread.i ]
  %.pn.in.i = load i16, ptr %i.u, align 2, !tbaa !91
  %i.v = load i32, ptr %0, align 8, !tbaa !83
  %i.w = getelementptr i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !82
  %i.y = getelementptr i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !81
  %i.aa = icmp slt i32 %i.b, 69
  br i1 %i.aa, label %bb.f, label %.thread

.thread:                                          ; preds = %calc_tm_yday.exit
  %i.ab = add nsw i64 %i.c, -69
  %i.ac = lshr i64 %i.ab, 2
  br label %.thread21

bb.f:                                             ; preds = %calc_tm_yday.exit
  %i.ad = sub nsw i64 68, %i.c
  %i.ae = lshr i64 %i.ad, 2
  %i.af = xor i64 %i.ae, -1                       ; 3 uses
  %i.ag = icmp slt i32 %i.b, 1
  br i1 %i.ag, label %bb.g, label %.thread21

.thread21:                                        ; preds = %bb.f, %.thread
  %i.ah = phi i64 [ %i.ac, %.thread ], [ %i.af, %bb.f ]
  %.lhs.trunc26 = add nsw i32 %i.b, -1
  %i.ai = udiv i32 %.lhs.trunc26, 100
  %.zext27 = zext nneg i32 %i.ai to i64
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %.nonneg = sub i32 0, %i.b
  %.neg2223 = udiv i32 %.nonneg, 100
  %i.aj = xor i32 %.neg2223, -1
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = icmp slt i32 %i.b, -299
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.lhs.trunc = sub nuw nsw i32 -300, %i.b
  %i.am = udiv i32 %.lhs.trunc, 400
  %i.an = xor i32 %i.am, -1
  %i.ao = sext i32 %i.an to i64
  br label %bb.j

bb.i:                                             ; preds = %.thread21, %bb.g
  %i.ap = phi i64 [ %.zext27, %.thread21 ], [ %i.ak, %bb.g ]
  %i.aq = phi i64 [ %i.ah, %.thread21 ], [ %i.af, %bb.g ]
  %.lhs.trunc24 = add i32 %i.b, 299
  %i.ar = udiv i32 %.lhs.trunc24, 400
  %.zext25 = zext nneg i32 %i.ar to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.as = phi i64 [ %i.ak, %bb.h ], [ %i.ap, %bb.i ]
  %i.at = phi i64 [ %i.af, %bb.h ], [ %i.aq, %bb.i ]
  %i.au = phi i64 [ %i.ao, %bb.h ], [ %.zext25, %bb.i ]
  %.pn.i = sext i16 %.pn.in.i to i32
  %.0.i = add i32 %i.g, %.pn.i
  %i.av = mul nsw i64 %i.c, 365
  %i.aw = add nsw i64 %i.av, -25550
  %i.ax = sext i32 %.0.i to i64
  %i.ay = add nsw i64 %i.aw, %i.ax
  %i.az = mul i32 %i.x, 60
  %i.ba = add i32 %i.az, %i.v
  %i.bb = mul i32 %i.z, 3600
  %i.bc = add i32 %i.ba, %i.bb
  %i.bd = sext i32 %i.bc to i64
  %i.be = sub nsw i64 %i.ay, %i.as
  %i.bf = add nsw i64 %i.be, %i.at
  %i.bg = add nsw i64 %i.bf, %i.au
  %i.bh = mul nsw i64 %i.bg, 86400
  %i.bi = add nsw i64 %i.bh, %i.bd
  ret i64 %i.bi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 -1, 2) i32 @tmcmp(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !77   ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !77   ; 2 uses
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, %i.d
  %i.f = select i1 %i.e, i32 -1, i32 1
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !79   ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !79   ; 2 uses
  %.not36 = icmp eq i32 %i.h, %i.j
  br i1 %.not36, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i32 %i.h, %i.j
  %i.l = select i1 %i.k, i32 -1, i32 1
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !80   ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !80   ; 2 uses
  %.not37 = icmp eq i32 %i.n, %i.p
  br i1 %.not37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = icmp slt i32 %i.n, %i.p
  %i.r = select i1 %i.q, i32 -1, i32 1
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !81   ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !81   ; 2 uses
  %.not38 = icmp eq i32 %i.t, %i.v
  br i1 %.not38, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = icmp slt i32 %i.t, %i.v
  %i.x = select i1 %i.w, i32 -1, i32 1
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %0, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !82   ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !82 ; 2 uses
  %.not39 = icmp eq i32 %i.z, %i.ab
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp slt i32 %i.z, %i.ab
  %i.ad = select i1 %i.ac, i32 -1, i32 1
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ae = load i32, ptr %0, align 8, !tbaa !83    ; 2 uses
  %i.af = load i32, ptr %1, align 8, !tbaa !83    ; 2 uses
  %.not40 = icmp eq i32 %i.ae, %i.af
  br i1 %.not40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp slt i32 %i.ae, %i.af
  %i.ah = select i1 %i.ag, i32 -1, i32 1
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.l, %bb.d ], [ %i.r, %bb.f ], [ %i.x, %bb.h ], [ %i.ad, %bb.j ], [ %i.ah, %bb.l ], [ 0, %bb.k ]
  ret i32 %.0
}

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_data_typed_object_zalloc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @time_arg(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) initializes((0, 32)) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 1, ptr %i.a, align 8, !tbaa !13
  store i64 1, ptr %2, align 8, !tbaa !65
  %i.c = getelementptr i8, ptr %2, i64 32         ; 18 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %2, i64 8          ; 2 uses
  store i64 1, ptr %i.e, align 8, !tbaa !66
  %i.f = getelementptr i8, ptr %2, i64 16
  store i64 4, ptr %i.f, align 8, !tbaa !70
  %i.g = and i64 %i.d, -8792334925824             ; 3 uses
  store i64 %i.g, ptr %i.c, align 8
  %i.h = load i64, ptr @str_empty, align 8, !tbaa !13
  %i.i = getelementptr i8, ptr %2, i64 24
  store i64 %i.h, ptr %i.i, align 8, !tbaa !71
  %i.j = icmp eq i32 %0, 10
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  %i.m = getelementptr i8, ptr %1, i64 24
  %3 = load <2 x i64>, ptr %i.m, align 8, !tbaa !13
  %4 = shufflevector <2 x i64> %3, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %5 = getelementptr i8, ptr %1, i64 8
  %6 = load <2 x i64>, ptr %5, align 8, !tbaa !13
  %7 = shufflevector <2 x i64> %6, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.n = load i64, ptr %1, align 8, !tbaa !13
  %i.o = getelementptr i8, ptr %1, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13
  %i.q = and i64 %i.p, -5
  %.not = icmp eq i64 %i.q, 0
  %i.r = select i1 %.not, i64 0, i64 2199023255552
  %i.s = or disjoint i64 %i.r, %i.g
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.t = icmp slt i32 %0, 1
  br i1 %i.t, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.u = load i64, ptr %1, align 8, !tbaa !13
  %.not130 = icmp eq i32 %0, 1
  br i1 %.not130, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.v = getelementptr i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.d
  %i.x = phi i64 [ %i.w, %bb.d ], [ 4, %.preheader ]
  %.286.i = phi i32 [ 2, %bb.d ], [ 1, %.preheader ] ; 4 uses
  %.sroa.2.8.vec.insert = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.x, i64 0 ; 2 uses
  %i.y = icmp samesign ult i32 %.286.i, %0
  br i1 %i.y, label %bb.f, label %8

8:                                                ; preds = %bb.e
  %.sroa.2.16.vec.insert = insertelement <2 x i64> %.sroa.2.8.vec.insert, i64 4, i64 1
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = zext nneg i32 %.286.i to i64
  %i.aa = getelementptr [8 x i8], ptr %1, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !13
  %.sroa.2.16.vec.insert141 = insertelement <2 x i64> %.sroa.2.8.vec.insert, i64 %i.ab, i64 1
  %i.ac = add nuw nsw i32 %.286.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %8
  %.sroa.2.0 = phi <2 x i64> [ %.sroa.2.16.vec.insert141, %bb.f ], [ %.sroa.2.16.vec.insert, %8 ]
  %.286.i.1 = phi i32 [ %i.ac, %bb.f ], [ %.286.i, %8 ] ; 4 uses
  %i.ad = icmp samesign ult i32 %.286.i.1, %0
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = zext nneg i32 %.286.i.1 to i64
  %i.af = getelementptr [8 x i8], ptr %1, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !13
  %.sroa.8.24.vec.insert144 = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.ag, i64 0
  %i.ah = add nuw nsw i32 %.286.i.1, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.8.0 = phi <2 x i64> [ %.sroa.8.24.vec.insert144, %bb.h ], [ <i64 4, i64 undef>, %bb.g ] ; 2 uses
  %.286.i.2 = phi i32 [ %i.ah, %bb.h ], [ %.286.i.1, %bb.g ] ; 4 uses
  %i.ai = icmp samesign ult i32 %.286.i.2, %0
  br i1 %i.ai, label %bb.j, label %9

9:                                                ; preds = %bb.i
  %.sroa.8.32.vec.insert = insertelement <2 x i64> %.sroa.8.0, i64 4, i64 1
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = zext nneg i32 %.286.i.2 to i64
  %i.ak = getelementptr [8 x i8], ptr %1, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !13
  %.sroa.8.32.vec.insert147 = insertelement <2 x i64> %.sroa.8.0, i64 %i.al, i64 1
  %i.am = add nuw nsw i32 %.286.i.2, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %9
  %.sroa.8.1 = phi <2 x i64> [ %.sroa.8.32.vec.insert147, %bb.j ], [ %.sroa.8.32.vec.insert, %9 ]
  %.286.i.3 = phi i32 [ %i.am, %bb.j ], [ %.286.i.2, %9 ] ; 4 uses
  %i.an = icmp samesign ult i32 %.286.i.3, %0
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = zext nneg i32 %.286.i.3 to i64
  %i.ap = getelementptr [8 x i8], ptr %1, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !13
  %i.ar = add nuw nsw i32 %.286.i.3, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.as = phi i64 [ %i.aq, %bb.l ], [ 4, %bb.k ]
  %.286.i.4 = phi i32 [ %i.ar, %bb.l ], [ %.286.i.3, %bb.k ] ; 4 uses
  %i.at = icmp samesign ult i32 %.286.i.4, %0
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = zext nneg i32 %.286.i.4 to i64
  %i.av = getelementptr [8 x i8], ptr %1, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !13
  %i.ax = add nuw nsw i32 %.286.i.4, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ay = phi i64 [ %i.aw, %bb.n ], [ 4, %bb.m ]
  %.286.i.5 = phi i32 [ %i.ax, %bb.n ], [ %.286.i.4, %bb.m ] ; 2 uses
  %i.az = icmp samesign ult i32 %.286.i.5, %0
  %i.ba = zext i1 %i.az to i32
  %spec.select = add nuw nsw i32 %.286.i.5, %i.ba
  %i.bb = icmp eq i32 %spec.select, %0
  br i1 %i.bb, label %rb_scan_args_set.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.c
  tail call void @rb_error_arity(i32 noundef range(i32 11, 10) %0, i32 noundef 1, i32 noundef 8) #19
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.o
  %i.bc = or disjoint i64 %i.g, 8521215115264
  br label %bb.q

bb.q:                                             ; preds = %rb_scan_args_set.exit, %bb.b
  %i.bd = phi i64 [ %i.n, %bb.b ], [ %i.as, %rb_scan_args_set.exit ] ; 8 uses
  %.sroa.8.2 = phi <2 x i64> [ %7, %bb.b ], [ %.sroa.8.1, %rb_scan_args_set.exit ] ; 2 uses
  %.sroa.2.1 = phi <2 x i64> [ %4, %bb.b ], [ %.sroa.2.0, %rb_scan_args_set.exit ] ; 2 uses
  %i.be = phi i64 [ 4, %bb.b ], [ %i.ay, %rb_scan_args_set.exit ] ; 7 uses
  %i.bf = phi i64 [ %i.l, %bb.b ], [ %i.u, %rb_scan_args_set.exit ] ; 5 uses
  %storemerge = phi i64 [ %i.s, %bb.b ], [ %i.bc, %rb_scan_args_set.exit ]
  store i64 %storemerge, ptr %i.c, align 8
  %i.bg = icmp eq i64 %i.bf, 0
  %i.bh = and i64 %i.bf, 7
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = or i1 %i.bg, %i.bi
  br i1 %i.bj, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.q
  %i.bk = inttoptr i64 %i.bf to ptr
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !30
  %i.bm = and i64 %i.bl, 31
  %i.bn = icmp eq i64 %i.bm, 5
  br i1 %i.bn, label %bb.r, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.r:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.bo = tail call i64 @rb_str_to_inum(i64 noundef %i.bf, i32 noundef 10, i32 noundef 1) #18
  br label %obj2vint.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.q
  %i.bp = tail call i64 @rb_to_int(i64 noundef %i.bf) #18
  br label %obj2vint.exit

obj2vint.exit:                                    ; preds = %bb.r, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i = phi i64 [ %i.bo, %bb.r ], [ %i.bp, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ]
  store i64 %.0.i, ptr %2, align 8, !tbaa !65
  %.sroa.2.8.vec.extract = extractelement <2 x i64> %.sroa.2.1, i64 0 ; 2 uses
  %i.bq = icmp eq i64 %.sroa.2.8.vec.extract, 4
  br i1 %i.bq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %obj2vint.exit
  %i.br = tail call fastcc i32 @month_arg(i64 noundef %.sroa.2.8.vec.extract)
  %i.bs = shl nuw nsw i32 %i.br, 9
  %i.bt = zext nneg i32 %i.bs to i64
  br label %bb.t

bb.t:                                             ; preds = %obj2vint.exit, %bb.s
  %.sink131 = phi i64 [ %i.bt, %bb.s ], [ 512, %obj2vint.exit ]
  %.sink132 = load i64, ptr %i.c, align 8
  %i.bu = and i64 %.sink132, -7681
  %i.bv = or disjoint i64 %i.bu, %.sink131        ; 2 uses
  store i64 %i.bv, ptr %i.c, align 8
  %.sroa.2.16.vec.extract = extractelement <2 x i64> %.sroa.2.1, i64 1 ; 7 uses
  %i.bw = icmp eq i64 %.sroa.2.16.vec.extract, 4
  br i1 %i.bw, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = icmp eq i64 %.sroa.2.16.vec.extract, 0
  %i.by = and i64 %.sroa.2.16.vec.extract, 7
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = or i1 %i.bx, %i.bz
  br i1 %i.ca, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.u
  %i.cb = inttoptr i64 %.sroa.2.16.vec.extract to ptr
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !30
  %i.cd = and i64 %i.cc, 31
  %i.ce = icmp eq i64 %i.cd, 5
  br i1 %i.ce, label %bb.v, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.v:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.cf = tail call i64 @rb_str_to_inum(i64 noundef %.sroa.2.16.vec.extract, i32 noundef 10, i32 noundef 1) #18
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %bb.v, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.u
  %.0.i.i = phi i64 [ %i.cf, %bb.v ], [ %.sroa.2.16.vec.extract, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %.sroa.2.16.vec.extract, %bb.u ] ; 3 uses
  %i.cg = trunc i64 %.0.i.i to i1
  br i1 %i.cg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.ch = tail call i64 @rb_fix2int(i64 noundef %.0.i.i) #18
  br label %obj2int.exit.i

bb.x:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.ci = tail call i64 @rb_num2int(i64 noundef %.0.i.i) #18
  br label %obj2int.exit.i

obj2int.exit.i:                                   ; preds = %bb.x, %bb.w
  %.0.i3.i.i = phi i64 [ %i.ch, %bb.w ], [ %i.ci, %bb.x ] ; 2 uses
  %i.cj = and i64 %.0.i3.i.i, 4294967264
  %.not.i55 = icmp eq i64 %i.cj, 0
  br i1 %.not.i55, label %obj2ubits.exit, label %bb.y

bb.y:                                             ; preds = %obj2int.exit.i
  %i.ck = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ck, ptr noundef nonnull @.str.104) #19
  unreachable

obj2ubits.exit:                                   ; preds = %obj2int.exit.i
  %i.cl = load i64, ptr %i.c, align 8
  %i.cm = shl i64 %.0.i3.i.i, 13
  %i.cn = and i64 %i.cm, 253952
  br label %bb.z

bb.z:                                             ; preds = %bb.t, %obj2ubits.exit
  %.sink134 = phi i64 [ %i.cl, %obj2ubits.exit ], [ %i.bv, %bb.t ] ; 3 uses
  %.sink133 = phi i64 [ %i.cn, %obj2ubits.exit ], [ 8192, %bb.t ] ; 2 uses
  %i.co = and i64 %.sink134, -253953
  %i.cp = or disjoint i64 %i.co, %.sink133        ; 4 uses
  store i64 %i.cp, ptr %i.c, align 8
  %i.cq = trunc i64 %.sink134 to i32
  %i.cr = lshr i32 %i.cq, 9
  %i.cs = and i32 %i.cr, 15
  switch i32 %i.cs, label %bb.am [
    i32 2, label %bb.aa
    i32 4, label %bb.ak
    i32 6, label %bb.ak
    i32 9, label %bb.ak
    i32 11, label %bb.ak
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ct = load i64, ptr %2, align 8, !tbaa !65    ; 7 uses
  %i.cu = trunc i64 %i.ct to i1
  br i1 %i.cu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cv = ashr i64 %i.ct, 1
  %i.cw = srem i64 %i.cv, 400                     ; 2 uses
  %i.cx = icmp slt i64 %i.cw, 0
  %i.cy = shl nsw i64 %i.cw, 1                    ; 2 uses
  %i.cz = add nsw i64 %i.cy, 800
  %i.da = select i1 %i.cx, i64 %i.cz, i64 %i.cy
  %i.db = or disjoint i64 %i.da, 1
  br label %modv.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dc = icmp eq i64 %i.ct, 0
  %i.dd = and i64 %i.ct, 6
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = or i1 %i.dc, %i.de
  br i1 %i.df, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i57, label %rbimpl_RB_TYPE_P_fastpath.exit.i56

rbimpl_RB_TYPE_P_fastpath.exit.i56:               ; preds = %bb.ac
  %i.dg = inttoptr i64 %i.ct to ptr
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !30
  %i.di = and i64 %i.dh, 31
  %i.dj = icmp eq i64 %i.di, 10
  br i1 %i.dj, label %bb.ad, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i57

bb.ad:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i56
  %i.dk = tail call i64 @rb_big_modulo(i64 noundef %i.ct, i64 noundef 801) #18
  br label %modv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i57:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i56, %bb.ac
  %i.dl = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ct, i64 noundef 37, i32 noundef 1, i64 noundef 801) #18
  br label %modv.exit

modv.exit:                                        ; preds = %bb.ab, %bb.ad, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i57
  %.0.i58 = phi i64 [ %i.dl, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i57 ], [ %i.dk, %bb.ad ], [ %i.db, %bb.ab ] ; 3 uses
  %i.dm = trunc i64 %.0.i58 to i1
  br i1 %i.dm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %modv.exit
  %i.dn = ashr i64 %.0.i58, 1
  br label %rb_num2long_inline.exit

bb.af:                                            ; preds = %modv.exit
  %i.do = tail call i64 @rb_num2long(i64 noundef %.0.i58) #18
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.ae, %bb.af
  %.0.i59 = phi i64 [ %i.dn, %bb.ae ], [ %i.do, %bb.af ] ; 3 uses
  %i.dp = icmp sgt i64 %.0.i59, -1
  br i1 %i.dp, label %bb.ah, label %bb.ag, !prof !15

bb.ag:                                            ; preds = %rb_num2long_inline.exit
  %i.dq = sub i64 0, %.0.i59
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %rb_num2long_inline.exit
  %i.dr = phi i64 [ %i.dq, %bb.ag ], [ %.0.i59, %rb_num2long_inline.exit ]
  %.fr = freeze i64 %i.dr                         ; 3 uses
  %i.ds = and i64 %.fr, 3
  %.not.i60 = icmp eq i64 %i.ds, 0
  br i1 %.not.i60, label %bb.ai, label %leap_year_p.exit.thread, !prof !16

bb.ai:                                            ; preds = %bb.ah
  %i.dt = udiv i64 %.fr, 100                      ; 2 uses
  %i.du = mul nuw nsw i64 %i.dt, 100
  %.not11.i = icmp eq i64 %.fr, %i.du
  br i1 %.not11.i, label %leap_year_p.exit, label %leap_year_p.exit.thread90, !prof !16

leap_year_p.exit:                                 ; preds = %bb.ai
  %i.dv = and i64 %i.dt, 3
  %.not95 = icmp eq i64 %i.dv, 0
  br i1 %.not95, label %leap_year_p.exit.thread90, label %leap_year_p.exit.thread

leap_year_p.exit.thread:                          ; preds = %bb.ah, %leap_year_p.exit
  br label %leap_year_p.exit.thread90

leap_year_p.exit.thread90:                        ; preds = %bb.ai, %leap_year_p.exit, %leap_year_p.exit.thread
  %i.dw = phi i32 [ 28, %leap_year_p.exit.thread ], [ 29, %leap_year_p.exit ], [ 29, %bb.ai ] ; 2 uses
  %i.dx = load i64, ptr %i.c, align 8             ; 4 uses
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = lshr i32 %i.dy, 13                      ; 2 uses
  %i.ea = and i32 %i.dz, 31
  %i.eb = icmp samesign ugt i32 %i.ea, %i.dw
  br i1 %i.eb, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %leap_year_p.exit.thread90
  %i.ec = sub nuw nsw i32 %i.dz, %i.dw
  %i.ed = shl nuw i32 %i.ec, 13
  %i.ee = and i32 %i.ed, 253952
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = and i64 %i.dx, -261633
  %i.eh = add i64 %i.dx, 512
  %i.ei = and i64 %i.eh, 7680
  %i.ej = or disjoint i64 %i.ei, %i.eg
  %i.ek = or disjoint i64 %i.ej, %i.ef
  br label %.sink.split

bb.ak:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z
  %i.el = icmp eq i64 %.sink133, 253952
  br i1 %i.el, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.em = add i64 %.sink134, 512
  %i.en = and i64 %i.em, 7680
  %i.eo = and i64 %i.cp, -253441
  %i.ep = or disjoint i64 %i.eo, %i.en
  br label %.sink.split

.sink.split:                                      ; preds = %bb.al, %bb.aj
  %.sink = phi i64 [ %i.ek, %bb.aj ], [ %i.ep, %bb.al ] ; 2 uses
  store i64 %.sink, ptr %i.c, align 8
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %leap_year_p.exit.thread90, %bb.ak, %bb.z
  %i.eq = phi i64 [ %i.dx, %leap_year_p.exit.thread90 ], [ %i.cp, %bb.z ], [ %i.cp, %bb.ak ], [ %.sink, %.sink.split ]
  %.sroa.8.24.vec.extract = extractelement <2 x i64> %.sroa.8.2, i64 0 ; 7 uses
  %i.er = icmp eq i64 %.sroa.8.24.vec.extract, 4
  br i1 %i.er, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.es = icmp eq i64 %.sroa.8.24.vec.extract, 0
  %i.et = and i64 %.sroa.8.24.vec.extract, 7
  %i.eu = icmp ne i64 %i.et, 0
  %i.ev = or i1 %i.es, %i.eu
  br i1 %i.ev, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i62, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i61

rbimpl_RB_TYPE_P_fastpath.exit.i.i61:             ; preds = %bb.an
  %i.ew = inttoptr i64 %.sroa.8.24.vec.extract to ptr
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !30
  %i.ey = and i64 %i.ex, 31
  %i.ez = icmp eq i64 %i.ey, 5
  br i1 %i.ez, label %bb.ao, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i62

bb.ao:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i61
  %i.fa = tail call i64 @rb_str_to_inum(i64 noundef %.sroa.8.24.vec.extract, i32 noundef 10, i32 noundef 1) #18
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i62

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i62:      ; preds = %bb.ao, %rbimpl_RB_TYPE_P_fastpath.exit.i.i61, %bb.an
  %.0.i.i63 = phi i64 [ %i.fa, %bb.ao ], [ %.sroa.8.24.vec.extract, %rbimpl_RB_TYPE_P_fastpath.exit.i.i61 ], [ %.sroa.8.24.vec.extract, %bb.an ] ; 3 uses
  %i.fb = trunc i64 %.0.i.i63 to i1
  br i1 %i.fb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i62
  %i.fc = tail call i64 @rb_fix2int(i64 noundef %.0.i.i63) #18
  br label %obj2int.exit.i64

bb.aq:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i62
  %i.fd = tail call i64 @rb_num2int(i64 noundef %.0.i.i63) #18
  br label %obj2int.exit.i64

obj2int.exit.i64:                                 ; preds = %bb.aq, %bb.ap
  %.0.i3.i.i65 = phi i64 [ %i.fc, %bb.ap ], [ %i.fd, %bb.aq ] ; 2 uses
  %i.fe = and i64 %.0.i3.i.i65, 4294967264
  %.not.i66 = icmp eq i64 %i.fe, 0
  br i1 %.not.i66, label %obj2ubits.exit67, label %bb.ar

bb.ar:                                            ; preds = %obj2int.exit.i64
  %i.ff = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ff, ptr noundef nonnull @.str.104) #19
  unreachable

obj2ubits.exit67:                                 ; preds = %obj2int.exit.i64
  %i.fg = shl i64 %.0.i3.i.i65, 18
  %i.fh = and i64 %i.fg, 8126464
  %.pre = load i64, ptr %i.c, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.am, %obj2ubits.exit67
  %i.fi = phi i64 [ %.pre, %obj2ubits.exit67 ], [ %i.eq, %bb.am ]
  %i.fj = phi i64 [ %i.fh, %obj2ubits.exit67 ], [ 0, %bb.am ]
  %i.fk = and i64 %i.fi, -8126465
  %i.fl = or disjoint i64 %i.fk, %i.fj            ; 2 uses
  store i64 %i.fl, ptr %i.c, align 8
  %.sroa.8.32.vec.extract = extractelement <2 x i64> %.sroa.8.2, i64 1 ; 7 uses
  %i.fm = icmp eq i64 %.sroa.8.32.vec.extract, 4
  br i1 %i.fm, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fn = icmp eq i64 %.sroa.8.32.vec.extract, 0
  %i.fo = and i64 %.sroa.8.32.vec.extract, 7
  %i.fp = icmp ne i64 %i.fo, 0
  %i.fq = or i1 %i.fn, %i.fp
  br i1 %i.fq, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i69, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i68

rbimpl_RB_TYPE_P_fastpath.exit.i.i68:             ; preds = %bb.at
  %i.fr = inttoptr i64 %.sroa.8.32.vec.extract to ptr
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !30
  %i.ft = and i64 %i.fs, 31
  %i.fu = icmp eq i64 %i.ft, 5
  br i1 %i.fu, label %bb.au, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i69

bb.au:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i68
  %i.fv = tail call i64 @rb_str_to_inum(i64 noundef %.sroa.8.32.vec.extract, i32 noundef 10, i32 noundef 1) #18
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i69

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i69:      ; preds = %bb.au, %rbimpl_RB_TYPE_P_fastpath.exit.i.i68, %bb.at
  %.0.i.i70 = phi i64 [ %i.fv, %bb.au ], [ %.sroa.8.32.vec.extract, %rbimpl_RB_TYPE_P_fastpath.exit.i.i68 ], [ %.sroa.8.32.vec.extract, %bb.at ] ; 3 uses
  %i.fw = trunc i64 %.0.i.i70 to i1
  br i1 %i.fw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i69
  %i.fx = tail call i64 @rb_fix2int(i64 noundef %.0.i.i70) #18
  br label %obj2int.exit.i71

bb.aw:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i69
  %i.fy = tail call i64 @rb_num2int(i64 noundef %.0.i.i70) #18
  br label %obj2int.exit.i71

obj2int.exit.i71:                                 ; preds = %bb.aw, %bb.av
  %.0.i3.i.i72 = phi i64 [ %i.fx, %bb.av ], [ %i.fy, %bb.aw ] ; 2 uses
  %i.fz = and i64 %.0.i3.i.i72, 4294967232
  %.not.i73 = icmp eq i64 %i.fz, 0
  br i1 %.not.i73, label %obj2ubits.exit74, label %bb.ax

bb.ax:                                            ; preds = %obj2int.exit.i71
  %i.ga = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ga, ptr noundef nonnull @.str.104) #19
  unreachable

obj2ubits.exit74:                                 ; preds = %obj2int.exit.i71
  %i.gb = shl i64 %.0.i3.i.i72, 23
  %i.gc = and i64 %i.gb, 528482304
  %.pre116 = load i64, ptr %i.c, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.as, %obj2ubits.exit74
  %i.gd = phi i64 [ %.pre116, %obj2ubits.exit74 ], [ %i.fl, %bb.as ]
  %i.ge = phi i64 [ %i.gc, %obj2ubits.exit74 ], [ 0, %bb.as ]
  %i.gf = and i64 %i.gd, -528482305
  %i.gg = or disjoint i64 %i.gf, %i.ge            ; 3 uses
  store i64 %i.gg, ptr %i.c, align 8
  %i.gh = icmp eq i64 %i.be, 4
  %i.gi = icmp ne i32 %0, 7
  %or.cond.not = or i1 %i.gi, %i.gh
  %i.gj = icmp eq i64 %i.bd, 4                    ; 2 uses
  br i1 %or.cond.not, label %bb.br, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %i.gj, label %bb.bf, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gk = icmp eq i64 %i.bd, 0
  %i.gl = and i64 %i.bd, 7
  %i.gm = icmp ne i64 %i.gl, 0
  %i.gn = or i1 %i.gk, %i.gm
  br i1 %i.gn, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i76, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i75

rbimpl_RB_TYPE_P_fastpath.exit.i.i75:             ; preds = %bb.ba
  %i.go = inttoptr i64 %i.bd to ptr
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !30
  %i.gq = and i64 %i.gp, 31
  %i.gr = icmp eq i64 %i.gq, 5
  br i1 %i.gr, label %bb.bb, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i76

bb.bb:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i75
  %i.gs = tail call i64 @rb_str_to_inum(i64 noundef %i.bd, i32 noundef 10, i32 noundef 1) #18
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i76

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i76:      ; preds = %bb.bb, %rbimpl_RB_TYPE_P_fastpath.exit.i.i75, %bb.ba
  %.0.i.i77 = phi i64 [ %i.gs, %bb.bb ], [ %i.bd, %rbimpl_RB_TYPE_P_fastpath.exit.i.i75 ], [ %i.bd, %bb.ba ] ; 3 uses
  %i.gt = trunc i64 %.0.i.i77 to i1
  br i1 %i.gt, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i76
  %i.gu = tail call i64 @rb_fix2int(i64 noundef %.0.i.i77) #18
  br label %obj2int.exit.i78

bb.bd:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i76
  %i.gv = tail call i64 @rb_num2int(i64 noundef %.0.i.i77) #18
  br label %obj2int.exit.i78

obj2int.exit.i78:                                 ; preds = %bb.bd, %bb.bc
  %.0.i3.i.i79 = phi i64 [ %i.gu, %bb.bc ], [ %i.gv, %bb.bd ] ; 2 uses
  %i.gw = and i64 %.0.i3.i.i79, 4294967232
  %.not.i80 = icmp eq i64 %i.gw, 0
  br i1 %.not.i80, label %obj2ubits.exit81, label %bb.be

bb.be:                                            ; preds = %obj2int.exit.i78
  %i.gx = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gx, ptr noundef nonnull @.str.104) #19
  unreachable

obj2ubits.exit81:                                 ; preds = %obj2int.exit.i78
  %i.gy = shl i64 %.0.i3.i.i79, 32
  %.pre117 = load i64, ptr %i.c, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.az, %obj2ubits.exit81
  %i.gz = phi i64 [ %.pre117, %obj2ubits.exit81 ], [ %i.gg, %bb.az ]
  %i.ha = phi i64 [ %i.gy, %obj2ubits.exit81 ], [ 0, %bb.az ]
  %i.hb = and i64 %i.gz, -270582939649
  %i.hc = or i64 %i.hb, %i.ha
  store i64 %i.hc, ptr %i.c, align 8
  %i.hd = icmp eq i64 %i.be, 0
  %i.he = and i64 %i.be, 7
  %i.hf = icmp ne i64 %i.he, 0
  %i.hg = or i1 %i.hd, %i.hf
  br i1 %i.hg, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i83, label %rbimpl_RB_TYPE_P_fastpath.exit.i82

rbimpl_RB_TYPE_P_fastpath.exit.i82:               ; preds = %bb.bf
  %i.hh = inttoptr i64 %i.be to ptr
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !30
  %i.hj = and i64 %i.hi, 31
  %i.hk = icmp eq i64 %i.hj, 5
  br i1 %i.hk, label %bb.bg, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i83

bb.bg:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i82
  %i.hl = tail call i64 @rb_str_to_inum(i64 noundef %i.be, i32 noundef 10, i32 noundef 1) #18
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i83

rbimpl_RB_TYPE_P_fastpath.exit.thread.i83:        ; preds = %bb.bg, %rbimpl_RB_TYPE_P_fastpath.exit.i82, %bb.bf
  %.0.i84 = phi i64 [ %i.hl, %bb.bg ], [ %i.be, %rbimpl_RB_TYPE_P_fastpath.exit.i82 ], [ %i.be, %bb.bf ]
  %i.hm = tail call fastcc i64 @num_exact(i64 noundef %.0.i84) ; 7 uses
  %i.hn = and i64 %i.hm, 1
  %or.cond.not.i.i = icmp eq i64 %i.hn, 0
  br i1 %or.cond.not.i.i, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i83
  %i.ho = ashr i64 %i.hm, 1
  %i.hp = sext i64 %i.ho to i128
  %i.hq = mul nsw i128 %i.hp, 1000000000          ; 3 uses
  %i.hr = add nsw i128 %i.hq, 4611686018427387904
  %or.cond.i.i.i = icmp ult i128 %i.hr, 9223372036854775808
  br i1 %or.cond.i.i.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hs = trunc nsw i128 %i.hq to i64
  %i.ht = shl nsw i64 %i.hs, 1
  %i.hu = or disjoint i64 %i.ht, 1
  br label %mulv.exit.i

bb.bj:                                            ; preds = %bb.bh
  %i.hv = tail call i64 @rb_int128t2big(i128 noundef %i.hq) #18
  br label %mulv.exit.i

bb.bk:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i83
  %i.hw = icmp eq i64 %i.hm, 0
  %i.hx = and i64 %i.hm, 6
  %i.hy = icmp ne i64 %i.hx, 0
  %i.hz = or i1 %i.hw, %i.hy
  br i1 %i.hz, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i86, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i85

rbimpl_RB_TYPE_P_fastpath.exit.i.i85:             ; preds = %bb.bk
  %i.ia = inttoptr i64 %i.hm to ptr
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !30
  %i.ic = and i64 %i.ib, 31
  %i.id = icmp eq i64 %i.ic, 10
  br i1 %i.id, label %bb.bl, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i86

bb.bl:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i85
  %i.ie = tail call i64 @rb_big_mul(i64 noundef %i.hm, i64 noundef 2000000001) #18
  br label %mulv.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i86:      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i85, %bb.bk
  %i.if = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.hm, i64 noundef 42, i32 noundef 1, i64 noundef 2000000001) #18
  br label %mulv.exit.i

mulv.exit.i:                                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i86, %bb.bl, %bb.bj, %bb.bi
  %.0.i3.i = phi i64 [ %i.if, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i86 ], [ %i.ie, %bb.bl ], [ %i.hu, %bb.bi ], [ %i.hv, %bb.bj ] ; 3 uses
  %i.ig = and i64 %.0.i3.i, 1
  %or.cond24.not.i.i.i = icmp eq i64 %i.ig, 0
  br i1 %or.cond24.not.i.i.i, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %mulv.exit.i
  %i.ih = ashr i64 %.0.i3.i, 1                    ; 2 uses
  %i.ii = sdiv i64 %i.ih, 1000000                 ; 2 uses
  %i.ij = mul nsw i64 %i.ii, 1000000
  %i.ik = icmp eq i64 %i.ij, %i.ih
  br i1 %i.ik, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.il = shl nsw i64 %i.ii, 1
  %i.im = or disjoint i64 %i.il, 1
  br label %quor.exit.i.i

bb.bo:                                            ; preds = %bb.bm, %mulv.exit.i
  %i.in = tail call i64 @rb_numeric_quo(i64 noundef %.0.i3.i, i64 noundef 2000001) #18
  br label %quor.exit.i.i

quor.exit.i.i:                                    ; preds = %bb.bo, %bb.bn
  %.1.i.i.i = phi i64 [ %i.in, %bb.bo ], [ %i.im, %bb.bn ] ; 6 uses
  %i.io = icmp eq i64 %.1.i.i.i, 0
  %i.ip = and i64 %.1.i.i.i, 7
  %i.iq = icmp ne i64 %i.ip, 0
  %i.ir = or i1 %i.io, %i.iq
  br i1 %i.ir, label %usec2subsecx.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i5.i

rbimpl_RB_TYPE_P_fastpath.exit.i5.i:              ; preds = %quor.exit.i.i
  %i.is = inttoptr i64 %.1.i.i.i to ptr           ; 3 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !30
  %i.iu = and i64 %i.it, 31
  %i.iv = icmp eq i64 %i.iu, 15
  br i1 %i.iv, label %bb.bp, label %usec2subsecx.exit

bb.bp:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i5.i
  %i.iw = getelementptr i8, ptr %i.is, i64 24
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !39
  %i.iy = icmp eq i64 %i.ix, 3
  br i1 %i.iy, label %bb.bq, label %usec2subsecx.exit

bb.bq:                                            ; preds = %bb.bp
  %i.iz = getelementptr i8, ptr %i.is, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !41
  br label %usec2subsecx.exit

usec2subsecx.exit:                                ; preds = %quor.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i5.i, %bb.bp, %bb.bq
  %.0.i7.i = phi i64 [ %i.ja, %bb.bq ], [ %.1.i.i.i, %bb.bp ], [ %.1.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i5.i ], [ %.1.i.i.i, %quor.exit.i.i ] ; 2 uses
  store i64 %.0.i7.i, ptr %i.a, align 8, !tbaa !13
  br label %bb.bu

bb.br:                                            ; preds = %bb.ay
  br i1 %i.gj, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.jb = and i64 %i.gg, -270582939649
  store i64 %i.jb, ptr %i.c, align 8
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.jc = call fastcc i32 @obj2subsecx(i64 noundef %i.bd, ptr noundef %i.a)
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = load i64, ptr %i.c, align 8
  %i.jf = shl nuw nsw i64 %i.jd, 32
  %i.jg = and i64 %i.je, -270582939649
  %i.jh = or disjoint i64 %i.jg, %i.jf
  store i64 %i.jh, ptr %i.c, align 8
  %.pre118 = load i64, ptr %i.a, align 8, !tbaa !13
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt, %usec2subsecx.exit
  %i.ji = phi i64 [ 1, %bb.bs ], [ %.pre118, %bb.bt ], [ %.0.i7.i, %usec2subsecx.exit ]
  store i64 %i.ji, ptr %i.e, align 8, !tbaa !66
  tail call fastcc void @validate_vtm(ptr noundef nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr %i.a, ptr %i.b, align 8, !tbaa !48
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #18, !srcloc !101
  %i.jj = load ptr, ptr %i.b, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.jk = load volatile i64, ptr %i.jj, align 8, !tbaa !13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @timelocalw(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.tm, align 8                 ; 10 uses
  %2 = alloca %struct.vtm, align 8                ; 13 uses
  %3 = alloca %struct.vtm, align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.b = load i64, ptr %0, align 8, !tbaa !65     ; 7 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i64 %i.b, 1                         ; 2 uses
  %i.e = add nsw i64 %i.d, -2147485548
  %or.cond = icmp ult i64 %i.e, -4294967296
  br i1 %or.cond, label %cmp.exit.thread, label %.thread

.thread:                                          ; preds = %bb.b
  %i.f = trunc i64 %i.d to i32
  %i.g = add i32 %i.f, -1900
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.b, 0
  %i.i = and i64 %i.b, 6
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.c
  %i.l = inttoptr i64 %i.b to ptr
  %i.m = load i64, ptr %i.l, align 8, !tbaa !30
  %i.n = and i64 %i.m, 31
  %i.o = icmp eq i64 %i.n, 10
  br i1 %i.o, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.p = tail call i64 @rb_big_minus(i64 noundef %i.b, i64 noundef 3801) #18
  br label %subv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.c
  %i.q = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.b, i64 noundef 45, i32 noundef 1, i64 noundef 3801) #18
  br label %subv.exit

subv.exit:                                        ; preds = %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i = phi i64 [ %i.q, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.p, %bb.d ] ; 13 uses
  %i.r = and i64 %.0.i, 1
  %or.cond.not.i78 = icmp eq i64 %i.r, 0
  br i1 %or.cond.not.i78, label %bb.f, label %bb.e

bb.e:                                             ; preds = %subv.exit
  %i.s = add i64 %.0.i, -4294967296
  %or.cond136 = icmp ult i64 %i.s, -8589934591
  br i1 %or.cond136, label %cmp.exit.thread, label %cmp.exit86.thread122

bb.f:                                             ; preds = %subv.exit
  %i.t = icmp eq i64 %.0.i, 0
  %i.u = and i64 %.0.i, 6
  %i.v = icmp ne i64 %i.u, 0
  %i.w = or i1 %i.t, %i.v
  br i1 %i.w, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i81, label %rbimpl_RB_TYPE_P_fastpath.exit.i80

rbimpl_RB_TYPE_P_fastpath.exit.i80:               ; preds = %bb.f
  %i.x = inttoptr i64 %.0.i to ptr
  %i.y = load i64, ptr %i.x, align 8, !tbaa !30
  %i.z = and i64 %i.y, 31
  %i.aa = icmp eq i64 %i.z, 10
  br i1 %i.aa, label %bb.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i81

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i80
  %i.ab = tail call i64 @rb_big_cmp(i64 noundef %.0.i, i64 noundef -4294967295) #18
  %i.ac = tail call i64 @rb_fix2int(i64 noundef %i.ab) #18
  %i.ad = trunc i64 %i.ac to i32
  br label %cmp.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i81:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i80, %bb.f
  %i.ae = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.0.i, i64 noundef 135, i32 noundef 1, i64 noundef -4294967295) #18
  %i.af = tail call i32 @rb_cmpint(i64 noundef %i.ae, i64 noundef %.0.i, i64 noundef -4294967295) #18
  br label %cmp.exit

cmp.exit:                                         ; preds = %bb.g, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i81
  %.0.i79 = phi i32 [ %i.af, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i81 ], [ %i.ad, %bb.g ]
  %i.ag = icmp slt i32 %.0.i79, 0
  br i1 %i.ag, label %cmp.exit.thread, label %cmp.exit86

cmp.exit86:                                       ; preds = %cmp.exit
  %i.ah = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef 4294967295, i64 noundef 135, i32 noundef 1, i64 noundef %.0.i) #18
  %i.ai = tail call i32 @rb_cmpint(i64 noundef %i.ah, i64 noundef 4294967295, i64 noundef %.0.i) #18
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %cmp.exit.thread, label %cmp.exit86.thread122

cmp.exit86.thread122:                             ; preds = %bb.e, %cmp.exit86
  %i.ak = trunc i64 %.0.i to i1
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %cmp.exit86.thread122
  %i.al = tail call i64 @rb_fix2int(i64 noundef %.0.i) #18
  br label %rb_num2int_inline.exit

bb.i:                                             ; preds = %cmp.exit86.thread122
  %i.am = tail call i64 @rb_num2int(i64 noundef %.0.i) #18
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.h, %bb.i
  %.0.i87 = phi i64 [ %i.al, %bb.h ], [ %i.am, %bb.i ]
  %i.an = trunc i64 %.0.i87 to i32
  br label %bb.j

bb.j:                                             ; preds = %.thread, %rb_num2int_inline.exit
  %.sink = phi i32 [ %i.g, %.thread ], [ %i.an, %rb_num2int_inline.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %.sink, ptr %i.ao, align 4, !tbaa !77
  %i.ap = getelementptr i8, ptr %0, i64 32
  %i.aq = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.ar = trunc i64 %i.aq to i32                  ; 4 uses
  %i.as = lshr i32 %i.ar, 9
  %i.at = and i32 %i.as, 15
  %i.au = add nsw i32 %i.at, -1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.au, ptr %i.av, align 8, !tbaa !79
  %i.aw = lshr i32 %i.ar, 13
  %i.ax = and i32 %i.aw, 31
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !80
  %i.az = lshr i32 %i.ar, 18
  %i.ba = and i32 %i.az, 31
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !81
  %i.bc = lshr i32 %i.ar, 23
  %i.bd = and i32 %i.bc, 63
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !82
  %i.bf = lshr i64 %i.aq, 32
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 63
  store i32 %i.bh, ptr %1, align 8, !tbaa !83
  %i.bi = lshr i64 %i.aq, 41
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = and i32 %i.bj, 3                        ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 3
  %spec.select = select i1 %i.bl, i32 -1, i32 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %spec.select, ptr %i.bm, align 8, !tbaa !86
  %i.bn = call fastcc ptr @find_time_t(ptr noundef %1, i32 noundef 0, ptr noundef %i.a)
  %.not = icmp eq ptr %i.bn, null
  br i1 %.not, label %bb.k, label %cmp.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !13  ; 3 uses
  %i.bp = add i64 %i.bo, 4611686018427387904
  %or.cond.i.i88 = icmp sgt i64 %i.bp, -1
  br i1 %or.cond.i.i88, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bq = shl nsw i64 %i.bo, 1
  %i.br = or disjoint i64 %i.bq, 1
  br label %rb_long2num_inline.exit.i

bb.m:                                             ; preds = %bb.k
  %i.bs = tail call i64 @rb_int2big(i64 noundef %i.bo) #18
  br label %rb_long2num_inline.exit.i

rb_long2num_inline.exit.i:                        ; preds = %bb.m, %bb.l
  %.0.i.i = phi i64 [ %i.br, %bb.l ], [ %i.bs, %bb.m ] ; 6 uses
  %i.bt = icmp eq i64 %.0.i.i, 0
  %i.bu = and i64 %.0.i.i, 7
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = or i1 %i.bt, %i.bv
  br i1 %i.bw, label %timet2wv.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

end_hunk_0
