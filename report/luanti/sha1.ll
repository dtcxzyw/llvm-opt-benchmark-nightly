Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/sha1?download=true
inline.NumInlined: 13
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4SHA17processEv:.lr.ph.preheader
  %i.bv = and i32 %.05264, %i.bu
  %i.bw = or i32 %i.bv, %i.bt
  br label %bb.g

bb.b:                                             ; preds = %.preheader
  %i.bx = icmp samesign ult i64 %indvars.iv70, 40
  br i1 %i.bx, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.by = xor i32 %.05363, %.05462
  %i.bz = xor i32 %i.by, %.05264
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.ca = icmp samesign ult i64 %indvars.iv70, 60
  br i1 %i.ca, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cb = or i32 %.05264, %.05363
  %i.cc = and i32 %i.cb, %.05462
  %i.cd = and i32 %.05264, %.05363
  %i.ce = or i32 %i.cc, %i.cd
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cf = xor i32 %.05363, %.05462
  %i.cg = xor i32 %i.cf, %.05264
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.a
  %.050 = phi i32 [ 1518500249, %bb.a ], [ 1859775393, %bb.c ], [ -1894007588, %bb.e ], [ -899497514, %bb.f ]
  %.0 = phi i32 [ %i.bw, %bb.a ], [ %i.bz, %bb.c ], [ %i.ce, %bb.e ], [ %i.cg, %bb.f ]
  %i.ch = tail call noundef i32 @llvm.fshl.i32(i32 %.05561, i32 %.05561, i32 5)
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv70
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !10
  %i.ck = add i32 %.05165, %i.ch
  %i.cl = add i32 %i.ck, %.050
  %i.cm = add i32 %i.cl, %.0
  %i.cn = add i32 %i.cm, %i.cj                    ; 2 uses
  %i.co = tail call noundef i32 @llvm.fshl.i32(i32 %.05462, i32 %.05462, i32 30) ; 2 uses
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next71, 80
  br i1 %exitcond73.not, label %bb.h, label %.preheader, !llvm.loop !22

bb.h:                                             ; preds = %bb.g
  %i.cp = add i32 %i.cn, %i.b
  store i32 %i.cp, ptr %0, align 4, !tbaa !15
  %i.cq = add i32 %.05561, %i.d
  store i32 %i.cq, ptr %i.c, align 4, !tbaa !16
  %i.cr = add i32 %i.co, %i.f
  store i32 %i.cr, ptr %i.e, align 4, !tbaa !17
  %i.cs = add i32 %.05363, %i.h
  store i32 %i.cs, ptr %i.g, align 4, !tbaa !18
  %i.ct = add i32 %.05264, %i.j
  store i32 %i.ct, ptr %i.i, align 4, !tbaa !12
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.cu, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN4SHA18addBytesEPKcj(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(92) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  %i.c = add i32 %i.b, %2
  store i32 %i.c, ptr %i.a, align 4, !tbaa !14
  %.not14 = icmp eq i32 %2, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre17 = load i32, ptr %i.d, align 4, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.f = phi i32 [ %.pre17, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.016 = phi i32 [ %2, %.lr.ph ], [ %i.l, %bb.d ] ; 2 uses
  %.01315 = phi ptr [ %1, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %i.g = sub i32 64, %i.f
  %i.h = tail call i32 @llvm.umin.i32(i32 %.016, i32 %i.g) ; 3 uses
  %i.i = zext i32 %i.f to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i
  %i.k = zext i32 %i.h to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %.01315, i64 %i.k, i1 false)
  %i.l = sub nuw i32 %.016, %i.h                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.01315, i64 %i.k
  %i.n = load i32, ptr %i.d, align 4, !tbaa !13
  %i.o = add i32 %i.n, %i.h                       ; 3 uses
  store i32 %i.o, ptr %i.d, align 4, !tbaa !13
  %i.p = icmp eq i32 %i.o, 64
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4SHA17processEv(ptr noundef nonnull align 4 dereferenceable(92) %0)
  %.pre = load i32, ptr %i.d, align 4, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi i32 [ %.pre, %bb.c ], [ %i.o, %bb.b ]
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN4SHA19getDigestEPh(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(92) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14   ; 3 uses
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %.pre17.i = load i32, ptr %i.e, align 4, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.g = phi i32 [ %.pre17.i, %bb.a ], [ %i.q, %bb.d ] ; 2 uses
  %.01315.i = phi ptr [ @.str, %bb.a ], [ %i.m, %bb.d ] ; 2 uses
  %i.h = icmp ne i32 %i.g, 64                     ; 3 uses
  %i.i = zext i1 %i.h to i32
  %i.j = zext i32 %i.g to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.l = zext i1 %i.h to i64                      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %.01315.i, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.01315.i, i64 %i.l
  %i.n = load i32, ptr %i.e, align 4, !tbaa !13
  %i.o = add i32 %i.n, %i.i                       ; 3 uses
  store i32 %i.o, ptr %i.e, align 4, !tbaa !13
  %i.p = icmp eq i32 %i.o, 64
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4SHA17processEv(ptr noundef nonnull align 4 dereferenceable(92) %0)
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi i32 [ %.pre.i, %bb.c ], [ %i.o, %bb.b ] ; 6 uses
  br i1 %i.h, label %_ZN4SHA18addBytesEPKcj.exit, label %bb.b, !llvm.loop !0

_ZN4SHA18addBytesEPKcj.exit:                      ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.r = icmp ugt i32 %i.q, 56
  %.pre24 = load i32, ptr %i.b, align 4, !tbaa !14 ; 2 uses
  br i1 %i.r, label %bb.e, label %_ZN4SHA18addBytesEPKcj.exit15

bb.e:                                             ; preds = %_ZN4SHA18addBytesEPKcj.exit
  %i.s = sub i32 64, %i.q                         ; 2 uses
  %i.t = add i32 %.pre24, %i.s                    ; 2 uses
  store i32 %i.t, ptr %i.b, align 4, !tbaa !14
  %.not14.i = icmp eq i32 %i.q, 64
  br i1 %.not14.i, label %_ZN4SHA18addBytesEPKcj.exit15, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %i.u = phi i32 [ %i.af, %bb.g ], [ %i.q, %bb.e ] ; 2 uses
  %.016.i11 = phi i32 [ %i.aa, %bb.g ], [ %i.s, %bb.e ] ; 2 uses
  %.01315.i12 = phi ptr [ %i.ab, %bb.g ], [ %i.a, %bb.e ] ; 2 uses
  %i.v = sub i32 64, %i.u
  %i.w = tail call i32 @llvm.umin.i32(i32 %.016.i11, i32 %i.v) ; 3 uses
  %i.x = zext i32 %i.u to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.x
  %i.z = zext i32 %i.w to i64                     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %.01315.i12, i64 %i.z, i1 false)
  %i.aa = sub nuw i32 %.016.i11, %i.w             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01315.i12, i64 %i.z
  %i.ac = load i32, ptr %i.e, align 4, !tbaa !13
  %i.ad = add i32 %i.ac, %i.w                     ; 3 uses
  store i32 %i.ad, ptr %i.e, align 4, !tbaa !13
  %i.ae = icmp eq i32 %i.ad, 64
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @_ZN4SHA17processEv(ptr noundef nonnull align 4 dereferenceable(92) %0)
  %.pre.i14 = load i32, ptr %i.e, align 4, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.af = phi i32 [ %.pre.i14, %bb.f ], [ %i.ad, %.lr.ph.i ] ; 2 uses
  %.not.i13 = icmp eq i32 %i.aa, 0
  br i1 %.not.i13, label %_ZN4SHA18addBytesEPKcj.exit15.loopexit, label %.lr.ph.i, !llvm.loop !0

_ZN4SHA18addBytesEPKcj.exit15.loopexit:           ; preds = %bb.g
  %.pre = load i32, ptr %i.b, align 4, !tbaa !14
  br label %_ZN4SHA18addBytesEPKcj.exit15

_ZN4SHA18addBytesEPKcj.exit15:                    ; preds = %_ZN4SHA18addBytesEPKcj.exit15.loopexit, %bb.e, %_ZN4SHA18addBytesEPKcj.exit
  %i.ag = phi i32 [ %.pre, %_ZN4SHA18addBytesEPKcj.exit15.loopexit ], [ %i.t, %bb.e ], [ %.pre24, %_ZN4SHA18addBytesEPKcj.exit ]
  %i.ah = phi i32 [ %i.af, %_ZN4SHA18addBytesEPKcj.exit15.loopexit ], [ 64, %bb.e ], [ %i.q, %_ZN4SHA18addBytesEPKcj.exit ] ; 4 uses
  %i.ai = lshr i32 %i.c, 29
  %i.aj = shl i32 %i.c, 3                         ; 4 uses
  %i.ak = sub i32 56, %i.ah
  %i.al = zext i32 %i.ak to i64
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.al ; 8 uses
  store i8 0, ptr %2, align 1, !tbaa !19
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %3, align 1, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.am, align 1, !tbaa !19
  %4 = trunc nuw nsw i32 %i.ai to i8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %4, ptr %i.an, align 1, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %5 = lshr i32 %i.aj, 24
  %6 = trunc nuw i32 %5 to i8
  store i8 %6, ptr %i.ao, align 1, !tbaa !19
  %7 = lshr i32 %i.aj, 16
  %i.ap = trunc i32 %7 to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !19
  %8 = lshr i32 %i.aj, 8
  %9 = trunc i32 %8 to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %9, ptr %i.ar, align 1, !tbaa !19
  %10 = trunc i32 %i.aj to i8
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %10, ptr %11, align 1, !tbaa !19
  %i.as = sub i32 64, %i.ah                       ; 2 uses
  %i.at = add i32 %i.ag, %i.as
  store i32 %i.at, ptr %i.b, align 4, !tbaa !14
  %.not14.i16 = icmp eq i32 %i.ah, 64
  br i1 %.not14.i16, label %_ZN4SHA18addBytesEPKcj.exit23, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %_ZN4SHA18addBytesEPKcj.exit15, %bb.i
  %i.au = phi i32 [ %i.bf, %bb.i ], [ %i.ah, %_ZN4SHA18addBytesEPKcj.exit15 ] ; 2 uses
  %.016.i19 = phi i32 [ %i.ba, %bb.i ], [ %i.as, %_ZN4SHA18addBytesEPKcj.exit15 ] ; 2 uses
  %.01315.i20 = phi ptr [ %i.bb, %bb.i ], [ %i.a, %_ZN4SHA18addBytesEPKcj.exit15 ] ; 2 uses
  %i.av = sub i32 64, %i.au
  %i.aw = tail call i32 @llvm.umin.i32(i32 %.016.i19, i32 %i.av) ; 3 uses
  %i.ax = zext i32 %i.au to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ax
  %i.az = zext i32 %i.aw to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr align 1 %.01315.i20, i64 %i.az, i1 false)
  %i.ba = sub nuw i32 %.016.i19, %i.aw            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.01315.i20, i64 %i.az
  %i.bc = load i32, ptr %i.e, align 4, !tbaa !13
  %i.bd = add i32 %i.bc, %i.aw                    ; 3 uses
  store i32 %i.bd, ptr %i.e, align 4, !tbaa !13
  %i.be = icmp eq i32 %i.bd, 64
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i17
  tail call void @_ZN4SHA17processEv(ptr noundef nonnull align 4 dereferenceable(92) %0)
  %.pre.i22 = load i32, ptr %i.e, align 4, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i17
  %i.bf = phi i32 [ %.pre.i22, %bb.h ], [ %i.bd, %.lr.ph.i17 ]
  %.not.i21 = icmp eq i32 %i.ba, 0
  br i1 %.not.i21, label %_ZN4SHA18addBytesEPKcj.exit23, label %.lr.ph.i17, !llvm.loop !0

_ZN4SHA18addBytesEPKcj.exit23:                    ; preds = %bb.i, %_ZN4SHA18addBytesEPKcj.exit15
  %i.bg = load i32, ptr %0, align 4, !tbaa !15    ; 4 uses
  %12 = lshr i32 %i.bg, 24
  %13 = trunc nuw i32 %12 to i8
  store i8 %13, ptr %1, align 1, !tbaa !19
  %14 = lshr i32 %i.bg, 16
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %15, ptr %16, align 1, !tbaa !19
  %17 = lshr i32 %i.bg, 8
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %18, ptr %19, align 1, !tbaa !19
  %20 = trunc i32 %i.bg to i8
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %20, ptr %21, align 1, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !16 ; 4 uses
  %22 = lshr i32 %i.bj, 24
  %23 = trunc nuw i32 %22 to i8
  store i8 %23, ptr %i.bh, align 1, !tbaa !19
  %24 = lshr i32 %i.bj, 16
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %25, ptr %26, align 1, !tbaa !19
  %27 = lshr i32 %i.bj, 8
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %28, ptr %29, align 1, !tbaa !19
  %30 = trunc i32 %i.bj to i8
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %30, ptr %31, align 1, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !17 ; 4 uses
  %32 = lshr i32 %i.bm, 24
  %33 = trunc nuw i32 %32 to i8
  store i8 %33, ptr %i.bk, align 1, !tbaa !19
  %34 = lshr i32 %i.bm, 16
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %35, ptr %36, align 1, !tbaa !19
  %37 = lshr i32 %i.bm, 8
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %38, ptr %39, align 1, !tbaa !19
  %40 = trunc i32 %i.bm to i8
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %40, ptr %41, align 1, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !18 ; 4 uses
  %42 = lshr i32 %i.bp, 24
  %43 = trunc nuw i32 %42 to i8
  store i8 %43, ptr %i.bn, align 1, !tbaa !19
  %44 = lshr i32 %i.bp, 16
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %45, ptr %46, align 1, !tbaa !19
  %47 = lshr i32 %i.bp, 8
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %48, ptr %49, align 1, !tbaa !19
  %50 = trunc i32 %i.bp to i8
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %50, ptr %51, align 1, !tbaa !19
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !12 ; 4 uses
  %52 = lshr i32 %i.bs, 24
  %53 = trunc nuw i32 %52 to i8
  store i8 %53, ptr %i.bq, align 1, !tbaa !19
  %54 = lshr i32 %i.bs, 16
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %55, ptr %56, align 1, !tbaa !19
  %57 = lshr i32 %i.bs, 8
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %58, ptr %59, align 1, !tbaa !19
  %60 = trunc i32 %i.bs to i8
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %60, ptr %61, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !20}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!"_ZTS4SHA1", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !6, i64 20, !7, i64 84, !7, i64 88}
!12 = !{!11, !7, i64 16}
!13 = !{!11, !7, i64 84}
!14 = !{!11, !7, i64 88}
!15 = !{!11, !7, i64 0}
!16 = !{!11, !7, i64 4}
!17 = !{!11, !7, i64 8}
!18 = !{!11, !7, i64 12}
!19 = !{!6, !6, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
end_hunk_0
