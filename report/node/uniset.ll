inline.NumInlined: 264
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6icu_7810UnicodeSet3setEii:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.o, align 8
  %.pre = load ptr, ptr %i.b, align 8
  %.pre6 = load ptr, ptr %i.d, align 8
  br label %_ZN6icu_7810UnicodeSet5clearEv.exit

_ZN6icu_7810UnicodeSet5clearEv.exit:              ; preds = %bb.a, %bb.e
  %i.p = phi ptr [ %i.e, %bb.a ], [ %.pre6, %bb.e ]
  %i.q = phi ptr [ %i.c, %bb.a ], [ %.pre, %bb.e ]
  %.not.i.i2 = icmp eq ptr %i.q, null
  %i.r = icmp eq ptr %i.p, null
  %narrow.i.not.i3 = select i1 %.not.i.i2, i1 %i.r, i1 false
  br i1 %narrow.i.not.i3, label %bb.f, label %_ZN6icu_7810UnicodeSet10complementEii.exit

bb.f:                                             ; preds = %_ZN6icu_7810UnicodeSet5clearEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i8, ptr %i.s, align 8
  %i.u = and i8 %i.t, 1
  %.not2.i5 = icmp eq i8 %i.u, 0
  br i1 %.not2.i5, label %_ZN6icu_78L12pinCodePointERi.exit.i, label %_ZN6icu_7810UnicodeSet10complementEii.exit

_ZN6icu_78L12pinCodePointERi.exit.i:              ; preds = %bb.f
  %i.v = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.w = tail call i32 @llvm.umin.i32(i32 %i.v, i32 1114111) ; 2 uses
  %i.x = tail call i32 @llvm.smax.i32(i32 %2, i32 0) ; 2 uses
  %.not3.i = icmp samesign ult i32 %i.x, %i.w
  br i1 %.not3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6icu_78L12pinCodePointERi.exit.i
  %.0.i = tail call i32 @llvm.umin.i32(i32 %i.x, i32 1114111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 %i.w, ptr %i.a, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.z = add nuw nsw i32 %.0.i, 1
  store i32 %i.z, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1114112, ptr %i.aa, align 4
  call void @_ZN6icu_7810UnicodeSet11exclusiveOrEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef 2, i8 noundef signext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN6icu_78L12pinCodePointERi.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i7.i = icmp eq ptr %i.ac, null
  br i1 %.not.i7.i, label %_ZN6icu_7810UnicodeSet10complementEii.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @uprv_free_78(ptr noundef nonnull %i.ac) #20
  store ptr null, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.ad, align 8
  br label %_ZN6icu_7810UnicodeSet10complementEii.exit

_ZN6icu_7810UnicodeSet10complementEii.exit:       ; preds = %_ZN6icu_7810UnicodeSet5clearEv.exit, %bb.f, %bb.h, %bb.i
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet5clearEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(200) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  store i32 1114112, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i3, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @uprv_free_78(ptr noundef nonnull %i.j) #20
  store ptr null, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.k, align 8
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_7810UnicodeSet14releasePatternEv.exit:    ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not2 = icmp eq ptr %i.m, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6icu_7810UnicodeSet14releasePatternEv.exit
  tail call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6icu_7810UnicodeSet14releasePatternEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet10complementEii(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  %narrow.i.not = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, 1
  %.not2 = icmp eq i8 %i.i, 0
  br i1 %.not2, label %_ZN6icu_78L12pinCodePointERi.exit, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_78L12pinCodePointERi.exit:                ; preds = %bb.b
  %i.j = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.k = tail call i32 @llvm.umin.i32(i32 %i.j, i32 1114111) ; 2 uses
  %i.l = tail call i32 @llvm.smax.i32(i32 %2, i32 0) ; 2 uses
  %.not3 = icmp samesign ult i32 %i.l, %i.k
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6icu_78L12pinCodePointERi.exit
  %.0 = tail call i32 @llvm.umin.i32(i32 %i.l, i32 1114111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 %i.k, ptr %i.a, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.n = add nuw nsw i32 %.0, 1
  store i32 %i.n, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1114112, ptr %i.o, align 4
  call void @_ZN6icu_7810UnicodeSet11exclusiveOrEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef 2, i8 noundef signext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN6icu_78L12pinCodePointERi.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i7 = icmp eq ptr %i.q, null
  br i1 %.not.i7, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @uprv_free_78(ptr noundef nonnull %i.q) #20
  store ptr null, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.r, align 8
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_7810UnicodeSet14releasePatternEv.exit:    ; preds = %bb.e, %bb.d, %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7810UnicodeSet3addEPKiia(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(200) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i8 noundef signext %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i8, ptr %i.f, align 8
  %i.h = trunc i8 %i.g to i1
  %i.i = icmp eq ptr %1, null
  %or.cond = or i1 %i.i, %i.h
  br i1 %or.cond, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add nsw i32 %i.k, %2
  %i.m = tail call noundef zeroext i1 @_ZN6icu_7810UnicodeSet20ensureBufferCapacityEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.l)
  br i1 %i.m, label %bb.d, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i32, ptr %i.o, align 4              ; 4 uses
  %i.q = load i32, ptr %1, align 4                ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  switch i8 %3, label %bb.e [
    i8 0, label %.loopexit
    i8 3, label %.loopexit145
    i8 1, label %.loopexit146
    i8 2, label %.loopexit147
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.z, %bb.aa, %bb.af
  %.1106.jt0 = phi i32 [ %.0105125, %bb.af ], [ %i.cq, %bb.z ], [ %i.dd, %bb.aa ]
  %.1104.jt0 = phi i32 [ %i.ea, %bb.af ], [ %i.cu, %bb.z ], [ %.0103128, %bb.aa ]
  %.5.jt0.in = phi i32 [ %.099133, %bb.af ], [ %.099134, %bb.z ], [ %.099132, %bb.aa ]
  %.3.jt0 = phi i32 [ %.096138, %bb.af ], [ %i.ct, %bb.z ], [ %i.dg, %bb.aa ]
  %.2.jt0 = phi i32 [ %i.ed, %bb.af ], [ %i.cx, %bb.z ], [ %.0141, %bb.aa ]
  %.5.jt0 = add nsw i32 %.5.jt0.in, 1
  br label %.loopexit

bb.g:                                             ; preds = %bb.j, %bb.k, %bb.aj
  %.1106.jt1.in = phi i32 [ %.0105125, %bb.aj ], [ %.0105127, %bb.k ], [ %.0105127, %bb.j ]
  %.1104.jt1 = phi i32 [ %i.ep, %bb.aj ], [ %.0103131, %bb.k ], [ %.0103131, %bb.j ]
  %.5.jt1 = phi i32 [ %.099133, %bb.aj ], [ %i.ah, %bb.k ], [ %i.ac, %bb.j ]
  %.3.jt1 = phi i32 [ %i.eo, %bb.aj ], [ %i.an, %bb.k ], [ %i.ag, %bb.j ]
  %.2.jt1 = phi i32 [ %i.es, %bb.aj ], [ %.0144, %bb.k ], [ %.0144, %bb.j ]
  %.1106.jt1 = add nsw i32 %.1106.jt1.in, 1
  br label %.loopexit146

.loopexit:                                        ; preds = %bb.d, %bb.f
  %.0144 = phi i32 [ %.2.jt0, %bb.f ], [ %i.q, %bb.d ] ; 6 uses
  %.096140 = phi i32 [ %.3.jt0, %bb.f ], [ %i.p, %bb.d ] ; 8 uses
  %.099135 = phi i32 [ %.5.jt0, %bb.f ], [ 0, %bb.d ] ; 16 uses
  %.0103131 = phi i32 [ %.1104.jt0, %bb.f ], [ 1, %bb.d ] ; 7 uses
  %.0105127 = phi i32 [ %.1106.jt0, %bb.f ], [ 1, %bb.d ] ; 8 uses
  %i.s = icmp slt i32 %.096140, %.0144
  br i1 %i.s, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.loopexit
  %i.t = icmp sgt i32 %.099135, 0
  %.pre121 = load ptr, ptr %i.r, align 8          ; 3 uses
  br i1 %i.t, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = zext nneg i32 %.099135 to i64
  %i.v = getelementptr [4 x i8], ptr %.pre121, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  %i.x = load i32, ptr %i.w, align 4
  %.not117 = icmp sgt i32 %.096140, %i.x
  br i1 %.not117, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.n, align 8
  %i.z = sext i32 %.0105127 to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = add nsw i32 %.099135, -1                ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.pre121, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = tail call noundef i32 @llvm.smax.i32(i32 %i.ab, i32 %i.af)
  br label %bb.g

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ah = add nsw i32 %.099135, 1
  %i.ai = sext i32 %.099135 to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %.pre121, i64 %i.ai
  store i32 %.096140, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.n, align 8
  %i.al = sext i32 %.0105127 to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  br label %bb.g

bb.l:                                             ; preds = %.loopexit
  %i.ao = icmp slt i32 %.0144, %.096140
  br i1 %i.ao, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ap = icmp sgt i32 %.099135, 0
  %.pre120 = load ptr, ptr %i.r, align 8          ; 3 uses
  br i1 %i.ap, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aq = zext nneg i32 %.099135 to i64
  %i.ar = getelementptr [4 x i8], ptr %.pre120, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -4
  %i.at = load i32, ptr %i.as, align 4
  %.not116 = icmp sgt i32 %.0144, %i.at
  br i1 %.not116, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = sext i32 %.0103131 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %1, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = add nsw i32 %.099135, -1                ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.pre120, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = tail call noundef i32 @llvm.smax.i32(i32 %i.aw, i32 %i.ba)
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bc = add nsw i32 %.099135, 1
  %i.bd = sext i32 %.099135 to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %.pre120, i64 %i.bd
  store i32 %.0144, ptr %i.be, align 4
  %i.bf = sext i32 %.0103131 to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2101 = phi i32 [ %i.ax, %bb.o ], [ %i.bc, %bb.p ]
  %.1 = phi i32 [ %i.bb, %bb.o ], [ %i.bh, %bb.p ]
  %i.bi = add nsw i32 %.0103131, 1
  br label %.loopexit147

bb.r:                                             ; preds = %bb.l
  %i.bj = icmp eq i32 %.096140, 1114112
  br i1 %i.bj, label %bb.ak, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = icmp sgt i32 %.099135, 0
  %.pre = load ptr, ptr %i.r, align 8             ; 3 uses
  br i1 %i.bk, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bl = zext nneg i32 %.099135 to i64
  %i.bm = getelementptr [4 x i8], ptr %.pre, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4
  %.not115 = icmp sgt i32 %.096140, %i.bo
  br i1 %.not115, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = load ptr, ptr %i.n, align 8
  %i.bq = sext i32 %.0105127 to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = add nsw i32 %.099135, -1                ; 2 uses
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = tail call noundef i32 @llvm.smax.i32(i32 %i.bs, i32 %i.bw)
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.by = add nsw i32 %.099135, 1
  %i.bz = sext i32 %.099135 to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.bz
  store i32 %.096140, ptr %i.ca, align 4
  %i.cb = load ptr, ptr %i.n, align 8
  %i.cc = sext i32 %.0105127 to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.3102 = phi i32 [ %i.bt, %bb.u ], [ %i.by, %bb.v ]
  %.298 = phi i32 [ %i.bx, %bb.u ], [ %i.ce, %bb.v ]
  %i.cf = add nsw i32 %.0105127, 1
  %i.cg = add nsw i32 %.0103131, 1
  %i.ch = sext i32 %.0103131 to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4
  br label %.loopexit145

.loopexit145:                                     ; preds = %bb.d, %bb.ah, %bb.ac, %bb.w
  %.0143 = phi i32 [ %.0142, %bb.ah ], [ %i.cj, %bb.w ], [ %i.dl, %bb.ac ], [ %i.q, %bb.d ] ; 3 uses
  %.096139 = phi i32 [ %i.ej, %bb.ah ], [ %.298, %bb.w ], [ %.096137, %bb.ac ], [ %i.p, %bb.d ] ; 3 uses
  %.099134 = phi i32 [ %.099133, %bb.ah ], [ %.3102, %bb.w ], [ %.099132, %bb.ac ], [ 0, %bb.d ] ; 4 uses
  %.0103130 = phi i32 [ %.0103129, %bb.ah ], [ %i.cg, %bb.w ], [ %i.di, %bb.ac ], [ 1, %bb.d ] ; 2 uses
  %.0105126 = phi i32 [ %i.eg, %bb.ah ], [ %i.cf, %bb.w ], [ %.0105124, %bb.ac ], [ 1, %bb.d ] ; 2 uses
  %.not114 = icmp sgt i32 %.0143, %.096139
  br i1 %.not114, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit145
  %i.ck = icmp eq i32 %.096139, 1114112
  br i1 %i.ck, label %bb.ak, label %bb.z

bb.y:                                             ; preds = %.loopexit145
  %i.cl = icmp eq i32 %.0143, 1114112
  br i1 %i.cl, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0143.sink = phi i32 [ %.096139, %bb.x ], [ %.0143, %bb.y ]
  %i.cm = load ptr, ptr %i.r, align 8
  %i.cn = sext i32 %.099134 to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn
  store i32 %.0143.sink, ptr %i.co, align 4
  %i.cp = load ptr, ptr %i.n, align 8
  %i.cq = add nsw i32 %.0105126, 1
  %i.cr = sext i32 %.0105126 to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = add nsw i32 %.0103130, 1
  %i.cv = sext i32 %.0103130 to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4
  br label %bb.f

.loopexit146:                                     ; preds = %bb.d, %bb.g
  %.0141 = phi i32 [ %.2.jt1, %bb.g ], [ %i.q, %bb.d ] ; 3 uses
  %.096137 = phi i32 [ %.3.jt1, %bb.g ], [ %i.p, %bb.d ] ; 5 uses
  %.099132 = phi i32 [ %.5.jt1, %bb.g ], [ 0, %bb.d ] ; 5 uses
  %.0103128 = phi i32 [ %.1104.jt1, %bb.g ], [ 1, %bb.d ] ; 5 uses
  %.0105124 = phi i32 [ %.1106.jt1, %bb.g ], [ 1, %bb.d ] ; 5 uses
  %i.cy = icmp slt i32 %.096137, %.0141
  br i1 %i.cy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.loopexit146
  %i.cz = load ptr, ptr %i.r, align 8
  %i.da = sext i32 %.099132 to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.da
  store i32 %.096137, ptr %i.db, align 4
  %i.dc = load ptr, ptr %i.n, align 8
  %i.dd = add nsw i32 %.0105124, 1
  %i.de = sext i32 %.0105124 to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4
  br label %bb.f

bb.ab:                                            ; preds = %.loopexit146
  %i.dh = icmp slt i32 %.0141, %.096137
  br i1 %i.dh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.di = add nsw i32 %.0103128, 1
  %i.dj = sext i32 %.0103128 to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4
  br label %.loopexit145

bb.ad:                                            ; preds = %bb.ab
  %i.dm = icmp eq i32 %.096137, 1114112
  br i1 %i.dm, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dn = load ptr, ptr %i.n, align 8
  %i.do = add nsw i32 %.0105124, 1
  %i.dp = sext i32 %.0105124 to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = add nsw i32 %.0103128, 1
  %i.dt = sext i32 %.0103128 to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4
  br label %.loopexit147

.loopexit147:                                     ; preds = %bb.d, %bb.ae, %bb.q
  %.0142 = phi i32 [ %i.dv, %bb.ae ], [ %.1, %bb.q ], [ %i.q, %bb.d ] ; 4 uses
  %.096138 = phi i32 [ %i.dr, %bb.ae ], [ %.096140, %bb.q ], [ %i.p, %bb.d ] ; 4 uses
  %.099133 = phi i32 [ %.099132, %bb.ae ], [ %.2101, %bb.q ], [ 0, %bb.d ] ; 5 uses
  %.0103129 = phi i32 [ %i.ds, %bb.ae ], [ %i.bi, %bb.q ], [ 1, %bb.d ] ; 5 uses
  %.0105125 = phi i32 [ %i.do, %bb.ae ], [ %.0105127, %bb.q ], [ 1, %bb.d ] ; 5 uses
  %i.dw = icmp slt i32 %.0142, %.096138
  br i1 %i.dw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.loopexit147
  %i.dx = load ptr, ptr %i.r, align 8
  %i.dy = sext i32 %.099133 to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.dy
  store i32 %.0142, ptr %i.dz, align 4
  %i.ea = add nsw i32 %.0103129, 1
  %i.eb = sext i32 %.0103129 to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4
  br label %bb.f

bb.ag:                                            ; preds = %.loopexit147
  %i.ee = icmp slt i32 %.096138, %.0142
  br i1 %i.ee, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ef = load ptr, ptr %i.n, align 8
  %i.eg = add nsw i32 %.0105125, 1
  %i.eh = sext i32 %.0105125 to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4
  br label %.loopexit145

bb.ai:                                            ; preds = %bb.ag
  %i.ek = icmp eq i32 %.096138, 1114112
  br i1 %i.ek, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.el = load ptr, ptr %i.n, align 8
  %i.em = sext i32 %.0105125 to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = add nsw i32 %.0103129, 1
  %i.eq = sext i32 %.0103129 to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4
  br label %bb.g

bb.ak:                                            ; preds = %bb.ai, %bb.ad, %bb.y, %bb.x, %bb.r
  %.099136 = phi i32 [ %.099133, %bb.ai ], [ %.099132, %bb.ad ], [ %.099134, %bb.y ], [ %.099134, %bb.x ], [ %.099135, %bb.r ] ; 2 uses
  %i.et = load ptr, ptr %i.r, align 8
  %i.eu = add nsw i32 %.099136, 1
  %i.ev = sext i32 %.099136 to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.ev
  store i32 1114112, ptr %i.ew, align 4
  store i32 %i.eu, ptr %i.j, align 4
  %i.ex = load ptr, ptr %i.n, align 8
  %i.ey = load ptr, ptr %i.r, align 8
  store ptr %i.ey, ptr %i.n, align 8
  store ptr %i.ex, ptr %i.r, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8
  store i32 %i.fc, ptr %i.ez, align 8
  store i32 %i.fa, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  %.not.i118 = icmp eq ptr %i.fe, null
  br i1 %.not.i118, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @uprv_free_78(ptr noundef nonnull %i.fe) #20
  store ptr null, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.ff, align 8
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_7810UnicodeSet14releasePatternEv.exit:    ; preds = %bb.al, %bb.ak, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
_ZN6icu_78L12pinCodePointERi.exit:
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %.0 = tail call i32 @llvm.umin.i32(i32 %i.a, i32 1114111) ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %.0, %i.d
  br i1 %i.e, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.thread, label %bb.a

bb.a:                                             ; preds = %_ZN6icu_78L12pinCodePointERi.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = add nsw i32 %i.g, -1                     ; 4 uses
  %i.i = icmp slt i32 %i.g, 2
  br i1 %i.i, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %i.g to i64
  %i.k = getelementptr [4 x i8], ptr %i.c, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load i32, ptr %i.l, align 4
  %.not.i = icmp sge i32 %.0, %i.m
  %i.n = lshr i32 %i.h, 1                         ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.o
  br i1 %or.cond.i, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.p = phi i32 [ %i.v, %.lr.ph.i ], [ %i.n, %bb.b ] ; 3 uses
  %.01830.i = phi i32 [ %..018.i, %.lr.ph.i ], [ %i.h, %bb.b ]
  %.02029.i = phi i32 [ %.020..i, %.lr.ph.i ], [ 0, %bb.b ]
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp slt i32 %.0, %i.s                   ; 2 uses
  %.020..i = select i1 %i.t, i32 %.02029.i, i32 %i.p ; 3 uses
  %..018.i = select i1 %i.t, i32 %i.p, i32 %.01830.i ; 3 uses
  %i.u = add nuw nsw i32 %..018.i, %.020..i
  %i.v = lshr i32 %i.u, 1                         ; 2 uses
  %i.w = icmp eq i32 %i.v, %.020..i
  br i1 %i.w, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit, label %.lr.ph.i

_ZNK6icu_7810UnicodeSet13findCodePointEi.exit:    ; preds = %.lr.ph.i, %bb.a, %bb.b
  %.1.i = phi i32 [ %i.h, %bb.b ], [ %i.h, %bb.a ], [ %..018.i, %.lr.ph.i ] ; 2 uses
  %i.x = and i32 %.1.i, 1
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.thread, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.thread: ; preds = %_ZN6icu_78L12pinCodePointERi.exit, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit
  %.1.i37 = phi i32 [ %.1.i, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit ], [ 0, %_ZN6icu_78L12pinCodePointERi.exit ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  %.not.i28 = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.ab, null
  %narrow.i.not = select i1 %.not.i28, i1 %i.ac, i1 false
  br i1 %narrow.i.not, label %bb.c, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.c:                                             ; preds = %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i8, ptr %i.ad, align 8
  %i.af = and i8 %i.ae, 1
  %.not27 = icmp eq i8 %i.af, 0
  br i1 %.not27, label %bb.d, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = sext i32 %.1.i37 to i64                 ; 5 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = add nsw i32 %i.ai, -1
  %i.ak = icmp eq i32 %.0, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  store i32 %.0, ptr %i.ah, align 4
  %i.al = icmp sgt i32 %1, 1114110
  br i1 %i.al, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = add nsw i32 %i.an, 1
  %i.ap = tail call noundef zeroext i1 @_ZN6icu_7810UnicodeSet14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.ao)
  br i1 %i.ap, label %bb.g, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.b, align 8
  %i.ar = load i32, ptr %i.am, align 4            ; 2 uses
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.am, align 4
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.at
  store i32 1114112, ptr %i.au, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.av = icmp sgt i32 %.1.i37, 0
  br i1 %i.av, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64              ; 3 uses
  %i.ay = zext nneg i32 %.1.i37 to i64
  %i.az = getelementptr [4 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 -4
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp eq i32 %.0, %i.bb
  br i1 %i.bc, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %.idx = shl nuw nsw i64 %i.ag, 2                ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %.idx43 = shl nsw i64 %i.bf, 2                  ; 2 uses
  %i.bg = add nuw nsw i64 %.idx, 4
  %i.bh = icmp slt i64 %i.bg, %.idx43
  br i1 %i.bh, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.bi = getelementptr i8, ptr %i.aw, i64 %.idx  ; 2 uses
  %.02140 = getelementptr i8, ptr %i.bi, i64 4
end_hunk_0
begin_hunk_1_@_ZN6icu_7810UnicodeSet4_addERKNS_13UnicodeStringE:bb.a
bb.f:                                             ; preds = %bb.d
  call void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_EiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull @uprv_deleteUObject_78, ptr noundef nonnull @uhash_compareUnicodeString_78, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #20
  store ptr %i.m, ptr %i.j, align 8
  %i.o = load i32, ptr %i.a, align 4
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %_ZN6icu_7810UnicodeSet15allocateStringsER10UErrorCode.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #20, !inline_history !5
  store ptr null, ptr %i.j, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  call void @_ZN6icu_7810UnicodeSet10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

_ZN6icu_7810UnicodeSet15allocateStringsER10UErrorCode.exit: ; preds = %bb.f, %bb.c
  %i.t = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #20 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN6icu_7810UnicodeSet15allocateStringsER10UErrorCode.exit
  %i.v = load ptr, ptr %i.b, align 8
  %.not.i.i.i = icmp eq ptr %i.v, null
  %i.w = load ptr, ptr %i.d, align 8
  %i.x = icmp eq ptr %i.w, null
  %narrow.i.not.i.i = select i1 %.not.i.i.i, i1 %i.x, i1 false
  br i1 %narrow.i.not.i.i, label %bb.j, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  store i32 1114112, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i3.i.i, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @uprv_free_78(ptr noundef nonnull %i.ac) #20
  store ptr null, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.ad, align 8
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i

_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i: ; preds = %bb.k, %bb.j
  %i.ae = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not2.i.i = icmp eq ptr %i.ae, null
  br i1 %.not2.i.i, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i
  call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ae) #20
  br label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit

_ZN6icu_7810UnicodeSet10setToBogusEv.exit:        ; preds = %bb.i, %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i, %bb.l
  store i8 1, ptr %i.g, align 8
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

bb.m:                                             ; preds = %_ZN6icu_7810UnicodeSet15allocateStringsER10UErrorCode.exit
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %1) #20
  %i.af = load ptr, ptr %i.j, align 8
  call void @_ZN6icu_787UVector12sortedInsertEPvPFi8UElementS2_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull %i.t, ptr noundef nonnull @_ZN6icu_78L20compareUnicodeStringE8UElementS0_, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #20
  %i.ag = load i32, ptr %i.a, align 4
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %i.b, align 8
  %.not.i.i.i6 = icmp eq ptr %i.ai, null
  %i.aj = load ptr, ptr %i.d, align 8
  %i.ak = icmp eq ptr %i.aj, null
  %narrow.i.not.i.i7 = select i1 %.not.i.i.i6, i1 %i.ak, i1 false
  br i1 %narrow.i.not.i.i7, label %bb.o, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit11

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  store i32 1114112, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not.i3.i.i8 = icmp eq ptr %i.ap, null
  br i1 %.not.i3.i.i8, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i9, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @uprv_free_78(ptr noundef nonnull %i.ap) #20
  store ptr null, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.aq, align 8
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i9

_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i9: ; preds = %bb.p, %bb.o
  %i.ar = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not2.i.i10 = icmp eq ptr %i.ar, null
  br i1 %.not2.i.i10, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit11, label %bb.q

bb.q:                                             ; preds = %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i9
  call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ar) #20
  br label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit11

_ZN6icu_7810UnicodeSet10setToBogusEv.exit11:      ; preds = %bb.n, %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i9, %bb.q
  store i8 1, ptr %i.g, align 8
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit: ; preds = %bb.m, %_ZN6icu_7810UnicodeSet10setToBogusEv.exit11, %_ZN6icu_7810UnicodeSet10setToBogusEv.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.b, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit
  ret void
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #7

declare void @_ZN6icu_787UVector12sortedInsertEPvPFi8UElementS2_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 -128, 128) i32 @_ZN6icu_78L20compareUnicodeStringE8UElementS0_(ptr %0, ptr %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i16, ptr %i.c, align 8              ; 4 uses
  %i.e = and i16 %i.d, 1
  %.not.i.i = icmp eq i16 %i.e, 0
  br i1 %.not.i.i, label %.sink.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i16 %i.b to i8
  %i.g = and i8 %i.f, 1
  %i.h = xor i8 %i.g, 1
  br label %_ZNK6icu_7813UnicodeString7compareERKS0_.exit

.sink.split.i.i.i:                                ; preds = %bb.a
  %i.i = icmp slt i16 %i.d, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = ashr i16 %i.d, 5
  %i.m = sext i16 %i.l to i32
  %i.n = select i1 %i.i, i32 %i.k, i32 %i.m       ; 2 uses
  %i.o = icmp slt i16 %i.b, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = ashr i16 %i.b, 5
  %i.s = sext i16 %i.r to i32
  %i.t = select i1 %i.o, i32 %i.q, i32 %i.s
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.n, i32 0)
  %.010.i.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.u = and i16 %i.d, 2
  %.not.i.i.i = icmp eq i16 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %.not.i.i.i, ptr %i.x, ptr %i.v
  %i.z = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 0, i32 noundef %i.t, ptr noundef %i.y, i32 noundef %spec.select.i.i, i32 noundef %.010.i.i) #20
  br label %_ZNK6icu_7813UnicodeString7compareERKS0_.exit

_ZNK6icu_7813UnicodeString7compareERKS0_.exit:    ; preds = %bb.b, %.sink.split.i.i.i
  %.0.i.i = phi i8 [ %i.h, %bb.b ], [ %i.z, %.sink.split.i.i.i ]
  %i.aa = sext i8 %.0.i.i to i32
  ret i32 %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i16, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp slt i16 %i.c, 0
  %i.e = ashr i16 %i.c, 5
  %i.f = sext i16 %i.e to i32
  %i.g = load i32, ptr %i.b, align 4
  %i.h = select i1 %i.d, i32 %i.g, i32 %i.f
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i32 [ %i.n, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.j = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.07) #20 ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.j) ; 0 uses
  %i.l = icmp ult i32 %i.j, 65536
  %i.m = select i1 %i.l, i32 1, i32 2
  %i.n = add nuw nsw i32 %i.m, %.07               ; 2 uses
  %i.o = load i16, ptr %i.a, align 8              ; 2 uses
  %i.p = icmp slt i16 %i.o, 0
  %i.q = ashr i16 %i.o, 5
  %i.r = sext i16 %i.q to i32
  %i.s = load i32, ptr %i.b, align 4
  %i.t = select i1 %i.p, i32 %i.s, i32 %i.r
  %i.u = icmp slt i32 %i.n, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !29
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9retainAllERKNS_13UnicodeStringE(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeSet", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_7810UnicodeSetE, i64 16), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7810UnicodeSetE, i64 128), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 25, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  store i32 1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store i32 1114112, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.m = load i16, ptr %i.k, align 8              ; 2 uses
  %i.n = icmp slt i16 %i.m, 0
  %i.o = ashr i16 %i.m, 5
  %i.p = sext i16 %i.o to i32
  %i.q = load i32, ptr %i.l, align 4
  %i.r = select i1 %i.n, i32 %i.q, i32 %i.p
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi i32 [ %i.x, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.t = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.07.i) #20 ; 2 uses
  %i.u = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %2, i32 noundef %i.t) ; 0 uses
  %i.v = icmp ult i32 %i.t, 65536
  %i.w = select i1 %i.v, i32 1, i32 2
  %i.x = add nuw nsw i32 %i.w, %.07.i             ; 2 uses
  %i.y = load i16, ptr %i.k, align 8              ; 2 uses
  %i.z = icmp slt i16 %i.y, 0
  %i.aa = ashr i16 %i.y, 5
  %i.ab = sext i16 %i.aa to i32
  %i.ac = load i32, ptr %i.l, align 4
  %i.ad = select i1 %i.z, i32 %i.ac, i32 %i.ab
  %i.ae = icmp slt i32 %i.x, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit, !llvm.loop !29

_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit: ; preds = %.lr.ph.i, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load ptr, ptr %i.af, align 8
  %.not.i.i = icmp eq ptr %i.ag, null
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null
  %narrow.i.not.i = select i1 %.not.i.i, i1 %i.aj, i1 false
  br i1 %narrow.i.not.i, label %bb.b, label %_ZN6icu_7810UnicodeSet9retainAllERKS0_.exit

bb.b:                                             ; preds = %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i8, ptr %i.ak, align 8
  %i.am = and i8 %i.al, 1
  %.not6.i = icmp eq i8 %i.am, 0
  br i1 %.not6.i, label %bb.c, label %_ZN6icu_7810UnicodeSet9retainAllERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.an = load ptr, ptr %i.b, align 8
  %i.ao = load i32, ptr %i.e, align 4
  call void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.an, i32 noundef %i.ao, i8 noundef signext 0)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8            ; 4 uses
  %.not.i9.i = icmp eq ptr %i.aq, null
  br i1 %.not.i9.i, label %_ZN6icu_7810UnicodeSet9retainAllERKS0_.exit, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i:     ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 8
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %_ZN6icu_7810UnicodeSet9retainAllERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i
  %i.at = load ptr, ptr %i.j, align 8             ; 3 uses
  %.not.i10.i = icmp eq ptr %i.at, null
  br i1 %.not.i10.i, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.thread.i, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.i

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.i:   ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %.not15.i = icmp eq i32 %i.av, 0
  br i1 %.not15.i, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.thread.i, label %bb.e

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.thread.i: ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.i, %bb.d
  call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #20
  br label %_ZN6icu_7810UnicodeSet9retainAllERKS0_.exit

bb.e:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.i
  %i.aw = call noundef signext i8 @_ZN6icu_787UVector9retainAllERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %i.at) #20 ; 0 uses
  br label %_ZN6icu_7810UnicodeSet9retainAllERKS0_.exit

_ZN6icu_7810UnicodeSet9retainAllERKS0_.exit:      ; preds = %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit, %bb.b, %bb.c, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.thread.i, %bb.e
  call void @_ZN6icu_7810UnicodeSetD2Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9retainAllERKS0_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, 1
  %.not6 = icmp eq i8 %i.h, 0
  br i1 %.not6, label %bb.c, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4
  tail call void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.j, i32 noundef %i.l, i8 noundef signext 0)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %.not.i9 = icmp eq ptr %i.n, null
  br i1 %.not.i9, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %.not.i10 = icmp eq ptr %i.r, null
  br i1 %.not.i10, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11:     ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %.not15 = icmp eq i32 %i.t, 0
  br i1 %.not15, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.thread, label %bb.e

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.thread: ; preds = %bb.d, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11
  tail call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #20
  br label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

bb.e:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11
  %i.u = tail call noundef signext i8 @_ZN6icu_787UVector9retainAllERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.r) #20 ; 0 uses
  br label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread: ; preds = %bb.c, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit, %bb.e, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.thread, %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet13complementAllERKNS_13UnicodeStringE(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeSet", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_7810UnicodeSetE, i64 16), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7810UnicodeSetE, i64 128), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 25, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store i32 1114112, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.m = load i16, ptr %i.k, align 8              ; 2 uses
  %i.n = icmp slt i16 %i.m, 0
  %i.o = ashr i16 %i.m, 5
  %i.p = sext i16 %i.o to i32
  %i.q = load i32, ptr %i.l, align 4
  %i.r = select i1 %i.n, i32 %i.q, i32 %i.p
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi i32 [ %i.x, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.t = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.07.i) #20 ; 2 uses
  %i.u = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %2, i32 noundef %i.t) ; 0 uses
  %i.v = icmp ult i32 %i.t, 65536
  %i.w = select i1 %i.v, i32 1, i32 2
  %i.x = add nuw nsw i32 %i.w, %.07.i             ; 2 uses
  %i.y = load i16, ptr %i.k, align 8              ; 2 uses
  %i.z = icmp slt i16 %i.y, 0
  %i.aa = ashr i16 %i.y, 5
  %i.ab = sext i16 %i.aa to i32
  %i.ac = load i32, ptr %i.l, align 4
  %i.ad = select i1 %i.z, i32 %i.ac, i32 %i.ab
  %i.ae = icmp slt i32 %i.x, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit, !llvm.loop !29

_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit: ; preds = %.lr.ph.i, %bb.a
  %i.af = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet13complementAllERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %2) ; 0 uses
  call void @_ZN6icu_7810UnicodeSetD2Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet13complementAllERKS0_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, 1
  %.not12 = icmp eq i8 %i.h, 0
  br i1 %.not12, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4
  tail call void @_ZN6icu_7810UnicodeSet11exclusiveOrEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.j, i32 noundef %i.l, i8 noundef signext 0)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not13 = icmp eq ptr %i.n, null
  br i1 %.not13, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %i.s = phi ptr [ %i.n, %.lr.ph ], [ %i.y, %bb.g ]
  %.01116 = phi i32 [ 0, %.lr.ph ], [ %i.x, %bb.g ] ; 2 uses
  %i.t = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i32 noundef %.01116) #20 ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call noundef signext i8 @_ZN6icu_787UVector13removeElementEPv(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef %i.t) #20
  %.not14 = icmp eq i8 %i.w, 0
  br i1 %.not14, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6icu_7810UnicodeSet4_addERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.t)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = add nuw nsw i32 %.01116, 1               ; 2 uses
  %i.y = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp slt i32 %i.x, %i.aa
  br i1 %i.ab, label %bb.d, label %.loopexit, !llvm.loop !30

.loopexit:                                        ; preds = %bb.g, %.preheader, %bb.c, %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9removeAllERKNS_13UnicodeStringE(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeSet", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_7810UnicodeSetE, i64 16), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7810UnicodeSetE, i64 128), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 25, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  store i32 1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store i32 1114112, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.m = load i16, ptr %i.k, align 8              ; 2 uses
  %i.n = icmp slt i16 %i.m, 0
  %i.o = ashr i16 %i.m, 5
  %i.p = sext i16 %i.o to i32
  %i.q = load i32, ptr %i.l, align 4
  %i.r = select i1 %i.n, i32 %i.q, i32 %i.p
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi i32 [ %i.x, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.t = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.07.i) #20 ; 2 uses
  %i.u = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %2, i32 noundef %i.t) ; 0 uses
  %i.v = icmp ult i32 %i.t, 65536
  %i.w = select i1 %i.v, i32 1, i32 2
  %i.x = add nuw nsw i32 %i.w, %.07.i             ; 2 uses
  %i.y = load i16, ptr %i.k, align 8              ; 2 uses
  %i.z = icmp slt i16 %i.y, 0
  %i.aa = ashr i16 %i.y, 5
  %i.ab = sext i16 %i.aa to i32
  %i.ac = load i32, ptr %i.l, align 4
  %i.ad = select i1 %i.z, i32 %i.ac, i32 %i.ab
  %i.ae = icmp slt i32 %i.x, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit, !llvm.loop !29

_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit: ; preds = %.lr.ph.i, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load ptr, ptr %i.af, align 8
  %.not.i.i = icmp eq ptr %i.ag, null
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null
  %narrow.i.not.i = select i1 %.not.i.i, i1 %i.aj, i1 false
  br i1 %narrow.i.not.i, label %bb.b, label %_ZN6icu_7810UnicodeSet9removeAllERKS0_.exit

bb.b:                                             ; preds = %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i8, ptr %i.ak, align 8
  %i.am = and i8 %i.al, 1
  %.not6.i = icmp eq i8 %i.am, 0
  br i1 %.not6.i, label %bb.c, label %_ZN6icu_7810UnicodeSet9removeAllERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.an = load ptr, ptr %i.b, align 8
  %i.ao = load i32, ptr %i.e, align 4
  call void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.an, i32 noundef %i.ao, i8 noundef signext 2)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %.not.i9.i = icmp eq ptr %i.aq, null
  br i1 %.not.i9.i, label %_ZN6icu_7810UnicodeSet9removeAllERKS0_.exit, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i:     ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 8
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %_ZN6icu_7810UnicodeSet9removeAllERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i
  %i.at = load ptr, ptr %i.j, align 8             ; 3 uses
  %.not.i10.i = icmp eq ptr %i.at, null
  br i1 %.not.i10.i, label %_ZN6icu_7810UnicodeSet9removeAllERKS0_.exit, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.i

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.i:   ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %.not15.i = icmp eq i32 %i.av, 0
  br i1 %.not15.i, label %_ZN6icu_7810UnicodeSet9removeAllERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.i
  %i.aw = call noundef signext i8 @_ZN6icu_787UVector9removeAllERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %i.at) #20 ; 0 uses
  br label %_ZN6icu_7810UnicodeSet9removeAllERKS0_.exit

_ZN6icu_7810UnicodeSet9removeAllERKS0_.exit:      ; preds = %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit, %bb.b, %bb.c, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i, %bb.d, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.i, %bb.e
  call void @_ZN6icu_7810UnicodeSetD2Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9removeAllERKS0_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, 1
  %.not6 = icmp eq i8 %i.h, 0
  br i1 %.not6, label %bb.c, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4
  tail call void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.j, i32 noundef %i.l, i8 noundef signext 2)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.i9 = icmp eq ptr %i.n, null
  br i1 %.not.i9, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %.not.i10 = icmp eq ptr %i.r, null
  br i1 %.not.i10, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11:     ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %.not15 = icmp eq i32 %i.t, 0
  br i1 %.not15, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11
  %i.u = tail call noundef signext i8 @_ZN6icu_787UVector9removeAllERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.r) #20 ; 0 uses
  br label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread: ; preds = %bb.d, %bb.c, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11, %bb.e, %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet16removeAllStringsEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(200) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not.i2 = icmp eq ptr %i.g, null
  br i1 %.not.i2, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  tail call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i3 = icmp eq ptr %i.k, null
  br i1 %.not.i3, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @uprv_free_78(ptr noundef nonnull %i.k) #20
  store ptr null, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.l, align 8
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_7810UnicodeSet14releasePatternEv.exit:    ; preds = %bb.b, %bb.d, %bb.c, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7810UnicodeSet10createFromERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 200) #20 ; 14 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_7810UnicodeSetE, i64 16), ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7810UnicodeSetE, i64 128), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 25, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 1, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 1114112, ptr %i.e, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(200) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %0) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7810UnicodeSet13createFromAllERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 200) #20 ; 14 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_7810UnicodeSetE, i64 16), ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7810UnicodeSetE, i64 128), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 25, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 1, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 1114112, ptr %i.e, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = load i16, ptr %i.m, align 8              ; 2 uses
  %i.p = icmp slt i16 %i.o, 0
  %i.q = ashr i16 %i.o, 5
  %i.r = sext i16 %i.q to i32
  %i.s = load i32, ptr %i.n, align 4
  %i.t = select i1 %i.p, i32 %i.s, i32 %i.r
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.07.i = phi i32 [ %i.z, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %i.v = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.07.i) #20 ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i32 noundef %i.v) ; 0 uses
  %i.x = icmp ult i32 %i.v, 65536
  %i.y = select i1 %i.x, i32 1, i32 2
  %i.z = add nuw nsw i32 %i.y, %.07.i             ; 2 uses
  %i.aa = load i16, ptr %i.m, align 8             ; 2 uses
  %i.ab = icmp slt i16 %i.aa, 0
  %i.ac = ashr i16 %i.aa, 5
  %i.ad = sext i16 %i.ac to i32
  %i.ae = load i32, ptr %i.n, align 4
  %i.af = select i1 %i.ab, i32 %i.ae, i32 %i.ad
  %i.ag = icmp slt i32 %i.z, %i.af
  br i1 %i.ag, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit, !llvm.loop !29

_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit: ; preds = %.lr.ph.i, %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6retainEii(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
_ZN6icu_78L12pinCodePointERi.exit:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.b, i32 1114111) ; 2 uses
  %i.d = tail call i32 @llvm.smax.i32(i32 %2, i32 0) ; 2 uses
  %.not = icmp samesign ult i32 %i.d, %i.c
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN6icu_78L12pinCodePointERi.exit
  %.0 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 1114111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 %i.c, ptr %i.a, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = add nuw nsw i32 %.0, 1
  store i32 %i.f, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1114112, ptr %i.g, align 4
  call void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef 2, i8 noundef signext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN6icu_7810UnicodeSet5clearEv.exit

bb.b:                                             ; preds = %_ZN6icu_78L12pinCodePointERi.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %.not.i.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, null
  %narrow.i.not.i = select i1 %.not.i.i, i1 %i.l, i1 false
  br i1 %narrow.i.not.i, label %bb.c, label %_ZN6icu_7810UnicodeSet5clearEv.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  store i32 1114112, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i3.i = icmp eq ptr %i.q, null
  br i1 %.not.i3.i, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @uprv_free_78(ptr noundef nonnull %i.q) #20
  store ptr null, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.r, align 8
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i

_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i:  ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not2.i = icmp eq ptr %i.t, null
  br i1 %.not2.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i
  tail call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.t) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.u, align 8
  br label %_ZN6icu_7810UnicodeSet5clearEv.exit

_ZN6icu_7810UnicodeSet5clearEv.exit:              ; preds = %bb.f, %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(200) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i8 noundef signext %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, 1
  %.not91 = icmp eq i8 %i.h, 0
  br i1 %.not91, label %bb.c, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = add nsw i32 %i.j, %2
  %i.l = tail call noundef zeroext i1 @_ZN6icu_7810UnicodeSet20ensureBufferCapacityEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.k)
  br i1 %i.l, label %bb.d, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load i32, ptr %i.n, align 4              ; 4 uses
  %i.p = load i32, ptr %1, align 4                ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  switch i8 %3, label %bb.e [
    i8 0, label %.loopexit
    i8 3, label %.loopexit116
    i8 1, label %.loopexit117
    i8 2, label %.loopexit118
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.k, %bb.s, %bb.x
  %.186.jt3 = phi i32 [ %i.ah, %bb.k ], [ %.08597, %bb.s ], [ %i.de, %bb.x ]
  %.184.jt3 = phi i32 [ %i.al, %bb.k ], [ %i.cg, %bb.s ], [ %.083102, %bb.x ]
  %.182.jt3.in = phi i32 [ %.081104, %bb.k ], [ %.081105, %bb.s ], [ %.081106, %bb.x ]
  %.180.jt3 = phi i32 [ %i.ak, %bb.k ], [ %.079110, %bb.s ], [ %i.dh, %bb.x ]
  %.1.jt3 = phi i32 [ %i.ao, %bb.k ], [ %i.cj, %bb.s ], [ %.0115, %bb.x ]
  %.182.jt3 = add nsw i32 %.182.jt3.in, 1
  br label %.loopexit116

.loopexit:                                        ; preds = %bb.v, %bb.q, %bb.p, %bb.d
  %.0113 = phi i32 [ %i.p, %bb.d ], [ %i.cy, %bb.v ], [ %i.bv, %bb.p ], [ %.0114, %bb.q ] ; 3 uses
  %.079109 = phi i32 [ %i.o, %bb.d ], [ %.079111, %bb.v ], [ %i.br, %bb.p ], [ %i.cb, %bb.q ] ; 5 uses
  %.081104 = phi i32 [ 0, %bb.d ], [ %.081106, %bb.v ], [ %i.bk, %bb.p ], [ %.081105, %bb.q ] ; 5 uses
  %.083100 = phi i32 [ 1, %bb.d ], [ %i.cv, %bb.v ], [ %i.bs, %bb.p ], [ %.083101, %bb.q ] ; 5 uses
  %.08596 = phi i32 [ 1, %bb.d ], [ %.08598, %bb.v ], [ %i.bo, %bb.p ], [ %i.by, %bb.q ] ; 5 uses
  %i.r = icmp slt i32 %.079109, %.0113
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = add nsw i32 %.08596, 1
  %i.u = sext i32 %.08596 to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4
  br label %.loopexit117

bb.h:                                             ; preds = %.loopexit
  %i.x = icmp slt i32 %.0113, %.079109
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %.083100, 1
  %i.z = sext i32 %.083100 to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %1, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4
  br label %.loopexit118

bb.j:                                             ; preds = %bb.h
  %i.ac = icmp eq i32 %.079109, 1114112
  br i1 %i.ac, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.q, align 8
  %i.ae = sext i32 %.081104 to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ae
  store i32 %.079109, ptr %i.af, align 4
  %i.ag = load ptr, ptr %i.m, align 8
  %i.ah = add nsw i32 %.08596, 1
  %i.ai = sext i32 %.08596 to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = add nsw i32 %.083100, 1
  %i.am = sext i32 %.083100 to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %1, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4
  br label %bb.f

.loopexit116:                                     ; preds = %bb.d, %bb.f
  %.0112 = phi i32 [ %.1.jt3, %bb.f ], [ %i.p, %bb.d ] ; 4 uses
  %.079108 = phi i32 [ %.180.jt3, %bb.f ], [ %i.o, %bb.d ] ; 6 uses
  %.081103 = phi i32 [ %.182.jt3, %bb.f ], [ 0, %bb.d ] ; 7 uses
  %.08399 = phi i32 [ %.184.jt3, %bb.f ], [ 1, %bb.d ] ; 5 uses
  %.08595 = phi i32 [ %.186.jt3, %bb.f ], [ 1, %bb.d ] ; 5 uses
  %i.ap = icmp slt i32 %.079108, %.0112
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit116
  %i.aq = load ptr, ptr %i.q, align 8
  %i.ar = add nsw i32 %.081103, 1
  %i.as = sext i32 %.081103 to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.as
  store i32 %.079108, ptr %i.at, align 4
  %i.au = load ptr, ptr %i.m, align 8
  %i.av = add nsw i32 %.08595, 1
  %i.aw = sext i32 %.08595 to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4
  br label %.loopexit118

bb.m:                                             ; preds = %.loopexit116
  %i.az = icmp slt i32 %.0112, %.079108
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr %i.q, align 8
  %i.bb = add nsw i32 %.081103, 1
  %i.bc = sext i32 %.081103 to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bc
  store i32 %.0112, ptr %i.bd, align 4
  %i.be = add nsw i32 %.08399, 1
  %i.bf = sext i32 %.08399 to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4
  br label %.loopexit117

bb.o:                                             ; preds = %bb.m
  %i.bi = icmp eq i32 %.079108, 1114112
  br i1 %i.bi, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = load ptr, ptr %i.q, align 8
  %i.bk = add nsw i32 %.081103, 1
  %i.bl = sext i32 %.081103 to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bl
  store i32 %.079108, ptr %i.bm, align 4
  %i.bn = load ptr, ptr %i.m, align 8
  %i.bo = add nsw i32 %.08595, 1
  %i.bp = sext i32 %.08595 to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = add nsw i32 %.08399, 1
  %i.bt = sext i32 %.08399 to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4
  br label %.loopexit

.loopexit117:                                     ; preds = %bb.z, %bb.n, %bb.g, %bb.d
  %.0114 = phi i32 [ %i.p, %bb.d ], [ %i.bh, %bb.n ], [ %.0113, %bb.g ], [ %i.dr, %bb.z ] ; 4 uses
  %.079110 = phi i32 [ %i.o, %bb.d ], [ %.079108, %bb.n ], [ %i.w, %bb.g ], [ %i.dn, %bb.z ] ; 4 uses
  %.081105 = phi i32 [ 0, %bb.d ], [ %i.bb, %bb.n ], [ %.081104, %bb.g ], [ %.081106, %bb.z ] ; 5 uses
  %.083101 = phi i32 [ 1, %bb.d ], [ %i.be, %bb.n ], [ %.083100, %bb.g ], [ %i.do, %bb.z ] ; 5 uses
  %.08597 = phi i32 [ 1, %bb.d ], [ %.08595, %bb.n ], [ %i.t, %bb.g ], [ %i.dk, %bb.z ] ; 5 uses
  %i.bw = icmp slt i32 %.079110, %.0114
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit117
  %i.bx = load ptr, ptr %i.m, align 8
  %i.by = add nsw i32 %.08597, 1
  %i.bz = sext i32 %.08597 to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4
  br label %.loopexit

bb.r:                                             ; preds = %.loopexit117
  %i.cc = icmp slt i32 %.0114, %.079110
  br i1 %i.cc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = load ptr, ptr %i.q, align 8
  %i.ce = sext i32 %.081105 to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ce
  store i32 %.0114, ptr %i.cf, align 4
  %i.cg = add nsw i32 %.083101, 1
  %i.ch = sext i32 %.083101 to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4
  br label %bb.f

bb.t:                                             ; preds = %bb.r
  %i.ck = icmp eq i32 %.079110, 1114112
  br i1 %i.ck, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = load ptr, ptr %i.m, align 8
  %i.cm = add nsw i32 %.08597, 1
  %i.cn = sext i32 %.08597 to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = add nsw i32 %.083101, 1
  %i.cr = sext i32 %.083101 to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4
  br label %.loopexit118

.loopexit118:                                     ; preds = %bb.d, %bb.u, %bb.l, %bb.i
  %.0115 = phi i32 [ %i.ab, %bb.i ], [ %i.ct, %bb.u ], [ %.0112, %bb.l ], [ %i.p, %bb.d ] ; 3 uses
  %.079111 = phi i32 [ %.079109, %bb.i ], [ %i.cp, %bb.u ], [ %i.ay, %bb.l ], [ %i.o, %bb.d ] ; 5 uses
  %.081106 = phi i32 [ %.081104, %bb.i ], [ %.081105, %bb.u ], [ %i.ar, %bb.l ], [ 0, %bb.d ] ; 5 uses
  %.083102 = phi i32 [ %i.y, %bb.i ], [ %i.cq, %bb.u ], [ %.08399, %bb.l ], [ 1, %bb.d ] ; 5 uses
  %.08598 = phi i32 [ %.08596, %bb.i ], [ %i.cm, %bb.u ], [ %i.av, %bb.l ], [ 1, %bb.d ] ; 5 uses
  %i.cu = icmp slt i32 %.0115, %.079111
  br i1 %i.cu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit118
  %i.cv = add nsw i32 %.083102, 1
  %i.cw = sext i32 %.083102 to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4
  br label %.loopexit

bb.w:                                             ; preds = %.loopexit118
  %i.cz = icmp slt i32 %.079111, %.0115
  br i1 %i.cz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.da = load ptr, ptr %i.q, align 8
  %i.db = sext i32 %.081106 to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.db
  store i32 %.079111, ptr %i.dc, align 4
  %i.dd = load ptr, ptr %i.m, align 8
  %i.de = add nsw i32 %.08598, 1
  %i.df = sext i32 %.08598 to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4
  br label %bb.f

bb.y:                                             ; preds = %bb.w
  %i.di = icmp eq i32 %.079111, 1114112
  br i1 %i.di, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dj = load ptr, ptr %i.m, align 8
  %i.dk = add nsw i32 %.08598, 1
  %i.dl = sext i32 %.08598 to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = add nsw i32 %.083102, 1
  %i.dp = sext i32 %.083102 to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4
  br label %.loopexit117

bb.aa:                                            ; preds = %bb.y, %bb.t, %bb.o, %bb.j
  %.081107 = phi i32 [ %.081106, %bb.y ], [ %.081105, %bb.t ], [ %.081103, %bb.o ], [ %.081104, %bb.j ] ; 2 uses
  %i.ds = load ptr, ptr %i.q, align 8
  %i.dt = add nsw i32 %.081107, 1
  %i.du = sext i32 %.081107 to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.du
  store i32 1114112, ptr %i.dv, align 4
  store i32 %i.dt, ptr %i.i, align 4
  %i.dw = load ptr, ptr %i.m, align 8
  %i.dx = load ptr, ptr %i.q, align 8
  store ptr %i.dx, ptr %i.m, align 8
  store ptr %i.dw, ptr %i.q, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8
  store i32 %i.eb, ptr %i.dy, align 8
  store i32 %i.dz, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %.not.i92 = icmp eq ptr %i.ed, null
  br i1 %.not.i92, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @uprv_free_78(ptr noundef nonnull %i.ed) #20
  store ptr null, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.ee, align 8
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_7810UnicodeSet14releasePatternEv.exit:    ; preds = %bb.ab, %bb.aa, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6retainEi(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
_ZN6icu_7810UnicodeSet6retainEii.exit:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.b, i32 1114111) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = add nuw nsw i32 %i.c, 1
  store i32 %i.e, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1114112, ptr %i.f, align 4
  call void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef 2, i8 noundef signext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6retainERKNS_13UnicodeStringE(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  %narrow.i.not = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %narrow.i.not, label %bb.b, label %.critedge15

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, 1
  %.not12 = icmp eq i8 %i.i, 0
  br i1 %.not12, label %bb.c, label %.critedge15

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp slt i16 %i.k, 0
  %i.m = ashr i16 %i.k, 5
  %i.n = sext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = select i1 %i.l, i32 %i.p, i32 %i.n
  switch i32 %i.q, label %_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit [
    i32 1, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
    i32 2, label %bb.d
  ]

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.c
  %i.r = and i16 %i.k, 2
  %.not.i.i.i.i = icmp eq i16 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = select i1 %.not.i.i.i.i, ptr %i.u, ptr %i.s
  %i.w = load i16, ptr %i.v, align 2
  %i.x = zext i16 %i.w to i32
  br label %_ZN6icu_7810UnicodeSet6retainEii.exit

bb.d:                                             ; preds = %bb.c
  %i.y = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0) #20 ; 2 uses
  %i.z = icmp slt i32 %i.y, 65536
  br i1 %i.z, label %_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit, label %_ZN6icu_7810UnicodeSet6retainEii.exit

_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit: ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i16 = icmp eq ptr %i.ab, null
  br i1 %.not.i16, label %.critedge, label %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit

_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit: ; preds = %_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit
  %i.ac = tail call noundef i32 @_ZNK6icu_787UVector7indexOfEPvi(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0) #20
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %.off = add i32 %i.af, 1
  %i.ag = icmp ult i32 %.off, 3
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call noundef i32 @_ZNK6icu_7810UnicodeSet4sizeEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.critedge15, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = load ptr, ptr %i.b, align 8
  %.not.i.i = icmp eq ptr %i.aj, null
  %i.ak = load ptr, ptr %i.d, align 8
  %i.al = icmp eq ptr %i.ak, null
  %narrow.i.not.i = select i1 %.not.i.i, i1 %i.al, i1 false
  br i1 %narrow.i.not.i, label %bb.h, label %_ZN6icu_7810UnicodeSet5clearEv.exit

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  store i32 1114112, ptr %i.an, align 4
  store i32 1, ptr %i.ae, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not.i3.i = icmp eq ptr %i.ap, null
  br i1 %.not.i3.i, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @uprv_free_78(ptr noundef nonnull %i.ap) #20
  store ptr null, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.aq, align 8
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i

_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i:  ; preds = %bb.i, %bb.h
  %i.ar = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not2.i = icmp eq ptr %i.ar, null
  br i1 %.not2.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i
  tail call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ar) #20
  br label %bb.k
end_hunk_1
begin_hunk_2_@_ZN6icu_7810UnicodeSet6removeEii:_ZN6icu_78L12pinCodePointERi.exit

bb.b:                                             ; preds = %bb.a, %_ZN6icu_78L12pinCodePointERi.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6removeEi(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
_ZN6icu_7810UnicodeSet6removeEii.exit:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.b, i32 1114111) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = add nuw nsw i32 %i.c, 1
  store i32 %i.e, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1114112, ptr %i.f, align 4
  call void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef 2, i8 noundef signext 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6removeERKNS_13UnicodeStringE(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  %narrow.i.not = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, 1
  %.not7 = icmp eq i8 %i.i, 0
  br i1 %.not7, label %bb.c, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp slt i16 %i.k, 0
  %i.m = ashr i16 %i.k, 5
  %i.n = sext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = select i1 %i.l, i32 %i.p, i32 %i.n
  switch i32 %i.q, label %_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit [
    i32 1, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
    i32 2, label %bb.d
  ]

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.c
  %i.r = and i16 %i.k, 2
  %.not.i.i.i.i = icmp eq i16 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = select i1 %.not.i.i.i.i, ptr %i.u, ptr %i.s
  %i.w = load i16, ptr %i.v, align 2
  %i.x = zext i16 %i.w to i32
  br label %_ZN6icu_7810UnicodeSet6removeEii.exit

bb.d:                                             ; preds = %bb.c
  %i.y = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0) #20 ; 2 uses
  %i.z = icmp slt i32 %i.y, 65536
  br i1 %i.z, label %_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit, label %_ZN6icu_7810UnicodeSet6removeEii.exit

_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit: ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not8 = icmp eq ptr %i.ab, null
  br i1 %.not8, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit
  %i.ac = tail call noundef signext i8 @_ZN6icu_787UVector13removeElementEPv(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull %1) #20
  %.not9 = icmp eq i8 %i.ac, 0
  br i1 %.not9, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i10 = icmp eq ptr %i.ae, null
  br i1 %.not.i10, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @uprv_free_78(ptr noundef nonnull %i.ae) #20
  store ptr null, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.af, align 8
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_7810UnicodeSet6removeEii.exit:            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.d
  %.1.i.ph = phi i32 [ %i.y, %bb.d ], [ %i.x, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ]
  %i.ag = tail call i32 @llvm.umin.i32(i32 %.1.i.ph, i32 1114111) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 %i.ag, ptr %i.a, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ai = add nuw nsw i32 %i.ag, 1
  store i32 %i.ai, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1114112, ptr %i.aj, align 4
  call void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef 2, i8 noundef signext 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_7810UnicodeSet14releasePatternEv.exit:    ; preds = %bb.g, %bb.f, %_ZN6icu_7810UnicodeSet6removeEii.exit, %bb.e, %_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit, %bb.a, %bb.b
  ret ptr %0
}

declare noundef signext i8 @_ZN6icu_787UVector13removeElementEPv(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7810UnicodeSet11exclusiveOrEPKiia(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(200) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i8 noundef signext %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, 1
  %.not39 = icmp eq i8 %i.h, 0
  br i1 %.not39, label %bb.c, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = add nsw i32 %i.j, %2
  %i.l = tail call noundef zeroext i1 @_ZN6icu_7810UnicodeSet20ensureBufferCapacityEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.k)
  br i1 %i.l, label %bb.d, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load i32, ptr %i.n, align 4
  %i.p = add i8 %3, -1
  %or.cond = icmp ult i8 %i.p, 2
  %i.q = load i32, ptr %1, align 4                ; 2 uses
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load i32, ptr %i.s, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.034 = phi i32 [ 1, %bb.f ], [ 0, %bb.e ], [ 1, %bb.d ]
  %.0 = phi i32 [ %i.t, %bb.f ], [ 0, %bb.e ], [ %i.q, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.g
  %.037.ph = phi i32 [ 1, %bb.g ], [ %.037.ph.be, %.outer.backedge ] ; 3 uses
  %.135.ph = phi i32 [ %.034, %bb.g ], [ %.135.ph.be, %.outer.backedge ]
  %.032.ph = phi i32 [ 0, %bb.g ], [ %.032.ph.be, %.outer.backedge ]
  %.030.ph = phi i32 [ %i.o, %bb.g ], [ %.030.ph.be, %.outer.backedge ] ; 4 uses
  %.1.ph = phi i32 [ %.0, %bb.g ], [ %.1.ph.be, %.outer.backedge ]
  br label %bb.h

bb.h:                                             ; preds = %.outer, %bb.k
  %.135 = phi i32 [ %i.ai, %bb.k ], [ %.135.ph, %.outer ] ; 5 uses
  %.032 = phi i32 [ %i.af, %bb.k ], [ %.032.ph, %.outer ] ; 7 uses
  %.1 = phi i32 [ %i.al, %bb.k ], [ %.1.ph, %.outer ] ; 4 uses
  %i.v = icmp slt i32 %.030.ph, %.1
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.u, align 8
  %i.x = add nsw i32 %.032, 1
  %i.y = sext i32 %.032 to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y
  store i32 %.030.ph, ptr %i.z, align 4
  %i.aa = load ptr, ptr %i.m, align 8
  %i.ab = zext nneg i32 %.037.ph to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.i, %bb.m
  %.135.ph.be = phi i32 [ %i.ap, %bb.m ], [ %.135, %bb.i ]
  %.032.ph.be = phi i32 [ %.032, %bb.m ], [ %i.x, %bb.i ]
  %.030.ph.be.in = phi ptr [ %i.ao, %bb.m ], [ %i.ac, %bb.i ]
  %.1.ph.be = phi i32 [ %i.as, %bb.m ], [ %.1, %bb.i ]
  %.030.ph.be = load i32, ptr %.030.ph.be.in, align 4
  %.037.ph.be = add nuw nsw i32 %.037.ph, 1
  br label %.outer, !llvm.loop !31

bb.j:                                             ; preds = %bb.h
  %i.ad = icmp slt i32 %.1, %.030.ph
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.u, align 8
  %i.af = add nsw i32 %.032, 1
  %i.ag = sext i32 %.032 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ag
  store i32 %.1, ptr %i.ah, align 4
  %i.ai = add nsw i32 %.135, 1
  %i.aj = sext i32 %.135 to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  br label %bb.h, !llvm.loop !31

bb.l:                                             ; preds = %bb.j
  %.not40 = icmp eq i32 %.030.ph, 1114112
  br i1 %.not40, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.m, align 8
  %i.an = zext nneg i32 %.037.ph to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = add nsw i32 %.135, 1
  %i.aq = sext i32 %.135 to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  br label %.outer.backedge

bb.n:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.u, align 8
  %i.au = add nsw i32 %.032, 1
  %i.av = sext i32 %.032 to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.av
  store i32 1114112, ptr %i.aw, align 4
  store i32 %i.au, ptr %i.i, align 4
  %i.ax = load ptr, ptr %i.m, align 8
  %i.ay = load ptr, ptr %i.u, align 8
  store ptr %i.ay, ptr %i.m, align 8
  store ptr %i.ax, ptr %i.u, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8
  store i32 %i.bc, ptr %i.az, align 8
  store i32 %i.ba, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not.i41 = icmp eq ptr %i.be, null
  br i1 %.not.i41, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @uprv_free_78(ptr noundef nonnull %i.be) #20
  store ptr null, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.bf, align 8
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_7810UnicodeSet14releasePatternEv.exit:    ; preds = %bb.o, %bb.n, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet10complementEi(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %.not.i.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  %narrow.i.not.i = select i1 %.not.i.i, i1 %i.f, i1 false
  br i1 %narrow.i.not.i, label %bb.b, label %_ZN6icu_7810UnicodeSet10complementEii.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, 1
  %.not2.i = icmp eq i8 %i.i, 0
  br i1 %.not2.i, label %bb.c, label %_ZN6icu_7810UnicodeSet10complementEii.exit

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.k = tail call i32 @llvm.umin.i32(i32 %i.j, i32 1114111) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 %i.k, ptr %i.a, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.m = add nuw nsw i32 %i.k, 1
  store i32 %i.m, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1114112, ptr %i.n, align 4
  call void @_ZN6icu_7810UnicodeSet11exclusiveOrEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef 2, i8 noundef signext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i7.i = icmp eq ptr %i.p, null
  br i1 %.not.i7.i, label %_ZN6icu_7810UnicodeSet10complementEii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @uprv_free_78(ptr noundef nonnull %i.p) #20
  store ptr null, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.q, align 8
  br label %_ZN6icu_7810UnicodeSet10complementEii.exit

_ZN6icu_7810UnicodeSet10complementEii.exit:       ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet10complementEv(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, 1
  %.not2 = icmp eq i8 %i.h, 0
  br i1 %.not2, label %bb.c, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = add nsw i32 %i.o, -1
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.j, ptr nonnull align 4 %i.m, i64 %i.r, i1 false)
  %i.s = load i32, ptr %i.n, align 4
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.n, align 4
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = add nsw i32 %i.v, 1
  %i.x = tail call noundef zeroext i1 @_ZN6icu_7810UnicodeSet14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.w)
  br i1 %i.x, label %bb.f, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.u, align 4
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %i.y, i64 %i.ac, i1 false)
  %i.ad = load ptr, ptr %i.i, align 8
  store i32 0, ptr %i.ad, align 4
  %i.ae = load i32, ptr %i.u, align 4
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.u, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not.i3 = icmp eq ptr %i.ah, null
  br i1 %.not.i3, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @uprv_free_78(ptr noundef nonnull %i.ah) #20
  store ptr null, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.ai, align 8
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_7810UnicodeSet14releasePatternEv.exit:    ; preds = %bb.h, %bb.g, %bb.e, %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet10complementERKNS_13UnicodeStringE(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  %narrow.i.not = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, 1
  %.not8 = icmp eq i8 %i.i, 0
  br i1 %.not8, label %bb.c, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp slt i16 %i.k, 0
  %i.m = ashr i16 %i.k, 5
  %i.n = sext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
end_hunk_2
begin_hunk_3_@_ZN6icu_7810UnicodeSet7compactEv:bb.a
  %i.q = load i32, ptr %i.p, align 4              ; 4 uses
  %i.r = icmp slt i32 %i.q, 26
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = sext i32 %i.q to i64
  %i.t = shl nsw i64 %i.s, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 4 %i.n, i64 %i.t, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.n) #20
  store ptr %i.k, ptr %i.m, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 25, ptr %i.u, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.v = add nuw nsw i32 %i.q, 7
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp slt i32 %i.v, %i.x
  br i1 %i.y, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = zext nneg i32 %i.q to i64
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = tail call ptr @uprv_realloc_78(ptr noundef %i.n, i64 noundef %i.aa) #22 ; 2 uses
  %.not12 = icmp eq ptr %i.ab, null
  br i1 %.not12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.ab, ptr %i.m, align 8
  %i.ac = load i32, ptr %i.p, align 4
  store i32 %i.ac, ptr %i.w, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g, %bb.h, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 4 uses
  %.not13 = icmp eq ptr %i.ae, null
  br i1 %.not13, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.ae, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.ae) #20
  store ptr null, ptr %i.ad, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: allocsize(1)
declare ptr @uprv_realloc_78(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7810UnicodeSetC2EPKtiNS0_14ESerializationER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 16)) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_7810UnicodeSetE, i64 16), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7810UnicodeSetE, i64 128), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 25, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  store i32 1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.l = load i32, ptr %4, align 4
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.b, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit

_ZN6icu_7810UnicodeSet10setToBogusEv.exit:        ; preds = %bb.a
  store i32 1114112, ptr %i.c, align 8
  store i32 1, ptr %i.e, align 4
  store i8 1, ptr %i.f, align 8
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ne i32 %3, 0
  %i.o = icmp eq ptr %1, null
  %or.cond = or i1 %i.o, %i.n
  %i.p = icmp slt i32 %2, 1
  %or.cond3 = or i1 %i.p, %or.cond
  br i1 %or.cond3, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %4, align 4
  %i.q = load ptr, ptr %i.g, align 8
  %.not.i.i.i46 = icmp eq ptr %i.q, null
  %i.r = load ptr, ptr %i.k, align 8
  %i.s = icmp eq ptr %i.r, null
  %narrow.i.not.i.i47 = select i1 %.not.i.i.i46, i1 %i.s, i1 false
  br i1 %narrow.i.not.i.i47, label %bb.d, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit51

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.b, align 8
  store i32 1114112, ptr %i.t, align 4
  store i32 1, ptr %i.e, align 4
  %i.u = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i3.i.i48 = icmp eq ptr %i.u, null
  br i1 %.not.i3.i.i48, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i49, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @uprv_free_78(ptr noundef nonnull %i.u) #20
  store ptr null, ptr %i.h, align 8
  store i32 0, ptr %i.i, align 8
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i49

_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i49: ; preds = %bb.e, %bb.d
  %i.v = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not2.i.i50 = icmp eq ptr %i.v, null
  br i1 %.not2.i.i50, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit51, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i49
  tail call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #20
  br label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit51

_ZN6icu_7810UnicodeSet10setToBogusEv.exit51:      ; preds = %bb.c, %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i49, %bb.f
  store i8 1, ptr %i.f, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.b
  %i.w = load i16, ptr %1, align 2                ; 3 uses
  %.not44 = icmp sgt i16 %i.w, -1                 ; 2 uses
  %i.x = select i1 %.not44, i32 1, i32 2          ; 2 uses
  br i1 %.not44, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.z = load i16, ptr %i.y, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aa = phi i16 [ %i.z, %bb.h ], [ %i.w, %bb.g ] ; 7 uses
  %i.ab = zext i16 %i.aa to i32                   ; 4 uses
  %i.ac = and i16 %i.w, 32767
  %i.ad = zext nneg i16 %i.ac to i32
  %i.ae = sub nsw i32 %i.ad, %i.ab                ; 2 uses
  %i.af = sdiv i32 %i.ae, 2
  %i.ag = add nsw i32 %i.af, %i.ab                ; 2 uses
  %i.ah = add nsw i32 %i.ag, 1
  %i.ai = tail call noundef zeroext i1 @_ZN6icu_7810UnicodeSet14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.ah)
  br i1 %i.ai, label %.preheader52, label %bb.m

.preheader52:                                     ; preds = %bb.i
  %.not = icmp eq i16 %i.aa, 0
  br i1 %.not, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader52
  %i.aj = zext nneg i32 %i.x to i64
  %wide.trip.count = zext i16 %i.aa to i64        ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aj ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ak = icmp ult i16 %i.aa, 4
  br i1 %i.ak, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 65532
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %gep.epil = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv.epil
  %i.al = load i16, ptr %gep.epil, align 2
  %i.am = zext i16 %i.al to i32
  %i.an = load ptr, ptr %i.b, align 8
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.epil
  store i32 %i.am, ptr %i.ao, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.epil, !llvm.loop !32

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader52
  %i.ap = icmp sgt i32 %i.ae, 1
  br i1 %i.ap, label %.lr.ph55, label %._crit_edge

.lr.ph55:                                         ; preds = %.preheader
  %i.aq = add nuw nsw i32 %i.x, %i.ab
  %i.ar = zext i16 %i.aa to i64
  %i.as = zext i16 %i.aa to i64
  %i.at = zext nneg i32 %i.aq to i64
  %i.au = zext nneg i32 %i.ag to i64
  %invariant.gep70 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.at
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.av = load i16, ptr %gep, align 2
  %i.aw = zext i16 %i.av to i32
  %i.ax = load ptr, ptr %i.b, align 8
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  store i32 %i.aw, ptr %i.ay, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.az = load i16, ptr %gep.1, align 2
  %i.ba = zext i16 %i.az to i32
  %i.bb = load ptr, ptr %i.b, align 8
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next
  store i32 %i.ba, ptr %i.bc, align 4
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bd = load i16, ptr %gep.2, align 2
  %i.be = zext i16 %i.bd to i32
  %i.bf = load ptr, ptr %i.b, align 8
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next.1
  store i32 %i.be, ptr %i.bg, align 4
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.bh = load i16, ptr %gep.3, align 2
  %i.bi = zext i16 %i.bh to i32
  %i.bj = load ptr, ptr %i.b, align 8
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.next.2
  store i32 %i.bi, ptr %i.bk, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !33

bb.j:                                             ; preds = %.lr.ph55, %bb.j
  %indvars.iv57 = phi i64 [ %i.ar, %.lr.ph55 ], [ %indvars.iv.next58, %bb.j ] ; 3 uses
  %i.bl = sub nuw nsw i64 %indvars.iv57, %i.as
  %.idx = shl nuw nsw i64 %i.bl, 2
  %gep71 = getelementptr inbounds nuw i8, ptr %invariant.gep70, i64 %.idx ; 2 uses
  %i.bm = load i16, ptr %gep71, align 2
  %i.bn = zext i16 %i.bm to i32
  %i.bo = shl nuw i32 %i.bn, 16
  %i.bp = getelementptr i8, ptr %gep71, i64 2
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = zext i16 %i.bq to i32
  %i.bs = or disjoint i32 %i.bo, %i.br
  %i.bt = load ptr, ptr %i.b, align 8
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv57
  store i32 %i.bs, ptr %i.bu, align 4
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 3 uses
  %i.bv = icmp samesign ult i64 %indvars.iv.next58, %i.au
  br i1 %i.bv, label %bb.j, label %._crit_edge.thread, !llvm.loop !34

._crit_edge.thread:                               ; preds = %bb.j
  %i.bw = trunc nuw nsw i64 %indvars.iv.next58 to i32
  %.pre65 = load ptr, ptr %i.b, align 8
  br label %bb.k

._crit_edge:                                      ; preds = %.preheader
  %i.bx = icmp eq i16 %i.aa, 0
  %.pre = load ptr, ptr %i.b, align 8             ; 2 uses
  br i1 %i.bx, label %._crit_edge._crit_edge, label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.pre68 = phi ptr [ %.pre65, %._crit_edge.thread ], [ %.pre, %._crit_edge ] ; 2 uses
  %.1.lcssa67 = phi i32 [ %i.bw, %._crit_edge.thread ], [ %i.ab, %._crit_edge ] ; 3 uses
  %i.by = zext nneg i32 %.1.lcssa67 to i64        ; 2 uses
  %i.bz = getelementptr [4 x i8], ptr %.pre68, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 -4
  %i.cb = load i32, ptr %i.ca, align 4
  %.not45 = icmp eq i32 %i.cb, 1114112
  br i1 %.not45, label %bb.l, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge, %bb.k
  %.pre69 = phi ptr [ %.pre68, %bb.k ], [ %.pre, %._crit_edge ]
  %.1.lcssa66 = phi i32 [ %.1.lcssa67, %bb.k ], [ 0, %._crit_edge ]
  %.pre-phi = phi i64 [ %i.by, %bb.k ], [ 0, %._crit_edge ]
  %i.cc = add nuw nsw i32 %.1.lcssa66, 1
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.pre69, i64 %.pre-phi
  store i32 1114112, ptr %i.cd, align 4
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge._crit_edge, %bb.k
  %.2 = phi i32 [ %i.cc, %._crit_edge._crit_edge ], [ %.1.lcssa67, %bb.k ]
  store i32 %.2, ptr %i.e, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %_ZN6icu_7810UnicodeSet10setToBogusEv.exit51, %_ZN6icu_7810UnicodeSet10setToBogusEv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 -2147483647, 32770) i32 @_ZNK6icu_7810UnicodeSet9serializeEPtiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ne i32 %2, 0                        ; 2 uses
  %i.e = icmp eq ptr %1, null
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %3, align 4
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = add nsw i32 %i.g, -1                     ; 7 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i16 0, ptr %1, align 2
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  store i32 15, ptr %3, align 4
  br label %.loopexit

bb.i:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = sext i32 %i.g to i64
  %i.m = getelementptr [4 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp slt i32 %i.o, 65536
  br i1 %i.p, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load i32, ptr %i.k, align 4
  %i.r = icmp sgt i32 %i.q, 65535
  br i1 %i.r, label %bb.k, label %.preheader61

.preheader61:                                     ; preds = %bb.j
  %i.s = icmp sgt i32 %i.g, 1
  br i1 %i.s, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader61
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

bb.k:                                             ; preds = %bb.j
  %i.t = shl nsw i32 %i.h, 1
  br label %bb.m

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp slt i32 %i.v, 65536
  br i1 %i.w, label %bb.l, label %.critedge.loopexit.split.loop.exit84

bb.l:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !35

.critedge.loopexit.split.loop.exit84:             ; preds = %.lr.ph
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %.critedge.loopexit.split.loop.exit84, %.preheader61
  %.054.lcssa = phi i32 [ 0, %.preheader61 ], [ %i.x, %.critedge.loopexit.split.loop.exit84 ], [ %i.h, %bb.l ] ; 3 uses
  %i.y = sub nsw i32 %i.h, %.054.lcssa
  %i.z = shl nsw i32 %i.y, 1
  %i.aa = add nsw i32 %i.z, %.054.lcssa
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.k, %.critedge
  %.155 = phi i32 [ %.054.lcssa, %.critedge ], [ 0, %bb.k ], [ %i.h, %bb.i ] ; 12 uses
  %.053 = phi i32 [ %i.aa, %.critedge ], [ %i.t, %bb.k ], [ %i.h, %bb.i ] ; 8 uses
  %i.ab = icmp sgt i32 %.053, 32767
  br i1 %i.ab, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 8, ptr %3, align 4
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.ac = icmp sgt i32 %.053, %.155               ; 2 uses
  %i.ad = select i1 %i.ac, i32 2, i32 1
  %i.ae = add nsw i32 %i.ad, %.053                ; 5 uses
  %.not60 = icmp sgt i32 %i.ae, %2
  br i1 %.not60, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = trunc i32 %.053 to i16                  ; 2 uses
  store i16 %i.af, ptr %1, align 2
  br i1 %i.ac, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ag = or i16 %i.af, -32768
  store i16 %i.ag, ptr %1, align 2
  %i.ah = trunc i32 %.155 to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i16 %i.ah, ptr %i.ai, align 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.056 = phi ptr [ %i.ai, %bb.q ], [ %1, %bb.p ] ; 2 uses
  %i.aj = load ptr, ptr %i.j, align 8             ; 7 uses
  %.15765 = getelementptr i8, ptr %.056, i64 2    ; 6 uses
  %i.ak = icmp sgt i32 %.155, 0
  br i1 %i.ak, label %.lr.ph69.preheader, label %.preheader

.lr.ph69.preheader:                               ; preds = %bb.r
  %i.al = zext nneg i32 %.155 to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %.155, 20
  br i1 %min.iters.check, label %.lr.ph69.preheader116, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph69.preheader
  %i.am = add nsw i32 %.155, -1
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = shl nuw nsw i64 %i.an, 1
  %i.ap = getelementptr i8, ptr %.056, i64 %i.ao
  %scevgep = getelementptr i8, ptr %i.ap, i64 4
  %i.aq = shl nuw nsw i64 %i.an, 2
  %i.ar = getelementptr i8, ptr %i.aj, i64 %i.aq
  %scevgep88 = getelementptr i8, ptr %i.ar, i64 4
  %bound0 = icmp ult ptr %.15765, %scevgep88
  %bound1 = icmp ult ptr %i.aj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph69.preheader116, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 2147483640              ; 5 uses
  %i.as = shl nuw nsw i64 %n.vec, 1
  %i.at = getelementptr i8, ptr %.15765, i64 %i.as ; 2 uses
  %i.au = trunc nuw nsw i64 %n.vec to i32
  %i.av = shl nuw nsw i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.aj, i64 %i.av  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ax = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.15765, i64 %i.ax ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep89 = getelementptr i8, ptr %i.aj, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep89, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep89, align 4, !alias.scope !36
  %wide.load90 = load <4 x i32>, ptr %i.az, align 4, !alias.scope !36
  %i.ba = trunc <4 x i32> %wide.load to <4 x i16>
  %i.bb = trunc <4 x i32> %wide.load90 to <4 x i16>
  %i.bc = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.ba, ptr %next.gep, align 2, !alias.scope !39, !noalias !36
  store <4 x i16> %i.bb, ptr %i.bc, align 2, !alias.scope !39, !noalias !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.al
  br i1 %cmp.n, label %.preheader, label %.lr.ph69.preheader116

.lr.ph69.preheader116:                            ; preds = %vector.memcheck, %.lr.ph69.preheader, %middle.block
  %.15768.ph = phi ptr [ %.15765, %vector.memcheck ], [ %.15765, %.lr.ph69.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.067.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph69.preheader ], [ %i.au, %middle.block ] ; 4 uses
  %.05066.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph69.preheader ], [ %i.aw, %middle.block ] ; 2 uses
  %i.be = sub i32 %.155, %.067.ph
  %xtraiter = and i32 %i.be, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph69.prol.loopexit, label %.lr.ph69.prol

.lr.ph69.prol:                                    ; preds = %.lr.ph69.preheader116, %.lr.ph69.prol
  %.15768.prol = phi ptr [ %.157.prol, %.lr.ph69.prol ], [ %.15768.ph, %.lr.ph69.preheader116 ] ; 2 uses
  %.067.prol = phi i32 [ %i.bi, %.lr.ph69.prol ], [ %.067.ph, %.lr.ph69.preheader116 ]
  %.05066.prol = phi ptr [ %i.bf, %.lr.ph69.prol ], [ %.05066.ph, %.lr.ph69.preheader116 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph69.prol ], [ 0, %.lr.ph69.preheader116 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.05066.prol, i64 4 ; 3 uses
  %i.bg = load i32, ptr %.05066.prol, align 4
  %i.bh = trunc i32 %i.bg to i16
  store i16 %i.bh, ptr %.15768.prol, align 2
  %i.bi = add nuw nsw i32 %.067.prol, 1           ; 2 uses
  %.157.prol = getelementptr inbounds nuw i8, ptr %.15768.prol, i64 2 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph69.prol.loopexit, label %.lr.ph69.prol, !llvm.loop !42

.lr.ph69.prol.loopexit:                           ; preds = %.lr.ph69.prol, %.lr.ph69.preheader116
  %.lcssa.unr = phi ptr [ poison, %.lr.ph69.preheader116 ], [ %i.bf, %.lr.ph69.prol ]
  %.157.lcssa117.unr = phi ptr [ poison, %.lr.ph69.preheader116 ], [ %.157.prol, %.lr.ph69.prol ]
  %.15768.unr = phi ptr [ %.15768.ph, %.lr.ph69.preheader116 ], [ %.157.prol, %.lr.ph69.prol ]
  %.067.unr = phi i32 [ %.067.ph, %.lr.ph69.preheader116 ], [ %i.bi, %.lr.ph69.prol ]
  %.05066.unr = phi ptr [ %.05066.ph, %.lr.ph69.preheader116 ], [ %i.bf, %.lr.ph69.prol ]
  %i.bj = sub i32 %.067.ph, %.155
  %i.bk = icmp ugt i32 %i.bj, -8
  br i1 %i.bk, label %.preheader, label %.lr.ph69

.preheader:                                       ; preds = %.lr.ph69.prol.loopexit, %.lr.ph69, %middle.block, %bb.r
  %.050.lcssa = phi ptr [ %i.aj, %bb.r ], [ %i.aw, %middle.block ], [ %.lcssa.unr, %.lr.ph69.prol.loopexit ], [ %i.de, %.lr.ph69 ] ; 6 uses
  %.0.lcssa = phi i32 [ 0, %bb.r ], [ %.155, %middle.block ], [ %.155, %.lr.ph69 ], [ %.155, %.lr.ph69.prol.loopexit ] ; 8 uses
  %.157.lcssa = phi ptr [ %.15765, %bb.r ], [ %i.at, %middle.block ], [ %.157.lcssa117.unr, %.lr.ph69.prol.loopexit ], [ %.157.7, %.lr.ph69 ] ; 6 uses
  %i.bl = icmp slt i32 %.0.lcssa, %.053
  br i1 %i.bl, label %.lr.ph76.preheader, label %.loopexit

.lr.ph76.preheader:                               ; preds = %.preheader
  %i.bm = add nuw i32 %.0.lcssa, 2
  %i.bn = tail call i32 @llvm.smax.i32(i32 %.053, i32 %i.bm)
  %i.bo = xor i32 %.0.lcssa, -1
  %i.bp = add i32 %i.bn, %i.bo                    ; 2 uses
  %i.bq = lshr i32 %i.bp, 1
  %narrow = add nuw i32 %i.bq, 1
  %i.br = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check100 = icmp ult i32 %i.bp, 30
  br i1 %min.iters.check100, label %.lr.ph76.preheader115, label %vector.memcheck93

vector.memcheck93:                                ; preds = %.lr.ph76.preheader
  %i.bs = add nuw i32 %.0.lcssa, 2
  %smax = tail call i32 @llvm.smax.i32(i32 %.053, i32 %i.bs)
  %i.bt = xor i32 %.0.lcssa, -1
  %i.bu = add i32 %smax, %i.bt
  %i.bv = lshr i32 %i.bu, 1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 4                ; 2 uses
  %scevgep94 = getelementptr i8, ptr %.157.lcssa, i64 %i.by
  %scevgep95 = getelementptr i8, ptr %.050.lcssa, i64 %i.by
  %bound096 = icmp ult ptr %.157.lcssa, %scevgep95
  %bound197 = icmp ult ptr %.050.lcssa, %scevgep94
  %found.conflict98 = and i1 %bound096, %bound197
  br i1 %found.conflict98, label %.lr.ph76.preheader115, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck93
  %n.vec102 = and i64 %i.br, 4294967292           ; 4 uses
  %i.bz = trunc nuw i64 %n.vec102 to i32
  %i.ca = shl i32 %i.bz, 1
  %i.cb = add i32 %.0.lcssa, %i.ca
  %i.cc = shl nuw nsw i64 %n.vec102, 2            ; 2 uses
  %i.cd = getelementptr i8, ptr %.050.lcssa, i64 %i.cc
  %i.ce = getelementptr i8, ptr %.157.lcssa, i64 %i.cc
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next109, %vector.body103 ] ; 2 uses
  %i.cf = shl i64 %index104, 2                    ; 2 uses
  %next.gep105 = getelementptr i8, ptr %.050.lcssa, i64 %i.cf
  %next.gep106 = getelementptr i8, ptr %.157.lcssa, i64 %i.cf
  %wide.load107 = load <4 x i32>, ptr %next.gep105, align 4, !alias.scope !43 ; 2 uses
  %i.cg = lshr <4 x i32> %wide.load107, splat (i32 16)
  %i.ch = shufflevector <4 x i32> %i.cg, <4 x i32> %wide.load107, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc <8 x i32> %i.ch to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %next.gep106, align 2, !alias.scope !46, !noalias !43
  %index.next109 = add nuw i64 %index104, 4       ; 2 uses
  %i.ci = icmp eq i64 %index.next109, %n.vec102
  br i1 %i.ci, label %middle.block110, label %vector.body103, !llvm.loop !48

middle.block110:                                  ; preds = %vector.body103
  %cmp.n111 = icmp eq i64 %n.vec102, %i.br
  br i1 %cmp.n111, label %.loopexit, label %.lr.ph76.preheader115

.lr.ph76.preheader115:                            ; preds = %vector.memcheck93, %.lr.ph76.preheader, %middle.block110
  %.175.ph = phi i32 [ %.0.lcssa, %vector.memcheck93 ], [ %.0.lcssa, %.lr.ph76.preheader ], [ %i.cb, %middle.block110 ]
  %.15174.ph = phi ptr [ %.050.lcssa, %vector.memcheck93 ], [ %.050.lcssa, %.lr.ph76.preheader ], [ %i.cd, %middle.block110 ]
  %.273.ph = phi ptr [ %.157.lcssa, %vector.memcheck93 ], [ %.157.lcssa, %.lr.ph76.preheader ], [ %i.ce, %middle.block110 ]
  br label %.lr.ph76

.lr.ph69:                                         ; preds = %.lr.ph69.prol.loopexit, %.lr.ph69
  %.15768 = phi ptr [ %.157.7, %.lr.ph69 ], [ %.15768.unr, %.lr.ph69.prol.loopexit ] ; 9 uses
  %.067 = phi i32 [ %i.dh, %.lr.ph69 ], [ %.067.unr, %.lr.ph69.prol.loopexit ]
  %.05066 = phi ptr [ %i.de, %.lr.ph69 ], [ %.05066.unr, %.lr.ph69.prol.loopexit ] ; 9 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.05066, i64 4
  %i.ck = load i32, ptr %.05066, align 4
  %i.cl = trunc i32 %i.ck to i16
  store i16 %i.cl, ptr %.15768, align 2
  %.157 = getelementptr inbounds nuw i8, ptr %.15768, i64 2
  %i.cm = getelementptr inbounds nuw i8, ptr %.05066, i64 8
  %i.cn = load i32, ptr %i.cj, align 4
  %i.co = trunc i32 %i.cn to i16
  store i16 %i.co, ptr %.157, align 2
  %.157.1 = getelementptr inbounds nuw i8, ptr %.15768, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.05066, i64 12
  %i.cq = load i32, ptr %i.cm, align 4
  %i.cr = trunc i32 %i.cq to i16
  store i16 %i.cr, ptr %.157.1, align 2
  %.157.2 = getelementptr inbounds nuw i8, ptr %.15768, i64 6
  %i.cs = getelementptr inbounds nuw i8, ptr %.05066, i64 16
  %i.ct = load i32, ptr %i.cp, align 4
  %i.cu = trunc i32 %i.ct to i16
  store i16 %i.cu, ptr %.157.2, align 2
  %.157.3 = getelementptr inbounds nuw i8, ptr %.15768, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.05066, i64 20
  %i.cw = load i32, ptr %i.cs, align 4
  %i.cx = trunc i32 %i.cw to i16
  store i16 %i.cx, ptr %.157.3, align 2
  %.157.4 = getelementptr inbounds nuw i8, ptr %.15768, i64 10
  %i.cy = getelementptr inbounds nuw i8, ptr %.05066, i64 24
  %i.cz = load i32, ptr %i.cv, align 4
  %i.da = trunc i32 %i.cz to i16
  store i16 %i.da, ptr %.157.4, align 2
  %.157.5 = getelementptr inbounds nuw i8, ptr %.15768, i64 12
  %i.db = getelementptr inbounds nuw i8, ptr %.05066, i64 28
  %i.dc = load i32, ptr %i.cy, align 4
  %i.dd = trunc i32 %i.dc to i16
  store i16 %i.dd, ptr %.157.5, align 2
  %.157.6 = getelementptr inbounds nuw i8, ptr %.15768, i64 14
  %i.de = getelementptr inbounds nuw i8, ptr %.05066, i64 32 ; 2 uses
  %i.df = load i32, ptr %i.db, align 4
  %i.dg = trunc i32 %i.df to i16
  store i16 %i.dg, ptr %.157.6, align 2
  %i.dh = add nuw nsw i32 %.067, 8                ; 2 uses
  %.157.7 = getelementptr inbounds nuw i8, ptr %.15768, i64 16 ; 2 uses
  %exitcond80.not.7 = icmp eq i32 %i.dh, %.155
  br i1 %exitcond80.not.7, label %.preheader, label %.lr.ph69, !llvm.loop !49

.lr.ph76:                                         ; preds = %.lr.ph76.preheader115, %.lr.ph76
  %.175 = phi i32 [ %i.dq, %.lr.ph76 ], [ %.175.ph, %.lr.ph76.preheader115 ]
  %.15174 = phi ptr [ %i.dm, %.lr.ph76 ], [ %.15174.ph, %.lr.ph76.preheader115 ] ; 3 uses
  %.273 = phi ptr [ %i.dp, %.lr.ph76 ], [ %.273.ph, %.lr.ph76.preheader115 ] ; 3 uses
  %i.di = load i32, ptr %.15174, align 4
  %i.dj = lshr i32 %i.di, 16
  %i.dk = trunc nuw i32 %i.dj to i16
  %i.dl = getelementptr inbounds nuw i8, ptr %.273, i64 2
  store i16 %i.dk, ptr %.273, align 2
  %i.dm = getelementptr inbounds nuw i8, ptr %.15174, i64 4
  %i.dn = load i32, ptr %.15174, align 4
  %i.do = trunc i32 %i.dn to i16
  %i.dp = getelementptr inbounds nuw i8, ptr %.273, i64 4
  store i16 %i.do, ptr %i.dl, align 2
  %i.dq = add nuw nsw i32 %.175, 2                ; 2 uses
  %i.dr = icmp slt i32 %i.dq, %.053
  br i1 %i.dr, label %.lr.ph76, label %.loopexit, !llvm.loop !50

bb.s:                                             ; preds = %bb.o
  store i32 15, ptr %3, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph76, %middle.block110, %.preheader, %bb.s, %bb.g, %bb.h, %bb.a, %bb.n, %bb.d
  %.052 = phi i32 [ 1, %bb.g ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.n ], [ 1, %bb.h ], [ %i.ae, %bb.s ], [ %i.ae, %.preheader ], [ %i.ae, %middle.block110 ], [ %i.ae, %.lr.ph76 ]
  ret i32 %.052
}

declare void @uprv_deleteUObject_78(ptr noundef) #7

declare signext i8 @uhash_compareUnicodeString_78(ptr, ptr) #7

declare void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_EiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 -2147483623, 1114114) i32 @_ZN6icu_7810UnicodeSet12nextCapacityEi(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 25
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %0, 25
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %0, 2501
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = mul nuw nsw i32 %0, 5
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = shl nuw nsw i32 %0, 1
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.e, i32 1114113)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.d, %bb.d ], [ %spec.store.select, %bb.e ]
  ret i32 %.0
}

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6icu_7810UnicodeSet20ensureBufferCapacityEi(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %1, i32 1114113) ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp sgt i32 %spec.store.select, %i.b
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %1, 25
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %spec.store.select, 25
  br label %_ZN6icu_7810UnicodeSet12nextCapacityEi.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i32 %1, 2501
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = mul nuw nsw i32 %spec.store.select, 5
  br label %_ZN6icu_7810UnicodeSet12nextCapacityEi.exit

bb.f:                                             ; preds = %bb.d
  %i.g = shl nuw nsw i32 %spec.store.select, 1
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 1114113)
  br label %_ZN6icu_7810UnicodeSet12nextCapacityEi.exit

_ZN6icu_7810UnicodeSet12nextCapacityEi.exit:      ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.e ], [ %spec.store.select.i, %bb.f ] ; 2 uses
  %i.h = sext i32 %.0.i to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.i) #21 ; 2 uses
  %.not11 = icmp eq ptr %i.j, null
  br i1 %.not11, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN6icu_7810UnicodeSet12nextCapacityEi.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %.not.i.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.n, null
  %narrow.i.not.i.i = select i1 %.not.i.i.i, i1 %i.o, i1 false
  br i1 %narrow.i.not.i.i, label %bb.h, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  store i32 1114112, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i3.i.i, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @uprv_free_78(ptr noundef nonnull %i.t) #20
  store ptr null, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.u, align 8
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i

_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i: ; preds = %bb.i, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not2.i.i = icmp eq ptr %i.w, null
  br i1 %.not2.i.i, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i
  tail call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #20
  br label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit

_ZN6icu_7810UnicodeSet10setToBogusEv.exit:        ; preds = %bb.g, %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.x, align 8
  br label %bb.n

bb.k:                                             ; preds = %_ZN6icu_7810UnicodeSet12nextCapacityEi.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.not10 = icmp eq ptr %i.z, %i.aa
  br i1 %.not10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @uprv_free_78(ptr noundef %i.z) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr %i.j, ptr %i.y, align 8
  store i32 %.0.i, ptr %i.a, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZN6icu_7810UnicodeSet10setToBogusEv.exit, %bb.m, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.m ], [ false, %_ZN6icu_7810UnicodeSet10setToBogusEv.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7810UnicodeSet11swapBuffersEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  store ptr %i.d, ptr %i.a, align 8
  store ptr %i.b, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  store i32 %i.h, ptr %i.e, align 8
  store i32 %i.f, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringERKS1_a(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i16, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp slt i16 %i.c, 0
  %i.e = ashr i16 %i.c, 5
  %i.f = sext i16 %i.e to i32
  %i.g = load i32, ptr %i.b, align 4
  %i.h = select i1 %i.d, i32 %i.g, i32 %i.f
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i32 [ %i.m, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.j = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.07) #20 ; 2 uses
  tail call void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.j, i8 noundef signext %2)
  %i.k = icmp ult i32 %i.j, 65536
  %i.l = select i1 %i.k, i32 1, i32 2
  %i.m = add nuw nsw i32 %i.l, %.07               ; 2 uses
  %i.n = load i16, ptr %i.a, align 8              ; 2 uses
  %i.o = icmp slt i16 %i.n, 0
  %i.p = ashr i16 %i.n, 5
  %i.q = sext i16 %i.p to i32
  %i.r = load i32, ptr %i.b, align 4
  %i.s = select i1 %i.o, i32 %i.r, i32 %i.q
  %i.t = icmp slt i32 %i.m, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !51
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i8 noundef signext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef signext i8 @_ZN6icu_7811ICU_Utility13isUnprintableEi(i32 noundef %1) #20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef signext i8 @_ZN6icu_7811ICU_Utility21shouldAlwaysBeEscapedEi(i32 noundef %1) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi i8 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %.not10 = icmp eq i8 %i.e, 0
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7811ICU_Utility6escapeERNS_13UnicodeStringEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) #20 ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  switch i32 %1, label %bb.h [
    i32 91, label %bb.g
    i32 93, label %bb.g
    i32 45, label %bb.g
    i32 94, label %bb.g
    i32 38, label %bb.g
    i32 92, label %bb.g
    i32 123, label %bb.g
    i32 125, label %bb.g
    i32 58, label %bb.g
    i32 36, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 92, ptr %i.b, align 2
  %i.g = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.h = tail call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %1) #20
  %.not11 = icmp eq i8 %i.h, 0
  br i1 %.not11, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 92, ptr %i.a, align 2
  %i.i = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.j = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) #20 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  ret void
}

declare noundef signext i8 @_ZN6icu_7811ICU_Utility13isUnprintableEi(i32 noundef) local_unnamed_addr #7

declare noundef signext i8 @_ZN6icu_7811ICU_Utility21shouldAlwaysBeEscapedEi(i32 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7811ICU_Utility6escapeERNS_13UnicodeStringEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #7

declare noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, i8 noundef signext %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  tail call void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i8 noundef signext %3)
  %.not = icmp eq i32 %1, %2
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %1, 1
  %i.c = icmp ne i32 %i.b, %2
  %i.d = icmp eq i32 %1, 56319
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 45, ptr %i.a, align 2
  %i.e = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %2, i8 noundef signext %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7810UnicodeSet10_toPatternERNS_13UnicodeStringEa(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %.not33 = icmp eq i8 %2, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %i.h = phi i32 [ %i.d, %.lr.ph ], [ %i.ax, %bb.q ]
  %.02537 = phi i32 [ 0, %.lr.ph ], [ %.126, %bb.q ] ; 2 uses
  %.02736 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.q ] ; 3 uses
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.j = add nsw i32 %.02736, 1                   ; 4 uses
  %i.k = sext i32 %.02736 to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32                     ; 4 uses
  %i.o = and i32 %i.n, 64512
  %i.p = icmp ne i32 %i.o, 55296
  %.not32 = icmp eq i32 %i.j, %i.h
  %or.cond = select i1 %i.p, i1 true, i1 %.not32
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = sext i32 %i.j to i64
  %i.r = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 64512
  %i.v = icmp eq i32 %i.u, 56320
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = add nsw i32 %.02736, 2
  %i.x = shl nuw nsw i32 %i.n, 10
  %i.y = add nsw i32 %i.x, -56613888
  %i.z = add nuw nsw i32 %i.y, %i.t
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.2 = phi i32 [ %i.j, %bb.b ], [ %i.w, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %i.n, %bb.b ], [ %i.z, %bb.d ], [ %i.n, %bb.c ] ; 5 uses
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call noundef signext i8 @_ZN6icu_7811ICU_Utility13isUnprintableEi(i32 noundef %.1) #20
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = tail call noundef signext i8 @_ZN6icu_7811ICU_Utility21shouldAlwaysBeEscapedEi(i32 noundef %.1) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = phi i8 [ %i.aa, %bb.f ], [ %i.ab, %bb.g ]
  %.not34 = icmp eq i8 %i.ac, 0
  br i1 %.not34, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = and i32 %.02537, -2147483647
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.j, label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.j:                                             ; preds = %bb.i
  %i.af = load i16, ptr %i.f, align 8             ; 5 uses
  %i.ag = icmp slt i16 %i.af, 0
  %i.ah = ashr i16 %i.af, 5
  %i.ai = sext i16 %i.ah to i32
  %i.aj = load i32, ptr %i.g, align 4
  %i.ak = select i1 %i.ag, i32 %i.aj, i32 %i.ai   ; 3 uses
  %i.al = add nsw i32 %i.ak, -1                   ; 3 uses
  %i.am = trunc i16 %i.af to i1
  %i.an = icmp eq i32 %i.al, 0
  %or.cond.i = and i1 %i.an, %i.am
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #20
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.l:                                             ; preds = %bb.j
  %.not35 = icmp eq i32 %i.ak, 0
  br i1 %.not35, label %_ZN6icu_7813UnicodeString8truncateEi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = icmp slt i32 %i.ak, 1025
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = and i16 %i.af, 31
  %.tr.i.i.i = trunc i32 %i.al to i16
  %i.aq = shl i16 %.tr.i.i.i, 5
  %i.ar = or disjoint i16 %i.aq, %i.ap
  store i16 %i.ar, ptr %i.f, align 8
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.o:                                             ; preds = %bb.m
  %i.as = or i16 %i.af, -32
  store i16 %i.as, ptr %i.f, align 8
  store i32 %i.al, ptr %i.g, align 4
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

_ZN6icu_7813UnicodeString8truncateEi.exit:        ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.i
  %i.at = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7811ICU_Utility6escapeERNS_13UnicodeStringEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.1) #20 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  %i.au = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.1) #20 ; 0 uses
  %i.av = icmp eq i32 %.1, 92
  %i.aw = add nsw i32 %.02537, 1
  %spec.select = select i1 %i.av, i32 %i.aw, i32 0
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN6icu_7813UnicodeString8truncateEi.exit
  %.126 = phi i32 [ 0, %_ZN6icu_7813UnicodeString8truncateEi.exit ], [ %spec.select, %bb.p ]
  %i.ax = load i32, ptr %i.c, align 8             ; 2 uses
  %i.ay = icmp slt i32 %.2, %i.ax
  br i1 %i.ay, label %bb.b, label %.loopexit, !llvm.loop !52

bb.r:                                             ; preds = %bb.a
  %i.az = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7810UnicodeSet16_generatePatternERNS_13UnicodeStringEa(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %.preheader, %bb.r
  %.0 = phi ptr [ %i.az, %bb.r ], [ %1, %.preheader ], [ %1, %bb.q ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7810UnicodeSet16_generatePatternERNS_13UnicodeStringEa(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca i16, align 2                      ; 4 uses
  %i.g = alloca i16, align 2                      ; 4 uses
  %i.h = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i16 91, ptr %i.h, align 2
  %i.i = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.h, i32 noundef 0, i32 noundef 1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4              ; 5 uses
  %i.l = and i32 %i.k, -2                         ; 3 uses
  %i.m = icmp sgt i32 %i.k, 3
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 0
  %i.r = icmp eq i32 %i.l, %i.k
  %or.cond56 = and i1 %i.r, %i.q
  br i1 %or.cond56, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %.not65 = icmp eq i32 %i.v, 0
  br i1 %.not65, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %bb.d

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread: ; preds = %bb.c, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i16 94, ptr %i.g, align 2
  %i.w = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.g, i32 noundef 0, i32 noundef 1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.x = add nsw i32 %i.k, -1
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit, %bb.b, %bb.a
  %.049 = phi i32 [ %i.k, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit ], [ %i.x, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread ], [ %i.l, %bb.a ], [ %i.l, %bb.b ] ; 4 uses
  %.048 = phi i32 [ 0, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit ], [ 1, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.y = icmp slt i32 %.048, %.049
  br i1 %i.y, label %.lr.ph74, label %._crit_edge

.lr.ph74:                                         ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = zext nneg i32 %.049 to i64              ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph74, %.loopexit66
  %.173 = phi i32 [ %.048, %.lr.ph74 ], [ %.4, %.loopexit66 ] ; 4 uses
  %i.ab = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ac = sext i32 %.173 to i64                   ; 5 uses
  %i.ad = getelementptr [4 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4            ; 3 uses
  %i.ag = add i32 %i.af, -55297
  %or.cond = icmp ult i32 %i.ag, 1024
  br i1 %or.cond, label %.preheader67.preheader, label %bb.f

.preheader67.preheader:                           ; preds = %bb.e
  %i.ah = add i32 %.173, 2
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %indvars.iv.next97 = add nsw i64 %i.ac, 2       ; 3 uses
  %i.aj = icmp slt i64 %indvars.iv.next97, %i.aa
  br i1 %i.aj, label %.lr.ph101, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ak = add nsw i32 %i.af, -1                   ; 2 uses
  %i.al = load i32, ptr %i.ad, align 4            ; 4 uses
  call void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.al, i8 noundef signext %2)
  %.not.i57 = icmp eq i32 %i.al, %i.ak
  br i1 %.not.i57, label %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = add i32 %i.af, -2
  %i.an = icmp ne i32 %i.al, %i.am
  %i.ao = icmp eq i32 %i.al, 56319
  %or.cond.i = or i1 %i.ao, %i.an
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i16 45, ptr %i.f, align 2
  %i.ap = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.f, i32 noundef 0, i32 noundef 1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.ak, i8 noundef signext %2)
  br label %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit

_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit: ; preds = %bb.f, %bb.i
  %i.aq = add nsw i32 %.173, 2
  br label %.loopexit66

.preheader67:                                     ; preds = %.lr.ph101
  %indvars.iv.next79 = add i64 %indvars.iv7898, 2 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv.next100, 2 ; 3 uses
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ar, label %.lr.ph101, label %.critedge, !llvm.loop !53

.lr.ph101:                                        ; preds = %.preheader67.preheader, %.preheader67
  %indvars.iv.next100 = phi i64 [ %indvars.iv.next, %.preheader67 ], [ %indvars.iv.next97, %.preheader67.preheader ] ; 5 uses
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %.preheader67 ], [ %i.ac, %.preheader67.preheader ]
  %indvars.iv7898 = phi i64 [ %indvars.iv.next79, %.preheader67 ], [ %i.ai, %.preheader67.preheader ] ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %indvars.iv.next100
  %i.at = load i32, ptr %i.as, align 4
  %i.au = icmp slt i32 %i.at, 56320
  br i1 %i.au, label %.preheader67, label %..critedge_crit_edge, !llvm.loop !53

..critedge_crit_edge:                             ; preds = %.lr.ph101
  br label %.critedge, !llvm.loop !53

.critedge:                                        ; preds = %.preheader67, %..critedge_crit_edge, %.preheader67.preheader
  %indvars.iv78.lcssa = phi i64 [ %i.ai, %.preheader67.preheader ], [ %indvars.iv7898, %..critedge_crit_edge ], [ %indvars.iv.next79, %.preheader67 ]
  %indvars.iv.lcssa = phi i64 [ %i.ac, %.preheader67.preheader ], [ %indvars.iv99, %..critedge_crit_edge ], [ %indvars.iv.next100, %.preheader67 ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next97, %.preheader67.preheader ], [ %indvars.iv.next100, %..critedge_crit_edge ], [ %indvars.iv.next, %.preheader67 ]
  %i.av = trunc nsw i64 %indvars.iv.next.lcssa to i32 ; 3 uses
  %i.aw = icmp sgt i32 %.049, %i.av
  br i1 %i.aw, label %.lr.ph, label %.critedge3

.lr.ph:                                           ; preds = %.critedge, %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit60
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit60 ], [ %indvars.iv78.lcssa, %.critedge ] ; 3 uses
  %i.ax = load ptr, ptr %i.z, align 8
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %indvars.iv80 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4            ; 5 uses
  %i.ba = icmp slt i32 %i.az, 57344
  br i1 %i.ba, label %bb.j, label %.critedge3.loopexit

bb.j:                                             ; preds = %.lr.ph
  %i.bb = getelementptr i8, ptr %i.ay, i64 4
  %i.bc = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  call void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.az, i8 noundef signext %2)
  %.not.i58 = icmp eq i32 %i.az, %i.bd
  br i1 %.not.i58, label %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit60, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = add i32 %i.bc, -2
  %i.bf = icmp ne i32 %i.az, %i.be
  %i.bg = icmp eq i32 %i.az, 56319
  %or.cond.i59 = or i1 %i.bg, %i.bf
  br i1 %or.cond.i59, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 45, ptr %i.e, align 2
  %i.bh = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.bd, i8 noundef signext %2)
  br label %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit60

_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit60: ; preds = %bb.j, %bb.m
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 2 ; 3 uses
  %i.bi = icmp slt i64 %indvars.iv.next81, %i.aa
  br i1 %i.bi, label %.lr.ph, label %.critedge3.loopexit, !llvm.loop !54

.critedge3.loopexit:                              ; preds = %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit60, %.lr.ph
  %.3.lcssa.ph.in = phi i64 [ %indvars.iv80, %.lr.ph ], [ %indvars.iv.next81, %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit60 ]
  %.3.lcssa.ph = trunc i64 %.3.lcssa.ph.in to i32
  br label %.critedge3

.critedge3:                                       ; preds = %.critedge3.loopexit, %.critedge
  %.3.lcssa = phi i32 [ %i.av, %.critedge ], [ %.3.lcssa.ph, %.critedge3.loopexit ] ; 2 uses
  %i.bj = icmp slt i32 %.173, %i.av
  br i1 %i.bj, label %.lr.ph72, label %.loopexit66

.lr.ph72:                                         ; preds = %.critedge3, %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit63
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit63 ], [ %i.ac, %.critedge3 ] ; 3 uses
  %i.bk = load ptr, ptr %i.z, align 8
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %indvars.iv83 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4            ; 4 uses
  %i.bn = getelementptr i8, ptr %i.bl, i64 4
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  call void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.bm, i8 noundef signext %2)
  %.not.i61 = icmp eq i32 %i.bm, %i.bp
  br i1 %.not.i61, label %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit63, label %bb.n

bb.n:                                             ; preds = %.lr.ph72
  %i.bq = add i32 %i.bo, -2
  %i.br = icmp ne i32 %i.bm, %i.bq
  %i.bs = icmp eq i32 %i.bm, 56319
  %or.cond.i62 = or i1 %i.bs, %i.br
  br i1 %or.cond.i62, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 45, ptr %i.d, align 2
  %i.bt = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.bp, i8 noundef signext %2)
  br label %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit63

_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit63: ; preds = %.lr.ph72, %bb.p
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, 2
  %i.bu = icmp slt i64 %indvars.iv83, %indvars.iv.lcssa
  br i1 %i.bu, label %.lr.ph72, label %.loopexit66, !llvm.loop !55

.loopexit66:                                      ; preds = %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit63, %.critedge3, %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit
  %.4 = phi i32 [ %i.aq, %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit ], [ %.3.lcssa, %.critedge3 ], [ %.3.lcssa, %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit63 ] ; 2 uses
  %i.bv = icmp slt i32 %.4, %.049
  br i1 %i.bv, label %bb.e, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %.loopexit66, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not55 = icmp eq ptr %i.bx, null
  br i1 %.not55, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph76, label %.loopexit

.lr.ph76:                                         ; preds = %.preheader, %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringERKS1_a.exit
  %.075 = phi i32 [ %i.cz, %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringERKS1_a.exit ], [ 0, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 123, ptr %i.c, align 2
  %i.cb = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, i32 noundef %.075) #20 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 12 ; 2 uses
  %i.cg = load i16, ptr %i.ce, align 8            ; 2 uses
  %i.ch = icmp slt i16 %i.cg, 0
  %i.ci = ashr i16 %i.cg, 5
  %i.cj = sext i16 %i.ci to i32
  %i.ck = load i32, ptr %i.cf, align 4
  %i.cl = select i1 %i.ch, i32 %i.ck, i32 %i.cj
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringERKS1_a.exit

.lr.ph.i:                                         ; preds = %.lr.ph76, %.lr.ph.i
  %.07.i = phi i32 [ %i.cq, %.lr.ph.i ], [ 0, %.lr.ph76 ] ; 2 uses
  %i.cn = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.cd, i32 noundef %.07.i) #20 ; 2 uses
  call void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.cn, i8 noundef signext %2)
  %i.co = icmp ult i32 %i.cn, 65536
  %i.cp = select i1 %i.co, i32 1, i32 2
  %i.cq = add nuw nsw i32 %i.cp, %.07.i           ; 2 uses
  %i.cr = load i16, ptr %i.ce, align 8            ; 2 uses
  %i.cs = icmp slt i16 %i.cr, 0
  %i.ct = ashr i16 %i.cr, 5
  %i.cu = sext i16 %i.ct to i32
  %i.cv = load i32, ptr %i.cf, align 4
  %i.cw = select i1 %i.cs, i32 %i.cv, i32 %i.cu
  %i.cx = icmp slt i32 %i.cq, %i.cw
  br i1 %i.cx, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringERKS1_a.exit, !llvm.loop !51

_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringERKS1_a.exit: ; preds = %.lr.ph.i, %.lr.ph76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 125, ptr %i.b, align 2
  %i.cy = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cz = add nuw nsw i32 %.075, 1                ; 2 uses
  %i.da = load ptr, ptr %i.bw, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = icmp slt i32 %i.cz, %i.dc
  br i1 %i.dd, label %.lr.ph76, label %.loopexit, !llvm.loop !57

.loopexit:                                        ; preds = %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringERKS1_a.exit, %.preheader, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 93, ptr %i.a, align 2
  %i.de = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.de
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7810UnicodeSet9toPatternERNS_13UnicodeStringEa(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8              ; 4 uses
  %i.c = trunc i16 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #20
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp slt i16 %i.b, 0
  %i.e = ashr i16 %i.b, 5
  %i.f = sext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = select i1 %i.d, i32 %i.h, i32 %i.f
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %_ZN6icu_7813UnicodeString8truncateEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = and i16 %i.b, 30
  store i16 %i.j, ptr %i.a, align 8
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

_ZN6icu_7813UnicodeString8truncateEi.exit:        ; preds = %bb.b, %bb.c, %bb.d
  %i.k = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7810UnicodeSet10_toPatternERNS_13UnicodeStringEa(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2)
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @_ZThn8_NK6icu_7810UnicodeSet9toPatternERNS_13UnicodeStringEa(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8              ; 4 uses
  %i.c = trunc i16 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #20
  br label %_ZNK6icu_7810UnicodeSet9toPatternERNS_13UnicodeStringEa.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp slt i16 %i.b, 0
  %i.e = ashr i16 %i.b, 5
  %i.f = sext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = select i1 %i.d, i32 %i.h, i32 %i.f
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZNK6icu_7810UnicodeSet9toPatternERNS_13UnicodeStringEa.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = and i16 %i.b, 30
  store i16 %i.j, ptr %i.a, align 8
  br label %_ZNK6icu_7810UnicodeSet9toPatternERNS_13UnicodeStringEa.exit

_ZNK6icu_7810UnicodeSet9toPatternERNS_13UnicodeStringEa.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.k = getelementptr inbounds i8, ptr %0, i64 -8
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7810UnicodeSet10_toPatternERNS_13UnicodeStringEa(ptr noundef nonnull readonly align 8 dereferenceable(200) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2)
  ret ptr %i.l
}

declare ptr @u_memcpy_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN6icu_7810UnicodeSet6freezeEv(ptr noundef nonnull returned align 8 dereferenceable(200) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, 1
  %.not5 = icmp eq i8 %i.h, 0
  br i1 %.not5, label %bb.c, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread.thread

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet7compactEv(ptr noundef nonnull align 8 dereferenceable(200) %0) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i8 = icmp eq ptr %i.k, null
  br i1 %.not.i8, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %i.n = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 392) #20 ; 6 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.c, align 8
  %i.p = load ptr, ptr %i.a, align 8
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.f, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  store i32 1114112, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i3.i.i, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @uprv_free_78(ptr noundef nonnull %i.u) #20
  store ptr null, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.v, align 8
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i

_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i: ; preds = %bb.g, %bb.f
  %i.w = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not2.i.i = icmp eq ptr %i.w, null
  br i1 %.not2.i.i, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i
  tail call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #20
  br label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit

_ZN6icu_7810UnicodeSet10setToBogusEv.exit:        ; preds = %bb.e, %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i, %bb.h
  store i8 1, ptr %i.f, align 8
  br label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread.thread

bb.i:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.j, align 8
  tail call void @_ZN6icu_7820UnicodeSetStringSpanC1ERKNS_10UnicodeSetERKNS_7UVectorEj(ptr noundef nonnull align 8 dereferenceable(392) %i.n, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i32 noundef 63) #20
  store ptr %i.n, ptr %i.c, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 252
  %i.z = load i32, ptr %i.y, align 4
  %.not13 = icmp eq i32 %i.z, 0
  br i1 %.not13, label %.thread10, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread.thread

.thread10:                                        ; preds = %bb.i
  tail call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %i.n) #20
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.n) #20
  store ptr null, ptr %i.c, align 8
  br label %bb.j

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread: ; preds = %bb.c, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %.pr.pr = load ptr, ptr %i.c, align 8
  %i.aa = icmp eq ptr %.pr.pr, null
  br i1 %i.aa, label %bb.j, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread.thread

bb.j:                                             ; preds = %.thread10, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread
  %i.ab = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 872) #20 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4
  tail call void @_ZN6icu_786BMPSetC1EPKii(ptr noundef nonnull align 8 dereferenceable(868) %i.ab, ptr noundef %i.ae, i32 noundef %i.ag) #20
  store ptr %i.ab, ptr %i.a, align 8
  br label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread.thread

bb.l:                                             ; preds = %bb.j
  store ptr null, ptr %i.a, align 8
  tail call void @_ZN6icu_7810UnicodeSet10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread.thread

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread.thread: ; preds = %bb.i, %bb.k, %bb.a, %bb.b, %bb.l, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, %_ZN6icu_7810UnicodeSet10setToBogusEv.exit
  ret ptr %0
}

declare void @_ZN6icu_7820UnicodeSetStringSpanC1ERKNS_10UnicodeSetERKNS_7UVectorEj(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) unnamed_addr #7

declare void @_ZN6icu_786BMPSetC1EPKii(ptr noundef nonnull align 8 dereferenceable(868), ptr noundef, i32 noundef) unnamed_addr #7

declare noundef ptr @_ZNK6icu_786BMPSet4spanEPKDsS2_17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(868), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @u_strlen_78(ptr noundef) local_unnamed_addr #7
end_hunk_3
begin_hunk_4_@_ZNK6icu_7820UnicodeSetStringSpan4spanEPKDsi17USetSpanCondition
; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7810UnicodeSet8spanBackEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeSetStringSpan", align 8 ; 8 uses
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread55, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %2 to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.d
  %i.f = tail call noundef ptr @_ZNK6icu_786BMPSet8spanBackEPKDsS2_17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(868) %i.c, ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef %3) #20
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 1
  %i.k = trunc i64 %i.j to i32
  br label %.thread53

bb.d:                                             ; preds = %bb.a
  %i.l = icmp slt i32 %2, 0
  br i1 %i.l, label %bb.e, label %.thread53

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @u_strlen_78(ptr noundef %1) #20 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.thread53, label %.thread55

.thread55:                                        ; preds = %bb.b, %bb.e
  %.03957 = phi i32 [ %i.m, %bb.e ], [ %2, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not47 = icmp eq ptr %i.p, null
  br i1 %.not47, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread55
  %i.q = tail call noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan8spanBackEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392) %i.p, ptr noundef %1, i32 noundef %.03957, i32 noundef %3) #20
  br label %.thread53

bb.g:                                             ; preds = %.thread55
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %.not61 = icmp eq i32 %i.u, 0
  br i1 %.not61, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %i.v = icmp eq i32 %3, 0
  %i.w = select i1 %i.v, i32 25, i32 26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN6icu_7820UnicodeSetStringSpanC1ERKNS_10UnicodeSetERKNS_7UVectorEj(ptr noundef nonnull align 8 dereferenceable(392) %4, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i32 noundef %i.w) #20
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 252
  %i.y = load i32, ptr %i.x, align 4
  %.not62 = icmp eq i32 %i.y, 0
  br i1 %.not62, label %.thread59, label %bb.i

.thread59:                                        ; preds = %bb.h
  call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.z = call noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan8spanBackEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392) %4, ptr noundef %1, i32 noundef %.03957, i32 noundef %3) #20
  call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.thread53

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread: ; preds = %bb.g, %.thread59, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %.not50 = icmp ne i32 %3, 0
  %spec.store.select = zext i1 %.not50 to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.j

bb.j:                                             ; preds = %bb.r, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread
  %.034 = phi i32 [ %.03957, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread ], [ %.3, %bb.r ] ; 5 uses
  %i.ab = add nsw i32 %.034, -1                   ; 3 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = zext i16 %i.ae to i32                   ; 4 uses
  %i.ag = and i32 %i.af, 64512
  %i.ah = icmp eq i32 %i.ag, 56320
  %i.ai = icmp sgt i32 %.034, 1
  %or.cond = and i1 %i.ai, %i.ah
  br i1 %or.cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aj = zext nneg i32 %.034 to i64
  %i.ak = getelementptr [2 x i8], ptr %1, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -4
  %i.am = load i16, ptr %i.al, align 2
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %i.ao = and i32 %i.an, 64512
  %i.ap = icmp eq i32 %i.ao, 55296
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = add nsw i32 %.034, -2
  %i.ar = shl nuw nsw i32 %i.an, 10
  %i.as = add nuw nsw i32 %i.af, -56613888
  %i.at = add nsw i32 %i.as, %i.ar
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.3 = phi i32 [ %i.ab, %bb.j ], [ %i.aq, %bb.l ], [ %i.ab, %bb.k ] ; 3 uses
  %.137 = phi i32 [ %i.af, %bb.j ], [ %i.at, %bb.l ], [ %i.af, %bb.k ] ; 5 uses
  %i.au = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not13.i = icmp eq ptr %i.au, null
  br i1 %.not13.i, label %.lr.ph.i, label %tailrecurse._crit_edge.i

tailrecurse.i:                                    ; preds = %.lr.ph.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not.i52 = icmp eq ptr %i.ax, null
  br i1 %.not.i52, label %.lr.ph.i, label %tailrecurse._crit_edge.i

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %bb.m
  %.lcssa.i = phi ptr [ %i.au, %bb.m ], [ %i.ax, %tailrecurse.i ] ; 2 uses
  %i.ay = load ptr, ptr %.lcssa.i, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef signext i8 %i.ba(ptr noundef nonnull align 8 dereferenceable(868) %.lcssa.i, i32 noundef %.137) #20, !inline_history !16
  br label %_ZNK6icu_7810UnicodeSet8containsEi.exit

.lr.ph.i:                                         ; preds = %bb.m, %tailrecurse.i
  %.tr14.i = phi ptr [ %i.av, %tailrecurse.i ], [ %0, %bb.m ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr14.i, i64 88
  %i.bd = load ptr, ptr %i.bc, align 8            ; 3 uses
  %.not9.i = icmp eq ptr %i.bd, null
  br i1 %.not9.i, label %bb.n, label %tailrecurse.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.be = icmp sgt i32 %.137, 1114111
  br i1 %i.be, label %_ZNK6icu_7810UnicodeSet8containsEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.tr14.i, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8            ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = icmp slt i32 %.137, %i.bh
  br i1 %i.bi, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr14.i, i64 28
  %i.bk = load i32, ptr %i.bj, align 4            ; 3 uses
  %i.bl = add nsw i32 %i.bk, -1                   ; 4 uses
  %i.bm = icmp slt i32 %i.bk, 2
  br i1 %i.bm, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = zext nneg i32 %i.bk to i64
  %i.bo = getelementptr [4 x i8], ptr %i.bg, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 -8
  %i.bq = load i32, ptr %i.bp, align 4
  %.not.i.i = icmp sge i32 %.137, %i.bq
  %i.br = lshr i32 %i.bl, 1                       ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.bs
  br i1 %or.cond.i.i, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %.lr.ph.i.i
  %i.bt = phi i32 [ %i.bz, %.lr.ph.i.i ], [ %i.br, %bb.q ] ; 3 uses
  %.01830.i.i = phi i32 [ %..018.i.i, %.lr.ph.i.i ], [ %i.bl, %bb.q ]
  %.02029.i.i = phi i32 [ %.020..i.i, %.lr.ph.i.i ], [ 0, %bb.q ]
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = icmp slt i32 %.137, %i.bw               ; 2 uses
  %.020..i.i = select i1 %i.bx, i32 %.02029.i.i, i32 %i.bt ; 3 uses
  %..018.i.i = select i1 %i.bx, i32 %i.bt, i32 %.01830.i.i ; 3 uses
  %i.by = add nuw nsw i32 %..018.i.i, %.020..i.i
  %i.bz = lshr i32 %i.by, 1                       ; 2 uses
  %i.ca = icmp eq i32 %i.bz, %.020..i.i
  br i1 %i.ca, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %.lr.ph.i.i

_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i:  ; preds = %.lr.ph.i.i, %bb.q, %bb.p, %bb.o
  %.1.i.i = phi i32 [ 0, %bb.o ], [ %i.bl, %bb.p ], [ %i.bl, %bb.q ], [ %..018.i.i, %.lr.ph.i.i ]
  %i.cb = trunc i32 %.1.i.i to i8
  %i.cc = and i8 %i.cb, 1
  br label %_ZNK6icu_7810UnicodeSet8containsEi.exit

_ZNK6icu_7810UnicodeSet8containsEi.exit:          ; preds = %tailrecurse._crit_edge.i, %bb.n, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i
  %.0.i = phi i8 [ %i.bb, %tailrecurse._crit_edge.i ], [ 0, %bb.n ], [ %i.cc, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i ]
  %i.cd = sext i8 %.0.i to i32
  %.not51 = icmp eq i32 %spec.store.select, %i.cd
  br i1 %.not51, label %bb.r, label %.thread53

bb.r:                                             ; preds = %_ZNK6icu_7810UnicodeSet8containsEi.exit
  %i.ce = icmp sgt i32 %.3, 0
  br i1 %i.ce, label %bb.j, label %.thread53, !llvm.loop !58

.thread53:                                        ; preds = %bb.r, %_ZNK6icu_7810UnicodeSet8containsEi.exit, %bb.d, %bb.i, %bb.e, %bb.f, %bb.c
  %.1 = phi i32 [ %i.k, %bb.c ], [ %i.z, %bb.i ], [ %i.q, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ %.3, %bb.r ], [ %.034, %_ZNK6icu_7810UnicodeSet8containsEi.exit ]
  ret i32 %.1
}

declare noundef ptr @_ZNK6icu_786BMPSet8spanBackEPKDsS2_17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(868), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan8spanBackEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7810UnicodeSet8spanUTF8EPKci17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeSetStringSpan", align 8 ; 8 uses
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread95, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef ptr @_ZNK6icu_786BMPSet8spanUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(868) %i.c, ptr noundef %1, i32 noundef %2, i32 noundef %3) #20
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  br label %.thread93

bb.d:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %2, 0
  br i1 %i.i, label %bb.e, label %.thread93

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.thread93, label %.thread95

.thread95:                                        ; preds = %bb.b, %bb.e
  %.06797 = phi i32 [ %i.k, %bb.e ], [ %2, %bb.b ] ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not82 = icmp eq ptr %i.n, null
  br i1 %.not82, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread95
  %i.o = tail call noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan8spanUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392) %i.n, ptr noundef %1, i32 noundef %.06797, i32 noundef %3) #20
  br label %.thread93

bb.g:                                             ; preds = %.thread95
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8
  %.not101 = icmp eq i32 %i.s, 0
  br i1 %.not101, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %i.t = icmp eq i32 %3, 0
  %i.u = select i1 %i.t, i32 37, i32 38
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN6icu_7820UnicodeSetStringSpanC1ERKNS_10UnicodeSetERKNS_7UVectorEj(ptr noundef nonnull align 8 dereferenceable(392) %4, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef %i.u) #20
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.w = load i32, ptr %i.v, align 8
  %.not102 = icmp eq i32 %i.w, 0
  br i1 %.not102, label %.thread99, label %bb.i

.thread99:                                        ; preds = %bb.h
  call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = call noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan8spanUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392) %4, ptr noundef %1, i32 noundef %.06797, i32 noundef %3) #20
  call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.thread93

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread: ; preds = %bb.g, %.thread99, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %.not85 = icmp ne i32 %3, 0
  %spec.store.select = zext i1 %.not85 to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.j

bb.j:                                             ; preds = %bb.ad, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread
  %.057 = phi i32 [ 0, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread ], [ %.5, %bb.ad ] ; 4 uses
  %i.z = add nsw i32 %.057, 1                     ; 10 uses
  %i.aa = sext i32 %.057 to i64
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1             ; 6 uses
  %i.ad = zext i8 %i.ac to i32                    ; 4 uses
  %i.ae = icmp sgt i8 %i.ac, -1
  br i1 %i.ae, label %bb.y, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not86 = icmp eq i32 %i.z, %.06797
  br i1 %.not86, label %bb.y, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = icmp samesign ugt i8 %i.ac, -33
  br i1 %i.af, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.ag = icmp samesign ult i8 %i.ac, -16
  br i1 %i.ag, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ah = and i32 %i.ad, 15                       ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @.str, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = sext i32 %i.z to i64
  %i.an = getelementptr inbounds i8, ptr %1, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1             ; 2 uses
  %i.ap = lshr i8 %i.ao, 5
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 1, %i.aq
  %i.as = and i32 %i.ar, %i.al
  %.not89 = icmp eq i32 %i.as, 0
  br i1 %.not89, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = and i8 %i.ao, 63
  br label %bb.t

bb.p:                                             ; preds = %bb.m
  %i.au = add nsw i32 %i.ad, -240                 ; 2 uses
  %i.av = icmp samesign ult i8 %i.ac, -11
  br i1 %i.av, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.aw = sext i32 %i.z to i64
  %i.ax = getelementptr inbounds i8, ptr %1, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = lshr i32 %i.az, 4
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = sext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 1, %i.au
  %i.bg = and i32 %i.bf, %i.be
  %.not87 = icmp eq i32 %i.bg, 0
  br i1 %.not87, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = add nsw i32 %.057, 2                    ; 4 uses
  %.not88 = icmp eq i32 %i.bh, %.06797
  br i1 %.not88, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = shl nuw nsw i32 %i.au, 6
  %i.bj = and i32 %i.az, 63
  %i.bk = or disjoint i32 %i.bj, %i.bi
  %i.bl = sext i32 %i.bh to i64
  %i.bm = getelementptr inbounds i8, ptr %1, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = xor i8 %i.bn, -128                      ; 2 uses
  %i.bp = icmp ult i8 %i.bo, 64
  br i1 %i.bp, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.o, %bb.s
  %.060 = phi i32 [ %i.ah, %bb.o ], [ %i.bk, %bb.s ]
  %.159 = phi i32 [ %i.z, %bb.o ], [ %i.bh, %bb.s ]
  %.0 = phi i8 [ %i.at, %bb.o ], [ %i.bo, %bb.s ]
  %i.bq = shl nuw nsw i32 %.060, 6
  %i.br = zext nneg i8 %.0 to i32
  %i.bs = or disjoint i32 %i.bq, %i.br
  %i.bt = add nsw i32 %.159, 1                    ; 2 uses
  %.not90 = icmp eq i32 %i.bt, %.06797
  br i1 %.not90, label %bb.y, label %bb.w

bb.u:                                             ; preds = %bb.l
  %i.bu = icmp samesign ugt i8 %i.ac, -63
  br i1 %i.bu, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bv = and i32 %i.ad, 31
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.161 = phi i32 [ %i.bs, %bb.t ], [ %i.bv, %bb.v ]
  %.2 = phi i32 [ %i.bt, %bb.t ], [ %i.z, %bb.v ] ; 3 uses
  %i.bw = sext i32 %.2 to i64
  %i.bx = getelementptr inbounds i8, ptr %1, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = xor i8 %i.by, -128                      ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 64
  br i1 %i.ca, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cb = zext nneg i8 %i.bz to i32
  %i.cc = shl nuw nsw i32 %.161, 6
  %i.cd = or disjoint i32 %i.cc, %i.cb
  %i.ce = add nsw i32 %.2, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n, %bb.k, %bb.j
  %.363 = phi i32 [ %i.ad, %bb.j ], [ %i.cd, %bb.x ], [ 65533, %bb.w ], [ 65533, %bb.u ], [ 65533, %bb.t ], [ 65533, %bb.s ], [ 65533, %bb.r ], [ 65533, %bb.q ], [ 65533, %bb.p ], [ 65533, %bb.n ], [ 65533, %bb.k ] ; 5 uses
  %.5 = phi i32 [ %i.z, %bb.j ], [ %i.ce, %bb.x ], [ %.2, %bb.w ], [ %i.z, %bb.u ], [ %.06797, %bb.t ], [ %i.bh, %bb.s ], [ %.06797, %bb.r ], [ %i.z, %bb.q ], [ %i.z, %bb.p ], [ %i.z, %bb.n ], [ %.06797, %bb.k ] ; 3 uses
  %i.cf = load ptr, ptr %i.y, align 8             ; 2 uses
  %.not13.i = icmp eq ptr %i.cf, null
  br i1 %.not13.i, label %.lr.ph.i, label %tailrecurse._crit_edge.i

tailrecurse.i:                                    ; preds = %.lr.ph.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %.not.i92 = icmp eq ptr %i.ci, null
  br i1 %.not.i92, label %.lr.ph.i, label %tailrecurse._crit_edge.i

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %bb.y
  %.lcssa.i = phi ptr [ %i.cf, %bb.y ], [ %i.ci, %tailrecurse.i ] ; 2 uses
  %i.cj = load ptr, ptr %.lcssa.i, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef signext i8 %i.cl(ptr noundef nonnull align 8 dereferenceable(868) %.lcssa.i, i32 noundef %.363) #20, !inline_history !16
  br label %_ZNK6icu_7810UnicodeSet8containsEi.exit

.lr.ph.i:                                         ; preds = %bb.y, %tailrecurse.i
  %.tr14.i = phi ptr [ %i.cg, %tailrecurse.i ], [ %0, %bb.y ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr14.i, i64 88
  %i.co = load ptr, ptr %i.cn, align 8            ; 3 uses
  %.not9.i = icmp eq ptr %i.co, null
  br i1 %.not9.i, label %bb.z, label %tailrecurse.i

bb.z:                                             ; preds = %.lr.ph.i
  %i.cp = icmp sgt i32 %.363, 1114111
  br i1 %i.cp, label %_ZNK6icu_7810UnicodeSet8containsEi.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr14.i, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8            ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = icmp slt i32 %.363, %i.cs
  br i1 %i.ct, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cu = getelementptr inbounds nuw i8, ptr %.tr14.i, i64 28
  %i.cv = load i32, ptr %i.cu, align 4            ; 3 uses
  %i.cw = add nsw i32 %i.cv, -1                   ; 4 uses
  %i.cx = icmp slt i32 %i.cv, 2
  br i1 %i.cx, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cy = zext nneg i32 %i.cv to i64
  %i.cz = getelementptr [4 x i8], ptr %i.cr, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 -8
  %i.db = load i32, ptr %i.da, align 4
  %.not.i.i = icmp sge i32 %.363, %i.db
  %i.dc = lshr i32 %i.cw, 1                       ; 2 uses
  %i.dd = icmp eq i32 %i.dc, 0
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.dd
  br i1 %or.cond.i.i, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac, %.lr.ph.i.i
  %i.de = phi i32 [ %i.dk, %.lr.ph.i.i ], [ %i.dc, %bb.ac ] ; 3 uses
  %.01830.i.i = phi i32 [ %..018.i.i, %.lr.ph.i.i ], [ %i.cw, %bb.ac ]
  %.02029.i.i = phi i32 [ %.020..i.i, %.lr.ph.i.i ], [ 0, %bb.ac ]
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = icmp slt i32 %.363, %i.dh               ; 2 uses
  %.020..i.i = select i1 %i.di, i32 %.02029.i.i, i32 %i.de ; 3 uses
  %..018.i.i = select i1 %i.di, i32 %i.de, i32 %.01830.i.i ; 3 uses
  %i.dj = add nuw nsw i32 %..018.i.i, %.020..i.i
  %i.dk = lshr i32 %i.dj, 1                       ; 2 uses
  %i.dl = icmp eq i32 %i.dk, %.020..i.i
  br i1 %i.dl, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %.lr.ph.i.i

_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i:  ; preds = %.lr.ph.i.i, %bb.ac, %bb.ab, %bb.aa
  %.1.i.i = phi i32 [ 0, %bb.aa ], [ %i.cw, %bb.ab ], [ %i.cw, %bb.ac ], [ %..018.i.i, %.lr.ph.i.i ]
  %i.dm = trunc i32 %.1.i.i to i8
  %i.dn = and i8 %i.dm, 1
  br label %_ZNK6icu_7810UnicodeSet8containsEi.exit

_ZNK6icu_7810UnicodeSet8containsEi.exit:          ; preds = %tailrecurse._crit_edge.i, %bb.z, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i
  %.0.i = phi i8 [ %i.cm, %tailrecurse._crit_edge.i ], [ 0, %bb.z ], [ %i.dn, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i ]
  %i.do = sext i8 %.0.i to i32
  %.not91 = icmp eq i32 %spec.store.select, %i.do
  br i1 %.not91, label %bb.ad, label %.thread93

bb.ad:                                            ; preds = %_ZNK6icu_7810UnicodeSet8containsEi.exit
  %i.dp = icmp slt i32 %.5, %.06797
  br i1 %i.dp, label %bb.j, label %.thread93, !llvm.loop !59

.thread93:                                        ; preds = %bb.ad, %_ZNK6icu_7810UnicodeSet8containsEi.exit, %bb.d, %bb.i, %bb.e, %bb.f, %bb.c
  %.166 = phi i32 [ %i.h, %bb.c ], [ %i.x, %bb.i ], [ %i.o, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ %.5, %bb.ad ], [ %.057, %_ZNK6icu_7810UnicodeSet8containsEi.exit ]
  ret i32 %.166
}

declare noundef ptr @_ZNK6icu_786BMPSet8spanUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(868), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

declare noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan8spanUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7810UnicodeSet12spanBackUTF8EPKci17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %4 = alloca %"class.icu_78::UnicodeSetStringSpan", align 8 ; 8 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef i32 @_ZNK6icu_786BMPSet12spanBackUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(868) %i.d, ptr noundef %1, i32 noundef %2, i32 noundef %3) #20
  br label %.thread36

bb.d:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %2, 0
  br i1 %i.f, label %.thread, label %.thread36

.thread:                                          ; preds = %bb.d
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.thread36, label %.thread.thread

.thread.thread:                                   ; preds = %bb.b, %.thread
  %i.j = phi i32 [ %i.h, %.thread ], [ %2, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not30 = icmp eq ptr %i.l, null
  br i1 %.not30, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread.thread
  %i.m = tail call noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan12spanBackUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392) %i.l, ptr noundef %1, i32 noundef %i.j, i32 noundef %3) #20
  br label %.thread36

bb.f:                                             ; preds = %.thread.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %.not40 = icmp eq i32 %i.q, 0
  br i1 %.not40, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %i.r = icmp eq i32 %3, 0
  %i.s = select i1 %i.r, i32 21, i32 22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN6icu_7820UnicodeSetStringSpanC1ERKNS_10UnicodeSetERKNS_7UVectorEj(ptr noundef nonnull align 8 dereferenceable(392) %4, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i32 noundef %i.s) #20
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.u = load i32, ptr %i.t, align 8
  %.not41 = icmp eq i32 %i.u, 0
  br i1 %.not41, label %.thread38, label %bb.h

.thread38:                                        ; preds = %bb.g
  call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.v = call noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan12spanBackUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392) %4, ptr noundef %1, i32 noundef %i.j, i32 noundef %3) #20
  call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.thread36

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread: ; preds = %bb.f, %.thread38, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %.not33 = icmp ne i32 %3, 0
  %spec.store.select = zext i1 %.not33 to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.i

bb.i:                                             ; preds = %bb.p, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread
  %i.x = phi i32 [ %i.j, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread ], [ %i.bp, %bb.p ] ; 2 uses
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.a, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %1, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = icmp sgt i8 %i.ab, -1
  br i1 %i.ad, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = call i32 @utf8_prevCharSafeBody_78(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef %i.ac, i8 noundef signext -3) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.020 = phi i32 [ %i.ac, %bb.i ], [ %i.ae, %bb.j ] ; 5 uses
  %i.af = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not13.i = icmp eq ptr %i.af, null
  br i1 %.not13.i, label %.lr.ph.i, label %tailrecurse._crit_edge.i

tailrecurse.i:                                    ; preds = %.lr.ph.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i35 = icmp eq ptr %i.ai, null
  br i1 %.not.i35, label %.lr.ph.i, label %tailrecurse._crit_edge.i

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %bb.k
  %.lcssa.i = phi ptr [ %i.af, %bb.k ], [ %i.ai, %tailrecurse.i ] ; 2 uses
  %i.aj = load ptr, ptr %.lcssa.i, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef signext i8 %i.al(ptr noundef nonnull align 8 dereferenceable(868) %.lcssa.i, i32 noundef %.020) #20, !inline_history !16
  br label %_ZNK6icu_7810UnicodeSet8containsEi.exit

.lr.ph.i:                                         ; preds = %bb.k, %tailrecurse.i
  %.tr14.i = phi ptr [ %i.ag, %tailrecurse.i ], [ %0, %bb.k ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.tr14.i, i64 88
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %.not9.i = icmp eq ptr %i.ao, null
  br i1 %.not9.i, label %bb.l, label %tailrecurse.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.ap = icmp sgt i32 %.020, 1114111
  br i1 %i.ap, label %_ZNK6icu_7810UnicodeSet8containsEi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr14.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = icmp slt i32 %.020, %i.as
  br i1 %i.at, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %.tr14.i, i64 28
  %i.av = load i32, ptr %i.au, align 4            ; 3 uses
  %i.aw = add nsw i32 %i.av, -1                   ; 4 uses
  %i.ax = icmp slt i32 %i.av, 2
  br i1 %i.ax, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = getelementptr [4 x i8], ptr %i.ar, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  %i.bb = load i32, ptr %i.ba, align 4
  %.not.i.i = icmp sge i32 %.020, %i.bb
  %i.bc = lshr i32 %i.aw, 1                       ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.bd
  br i1 %or.cond.i.i, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %.lr.ph.i.i
  %i.be = phi i32 [ %i.bk, %.lr.ph.i.i ], [ %i.bc, %bb.o ] ; 3 uses
  %.01830.i.i = phi i32 [ %..018.i.i, %.lr.ph.i.i ], [ %i.aw, %bb.o ]
  %.02029.i.i = phi i32 [ %.020..i.i, %.lr.ph.i.i ], [ 0, %bb.o ]
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = icmp slt i32 %.020, %i.bh               ; 2 uses
  %.020..i.i = select i1 %i.bi, i32 %.02029.i.i, i32 %i.be ; 3 uses
  %..018.i.i = select i1 %i.bi, i32 %i.be, i32 %.01830.i.i ; 3 uses
  %i.bj = add nuw nsw i32 %..018.i.i, %.020..i.i
  %i.bk = lshr i32 %i.bj, 1                       ; 2 uses
  %i.bl = icmp eq i32 %i.bk, %.020..i.i
  br i1 %i.bl, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %.lr.ph.i.i

_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i:  ; preds = %.lr.ph.i.i, %bb.o, %bb.n, %bb.m
  %.1.i.i = phi i32 [ 0, %bb.m ], [ %i.aw, %bb.n ], [ %i.aw, %bb.o ], [ %..018.i.i, %.lr.ph.i.i ]
  %i.bm = trunc i32 %.1.i.i to i8
  %i.bn = and i8 %i.bm, 1
  br label %_ZNK6icu_7810UnicodeSet8containsEi.exit

_ZNK6icu_7810UnicodeSet8containsEi.exit:          ; preds = %tailrecurse._crit_edge.i, %bb.l, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i
  %.0.i = phi i8 [ %i.am, %tailrecurse._crit_edge.i ], [ 0, %bb.l ], [ %i.bn, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i ]
  %i.bo = sext i8 %.0.i to i32
  %.not34 = icmp eq i32 %spec.store.select, %i.bo
  br i1 %.not34, label %bb.p, label %.thread36

bb.p:                                             ; preds = %_ZNK6icu_7810UnicodeSet8containsEi.exit
  %i.bp = load i32, ptr %i.a, align 4             ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %bb.i, label %.thread36, !llvm.loop !60

.thread36:                                        ; preds = %bb.p, %_ZNK6icu_7810UnicodeSet8containsEi.exit, %bb.d, %bb.h, %.thread, %bb.e, %bb.c
  %.123 = phi i32 [ %i.e, %bb.c ], [ %i.v, %bb.h ], [ %i.m, %bb.e ], [ 0, %.thread ], [ 0, %bb.d ], [ %i.bp, %bb.p ], [ %i.x, %_ZNK6icu_7810UnicodeSet8containsEi.exit ]
  ret i32 %.123
}

declare noundef i32 @_ZNK6icu_786BMPSet12spanBackUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(868), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan12spanBackUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @utf8_prevCharSafeBody_78(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #7

declare void @__cxa_pure_virtual() unnamed_addr

declare noundef ptr @_ZNK6icu_7813UnicodeFilter9toMatcherEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

declare noundef ptr @_ZNK6icu_7814UnicodeFunctor10toReplacerEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

declare void @_ZN6icu_7813UnicodeFilter7setDataEPKNS_23TransliterationRuleDataE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #7

declare noundef i32 @_ZNK6icu_787UVector7indexOfEPvi(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZNK6icu_787UVectoreqERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

declare noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(1) }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{ptr @_ZN6icu_7810UnicodeSet15allocateStringsER10UErrorCode}
!6 = !{ptr @_ZN6icu_7810UnicodeSetC2ERKS0_}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !8, !14, !13}
!16 = !{ptr @_ZNK6icu_7810UnicodeSet8containsEi}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{null}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = !{!37}
!37 = distinct !{!37, !38}
!38 = distinct !{!38, !"LVerDomain"}
!39 = !{!40}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !8, !13, !14}
!42 = distinct !{!42, !10}
!43 = !{!44}
!44 = distinct !{!44, !45}
!45 = distinct !{!45, !"LVerDomain"}
!46 = !{!47}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !8, !13, !14}
!49 = distinct !{!49, !8, !13}
!50 = distinct !{!50, !8, !13}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, !8}
!53 = distinct !{!53, !8}
!54 = distinct !{!54, !8}
!55 = distinct !{!55, !8}
!56 = distinct !{!56, !8}
!57 = distinct !{!57, !8}
!58 = distinct !{!58, !8}
!59 = distinct !{!59, !8}
!60 = distinct !{!60, !8}
end_hunk_4
