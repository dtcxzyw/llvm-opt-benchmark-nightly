inline.NumInlined: 259
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7810UnicodeSet3setEii:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.o, align 8, !tbaa !28
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !32
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
  %i.t = load i8, ptr %i.s, align 8, !tbaa !28
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.w, ptr %i.a, align 4, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.z = add nuw nsw i32 %.0.i, 1
  store i32 %i.z, ptr %i.y, align 4, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1114112, ptr %i.aa, align 4, !tbaa !31
  call void @_ZN6icu_7810UnicodeSet11exclusiveOrEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef 2, i8 noundef signext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN6icu_78L12pinCodePointERi.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.ac, null
  br i1 %.not.i7.i, label %_ZN6icu_7810UnicodeSet10complementEii.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @uprv_free_78(ptr noundef nonnull %i.ac)
  store ptr null, ptr %i.ab, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.ad, align 8, !tbaa !30
  br label %_ZN6icu_7810UnicodeSet10complementEii.exit

_ZN6icu_7810UnicodeSet10complementEii.exit:       ; preds = %_ZN6icu_7810UnicodeSet5clearEv.exit, %bb.f, %bb.h, %bb.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet5clearEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(200) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  store i32 1114112, ptr %i.g, align 4, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.h, align 4, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %.not.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i3, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @uprv_free_78(ptr noundef nonnull %i.j)
  store ptr null, ptr %i.i, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.k, align 8, !tbaa !30
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_7810UnicodeSet14releasePatternEv.exit:    ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8    ; 2 uses
  %.not2 = icmp eq ptr %i.m, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6icu_7810UnicodeSet14releasePatternEv.exit
  tail call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.m)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6icu_7810UnicodeSet14releasePatternEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.n, align 8, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet10complementEii(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  %narrow.i.not = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !28
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.k, ptr %i.a, align 4, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.n = add nuw nsw i32 %.0, 1
  store i32 %i.n, ptr %i.m, align 4, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1114112, ptr %i.o, align 4, !tbaa !31
  call void @_ZN6icu_7810UnicodeSet11exclusiveOrEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef 2, i8 noundef signext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN6icu_78L12pinCodePointERi.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %.not.i7 = icmp eq ptr %i.q, null
  br i1 %.not.i7, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @uprv_free_78(ptr noundef nonnull %i.q)
  store ptr null, ptr %i.p, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.r, align 8, !tbaa !30
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_7810UnicodeSet14releasePatternEv.exit:    ; preds = %bb.e, %bb.d, %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7810UnicodeSet3addEPKiia(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(200) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i8 noundef signext %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !28
  %i.h = trunc i8 %i.g to i1
  %i.i = icmp eq ptr %1, null
  %or.cond = or i1 %i.i, %i.h
  br i1 %or.cond, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27
  %i.l = add nsw i32 %i.k, %2
  %i.m = tail call noundef zeroext i1 @_ZN6icu_7810UnicodeSet20ensureBufferCapacityEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.l)
  br i1 %i.m, label %bb.d, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25   ; 11 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !31   ; 4 uses
  %i.q = load i32, ptr %1, align 4, !tbaa !31     ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  switch i8 %3, label %bb.e [
    i8 0, label %.loopexit
    i8 3, label %.loopexit145
    i8 1, label %.loopexit146
    i8 2, label %.loopexit147
  ], !llvm.loop !67

bb.f:                                             ; preds = %bb.z, %bb.aa, %bb.af
  %.1106.jt0 = phi i32 [ %.0105125, %bb.af ], [ %i.cl, %bb.z ], [ %i.cx, %bb.aa ]
  %.1104.jt0 = phi i32 [ %i.dt, %bb.af ], [ %i.cp, %bb.z ], [ %.0103128, %bb.aa ]
  %.5.jt0.in = phi i32 [ %.099133, %bb.af ], [ %.099134, %bb.z ], [ %.099132, %bb.aa ]
  %.3.jt0 = phi i32 [ %.096138, %bb.af ], [ %i.co, %bb.z ], [ %i.da, %bb.aa ]
  %.2.jt0 = phi i32 [ %i.dw, %bb.af ], [ %i.cs, %bb.z ], [ %.0141, %bb.aa ]
  %.5.jt0 = add nsw i32 %.5.jt0.in, 1
  br label %.loopexit

bb.g:                                             ; preds = %bb.j, %bb.k, %bb.aj
  %.1106.jt1.in = phi i32 [ %.0105125, %bb.aj ], [ %.0105127, %bb.k ], [ %.0105127, %bb.j ]
  %.1104.jt1 = phi i32 [ %i.eg, %bb.aj ], [ %.0103131, %bb.k ], [ %.0103131, %bb.j ]
  %.5.jt1 = phi i32 [ %.099133, %bb.aj ], [ %i.ag, %bb.k ], [ %i.ab, %bb.j ]
  %.3.jt1 = phi i32 [ %i.ef, %bb.aj ], [ %i.al, %bb.k ], [ %i.af, %bb.j ]
  %.2.jt1 = phi i32 [ %i.ej, %bb.aj ], [ %.0144, %bb.k ], [ %.0144, %bb.j ]
  %.1106.jt1 = add nsw i32 %.1106.jt1.in, 1
  br label %.loopexit146

.loopexit:                                        ; preds = %bb.e, %bb.f
  %.0144 = phi i32 [ %.2.jt0, %bb.f ], [ %i.q, %bb.e ] ; 6 uses
  %.096140 = phi i32 [ %.3.jt0, %bb.f ], [ %i.p, %bb.e ] ; 8 uses
  %.099135 = phi i32 [ %.5.jt0, %bb.f ], [ 0, %bb.e ] ; 16 uses
  %.0103131 = phi i32 [ %.1104.jt0, %bb.f ], [ 1, %bb.e ] ; 7 uses
  %.0105127 = phi i32 [ %.1106.jt0, %bb.f ], [ 1, %bb.e ] ; 8 uses
  %i.s = icmp slt i32 %.096140, %.0144
  br i1 %i.s, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.loopexit
  %i.t = icmp sgt i32 %.099135, 0
  %.pre121 = load ptr, ptr %i.r, align 8, !tbaa !39 ; 3 uses
  br i1 %i.t, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = zext nneg i32 %.099135 to i64
  %i.v = getelementptr [4 x i8], ptr %.pre121, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !31
  %.not117 = icmp sgt i32 %.096140, %i.x
  br i1 %.not117, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = sext i32 %.0105127 to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !31
  %i.ab = add nsw i32 %.099135, -1                ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.pre121, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !31
  %i.af = tail call noundef i32 @llvm.smax.i32(i32 %i.aa, i32 %i.ae)
  br label %bb.g

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ag = add nsw i32 %.099135, 1
  %i.ah = sext i32 %.099135 to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %.pre121, i64 %i.ah
  store i32 %.096140, ptr %i.ai, align 4, !tbaa !31
  %i.aj = sext i32 %.0105127 to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !31
  br label %bb.g

bb.l:                                             ; preds = %.loopexit
  %i.am = icmp slt i32 %.0144, %.096140
  br i1 %i.am, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.an = icmp sgt i32 %.099135, 0
  %.pre120 = load ptr, ptr %i.r, align 8, !tbaa !39 ; 3 uses
  br i1 %i.an, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ao = zext nneg i32 %.099135 to i64
  %i.ap = getelementptr [4 x i8], ptr %.pre120, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !31
  %.not116 = icmp sgt i32 %.0144, %i.ar
  br i1 %.not116, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = sext i32 %.0103131 to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %1, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !31
  %i.av = add nsw i32 %.099135, -1                ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.pre120, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !31
  %i.az = tail call noundef i32 @llvm.smax.i32(i32 %i.au, i32 %i.ay)
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ba = add nsw i32 %.099135, 1
  %i.bb = sext i32 %.099135 to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %.pre120, i64 %i.bb
  store i32 %.0144, ptr %i.bc, align 4, !tbaa !31
  %i.bd = sext i32 %.0103131 to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2101 = phi i32 [ %i.av, %bb.o ], [ %i.ba, %bb.p ]
  %.1 = phi i32 [ %i.az, %bb.o ], [ %i.bf, %bb.p ]
  %i.bg = add nsw i32 %.0103131, 1
  br label %.loopexit147

bb.r:                                             ; preds = %bb.l
  %i.bh = icmp eq i32 %.096140, 1114112
  br i1 %i.bh, label %bb.ak, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = icmp sgt i32 %.099135, 0
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !39  ; 3 uses
  br i1 %i.bi, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bj = zext nneg i32 %.099135 to i64
  %i.bk = getelementptr [4 x i8], ptr %.pre, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !31
  %.not115 = icmp sgt i32 %.096140, %i.bm
  br i1 %.not115, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = sext i32 %.0105127 to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !31
  %i.bq = add nsw i32 %.099135, -1                ; 2 uses
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !31
  %i.bu = tail call noundef i32 @llvm.smax.i32(i32 %i.bp, i32 %i.bt)
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.bv = add nsw i32 %.099135, 1
  %i.bw = sext i32 %.099135 to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.bw
  store i32 %.096140, ptr %i.bx, align 4, !tbaa !31
  %i.by = sext i32 %.0105127 to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !31
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.3102 = phi i32 [ %i.bq, %bb.u ], [ %i.bv, %bb.v ]
  %.298 = phi i32 [ %i.bu, %bb.u ], [ %i.ca, %bb.v ]
  %i.cb = add nsw i32 %.0105127, 1
  %i.cc = add nsw i32 %.0103131, 1
  %i.cd = sext i32 %.0103131 to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !31
  br label %.loopexit145

.loopexit145:                                     ; preds = %bb.e, %bb.ah, %bb.ac, %bb.w
  %.0143 = phi i32 [ %.0142, %bb.ah ], [ %i.cf, %bb.w ], [ %i.df, %bb.ac ], [ %i.q, %bb.e ] ; 3 uses
  %.096139 = phi i32 [ %i.eb, %bb.ah ], [ %.298, %bb.w ], [ %.096137, %bb.ac ], [ %i.p, %bb.e ] ; 3 uses
  %.099134 = phi i32 [ %.099133, %bb.ah ], [ %.3102, %bb.w ], [ %.099132, %bb.ac ], [ 0, %bb.e ] ; 4 uses
  %.0103130 = phi i32 [ %.0103129, %bb.ah ], [ %i.cc, %bb.w ], [ %i.dc, %bb.ac ], [ 1, %bb.e ] ; 2 uses
  %.0105126 = phi i32 [ %i.dy, %bb.ah ], [ %i.cb, %bb.w ], [ %.0105124, %bb.ac ], [ 1, %bb.e ] ; 2 uses
  %.not114 = icmp sgt i32 %.0143, %.096139
  br i1 %.not114, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit145
  %i.cg = icmp eq i32 %.096139, 1114112
  br i1 %i.cg, label %bb.ak, label %bb.z

bb.y:                                             ; preds = %.loopexit145
  %i.ch = icmp eq i32 %.0143, 1114112
  br i1 %i.ch, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0143.sink = phi i32 [ %.096139, %bb.x ], [ %.0143, %bb.y ]
  %i.ci = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.cj = sext i32 %.099134 to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  store i32 %.0143.sink, ptr %i.ck, align 4, !tbaa !31
  %i.cl = add nsw i32 %.0105126, 1
  %i.cm = sext i32 %.0105126 to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !31
  %i.cp = add nsw i32 %.0103130, 1
  %i.cq = sext i32 %.0103130 to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !31
  br label %bb.f

.loopexit146:                                     ; preds = %bb.e, %bb.g
  %.0141 = phi i32 [ %.2.jt1, %bb.g ], [ %i.q, %bb.e ] ; 3 uses
  %.096137 = phi i32 [ %.3.jt1, %bb.g ], [ %i.p, %bb.e ] ; 5 uses
  %.099132 = phi i32 [ %.5.jt1, %bb.g ], [ 0, %bb.e ] ; 5 uses
  %.0103128 = phi i32 [ %.1104.jt1, %bb.g ], [ 1, %bb.e ] ; 5 uses
  %.0105124 = phi i32 [ %.1106.jt1, %bb.g ], [ 1, %bb.e ] ; 5 uses
  %i.ct = icmp slt i32 %.096137, %.0141
  br i1 %i.ct, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.loopexit146
  %i.cu = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.cv = sext i32 %.099132 to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cv
  store i32 %.096137, ptr %i.cw, align 4, !tbaa !31
  %i.cx = add nsw i32 %.0105124, 1
  %i.cy = sext i32 %.0105124 to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !31
  br label %bb.f

bb.ab:                                            ; preds = %.loopexit146
  %i.db = icmp slt i32 %.0141, %.096137
  br i1 %i.db, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dc = add nsw i32 %.0103128, 1
  %i.dd = sext i32 %.0103128 to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !31
  br label %.loopexit145

bb.ad:                                            ; preds = %bb.ab
  %i.dg = icmp eq i32 %.096137, 1114112
  br i1 %i.dg, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = add nsw i32 %.0105124, 1
  %i.di = sext i32 %.0105124 to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !31
  %i.dl = add nsw i32 %.0103128, 1
  %i.dm = sext i32 %.0103128 to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !31
  br label %.loopexit147

.loopexit147:                                     ; preds = %bb.e, %bb.ae, %bb.q
  %.0142 = phi i32 [ %i.do, %bb.ae ], [ %.1, %bb.q ], [ %i.q, %bb.e ] ; 4 uses
  %.096138 = phi i32 [ %i.dk, %bb.ae ], [ %.096140, %bb.q ], [ %i.p, %bb.e ] ; 4 uses
  %.099133 = phi i32 [ %.099132, %bb.ae ], [ %.2101, %bb.q ], [ 0, %bb.e ] ; 5 uses
  %.0103129 = phi i32 [ %i.dl, %bb.ae ], [ %i.bg, %bb.q ], [ 1, %bb.e ] ; 5 uses
  %.0105125 = phi i32 [ %i.dh, %bb.ae ], [ %.0105127, %bb.q ], [ 1, %bb.e ] ; 5 uses
  %i.dp = icmp slt i32 %.0142, %.096138
  br i1 %i.dp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.loopexit147
  %i.dq = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.dr = sext i32 %.099133 to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dr
  store i32 %.0142, ptr %i.ds, align 4, !tbaa !31
  %i.dt = add nsw i32 %.0103129, 1
  %i.du = sext i32 %.0103129 to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !31
  br label %bb.f

bb.ag:                                            ; preds = %.loopexit147
  %i.dx = icmp slt i32 %.096138, %.0142
  br i1 %i.dx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dy = add nsw i32 %.0105125, 1
  %i.dz = sext i32 %.0105125 to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !31
  br label %.loopexit145

bb.ai:                                            ; preds = %bb.ag
  %i.ec = icmp eq i32 %.096138, 1114112
  br i1 %i.ec, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ed = sext i32 %.0105125 to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !31
  %i.eg = add nsw i32 %.0103129, 1
  %i.eh = sext i32 %.0103129 to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !31
  br label %bb.g

bb.ak:                                            ; preds = %bb.ai, %bb.ad, %bb.y, %bb.x, %bb.r
  %.099136 = phi i32 [ %.099133, %bb.ai ], [ %.099132, %bb.ad ], [ %.099134, %bb.y ], [ %.099134, %bb.x ], [ %.099135, %bb.r ] ; 2 uses
  %i.ek = load ptr, ptr %i.r, align 8, !tbaa !39  ; 2 uses
  %i.el = add nsw i32 %.099136, 1
  %i.em = sext i32 %.099136 to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.em
  store i32 1114112, ptr %i.en, align 4, !tbaa !31
  store i32 %i.el, ptr %i.j, align 4, !tbaa !27
  store ptr %i.ek, ptr %i.n, align 8, !tbaa !25
  store ptr %i.o, ptr %i.r, align 8, !tbaa !39
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !26
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !68
  store i32 %i.er, ptr %i.eo, align 8, !tbaa !26
  store i32 %i.ep, ptr %i.eq, align 8, !tbaa !68
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !29 ; 2 uses
  %.not.i118 = icmp eq ptr %i.et, null
  br i1 %.not.i118, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @uprv_free_78(ptr noundef nonnull %i.et)
  store ptr null, ptr %i.es, align 8, !tbaa !29
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.eu, align 8, !tbaa !30
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_7810UnicodeSet14releasePatternEv.exit:    ; preds = %bb.al, %bb.ak, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
_ZN6icu_78L12pinCodePointERi.exit:
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %.0 = tail call i32 @llvm.umin.i32(i32 %i.a, i32 1114111) ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 6 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31
  %i.e = icmp slt i32 %.0, %i.d
  br i1 %i.e, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.thread, label %bb.a

bb.a:                                             ; preds = %_ZN6icu_78L12pinCodePointERi.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27   ; 3 uses
  %i.h = add nsw i32 %i.g, -1                     ; 4 uses
  %i.i = icmp slt i32 %i.g, 2
  br i1 %i.i, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %i.g to i64
  %i.k = getelementptr [4 x i8], ptr %i.c, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !31
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !31
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32
  %.not.i28 = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.ab, null
  %narrow.i.not = select i1 %.not.i28, i1 %i.ac, i1 false
  br i1 %narrow.i.not, label %bb.c, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.c:                                             ; preds = %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !28
  %i.af = and i8 %i.ae, 1
  %.not27 = icmp eq i8 %i.af, 0
  br i1 %.not27, label %bb.d, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = sext i32 %.1.i37 to i64                 ; 4 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !31
  %i.aj = add nsw i32 %i.ai, -1
  %i.ak = icmp eq i32 %.0, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  store i32 %.0, ptr %i.ah, align 4, !tbaa !31
  %i.al = icmp sgt i32 %1, 1114110
  br i1 %i.al, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !27
  %i.ao = add nsw i32 %i.an, 1
  %i.ap = tail call noundef zeroext i1 @_ZN6icu_7810UnicodeSet14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.ao)
  br i1 %i.ap, label %bb.g, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  %i.ar = load i32, ptr %i.am, align 4, !tbaa !27 ; 2 uses
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.am, align 4, !tbaa !27
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.at
  store i32 1114112, ptr %i.au, align 4, !tbaa !31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.av = phi ptr [ %i.aq, %bb.g ], [ %i.c, %bb.e ] ; 3 uses
  %i.aw = icmp sgt i32 %.1.i37, 0
  br i1 %i.aw, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ax = ptrtoaddr ptr %i.av to i64              ; 3 uses
  %i.ay = zext nneg i32 %.1.i37 to i64
  %i.az = getelementptr [4 x i8], ptr %i.av, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 -4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !31
  %i.bc = icmp eq i32 %.0, %i.bb
  br i1 %i.bc, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %.idx = shl nuw nsw i64 %i.ag, 2                ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !27 ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %.idx43 = shl nsw i64 %i.bf, 2                  ; 2 uses
  %i.bg = add nuw nsw i64 %.idx, 4
  %i.bh = icmp slt i64 %i.bg, %.idx43
  br i1 %i.bh, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.bi = getelementptr i8, ptr %i.av, i64 %.idx  ; 2 uses
  %.02140 = getelementptr i8, ptr %i.bi, i64 4
  %i.bj = getelementptr i8, ptr %i.bi, i64 -4
  %i.bk = add i64 %.idx, %i.ax
  %i.bl = add i64 %i.bk, 8
  %i.bm = add i64 %.idx43, %i.ax
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 %i.bm)
  %i.bn = add i64 %umax, -5
  %i.bo = add i64 %.idx, %i.ax
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = and i64 %i.bp, -4
  %i.br = add i64 %i.bq, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bj, ptr align 4 %.02140, i64 %i.br, i1 false), !tbaa !31
  %.pre = load i32, ptr %i.bd, align 4, !tbaa !27
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.j
  %i.bs = phi i32 [ %.pre, %.lr.ph.preheader ], [ %i.be, %bb.j ]
  %i.bt = add nsw i32 %i.bs, -2
  store i32 %i.bt, ptr %i.bd, align 4, !tbaa !27
  br label %bb.p

bb.k:                                             ; preds = %bb.d
  %i.bu = icmp sgt i32 %.1.i37, 0
  br i1 %i.bu, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bv = zext nneg i32 %.1.i37 to i64
  %i.bw = getelementptr [4 x i8], ptr %i.c, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4     ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !31
  %i.bz = icmp eq i32 %.0, %i.by
  br i1 %i.bz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ca = add nuw nsw i32 %.0, 1
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !31
  br label %bb.p

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !27
  %i.cd = add nsw i32 %i.cc, 2
  %i.ce = tail call noundef zeroext i1 @_ZN6icu_7810UnicodeSet14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.cd)
  br i1 %i.ce, label %bb.o, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.o:                                             ; preds = %bb.n
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.ag ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i32, ptr %i.cb, align 4, !tbaa !27
  %i.cj = sub nsw i32 %i.ci, %.1.i37
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ch, ptr align 4 %i.cg, i64 %i.cl, i1 false)
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.ag ; 2 uses
  store i32 %.0, ptr %i.cn, align 4, !tbaa !31
  %i.co = add nuw nsw i32 %.0, 1
  %i.cp = getelementptr i8, ptr %i.cn, i64 4
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !31
end_hunk_0
begin_hunk_1_@_ZN6icu_7810UnicodeSet4_addERKNS_13UnicodeStringE:bb.a
bb.l:                                             ; preds = %_ZN6icu_7810UnicodeSet15allocateStringsER10UErrorCode.exit
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.w, null
  %i.x = load ptr, ptr %i.d, align 8
  %i.y = icmp eq ptr %i.x, null
  %narrow.i.not.i.i = select i1 %.not.i.i.i, i1 %i.y, i1 false
  br i1 %narrow.i.not.i.i, label %bb.m, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25
  store i32 1114112, ptr %i.aa, align 4, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.ab, align 4, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i3.i.i, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @uprv_free_78(ptr noundef nonnull %i.ad)
          to label %.noexc unwind label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

.noexc:                                           ; preds = %bb.n
  store ptr null, ptr %i.ac, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.ae, align 8, !tbaa !30
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i

_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i: ; preds = %.noexc, %bb.m
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !8   ; 2 uses
  %.not2.i.i = icmp eq ptr %i.af, null
  br i1 %.not2.i.i, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i
  invoke void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.af)
          to label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit unwind label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

_ZN6icu_7810UnicodeSet10setToBogusEv.exit:        ; preds = %bb.o, %bb.l, %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i
  store i8 1, ptr %i.g, align 8, !tbaa !28
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit21

bb.p:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.u) #24
  br label %bb.x

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit: ; preds = %bb.q, %bb.n, %bb.o, %bb.u, %bb.v
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.q:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !8
  invoke void @_ZN6icu_787UVector12sortedInsertEPvPFi8UElementS2_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull %i.u, ptr noundef nonnull @_ZN6icu_78L20compareUnicodeStringE8UElementS0_, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.r unwind label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !33
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit21, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !32
  %.not.i.i.i13 = icmp eq ptr %i.al, null
  %i.am = load ptr, ptr %i.d, align 8
  %i.an = icmp eq ptr %i.am, null
  %narrow.i.not.i.i14 = select i1 %.not.i.i.i13, i1 %i.an, i1 false
  br i1 %narrow.i.not.i.i14, label %bb.t, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit20

bb.t:                                             ; preds = %bb.s
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25
  store i32 1114112, ptr %i.ap, align 4, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.aq, align 4, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !29 ; 2 uses
  %.not.i3.i.i15 = icmp eq ptr %i.as, null
  br i1 %.not.i3.i.i15, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i16, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @uprv_free_78(ptr noundef nonnull %i.as)
          to label %.noexc18 unwind label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

.noexc18:                                         ; preds = %bb.u
  store ptr null, ptr %i.ar, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.at, align 8, !tbaa !30
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i16

_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i16: ; preds = %.noexc18, %bb.t
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !8   ; 2 uses
  %.not2.i.i17 = icmp eq ptr %i.au, null
  br i1 %.not2.i.i17, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit20, label %bb.v

bb.v:                                             ; preds = %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i16
  invoke void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.au)
          to label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit20 unwind label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

_ZN6icu_7810UnicodeSet10setToBogusEv.exit20:      ; preds = %bb.v, %bb.s, %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i16
  store i8 1, ptr %i.g, align 8, !tbaa !28
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit21

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit21: ; preds = %_ZN6icu_7810UnicodeSet10setToBogusEv.exit20, %_ZN6icu_7810UnicodeSet10setToBogusEv.exit, %bb.r, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %bb.b, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit21
  ret void

bb.x:                                             ; preds = %bb.p, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit
  %.pn = phi { ptr, i32 } [ %i.ah, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit ], [ %i.ag, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %common.resume
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #8

declare void @_ZN6icu_787UVector12sortedInsertEPvPFi8UElementS2_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 -128, 128) i32 @_ZN6icu_78L20compareUnicodeStringE8UElementS0_(ptr %0, ptr %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !38   ; 4 uses
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
  %i.z = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 0, i32 noundef %i.t, ptr noundef %i.y, i32 noundef %spec.select.i.i, i32 noundef %.010.i.i)
  br label %_ZNK6icu_7813UnicodeString7compareERKS0_.exit

_ZNK6icu_7813UnicodeString7compareERKS0_.exit:    ; preds = %bb.b, %.sink.split.i.i.i
  %.0.i.i = phi i8 [ %i.h, %bb.b ], [ %i.z, %.sink.split.i.i.i ]
  %i.aa = sext i8 %.0.i.i to i32
  ret i32 %i.aa
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i16, ptr %i.a, align 8, !tbaa !38   ; 2 uses
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
  %i.j = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.07) ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.j) ; 0 uses
  %i.l = icmp ult i32 %i.j, 65536
  %i.m = select i1 %i.l, i32 1, i32 2
  %i.n = add nuw nsw i32 %i.m, %.07               ; 2 uses
  %i.o = load i16, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.p = icmp slt i16 %i.o, 0
  %i.q = ashr i16 %i.o, 5
  %i.r = sext i16 %i.q to i32
  %i.s = load i32, ptr %i.b, align 4
  %i.t = select i1 %i.p, i32 %i.s, i32 %i.r
  %i.u = icmp slt i32 %i.n, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !69
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9retainAllERKNS_13UnicodeStringE(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i16, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.d = icmp slt i16 %i.c, 0
  %i.e = ashr i16 %i.c, 5
  %i.f = sext i16 %i.e to i32
  %i.g = load i32, ptr %i.b, align 4
  %i.h = select i1 %i.d, i32 %i.g, i32 %i.f
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit

.lr.ph.i:                                         ; preds = %bb.a, %.noexc3
  %.07.i = phi i32 [ %i.n, %.noexc3 ], [ 0, %bb.a ] ; 2 uses
  %i.j = invoke noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.07.i)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.k = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %2, i32 noundef %i.j)
          to label %.noexc3 unwind label %.loopexit ; 0 uses

.noexc3:                                          ; preds = %.noexc
  %i.l = icmp ult i32 %i.j, 65536
  %i.m = select i1 %i.l, i32 1, i32 2
  %i.n = add nuw nsw i32 %i.m, %.07.i             ; 2 uses
  %i.o = load i16, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.p = icmp slt i16 %i.o, 0
  %i.q = ashr i16 %i.o, 5
  %i.r = sext i16 %i.q to i32
  %i.s = load i32, ptr %i.b, align 4
  %i.t = select i1 %i.p, i32 %i.s, i32 %i.r
  %i.u = icmp slt i32 %i.n, %i.t
  br i1 %i.u, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit, !llvm.loop !69

_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit: ; preds = %.noexc3, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32
  %.not.i.i = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.y, null
  %narrow.i.not.i = select i1 %.not.i.i, i1 %i.z, i1 false
  br i1 %narrow.i.not.i, label %bb.b, label %_ZN6icu_7810UnicodeSet9retainAllERKS0_.exit

bb.b:                                             ; preds = %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !28
  %i.ac = and i8 %i.ab, 1
  %.not6.i = icmp eq i8 %i.ac, 0
  br i1 %.not6.i, label %bb.c, label %_ZN6icu_7810UnicodeSet9retainAllERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !27
  invoke void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.ae, i32 noundef %i.ag, i8 noundef signext 0)
          to label %.noexc4 unwind label %.loopexit.split-lp

.noexc4:                                          ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8  ; 4 uses
  %.not.i9.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i, label %_ZN6icu_7810UnicodeSet9retainAllERKS0_.exit, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i:     ; preds = %.noexc4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !20
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %_ZN6icu_7810UnicodeSet9retainAllERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !8  ; 3 uses
  %.not.i10.i = icmp eq ptr %i.am, null
  br i1 %.not.i10.i, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.thread.i, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.i

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.i:   ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !20
  %.not15.i = icmp eq i32 %i.ao, 0
  br i1 %.not15.i, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.thread.i, label %bb.e

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.thread.i: ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.i, %bb.d
  invoke void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ai)
          to label %_ZN6icu_7810UnicodeSet9retainAllERKS0_.exit unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.i
  %i.ap = invoke noundef signext i8 @_ZN6icu_787UVector9retainAllERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
          to label %_ZN6icu_7810UnicodeSet9retainAllERKS0_.exit unwind label %.loopexit.split-lp ; 0 uses

_ZN6icu_7810UnicodeSet9retainAllERKS0_.exit:      ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i, %.noexc4, %bb.b, %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.thread.i, %bb.e
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret ptr %0

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.c, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.thread.i, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9retainAllERKS0_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !28
  %i.h = and i8 %i.g, 1
  %.not6 = icmp eq i8 %i.h, 0
  br i1 %.not6, label %bb.c, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !27
  tail call void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.j, i32 noundef %i.l, i8 noundef signext 0)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8    ; 4 uses
  %.not.i9 = icmp eq ptr %i.n, null
  br i1 %.not.i9, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !20
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !8    ; 3 uses
  %.not.i10 = icmp eq ptr %i.r, null
  br i1 %.not.i10, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11:     ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !20
  %.not15 = icmp eq i32 %i.t, 0
  br i1 %.not15, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.thread, label %bb.e

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.thread: ; preds = %bb.d, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11
  tail call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.n)
  br label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

bb.e:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11
  %i.u = tail call noundef signext i8 @_ZN6icu_787UVector9retainAllERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.r) ; 0 uses
  br label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread: ; preds = %bb.c, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit, %bb.e, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.thread, %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet13complementAllERKNS_13UnicodeStringE(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeSet", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i16, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.d = icmp slt i16 %i.c, 0
  %i.e = ashr i16 %i.c, 5
  %i.f = sext i16 %i.e to i32
  %i.g = load i32, ptr %i.b, align 4
  %i.h = select i1 %i.d, i32 %i.g, i32 %i.f
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit

.lr.ph.i:                                         ; preds = %bb.a, %.noexc3
  %.07.i = phi i32 [ %i.n, %.noexc3 ], [ 0, %bb.a ] ; 2 uses
  %i.j = invoke noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.07.i)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.k = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %2, i32 noundef %i.j)
          to label %.noexc3 unwind label %.loopexit ; 0 uses

.noexc3:                                          ; preds = %.noexc
  %i.l = icmp ult i32 %i.j, 65536
  %i.m = select i1 %i.l, i32 1, i32 2
  %i.n = add nuw nsw i32 %i.m, %.07.i             ; 2 uses
  %i.o = load i16, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.p = icmp slt i16 %i.o, 0
  %i.q = ashr i16 %i.o, 5
  %i.r = sext i16 %i.q to i32
  %i.s = load i32, ptr %i.b, align 4
  %i.t = select i1 %i.p, i32 %i.s, i32 %i.r
  %i.u = icmp slt i32 %i.n, %i.t
  br i1 %i.u, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit, !llvm.loop !69

_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit: ; preds = %.noexc3, %bb.a
  %i.v = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet13complementAllERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %2)
          to label %bb.b unwind label %.loopexit.split-lp ; 0 uses

bb.b:                                             ; preds = %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret ptr %0

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet13complementAllERKS0_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !28
  %i.h = and i8 %i.g, 1
  %.not12 = icmp eq i8 %i.h, 0
  br i1 %.not12, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !27
  tail call void @_ZN6icu_7810UnicodeSet11exclusiveOrEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.j, i32 noundef %i.l, i8 noundef signext 0)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8    ; 3 uses
  %.not13 = icmp eq ptr %i.n, null
  br i1 %.not13, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !20
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %i.s = phi ptr [ %i.n, %.lr.ph ], [ %i.y, %bb.g ]
  %.01116 = phi i32 [ 0, %.lr.ph ], [ %i.x, %bb.g ] ; 2 uses
  %i.t = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i32 noundef %.01116) ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !8    ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call noundef signext i8 @_ZN6icu_787UVector13removeElementEPv(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef %i.t)
  %.not14 = icmp eq i8 %i.w, 0
  br i1 %.not14, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6icu_7810UnicodeSet4_addERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.t)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = add nuw nsw i32 %.01116, 1               ; 2 uses
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !8    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !20
  %i.ab = icmp slt i32 %i.x, %i.aa
  br i1 %i.ab, label %bb.d, label %.loopexit, !llvm.loop !70

.loopexit:                                        ; preds = %bb.g, %.preheader, %bb.c, %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9removeAllERKNS_13UnicodeStringE(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i16, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.d = icmp slt i16 %i.c, 0
  %i.e = ashr i16 %i.c, 5
  %i.f = sext i16 %i.e to i32
  %i.g = load i32, ptr %i.b, align 4
  %i.h = select i1 %i.d, i32 %i.g, i32 %i.f
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit

.lr.ph.i:                                         ; preds = %bb.a, %.noexc3
  %.07.i = phi i32 [ %i.n, %.noexc3 ], [ 0, %bb.a ] ; 2 uses
  %i.j = invoke noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.07.i)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.k = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %2, i32 noundef %i.j)
          to label %.noexc3 unwind label %.loopexit ; 0 uses

.noexc3:                                          ; preds = %.noexc
  %i.l = icmp ult i32 %i.j, 65536
  %i.m = select i1 %i.l, i32 1, i32 2
  %i.n = add nuw nsw i32 %i.m, %.07.i             ; 2 uses
  %i.o = load i16, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.p = icmp slt i16 %i.o, 0
  %i.q = ashr i16 %i.o, 5
  %i.r = sext i16 %i.q to i32
  %i.s = load i32, ptr %i.b, align 4
  %i.t = select i1 %i.p, i32 %i.s, i32 %i.r
  %i.u = icmp slt i32 %i.n, %i.t
  br i1 %i.u, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit, !llvm.loop !69

_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit: ; preds = %.noexc3, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32
  %.not.i.i = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.y, null
  %narrow.i.not.i = select i1 %.not.i.i, i1 %i.z, i1 false
  br i1 %narrow.i.not.i, label %bb.b, label %_ZN6icu_7810UnicodeSet9removeAllERKS0_.exit

bb.b:                                             ; preds = %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !28
  %i.ac = and i8 %i.ab, 1
  %.not6.i = icmp eq i8 %i.ac, 0
  br i1 %.not6.i, label %bb.c, label %_ZN6icu_7810UnicodeSet9removeAllERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !27
  invoke void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.ae, i32 noundef %i.ag, i8 noundef signext 2)
          to label %.noexc4 unwind label %.loopexit.split-lp

.noexc4:                                          ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8  ; 3 uses
  %.not.i9.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i, label %_ZN6icu_7810UnicodeSet9removeAllERKS0_.exit, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i:     ; preds = %.noexc4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !20
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %_ZN6icu_7810UnicodeSet9removeAllERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !8  ; 3 uses
  %.not.i10.i = icmp eq ptr %i.am, null
  br i1 %.not.i10.i, label %_ZN6icu_7810UnicodeSet9removeAllERKS0_.exit, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.i

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.i:   ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !20
  %.not15.i = icmp eq i32 %i.ao, 0
  br i1 %.not15.i, label %_ZN6icu_7810UnicodeSet9removeAllERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.i
  %i.ap = invoke noundef signext i8 @_ZN6icu_787UVector9removeAllERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
          to label %_ZN6icu_7810UnicodeSet9removeAllERKS0_.exit unwind label %.loopexit.split-lp ; 0 uses

_ZN6icu_7810UnicodeSet9removeAllERKS0_.exit:      ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11.i, %bb.d, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i, %.noexc4, %bb.b, %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit, %bb.e
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret ptr %0

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.c, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9removeAllERKS0_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !28
  %i.h = and i8 %i.g, 1
  %.not6 = icmp eq i8 %i.h, 0
  br i1 %.not6, label %bb.c, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !27
  tail call void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.j, i32 noundef %i.l, i8 noundef signext 2)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8    ; 3 uses
  %.not.i9 = icmp eq ptr %i.n, null
  br i1 %.not.i9, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !20
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !8    ; 3 uses
  %.not.i10 = icmp eq ptr %i.r, null
  br i1 %.not.i10, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11:     ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !20
  %.not15 = icmp eq i32 %i.t, 0
  br i1 %.not15, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11
  %i.u = tail call noundef signext i8 @_ZN6icu_787UVector9removeAllERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.r) ; 0 uses
  br label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread: ; preds = %bb.d, %bb.c, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit11, %bb.e, %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet16removeAllStringsEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(200) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 3 uses
  %.not.i2 = icmp eq ptr %i.g, null
  br i1 %.not.i2, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !20
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  tail call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %.not.i3 = icmp eq ptr %i.k, null
  br i1 %.not.i3, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @uprv_free_78(ptr noundef nonnull %i.k)
  store ptr null, ptr %i.j, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.l, align 8, !tbaa !30
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_7810UnicodeSet14releasePatternEv.exit:    ; preds = %bb.b, %bb.d, %bb.c, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7810UnicodeSet10createFromERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 200) #24 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(200) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %0) ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.a) #24
  resume { ptr, i32 } %i.d

.thread:                                          ; preds = %bb.a, %bb.c
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7810UnicodeSet13createFromAllERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 200) #24 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i16, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.f = icmp slt i16 %i.e, 0
  %i.g = ashr i16 %i.e, 5
  %i.h = sext i16 %i.g to i32
  %i.i = load i32, ptr %i.d, align 4
  %i.j = select i1 %i.f, i32 %i.i, i32 %i.h
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.07.i = phi i32 [ %i.p, %.lr.ph.i ], [ 0, %bb.c ] ; 2 uses
  %i.l = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.07.i) ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i32 noundef %i.l) ; 0 uses
  %i.n = icmp ult i32 %i.l, 65536
  %i.o = select i1 %i.n, i32 1, i32 2
  %i.p = add nuw nsw i32 %i.o, %.07.i             ; 2 uses
  %i.q = load i16, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.r = icmp slt i16 %i.q, 0
  %i.s = ashr i16 %i.q, 5
  %i.t = sext i16 %i.s to i32
  %i.u = load i32, ptr %i.d, align 4
  %i.v = select i1 %i.r, i32 %i.u, i32 %i.t
  %i.w = icmp slt i32 %i.p, %i.v
  br i1 %i.w, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit, !llvm.loop !69

bb.d:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.a) #24
  resume { ptr, i32 } %i.x

_ZN6icu_7810UnicodeSet6addAllERKNS_13UnicodeStringE.exit: ; preds = %.lr.ph.i, %bb.a, %bb.c
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6retainEii(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
_ZN6icu_78L12pinCodePointERi.exit:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.b, i32 1114111) ; 2 uses
  %i.d = tail call i32 @llvm.smax.i32(i32 %2, i32 0) ; 2 uses
  %.not = icmp samesign ult i32 %i.d, %i.c
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN6icu_78L12pinCodePointERi.exit
  %.0 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 1114111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.c, ptr %i.a, align 4, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = add nuw nsw i32 %.0, 1
  store i32 %i.f, ptr %i.e, align 4, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1114112, ptr %i.g, align 4, !tbaa !31
  call void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef 2, i8 noundef signext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN6icu_7810UnicodeSet5clearEv.exit

bb.b:                                             ; preds = %_ZN6icu_78L12pinCodePointERi.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32
  %.not.i.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, null
  %narrow.i.not.i = select i1 %.not.i.i, i1 %i.l, i1 false
  br i1 %narrow.i.not.i, label %bb.c, label %_ZN6icu_7810UnicodeSet5clearEv.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  store i32 1114112, ptr %i.n, align 4, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.o, align 4, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %.not.i3.i = icmp eq ptr %i.q, null
  br i1 %.not.i3.i, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @uprv_free_78(ptr noundef nonnull %i.q)
  store ptr null, ptr %i.p, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.r, align 8, !tbaa !30
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i

_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i:  ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8    ; 2 uses
  %.not2.i = icmp eq ptr %i.t, null
  br i1 %.not2.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i
  tail call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.t)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.u, align 8, !tbaa !28
  br label %_ZN6icu_7810UnicodeSet5clearEv.exit

_ZN6icu_7810UnicodeSet5clearEv.exit:              ; preds = %bb.f, %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(200) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i8 noundef signext %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !28
  %i.h = and i8 %i.g, 1
  %.not91 = icmp eq i8 %i.h, 0
  br i1 %.not91, label %bb.c, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27
  %i.k = add nsw i32 %i.j, %2
  %i.l = tail call noundef zeroext i1 @_ZN6icu_7810UnicodeSet20ensureBufferCapacityEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.k)
  br i1 %i.l, label %bb.d, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25   ; 10 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31   ; 4 uses
  %i.p = load i32, ptr %1, align 4, !tbaa !31     ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  switch i8 %3, label %bb.e [
    i8 0, label %.loopexit
    i8 3, label %.loopexit116
    i8 1, label %.loopexit117
    i8 2, label %.loopexit118
  ], !llvm.loop !71

bb.f:                                             ; preds = %bb.k, %bb.s, %bb.x
  %.186.jt3 = phi i32 [ %i.af, %bb.k ], [ %.08597, %bb.s ], [ %i.cx, %bb.x ]
  %.184.jt3 = phi i32 [ %i.aj, %bb.k ], [ %i.cb, %bb.s ], [ %.083102, %bb.x ]
  %.182.jt3.in = phi i32 [ %.081104, %bb.k ], [ %.081105, %bb.s ], [ %.081106, %bb.x ]
  %.180.jt3 = phi i32 [ %i.ai, %bb.k ], [ %.079110, %bb.s ], [ %i.da, %bb.x ]
  %.1.jt3 = phi i32 [ %i.am, %bb.k ], [ %i.ce, %bb.s ], [ %.0115, %bb.x ]
  %.182.jt3 = add nsw i32 %.182.jt3.in, 1
  br label %.loopexit116

.loopexit:                                        ; preds = %bb.e, %bb.v, %bb.q, %bb.p
  %.0113 = phi i32 [ %.0114, %bb.q ], [ %i.cs, %bb.v ], [ %i.br, %bb.p ], [ %i.p, %bb.e ] ; 3 uses
  %.079109 = phi i32 [ %i.bw, %bb.q ], [ %.079111, %bb.v ], [ %i.bn, %bb.p ], [ %i.o, %bb.e ] ; 5 uses
  %.081104 = phi i32 [ %.081105, %bb.q ], [ %.081106, %bb.v ], [ %i.bh, %bb.p ], [ 0, %bb.e ] ; 5 uses
  %.083100 = phi i32 [ %.083101, %bb.q ], [ %i.cp, %bb.v ], [ %i.bo, %bb.p ], [ 1, %bb.e ] ; 5 uses
  %.08596 = phi i32 [ %i.bt, %bb.q ], [ %.08598, %bb.v ], [ %i.bk, %bb.p ], [ 1, %bb.e ] ; 5 uses
  %i.r = icmp slt i32 %.079109, %.0113
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  %i.s = add nsw i32 %.08596, 1
  %i.t = sext i32 %.08596 to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !31
  br label %.loopexit117

bb.h:                                             ; preds = %.loopexit
  %i.w = icmp slt i32 %.0113, %.079109
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %.083100, 1
  %i.y = sext i32 %.083100 to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %1, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !31
  br label %.loopexit118

bb.j:                                             ; preds = %bb.h
  %i.ab = icmp eq i32 %.079109, 1114112
  br i1 %i.ab, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !39
  %i.ad = sext i32 %.081104 to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ad
  store i32 %.079109, ptr %i.ae, align 4, !tbaa !31
  %i.af = add nsw i32 %.08596, 1
  %i.ag = sext i32 %.08596 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !31
  %i.aj = add nsw i32 %.083100, 1
  %i.ak = sext i32 %.083100 to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !31
  br label %bb.f

.loopexit116:                                     ; preds = %bb.e, %bb.f
  %.0112 = phi i32 [ %.1.jt3, %bb.f ], [ %i.p, %bb.e ] ; 4 uses
  %.079108 = phi i32 [ %.180.jt3, %bb.f ], [ %i.o, %bb.e ] ; 6 uses
  %.081103 = phi i32 [ %.182.jt3, %bb.f ], [ 0, %bb.e ] ; 7 uses
  %.08399 = phi i32 [ %.184.jt3, %bb.f ], [ 1, %bb.e ] ; 5 uses
  %.08595 = phi i32 [ %.186.jt3, %bb.f ], [ 1, %bb.e ] ; 5 uses
  %i.an = icmp slt i32 %.079108, %.0112
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit116
  %i.ao = load ptr, ptr %i.q, align 8, !tbaa !39
  %i.ap = add nsw i32 %.081103, 1
  %i.aq = sext i32 %.081103 to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.aq
  store i32 %.079108, ptr %i.ar, align 4, !tbaa !31
  %i.as = add nsw i32 %.08595, 1
  %i.at = sext i32 %.08595 to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !31
  br label %.loopexit118

bb.m:                                             ; preds = %.loopexit116
  %i.aw = icmp slt i32 %.0112, %.079108
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !39
  %i.ay = add nsw i32 %.081103, 1
  %i.az = sext i32 %.081103 to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.az
  store i32 %.0112, ptr %i.ba, align 4, !tbaa !31
  %i.bb = add nsw i32 %.08399, 1
  %i.bc = sext i32 %.08399 to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !31
  br label %.loopexit117

bb.o:                                             ; preds = %bb.m
  %i.bf = icmp eq i32 %.079108, 1114112
  br i1 %i.bf, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.q, align 8, !tbaa !39
  %i.bh = add nsw i32 %.081103, 1
  %i.bi = sext i32 %.081103 to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 %.079108, ptr %i.bj, align 4, !tbaa !31
  %i.bk = add nsw i32 %.08595, 1
  %i.bl = sext i32 %.08595 to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !31
  %i.bo = add nsw i32 %.08399, 1
  %i.bp = sext i32 %.08399 to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !31
  br label %.loopexit

.loopexit117:                                     ; preds = %bb.e, %bb.z, %bb.n, %bb.g
  %.0114 = phi i32 [ %i.dj, %bb.z ], [ %i.be, %bb.n ], [ %.0113, %bb.g ], [ %i.p, %bb.e ] ; 4 uses
  %.079110 = phi i32 [ %i.df, %bb.z ], [ %.079108, %bb.n ], [ %i.v, %bb.g ], [ %i.o, %bb.e ] ; 4 uses
  %.081105 = phi i32 [ %.081106, %bb.z ], [ %i.ay, %bb.n ], [ %.081104, %bb.g ], [ 0, %bb.e ] ; 5 uses
  %.083101 = phi i32 [ %i.dg, %bb.z ], [ %i.bb, %bb.n ], [ %.083100, %bb.g ], [ 1, %bb.e ] ; 5 uses
  %.08597 = phi i32 [ %i.dc, %bb.z ], [ %.08595, %bb.n ], [ %i.s, %bb.g ], [ 1, %bb.e ] ; 5 uses
  %i.bs = icmp slt i32 %.079110, %.0114
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit117
  %i.bt = add nsw i32 %.08597, 1
  %i.bu = sext i32 %.08597 to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !31
  br label %.loopexit

bb.r:                                             ; preds = %.loopexit117
  %i.bx = icmp slt i32 %.0114, %.079110
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = load ptr, ptr %i.q, align 8, !tbaa !39
  %i.bz = sext i32 %.081105 to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.bz
  store i32 %.0114, ptr %i.ca, align 4, !tbaa !31
  %i.cb = add nsw i32 %.083101, 1
  %i.cc = sext i32 %.083101 to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !31
  br label %bb.f

bb.t:                                             ; preds = %bb.r
  %i.cf = icmp eq i32 %.079110, 1114112
  br i1 %i.cf, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = add nsw i32 %.08597, 1
  %i.ch = sext i32 %.08597 to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !31
  %i.ck = add nsw i32 %.083101, 1
  %i.cl = sext i32 %.083101 to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !31
  br label %.loopexit118

.loopexit118:                                     ; preds = %bb.e, %bb.u, %bb.l, %bb.i
  %.0115 = phi i32 [ %i.aa, %bb.i ], [ %i.cn, %bb.u ], [ %.0112, %bb.l ], [ %i.p, %bb.e ] ; 3 uses
  %.079111 = phi i32 [ %.079109, %bb.i ], [ %i.cj, %bb.u ], [ %i.av, %bb.l ], [ %i.o, %bb.e ] ; 5 uses
  %.081106 = phi i32 [ %.081104, %bb.i ], [ %.081105, %bb.u ], [ %i.ap, %bb.l ], [ 0, %bb.e ] ; 5 uses
  %.083102 = phi i32 [ %i.x, %bb.i ], [ %i.ck, %bb.u ], [ %.08399, %bb.l ], [ 1, %bb.e ] ; 5 uses
  %.08598 = phi i32 [ %.08596, %bb.i ], [ %i.cg, %bb.u ], [ %i.as, %bb.l ], [ 1, %bb.e ] ; 5 uses
  %i.co = icmp slt i32 %.0115, %.079111
  br i1 %i.co, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit118
  %i.cp = add nsw i32 %.083102, 1
  %i.cq = sext i32 %.083102 to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !31
  br label %.loopexit

bb.w:                                             ; preds = %.loopexit118
  %i.ct = icmp slt i32 %.079111, %.0115
  br i1 %i.ct, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cu = load ptr, ptr %i.q, align 8, !tbaa !39
  %i.cv = sext i32 %.081106 to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cv
  store i32 %.079111, ptr %i.cw, align 4, !tbaa !31
  %i.cx = add nsw i32 %.08598, 1
  %i.cy = sext i32 %.08598 to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !31
  br label %bb.f

bb.y:                                             ; preds = %bb.w
  %i.db = icmp eq i32 %.079111, 1114112
  br i1 %i.db, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = add nsw i32 %.08598, 1
  %i.dd = sext i32 %.08598 to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !31
  %i.dg = add nsw i32 %.083102, 1
  %i.dh = sext i32 %.083102 to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !31
  br label %.loopexit117

bb.aa:                                            ; preds = %bb.y, %bb.t, %bb.o, %bb.j
  %.081107 = phi i32 [ %.081106, %bb.y ], [ %.081105, %bb.t ], [ %.081103, %bb.o ], [ %.081104, %bb.j ] ; 2 uses
  %i.dk = load ptr, ptr %i.q, align 8, !tbaa !39  ; 2 uses
  %i.dl = add nsw i32 %.081107, 1
  %i.dm = sext i32 %.081107 to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.dm
  store i32 1114112, ptr %i.dn, align 4, !tbaa !31
  store i32 %i.dl, ptr %i.i, align 4, !tbaa !27
  store ptr %i.dk, ptr %i.m, align 8, !tbaa !25
  store ptr %i.n, ptr %i.q, align 8, !tbaa !39
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !26
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !68
  store i32 %i.dr, ptr %i.do, align 8, !tbaa !26
  store i32 %i.dp, ptr %i.dq, align 8, !tbaa !68
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !29 ; 2 uses
  %.not.i92 = icmp eq ptr %i.dt, null
  br i1 %.not.i92, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @uprv_free_78(ptr noundef nonnull %i.dt)
  store ptr null, ptr %i.ds, align 8, !tbaa !29
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.du, align 8, !tbaa !30
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_7810UnicodeSet14releasePatternEv.exit:    ; preds = %bb.ab, %bb.aa, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6retainEi(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
_ZN6icu_7810UnicodeSet6retainEii.exit:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.b, i32 1114111) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.c, ptr %i.a, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = add nuw nsw i32 %i.c, 1
  store i32 %i.e, ptr %i.d, align 4, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1114112, ptr %i.f, align 4, !tbaa !31
  call void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef 2, i8 noundef signext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6retainERKNS_13UnicodeStringE(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  %narrow.i.not = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %narrow.i.not, label %bb.b, label %.critedge15

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !28
  %i.i = and i8 %i.h, 1
  %.not12 = icmp eq i8 %i.i, 0
  br i1 %.not12, label %bb.c, label %.critedge15

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !38   ; 3 uses
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
  %i.w = load i16, ptr %i.v, align 2, !tbaa !36
  %i.x = zext i16 %i.w to i32
  br label %_ZN6icu_7810UnicodeSet6retainEii.exit

bb.d:                                             ; preds = %bb.c
  %i.y = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0) ; 2 uses
  %i.z = icmp slt i32 %i.y, 65536
  br i1 %i.z, label %_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit, label %_ZN6icu_7810UnicodeSet6retainEii.exit

_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit: ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8  ; 2 uses
  %.not.i16 = icmp eq ptr %i.ab, null
  br i1 %.not.i16, label %.critedge, label %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit

_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit: ; preds = %_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit
  %i.ac = tail call noundef i32 @_ZNK6icu_787UVector7indexOfEPvi(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0)
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27
  %.off = add i32 %i.af, 1
  %i.ag = icmp ult i32 %.off, 3
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call noundef i32 @_ZNK6icu_7810UnicodeSet4sizeEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.critedge15, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !32
  %.not.i.i = icmp eq ptr %i.aj, null
  %i.ak = load ptr, ptr %i.d, align 8
  %i.al = icmp eq ptr %i.ak, null
  %narrow.i.not.i = select i1 %.not.i.i, i1 %i.al, i1 false
  br i1 %narrow.i.not.i, label %bb.h, label %_ZN6icu_7810UnicodeSet5clearEv.exit

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25
  store i32 1114112, ptr %i.an, align 4, !tbaa !31
  store i32 1, ptr %i.ae, align 4, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !29 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.ap, null
  br i1 %.not.i3.i, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @uprv_free_78(ptr noundef nonnull %i.ap)
  store ptr null, ptr %i.ao, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.aq, align 8, !tbaa !30
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i

_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i:  ; preds = %bb.i, %bb.h
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !8  ; 2 uses
  %.not2.i = icmp eq ptr %i.ar, null
  br i1 %.not2.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i
  tail call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ar)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i
  store i8 0, ptr %i.g, align 8, !tbaa !28
  br label %_ZN6icu_7810UnicodeSet5clearEv.exit

_ZN6icu_7810UnicodeSet5clearEv.exit:              ; preds = %bb.k, %bb.g
  tail call void @_ZN6icu_7810UnicodeSet4_addERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %.critedge15

.critedge:                                        ; preds = %_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit, %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit
  %i.as = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet5clearEv(ptr noundef nonnull align 8 dereferenceable(200) %0) ; 0 uses
  br label %.critedge15

_ZN6icu_7810UnicodeSet6retainEii.exit:            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.d
  %.1.i.ph = phi i32 [ %i.y, %bb.d ], [ %i.x, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ]
  %i.at = tail call i32 @llvm.umin.i32(i32 %.1.i.ph, i32 1114111) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.at, ptr %i.a, align 4, !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.av = add nuw nsw i32 %i.at, 1
  store i32 %i.av, ptr %i.au, align 4, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1114112, ptr %i.aw, align 4, !tbaa !31
  call void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef 2, i8 noundef signext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.critedge15

.critedge15:                                      ; preds = %.critedge, %_ZN6icu_7810UnicodeSet5clearEv.exit, %_ZN6icu_7810UnicodeSet6retainEii.exit, %bb.f, %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6removeEii(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
_ZN6icu_78L12pinCodePointERi.exit:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.b, i32 1114111) ; 2 uses
  %i.d = tail call i32 @llvm.smax.i32(i32 %2, i32 0) ; 2 uses
  %.not = icmp samesign ult i32 %i.d, %i.c
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN6icu_78L12pinCodePointERi.exit
  %.0 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 1114111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.c, ptr %i.a, align 4, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = add nuw nsw i32 %.0, 1
  store i32 %i.f, ptr %i.e, align 4, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1114112, ptr %i.g, align 4, !tbaa !31
  call void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef 2, i8 noundef signext 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN6icu_78L12pinCodePointERi.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6removeEi(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
_ZN6icu_7810UnicodeSet6removeEii.exit:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.b, i32 1114111) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.c, ptr %i.a, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = add nuw nsw i32 %i.c, 1
  store i32 %i.e, ptr %i.d, align 4, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1114112, ptr %i.f, align 4, !tbaa !31
  call void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef 2, i8 noundef signext 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6removeERKNS_13UnicodeStringE(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  %narrow.i.not = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !28
  %i.i = and i8 %i.h, 1
  %.not7 = icmp eq i8 %i.i, 0
  br i1 %.not7, label %bb.c, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !38   ; 3 uses
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
  %i.w = load i16, ptr %i.v, align 2, !tbaa !36
  %i.x = zext i16 %i.w to i32
  br label %_ZN6icu_7810UnicodeSet6removeEii.exit

bb.d:                                             ; preds = %bb.c
  %i.y = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0) ; 2 uses
  %i.z = icmp slt i32 %i.y, 65536
  br i1 %i.z, label %_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit, label %_ZN6icu_7810UnicodeSet6removeEii.exit

_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit: ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8  ; 2 uses
  %.not8 = icmp eq ptr %i.ab, null
  br i1 %.not8, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit
  %i.ac = tail call noundef signext i8 @_ZN6icu_787UVector13removeElementEPv(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull %1)
  %.not9 = icmp eq i8 %i.ac, 0
  br i1 %.not9, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !29 ; 2 uses
  %.not.i10 = icmp eq ptr %i.ae, null
  br i1 %.not.i10, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @uprv_free_78(ptr noundef nonnull %i.ae)
  store ptr null, ptr %i.ad, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.af, align 8, !tbaa !30
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_7810UnicodeSet6removeEii.exit:            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.d
  %.1.i.ph = phi i32 [ %i.y, %bb.d ], [ %i.x, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ]
  %i.ag = tail call i32 @llvm.umin.i32(i32 %.1.i.ph, i32 1114111) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.ag, ptr %i.a, align 4, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ai = add nuw nsw i32 %i.ag, 1
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1114112, ptr %i.aj, align 4, !tbaa !31
  call void @_ZN6icu_7810UnicodeSet6retainEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef 2, i8 noundef signext 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_7810UnicodeSet14releasePatternEv.exit:    ; preds = %bb.g, %bb.f, %_ZN6icu_7810UnicodeSet6removeEii.exit, %bb.e, %_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit, %bb.a, %bb.b
  ret ptr %0
}

declare noundef signext i8 @_ZN6icu_787UVector13removeElementEPv(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7810UnicodeSet11exclusiveOrEPKiia(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(200) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i8 noundef signext %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !28
  %i.h = and i8 %i.g, 1
  %.not39 = icmp eq i8 %i.h, 0
  br i1 %.not39, label %bb.c, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27
  %i.k = add nsw i32 %i.j, %2
  %i.l = tail call noundef zeroext i1 @_ZN6icu_7810UnicodeSet20ensureBufferCapacityEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.k)
  br i1 %i.l, label %bb.d, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25   ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31
  %i.p = add i8 %3, -1
  %or.cond = icmp ult i8 %i.p, 2
  %i.q = load i32, ptr %1, align 4, !tbaa !31     ; 2 uses
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.034 = phi i32 [ 1, %bb.f ], [ 0, %bb.e ], [ 1, %bb.d ]
  %.0 = phi i32 [ %i.t, %bb.f ], [ 0, %bb.e ], [ %i.q, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.g
  %.037.ph = phi i32 [ 1, %bb.g ], [ %.037.ph.be, %.outer.backedge ] ; 2 uses
  %.135.ph = phi i32 [ %.034, %bb.g ], [ %.135.ph.be, %.outer.backedge ]
  %.032.ph = phi i32 [ 0, %bb.g ], [ %.032.ph.be, %.outer.backedge ]
  %.030.ph = phi i32 [ %i.o, %bb.g ], [ %.030.ph.be, %.outer.backedge ] ; 4 uses
  %.1.ph = phi i32 [ %.0, %bb.g ], [ %.1.ph.be, %.outer.backedge ]
  br label %bb.h

bb.h:                                             ; preds = %.outer, %bb.k
  %.135 = phi i32 [ %i.af, %bb.k ], [ %.135.ph, %.outer ] ; 5 uses
  %.032 = phi i32 [ %i.ac, %bb.k ], [ %.032.ph, %.outer ] ; 7 uses
  %.1 = phi i32 [ %i.ai, %bb.k ], [ %.1.ph, %.outer ] ; 4 uses
  %i.v = icmp slt i32 %.030.ph, %.1
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !39
  %i.x = add nsw i32 %.032, 1
  %i.y = sext i32 %.032 to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y
  store i32 %.030.ph, ptr %i.z, align 4, !tbaa !31
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.i, %bb.m
  %.135.ph.be = phi i32 [ %i.aj, %bb.m ], [ %.135, %bb.i ]
  %.032.ph.be = phi i32 [ %.032, %bb.m ], [ %i.x, %bb.i ]
  %.1.ph.be = phi i32 [ %i.am, %bb.m ], [ %.1, %bb.i ]
  %.pn = zext nneg i32 %.037.ph to i64
  %.030.ph.be.in = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.pn
  %.030.ph.be = load i32, ptr %.030.ph.be.in, align 4, !tbaa !31
  %.037.ph.be = add nuw nsw i32 %.037.ph, 1
  br label %.outer, !llvm.loop !72

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp slt i32 %.1, %.030.ph
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !39
  %i.ac = add nsw i32 %.032, 1
  %i.ad = sext i32 %.032 to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ad
  store i32 %.1, ptr %i.ae, align 4, !tbaa !31
  %i.af = add nsw i32 %.135, 1
  %i.ag = sext i32 %.135 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !31
  br label %bb.h, !llvm.loop !72

bb.l:                                             ; preds = %bb.j
  %.not40 = icmp eq i32 %.030.ph, 1114112
  br i1 %.not40, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = add nsw i32 %.135, 1
  %i.ak = sext i32 %.135 to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !31
  br label %.outer.backedge

bb.n:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !39  ; 2 uses
  %i.ao = add nsw i32 %.032, 1
  %i.ap = sext i32 %.032 to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ap
  store i32 1114112, ptr %i.aq, align 4, !tbaa !31
  store i32 %i.ao, ptr %i.i, align 4, !tbaa !27
  store ptr %i.an, ptr %i.m, align 8, !tbaa !25
  store ptr %i.n, ptr %i.u, align 8, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !68
  store i32 %i.au, ptr %i.ar, align 8, !tbaa !26
  store i32 %i.as, ptr %i.at, align 8, !tbaa !68
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !29 ; 2 uses
  %.not.i41 = icmp eq ptr %i.aw, null
  br i1 %.not.i41, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @uprv_free_78(ptr noundef nonnull %i.aw)
  store ptr null, ptr %i.av, align 8, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.ax, align 8, !tbaa !30
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_7810UnicodeSet14releasePatternEv.exit:    ; preds = %bb.o, %bb.n, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet10complementEi(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %.not.i.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  %narrow.i.not.i = select i1 %.not.i.i, i1 %i.f, i1 false
  br i1 %narrow.i.not.i, label %bb.b, label %_ZN6icu_7810UnicodeSet10complementEii.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !28
  %i.i = and i8 %i.h, 1
  %.not2.i = icmp eq i8 %i.i, 0
  br i1 %.not2.i, label %bb.c, label %_ZN6icu_7810UnicodeSet10complementEii.exit

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.k = tail call i32 @llvm.umin.i32(i32 %i.j, i32 1114111) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.k, ptr %i.a, align 4, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.m = add nuw nsw i32 %i.k, 1
  store i32 %i.m, ptr %i.l, align 4, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1114112, ptr %i.n, align 4, !tbaa !31
  call void @_ZN6icu_7810UnicodeSet11exclusiveOrEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef 2, i8 noundef signext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 2 uses
  %.not.i7.i = icmp eq ptr %i.p, null
  br i1 %.not.i7.i, label %_ZN6icu_7810UnicodeSet10complementEii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @uprv_free_78(ptr noundef nonnull %i.p)
  store ptr null, ptr %i.o, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.q, align 8, !tbaa !30
  br label %_ZN6icu_7810UnicodeSet10complementEii.exit

_ZN6icu_7810UnicodeSet10complementEii.exit:       ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet10complementEv(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !28
  %i.h = and i8 %i.g, 1
  %.not2 = icmp eq i8 %i.h, 0
  br i1 %.not2, label %bb.c, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !31
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !27
  %i.p = add nsw i32 %i.o, -1
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.j, ptr nonnull align 4 %i.m, i64 %i.r, i1 false)
  %i.s = load i32, ptr %i.n, align 4, !tbaa !27
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.n, align 4, !tbaa !27
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !27
  %i.w = add nsw i32 %i.v, 1
  %i.x = tail call noundef zeroext i1 @_ZN6icu_7810UnicodeSet14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.w)
  br i1 %i.x, label %bb.f, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.u, align 4, !tbaa !27
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %i.y, i64 %i.ac, i1 false)
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !25
  store i32 0, ptr %i.ad, align 4, !tbaa !31
  %i.ae = load i32, ptr %i.u, align 4, !tbaa !27
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.u, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %.not.i3 = icmp eq ptr %i.ah, null
  br i1 %.not.i3, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @uprv_free_78(ptr noundef nonnull %i.ah)
  store ptr null, ptr %i.ag, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.ai, align 8, !tbaa !30
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_7810UnicodeSet14releasePatternEv.exit:    ; preds = %bb.h, %bb.g, %bb.e, %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet10complementERKNS_13UnicodeStringE(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  %narrow.i.not = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !28
  %i.i = and i8 %i.h, 1
  %.not8 = icmp eq i8 %i.i, 0
  br i1 %.not8, label %bb.c, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !38   ; 3 uses
  %i.l = icmp slt i16 %i.k, 0
  %i.m = ashr i16 %i.k, 5
  %i.n = sext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = select i1 %i.l, i32 %i.p, i32 %i.n
  switch i32 %i.q, label %_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit [
    i32 1, label %.thread
    i32 2, label %bb.d
  ]

.thread:                                          ; preds = %bb.c
  %i.r = and i16 %i.k, 2
  %.not.i.i.i.i = icmp eq i16 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = select i1 %.not.i.i.i.i, ptr %i.u, ptr %i.s
  %i.w = load i16, ptr %i.v, align 2, !tbaa !36
  %i.x = zext i16 %i.w to i32
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.y = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0) ; 2 uses
  %i.z = icmp slt i32 %i.y, 65536
  br i1 %i.z, label %_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit, label %bb.h

_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit: ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8  ; 2 uses
  %.not.i10 = icmp eq ptr %i.ab, null
  br i1 %.not.i10, label %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.thread, label %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit

_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit: ; preds = %_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit
  %i.ac = tail call noundef i32 @_ZNK6icu_787UVector7indexOfEPvi(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0)
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.af = tail call noundef signext i8 @_ZN6icu_787UVector13removeElementEPv(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull %1) ; 0 uses
  br label %bb.f

_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.thread: ; preds = %_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE.exit, %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit
  tail call void @_ZN6icu_7810UnicodeSet4_addERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.thread, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %.not.i11 = icmp eq ptr %i.ah, null
  br i1 %.not.i11, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @uprv_free_78(ptr noundef nonnull %i.ah)
  store ptr null, ptr %i.ag, align 8, !tbaa !29
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.sink.split

bb.h:                                             ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !32
  %.pre16 = load ptr, ptr %i.d, align 8
  %i.ai = icmp eq ptr %.pre, null
  %i.aj = icmp eq ptr %.pre16, null
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false
  %i.al = tail call i32 @llvm.umin.i32(i32 %i.y, i32 1114111)
  br i1 %i.ak, label %bb.i, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.i:                                             ; preds = %.thread, %bb.h
  %.1.i.ph22 = phi i32 [ %i.x, %.thread ], [ %i.al, %bb.h ] ; 2 uses
  %i.am = load i8, ptr %i.g, align 8, !tbaa !28
  %i.an = and i8 %i.am, 1
  %.not2.i = icmp eq i8 %i.an, 0
  br i1 %.not2.i, label %bb.j, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %.1.i.ph22, ptr %i.a, align 4, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ap = add nuw nsw i32 %.1.i.ph22, 1
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1114112, ptr %i.aq, align 4, !tbaa !31
  call void @_ZN6icu_7810UnicodeSet11exclusiveOrEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef 2, i8 noundef signext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !29 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.as, null
  br i1 %.not.i7.i, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @uprv_free_78(ptr noundef nonnull %i.as)
  store ptr null, ptr %i.ar, align 8, !tbaa !29
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.sink.split

_ZN6icu_7810UnicodeSet14releasePatternEv.exit.sink.split: ; preds = %bb.g, %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.at, align 8, !tbaa !30
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit

_ZN6icu_7810UnicodeSet14releasePatternEv.exit:    ; preds = %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.sink.split, %bb.j, %bb.i, %bb.h, %bb.f, %bb.a, %bb.b
  ret ptr %0
}

declare noundef signext i8 @_ZN6icu_787UVector9retainAllERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

declare noundef signext i8 @_ZN6icu_787UVector9removeAllERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7810UnicodeSet9getStringEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %1)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet7compactEv(ptr noundef nonnull returned align 8 dereferenceable(200) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !28
  %i.h = and i8 %i.g, 1
  %.not10 = icmp eq i8 %i.h, 0
  br i1 %.not10, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %.not11 = icmp eq ptr %i.j, %i.k
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @uprv_free_78(ptr noundef %i.j)
  store ptr null, ptr %i.i, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.l, align 8, !tbaa !68
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25   ; 4 uses
  %i.o = icmp eq ptr %i.n, %i.k
  br i1 %i.o, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !27   ; 4 uses
  %i.r = icmp slt i32 %i.q, 26
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = sext i32 %i.q to i64
  %i.t = shl nsw i64 %i.s, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 4 %i.n, i64 %i.t, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.n)
  store ptr %i.k, ptr %i.m, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 25, ptr %i.u, align 8, !tbaa !26
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.v = add nuw nsw i32 %i.q, 7
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !26
  %i.y = icmp slt i32 %i.v, %i.x
  br i1 %i.y, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = zext nneg i32 %i.q to i64
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = tail call ptr @uprv_realloc_78(ptr noundef %i.n, i64 noundef %i.aa) #26 ; 2 uses
  %.not12 = icmp eq ptr %i.ab, null
  br i1 %.not12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.ab, ptr %i.m, align 8, !tbaa !25
  %i.ac = load i32, ptr %i.p, align 4, !tbaa !27
  store i32 %i.ac, ptr %i.w, align 8, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g, %bb.h, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !8  ; 4 uses
  %.not13 = icmp eq ptr %i.ae, null
  br i1 %.not13, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !20
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.ae) #24
  store ptr null, ptr %i.ad, align 8, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: allocsize(1)
declare ptr @uprv_realloc_78(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7810UnicodeSetC2EPKtiNS0_14ESerializationER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 16)) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_7810UnicodeSetE, i64 16), ptr %0, align 8, !tbaa !23
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7810UnicodeSetE, i64 128), ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 25, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  store i32 1, ptr %i.e, align 4, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i8 0, ptr %i.f, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.h, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.i, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.l = load i32, ptr %4, align 4, !tbaa !33
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.b, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit

_ZN6icu_7810UnicodeSet10setToBogusEv.exit:        ; preds = %bb.a
  store i32 1114112, ptr %i.c, align 8, !tbaa !31
  store i32 1, ptr %i.e, align 4, !tbaa !27
  store i8 1, ptr %i.f, align 8, !tbaa !28
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ne i32 %3, 0
  %i.o = icmp eq ptr %1, null
  %or.cond = or i1 %i.o, %i.n
  %i.p = icmp slt i32 %2, 1
  %or.cond3 = or i1 %i.p, %or.cond
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %4, align 4, !tbaa !33
  %i.q = load ptr, ptr %i.k, align 8
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i55, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit59

_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i55: ; preds = %bb.c
  store i32 1114112, ptr %i.c, align 8, !tbaa !31
  store i32 1, ptr %i.e, align 4, !tbaa !27
  br label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit59

_ZN6icu_7810UnicodeSet10setToBogusEv.exit59:      ; preds = %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i55, %bb.c
  store i8 1, ptr %i.f, align 8, !tbaa !28
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.s = load i16, ptr %1, align 2, !tbaa !73     ; 3 uses
  %.not48 = icmp sgt i16 %i.s, -1                 ; 2 uses
  %i.t = select i1 %.not48, i32 1, i32 2          ; 2 uses
  br i1 %.not48, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !73
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.w = phi i16 [ %i.v, %bb.e ], [ %i.s, %bb.d ] ; 7 uses
  %i.x = zext i16 %i.w to i32                     ; 4 uses
  %i.y = and i16 %i.s, 32767
  %i.z = zext nneg i16 %i.y to i32
  %i.aa = sub nsw i32 %i.z, %i.x                  ; 2 uses
  %i.ab = sdiv i32 %i.aa, 2
  %i.ac = add nsw i32 %i.ab, %i.x                 ; 2 uses
  %i.ad = add nsw i32 %i.ac, 1
  %i.ae = invoke noundef zeroext i1 @_ZN6icu_7810UnicodeSet14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.ad)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  br i1 %i.ae, label %.preheader60, label %bb.j

.preheader60:                                     ; preds = %bb.g
  %.not = icmp eq i16 %i.w, 0
  %.pre.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !25 ; 6 uses
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader60
  %i.af = zext nneg i32 %i.t to i64
  %wide.trip.count = zext i16 %i.w to i64         ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.af ; 2 uses
  %min.iters.check = icmp ult i16 %i.w, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 65528        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %wide.load = load <4 x i16>, ptr %i.ag, align 2, !tbaa !73
  %wide.load74 = load <4 x i16>, ptr %i.ah, align 2, !tbaa !73
  %i.ai = zext <4 x i16> %wide.load to <4 x i32>
  %i.aj = zext <4 x i16> %wide.load74 to <4 x i32>
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre.pre, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <4 x i32> %i.ai, ptr %i.ak, align 4, !tbaa !31
  store <4 x i32> %i.aj, ptr %i.al, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %scalar.ph, %middle.block, %.preheader60
  %i.an = icmp sgt i32 %i.aa, 1
  br i1 %i.an, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %.preheader
  %i.ao = add nuw nsw i32 %i.t, %i.x
  %i.ap = zext i16 %i.w to i64                    ; 5 uses
  %i.aq = zext i16 %i.w to i64                    ; 3 uses
  %i.ar = zext nneg i32 %i.ao to i64
  %i.as = zext nneg i32 %i.ac to i64              ; 2 uses
  %invariant.gep72 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ar ; 3 uses
  %i.at = add nuw nsw i64 %i.ap, 1
  %i.au = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %i.as)
  %i.av = sub nsw i64 %i.au, %i.ap                ; 3 uses
  %min.iters.check76 = icmp ult i64 %i.av, 8
  br i1 %min.iters.check76, label %scalar.ph75.preheader, label %vector.ph77

vector.ph77:                                      ; preds = %.lr.ph63
  %n.vec78 = and i64 %i.av, -8                    ; 3 uses
  %i.aw = add nsw i64 %n.vec78, %i.ap             ; 2 uses
  %invariant.op = sub i64 4, %i.aq
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph77
  %index80 = phi i64 [ 0, %vector.ph77 ], [ %index.next85, %vector.body79 ] ; 2 uses
  %i.ax = add nuw i64 %index80, %i.ap             ; 3 uses
  %i.ay = sub nuw nsw i64 %i.ax, %i.aq
  %.reass = add i64 %i.ax, %invariant.op
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = shl nuw nsw i64 %.reass, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 %i.ba
  %wide.vec = load <8 x i16>, ptr %i.bb, align 2, !tbaa !73
  %i.bd = freeze <8 x i16> %wide.vec
  %i.be = bitcast <8 x i16> %i.bd to <4 x i32>    ; 2 uses
  %wide.vec82 = load <8 x i16>, ptr %i.bc, align 2, !tbaa !73
  %i.bf = freeze <8 x i16> %wide.vec82
  %i.bg = bitcast <8 x i16> %i.bf to <4 x i32>    ; 2 uses
  %i.bh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.be, <4 x i32> %i.be, <4 x i32> splat (i32 16))
  %i.bi = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bg, <4 x i32> %i.bg, <4 x i32> splat (i32 16))
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre.pre, i64 %i.ax ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <4 x i32> %i.bh, ptr %i.bj, align 4, !tbaa !31
  store <4 x i32> %i.bi, ptr %i.bk, align 4, !tbaa !31
  %index.next85 = add nuw i64 %index80, 8         ; 2 uses
  %i.bl = icmp eq i64 %index.next85, %n.vec78
  br i1 %i.bl, label %middle.block86, label %vector.body79, !llvm.loop !76

middle.block86:                                   ; preds = %vector.body79
  %cmp.n87 = icmp eq i64 %i.av, %n.vec78
  br i1 %cmp.n87, label %._crit_edge.thread, label %scalar.ph75.preheader

scalar.ph75.preheader:                            ; preds = %.lr.ph63, %middle.block86
  %indvars.iv65.ph = phi i64 [ %i.ap, %.lr.ph63 ], [ %i.aw, %middle.block86 ]
  br label %scalar.ph75

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bm = load i16, ptr %gep, align 2, !tbaa !73
  %i.bn = zext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre.pre, i64 %indvars.iv
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %scalar.ph, !llvm.loop !77

scalar.ph75:                                      ; preds = %scalar.ph75.preheader, %scalar.ph75
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %scalar.ph75 ], [ %indvars.iv65.ph, %scalar.ph75.preheader ] ; 3 uses
  %i.bp = sub nuw nsw i64 %indvars.iv65, %i.aq
  %.idx = shl nuw nsw i64 %i.bp, 2
  %gep73 = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 %.idx ; 2 uses
  %i.bq = load i16, ptr %gep73, align 2, !tbaa !73
  %i.br = zext i16 %i.bq to i32
  %i.bs = shl nuw i32 %i.br, 16
  %i.bt = getelementptr i8, ptr %gep73, i64 2
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !73
  %i.bv = zext i16 %i.bu to i32
  %i.bw = or disjoint i32 %i.bs, %i.bv
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre.pre, i64 %indvars.iv65
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !31
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 3 uses
  %i.by = icmp samesign ult i64 %indvars.iv.next66, %i.as
  br i1 %i.by, label %scalar.ph75, label %._crit_edge.thread, !llvm.loop !78

._crit_edge.thread:                               ; preds = %scalar.ph75, %middle.block86
  %indvars.iv.next66.lcssa = phi i64 [ %i.aw, %middle.block86 ], [ %indvars.iv.next66, %scalar.ph75 ]
  %i.bz = trunc nuw nsw i64 %indvars.iv.next66.lcssa to i32
  br label %bb.h

._crit_edge:                                      ; preds = %.preheader
  %i.ca = icmp eq i16 %i.w, 0
  br i1 %i.ca, label %._crit_edge._crit_edge, label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.1.lcssa71 = phi i32 [ %i.bz, %._crit_edge.thread ], [ %i.x, %._crit_edge ] ; 3 uses
  %i.cb = zext nneg i32 %.1.lcssa71 to i64        ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %.pre.pre.pre, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !31
  %.not49 = icmp eq i32 %i.ce, 1114112
  br i1 %.not49, label %bb.i, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge, %bb.h
  %.1.lcssa70 = phi i32 [ %.1.lcssa71, %bb.h ], [ 0, %._crit_edge ]
  %.pre-phi = phi i64 [ %i.cb, %bb.h ], [ 0, %._crit_edge ]
  %i.cf = add nuw nsw i32 %.1.lcssa70, 1
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre.pre, i64 %.pre-phi
  store i32 1114112, ptr %i.cg, align 4, !tbaa !31
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %bb.h
  %.2 = phi i32 [ %i.cf, %._crit_edge._crit_edge ], [ %.1.lcssa71, %bb.h ]
  store i32 %.2, ptr %i.e, align 4, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %_ZN6icu_7810UnicodeSet10setToBogusEv.exit59, %_ZN6icu_7810UnicodeSet10setToBogusEv.exit, %bb.i, %bb.g
  ret void

bb.k:                                             ; preds = %bb.f
  %i.ch = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %i.ch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -2147483647, 32770) i32 @_ZNK6icu_7810UnicodeSet9serializeEPtiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !33
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
  store i32 1, ptr %3, align 4, !tbaa !33
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27   ; 3 uses
  %i.h = add nsw i32 %i.g, -1                     ; 7 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i16 0, ptr %1, align 2, !tbaa !73
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  store i32 15, ptr %3, align 4, !tbaa !33
  br label %.loopexit

bb.i:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 7 uses
  %i.l = sext i32 %i.g to i64
  %i.m = getelementptr [4 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31
  %i.p = icmp slt i32 %i.o, 65536
  br i1 %i.p, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load i32, ptr %i.k, align 4, !tbaa !31
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
  %i.v = load i32, ptr %i.u, align 4, !tbaa !31
  %i.w = icmp slt i32 %i.v, 65536
  br i1 %i.w, label %bb.l, label %.critedge.loopexit.split.loop.exit84

bb.l:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !79

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
  %.155 = phi i32 [ %.054.lcssa, %.critedge ], [ 0, %bb.k ], [ %i.h, %bb.i ] ; 8 uses
  %.053 = phi i32 [ %i.aa, %.critedge ], [ %i.t, %bb.k ], [ %i.h, %bb.i ] ; 7 uses
  %i.ab = icmp sgt i32 %.053, 32767
  br i1 %i.ab, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 8, ptr %3, align 4, !tbaa !33
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.ac = icmp sgt i32 %.053, %.155               ; 2 uses
  %i.ad = select i1 %i.ac, i32 2, i32 1
  %i.ae = add nsw i32 %i.ad, %.053                ; 5 uses
  %.not60 = icmp sgt i32 %i.ae, %2
  br i1 %.not60, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = trunc i32 %.053 to i16                  ; 2 uses
  store i16 %i.af, ptr %1, align 2, !tbaa !73
  br i1 %i.ac, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ag = or i16 %i.af, -32768
  store i16 %i.ag, ptr %1, align 2, !tbaa !73
  %i.ah = trunc i32 %.155 to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !73
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.056 = phi ptr [ %i.ai, %bb.q ], [ %1, %bb.p ]
  %.15765 = getelementptr inbounds nuw i8, ptr %.056, i64 2 ; 4 uses
  %i.aj = icmp sgt i32 %.155, 0
  br i1 %i.aj, label %.lr.ph69.preheader, label %.preheader

.lr.ph69.preheader:                               ; preds = %bb.r
  %i.ak = zext nneg i32 %.155 to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %.155, 8
  br i1 %min.iters.check, label %.lr.ph69.preheader111, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph69.preheader
  %n.vec = and i64 %i.ak, 2147483640              ; 5 uses
  %i.al = shl nuw nsw i64 %n.vec, 1
  %i.am = getelementptr i8, ptr %.15765, i64 %i.al ; 2 uses
  %i.an = trunc nuw nsw i64 %n.vec to i32
  %i.ao = shl nuw nsw i64 %n.vec, 2
  %i.ap = getelementptr i8, ptr %i.k, i64 %i.ao   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.15765, i64 %i.aq ; 2 uses
  %i.ar = shl i64 %index, 2
  %next.gep88 = getelementptr i8, ptr %i.k, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep88, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep88, align 4, !tbaa !31
  %wide.load89 = load <4 x i32>, ptr %i.as, align 4, !tbaa !31
  %i.at = trunc <4 x i32> %wide.load to <4 x i16>
  %i.au = trunc <4 x i32> %wide.load89 to <4 x i16>
  %i.av = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.at, ptr %next.gep, align 2, !tbaa !73
  store <4 x i16> %i.au, ptr %i.av, align 2, !tbaa !73
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ak
  br i1 %cmp.n, label %.preheader, label %.lr.ph69.preheader111

.lr.ph69.preheader111:                            ; preds = %.lr.ph69.preheader, %middle.block
  %.15768.ph = phi ptr [ %.15765, %.lr.ph69.preheader ], [ %i.am, %middle.block ]
  %.067.ph = phi i32 [ 0, %.lr.ph69.preheader ], [ %i.an, %middle.block ]
  %.05066.ph = phi ptr [ %i.k, %.lr.ph69.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph69

.preheader:                                       ; preds = %.lr.ph69, %middle.block, %bb.r
  %.050.lcssa = phi ptr [ %i.k, %bb.r ], [ %i.ap, %middle.block ], [ %i.bs, %.lr.ph69 ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %bb.r ], [ %.155, %middle.block ], [ %.155, %.lr.ph69 ] ; 5 uses
  %.157.lcssa = phi ptr [ %.15765, %bb.r ], [ %i.am, %middle.block ], [ %.157, %.lr.ph69 ] ; 4 uses
  %i.ax = icmp slt i32 %.0.lcssa, %.053
  br i1 %i.ax, label %.lr.ph76.preheader, label %.loopexit

.lr.ph76.preheader:                               ; preds = %.preheader
  %i.ay = add nuw i32 %.0.lcssa, 2
  %i.az = tail call i32 @llvm.smax.i32(i32 %.053, i32 %i.ay)
  %i.ba = xor i32 %.0.lcssa, -1
  %i.bb = add i32 %i.az, %i.ba                    ; 2 uses
  %i.bc = lshr i32 %i.bb, 1
  %narrow = add nuw i32 %i.bc, 1
  %i.bd = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check93 = icmp ult i32 %i.bb, 14
  br i1 %min.iters.check93, label %.lr.ph76.preheader110, label %vector.ph94

vector.ph94:                                      ; preds = %.lr.ph76.preheader
  %n.vec95 = and i64 %i.bd, 4294967288            ; 4 uses
  %i.be = trunc nuw i64 %n.vec95 to i32
  %i.bf = shl i32 %i.be, 1
  %i.bg = add i32 %.0.lcssa, %i.bf
  %i.bh = shl nuw nsw i64 %n.vec95, 2             ; 2 uses
  %i.bi = getelementptr i8, ptr %.050.lcssa, i64 %i.bh
  %i.bj = getelementptr i8, ptr %.157.lcssa, i64 %i.bh
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph94
  %index97 = phi i64 [ 0, %vector.ph94 ], [ %index.next104, %vector.body96 ] ; 2 uses
  %i.bk = shl i64 %index97, 2                     ; 3 uses
  %next.gep98 = getelementptr i8, ptr %.050.lcssa, i64 %i.bk ; 2 uses
  %next.gep99 = getelementptr i8, ptr %.157.lcssa, i64 %i.bk
  %i.bl = getelementptr i8, ptr %.157.lcssa, i64 %i.bk
  %next.gep100 = getelementptr i8, ptr %i.bl, i64 16
  %i.bm = getelementptr i8, ptr %next.gep98, i64 16
  %wide.load101 = load <4 x i32>, ptr %next.gep98, align 4, !tbaa !31 ; 2 uses
  %wide.load102 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !31 ; 2 uses
  %i.bn = lshr <4 x i32> %wide.load101, splat (i32 16)
  %i.bo = lshr <4 x i32> %wide.load102, splat (i32 16)
  %i.bp = shufflevector <4 x i32> %i.bn, <4 x i32> %wide.load101, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc <8 x i32> %i.bp to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %next.gep99, align 2, !tbaa !73
  %i.bq = shufflevector <4 x i32> %i.bo, <4 x i32> %wide.load102, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec103 = trunc <8 x i32> %i.bq to <8 x i16>
  store <8 x i16> %interleaved.vec103, ptr %next.gep100, align 2, !tbaa !73
  %index.next104 = add nuw i64 %index97, 8        ; 2 uses
  %i.br = icmp eq i64 %index.next104, %n.vec95
  br i1 %i.br, label %middle.block105, label %vector.body96, !llvm.loop !81

middle.block105:                                  ; preds = %vector.body96
  %cmp.n106 = icmp eq i64 %n.vec95, %i.bd
  br i1 %cmp.n106, label %.loopexit, label %.lr.ph76.preheader110

.lr.ph76.preheader110:                            ; preds = %.lr.ph76.preheader, %middle.block105
  %.175.ph = phi i32 [ %.0.lcssa, %.lr.ph76.preheader ], [ %i.bg, %middle.block105 ]
  %.15174.ph = phi ptr [ %.050.lcssa, %.lr.ph76.preheader ], [ %i.bi, %middle.block105 ]
  %.273.ph = phi ptr [ %.157.lcssa, %.lr.ph76.preheader ], [ %i.bj, %middle.block105 ]
  br label %.lr.ph76

.lr.ph69:                                         ; preds = %.lr.ph69.preheader111, %.lr.ph69
  %.15768 = phi ptr [ %.157, %.lr.ph69 ], [ %.15768.ph, %.lr.ph69.preheader111 ] ; 2 uses
  %.067 = phi i32 [ %i.bv, %.lr.ph69 ], [ %.067.ph, %.lr.ph69.preheader111 ]
  %.05066 = phi ptr [ %i.bs, %.lr.ph69 ], [ %.05066.ph, %.lr.ph69.preheader111 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.05066, i64 4 ; 2 uses
  %i.bt = load i32, ptr %.05066, align 4, !tbaa !31
  %i.bu = trunc i32 %i.bt to i16
  store i16 %i.bu, ptr %.15768, align 2, !tbaa !73
  %i.bv = add nuw nsw i32 %.067, 1                ; 2 uses
  %.157 = getelementptr inbounds nuw i8, ptr %.15768, i64 2 ; 2 uses
  %exitcond80.not = icmp eq i32 %i.bv, %.155
  br i1 %exitcond80.not, label %.preheader, label %.lr.ph69, !llvm.loop !82

.lr.ph76:                                         ; preds = %.lr.ph76.preheader110, %.lr.ph76
  %.175 = phi i32 [ %i.cd, %.lr.ph76 ], [ %.175.ph, %.lr.ph76.preheader110 ]
  %.15174 = phi ptr [ %i.ca, %.lr.ph76 ], [ %.15174.ph, %.lr.ph76.preheader110 ] ; 2 uses
  %.273 = phi ptr [ %i.cc, %.lr.ph76 ], [ %.273.ph, %.lr.ph76.preheader110 ] ; 3 uses
  %i.bw = load i32, ptr %.15174, align 4, !tbaa !31 ; 2 uses
  %i.bx = lshr i32 %i.bw, 16
  %i.by = trunc nuw i32 %i.bx to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %.273, i64 2
  store i16 %i.by, ptr %.273, align 2, !tbaa !73
  %i.ca = getelementptr inbounds nuw i8, ptr %.15174, i64 4
  %i.cb = trunc i32 %i.bw to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %.273, i64 4
  store i16 %i.cb, ptr %i.bz, align 2, !tbaa !73
  %i.cd = add nuw nsw i32 %.175, 2                ; 2 uses
  %i.ce = icmp slt i32 %i.cd, %.053
  br i1 %i.ce, label %.lr.ph76, label %.loopexit, !llvm.loop !83

bb.s:                                             ; preds = %bb.o
  store i32 15, ptr %3, align 4, !tbaa !33
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph76, %middle.block105, %.preheader, %bb.s, %bb.g, %bb.h, %bb.a, %bb.n, %bb.d
  %.052 = phi i32 [ 1, %bb.g ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.n ], [ 1, %bb.h ], [ %i.ae, %bb.s ], [ %i.ae, %.preheader ], [ %i.ae, %middle.block105 ], [ %i.ae, %.lr.ph76 ]
  ret i32 %.052
}

declare void @uprv_deleteUObject_78(ptr noundef) #8

declare signext i8 @uhash_compareUnicodeString_78(ptr, ptr) #8

declare void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_EiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -2147483623, 1114114) i32 @_ZN6icu_7810UnicodeSet12nextCapacityEi(i32 noundef %0) local_unnamed_addr #0 align 2 {
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
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6icu_7810UnicodeSet20ensureBufferCapacityEi(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %1, i32 1114113) ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
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
  %i.j = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.i) #25 ; 2 uses
  %.not11 = icmp eq ptr %i.j, null
  br i1 %.not11, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN6icu_7810UnicodeSet12nextCapacityEi.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.n, null
  %narrow.i.not.i.i = select i1 %.not.i.i.i, i1 %i.o, i1 false
  br i1 %narrow.i.not.i.i, label %bb.h, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  store i32 1114112, ptr %i.q, align 4, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.r, align 4, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29   ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i3.i.i, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @uprv_free_78(ptr noundef nonnull %i.t)
  store ptr null, ptr %i.s, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.u, align 8, !tbaa !30
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i

_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i: ; preds = %bb.i, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8    ; 2 uses
  %.not2.i.i = icmp eq ptr %i.w, null
  br i1 %.not2.i.i, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i
  tail call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.w)
  br label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit

_ZN6icu_7810UnicodeSet10setToBogusEv.exit:        ; preds = %bb.g, %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.x, align 8, !tbaa !28
  br label %bb.n

bb.k:                                             ; preds = %_ZN6icu_7810UnicodeSet12nextCapacityEi.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.not10 = icmp eq ptr %i.z, %i.aa
  br i1 %.not10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @uprv_free_78(ptr noundef %i.z)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr %i.j, ptr %i.y, align 8, !tbaa !39
  store i32 %.0.i, ptr %i.a, align 8, !tbaa !68
  br label %bb.n

bb.n:                                             ; preds = %_ZN6icu_7810UnicodeSet10setToBogusEv.exit, %bb.m, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.m ], [ false, %_ZN6icu_7810UnicodeSet10setToBogusEv.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6icu_7810UnicodeSet11swapBuffersEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  store ptr %i.d, ptr %i.a, align 8, !tbaa !25
  store ptr %i.b, ptr %i.c, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !68
  store i32 %i.h, ptr %i.e, align 8, !tbaa !26
  store i32 %i.f, ptr %i.g, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringERKS1_a(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i16, ptr %i.a, align 8, !tbaa !38   ; 2 uses
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
  %i.j = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.07) ; 2 uses
  tail call void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.j, i8 noundef signext %2)
  %i.k = icmp ult i32 %i.j, 65536
  %i.l = select i1 %i.k, i32 1, i32 2
  %i.m = add nuw nsw i32 %i.l, %.07               ; 2 uses
  %i.n = load i16, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.o = icmp slt i16 %i.n, 0
  %i.p = ashr i16 %i.n, 5
  %i.q = sext i16 %i.p to i32
  %i.r = load i32, ptr %i.b, align 4
  %i.s = select i1 %i.o, i32 %i.r, i32 %i.q
  %i.t = icmp slt i32 %i.m, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !84
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i8 noundef signext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef signext i8 @_ZN6icu_7811ICU_Utility13isUnprintableEi(i32 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef signext i8 @_ZN6icu_7811ICU_Utility21shouldAlwaysBeEscapedEi(i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi i8 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %.not10 = icmp eq i8 %i.e, 0
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7811ICU_Utility6escapeERNS_13UnicodeStringEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) ; 0 uses
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
  store i16 92, ptr %i.b, align 2, !tbaa !36
  %i.g = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.h = tail call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %1)
  %.not11 = icmp eq i8 %i.h, 0
  br i1 %.not11, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 92, ptr %i.a, align 2, !tbaa !36
  %i.i = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.j = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  ret void
}

declare noundef signext i8 @_ZN6icu_7811ICU_Utility13isUnprintableEi(i32 noundef) local_unnamed_addr #8

declare noundef signext i8 @_ZN6icu_7811ICU_Utility21shouldAlwaysBeEscapedEi(i32 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7811ICU_Utility6escapeERNS_13UnicodeStringEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #8

declare noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, i8 noundef signext %3) local_unnamed_addr #4 align 2 {
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
  store i16 45, ptr %i.a, align 2, !tbaa !36
  %i.e = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %2, i8 noundef signext %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7810UnicodeSet10_toPatternERNS_13UnicodeStringEa(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30   ; 2 uses
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
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.j = add nsw i32 %.02736, 1                   ; 4 uses
  %i.k = sext i32 %.02736 to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !36
  %i.n = zext i16 %i.m to i32                     ; 4 uses
  %i.o = and i32 %i.n, 64512
  %i.p = icmp ne i32 %i.o, 55296
  %.not32 = icmp eq i32 %i.j, %i.h
  %or.cond = select i1 %i.p, i1 true, i1 %.not32
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = sext i32 %i.j to i64
  %i.r = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !36
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
  %i.aa = tail call noundef signext i8 @_ZN6icu_7811ICU_Utility13isUnprintableEi(i32 noundef %.1)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = tail call noundef signext i8 @_ZN6icu_7811ICU_Utility21shouldAlwaysBeEscapedEi(i32 noundef %.1)
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
  %i.af = load i16, ptr %i.f, align 8, !tbaa !38  ; 5 uses
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
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
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
  store i16 %i.ar, ptr %i.f, align 8, !tbaa !38
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.o:                                             ; preds = %bb.m
  %i.as = or i16 %i.af, -32
  store i16 %i.as, ptr %i.f, align 8, !tbaa !38
  store i32 %i.al, ptr %i.g, align 4, !tbaa !38
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

_ZN6icu_7813UnicodeString8truncateEi.exit:        ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.i
  %i.at = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7811ICU_Utility6escapeERNS_13UnicodeStringEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.1) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  %i.au = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.1) ; 0 uses
  %i.av = icmp eq i32 %.1, 92
  %i.aw = add nsw i32 %.02537, 1
  %spec.select = select i1 %i.av, i32 %i.aw, i32 0
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN6icu_7813UnicodeString8truncateEi.exit
  %.126 = phi i32 [ 0, %_ZN6icu_7813UnicodeString8truncateEi.exit ], [ %spec.select, %bb.p ]
  %i.ax = load i32, ptr %i.c, align 8, !tbaa !30  ; 2 uses
  %i.ay = icmp slt i32 %.2, %i.ax
  br i1 %i.ay, label %bb.b, label %.loopexit, !llvm.loop !85

bb.r:                                             ; preds = %bb.a
  %i.az = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7810UnicodeSet16_generatePatternERNS_13UnicodeStringEa(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %.preheader, %bb.r
  %.0 = phi ptr [ %i.az, %bb.r ], [ %1, %.preheader ], [ %1, %bb.q ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7810UnicodeSet16_generatePatternERNS_13UnicodeStringEa(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2) local_unnamed_addr #4 align 2 {
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
  store i16 91, ptr %i.h, align 2, !tbaa !36
  %i.i = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.h, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27   ; 5 uses
  %i.l = and i32 %i.k, -2                         ; 3 uses
  %i.m = icmp sgt i32 %i.k, 3
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.p = load i32, ptr %i.o, align 4, !tbaa !31
  %i.q = icmp eq i32 %i.p, 0
  %i.r = icmp eq i32 %i.l, %i.k
  %or.cond56 = and i1 %i.r, %i.q
  br i1 %or.cond56, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8    ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !20
  %.not65 = icmp eq i32 %i.v, 0
  br i1 %.not65, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %bb.d

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread: ; preds = %bb.c, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i16 94, ptr %i.g, align 2, !tbaa !36
  %i.w = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.g, i32 noundef 0, i32 noundef 1) ; 0 uses
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
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.ac = sext i32 %.173 to i64                   ; 5 uses
  %i.ad = getelementptr [4 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !31 ; 3 uses
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
  %i.al = load i32, ptr %i.ad, align 4, !tbaa !31 ; 4 uses
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
  store i16 45, ptr %i.f, align 2, !tbaa !36
  %i.ap = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.f, i32 noundef 0, i32 noundef 1) ; 0 uses
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
  br i1 %i.ar, label %.lr.ph101, label %.critedge, !llvm.loop !86

.lr.ph101:                                        ; preds = %.preheader67.preheader, %.preheader67
  %indvars.iv.next100 = phi i64 [ %indvars.iv.next, %.preheader67 ], [ %indvars.iv.next97, %.preheader67.preheader ] ; 5 uses
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %.preheader67 ], [ %i.ac, %.preheader67.preheader ]
  %indvars.iv7898 = phi i64 [ %indvars.iv.next79, %.preheader67 ], [ %i.ai, %.preheader67.preheader ] ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %indvars.iv.next100
  %i.at = load i32, ptr %i.as, align 4, !tbaa !31
  %i.au = icmp slt i32 %i.at, 56320
  br i1 %i.au, label %.preheader67, label %..critedge_crit_edge, !llvm.loop !86

..critedge_crit_edge:                             ; preds = %.lr.ph101
  br label %.critedge, !llvm.loop !86

.critedge:                                        ; preds = %.preheader67, %..critedge_crit_edge, %.preheader67.preheader
  %indvars.iv78.lcssa = phi i64 [ %i.ai, %.preheader67.preheader ], [ %indvars.iv7898, %..critedge_crit_edge ], [ %indvars.iv.next79, %.preheader67 ]
  %indvars.iv.lcssa = phi i64 [ %i.ac, %.preheader67.preheader ], [ %indvars.iv99, %..critedge_crit_edge ], [ %indvars.iv.next100, %.preheader67 ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next97, %.preheader67.preheader ], [ %indvars.iv.next100, %..critedge_crit_edge ], [ %indvars.iv.next, %.preheader67 ]
  %i.av = trunc nsw i64 %indvars.iv.next.lcssa to i32 ; 3 uses
  %i.aw = icmp sgt i32 %.049, %i.av
  br i1 %i.aw, label %.lr.ph, label %.critedge3

.lr.ph:                                           ; preds = %.critedge, %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit60
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit60 ], [ %indvars.iv78.lcssa, %.critedge ] ; 3 uses
  %i.ax = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %indvars.iv80 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !31 ; 5 uses
  %i.ba = icmp slt i32 %i.az, 57344
  br i1 %i.ba, label %bb.j, label %.critedge3.loopexit

bb.j:                                             ; preds = %.lr.ph
  %i.bb = getelementptr i8, ptr %i.ay, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !31 ; 2 uses
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
  store i16 45, ptr %i.e, align 2, !tbaa !36
  %i.bh = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.bd, i8 noundef signext %2)
  br label %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit60

_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit60: ; preds = %bb.j, %bb.m
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 2 ; 3 uses
  %i.bi = icmp slt i64 %indvars.iv.next81, %i.aa
  br i1 %i.bi, label %.lr.ph, label %.critedge3.loopexit, !llvm.loop !87

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
  %i.bk = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %indvars.iv83 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !31 ; 4 uses
  %i.bn = getelementptr i8, ptr %i.bl, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !31 ; 2 uses
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
  store i16 45, ptr %i.d, align 2, !tbaa !36
  %i.bt = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.bp, i8 noundef signext %2)
  br label %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit63

_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit63: ; preds = %.lr.ph72, %bb.p
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, 2
  %i.bu = icmp slt i64 %indvars.iv83, %indvars.iv.lcssa
  br i1 %i.bu, label %.lr.ph72, label %.loopexit66, !llvm.loop !88

.loopexit66:                                      ; preds = %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit63, %.critedge3, %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit
  %.4 = phi i32 [ %i.aq, %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit ], [ %.3.lcssa, %.critedge3 ], [ %.3.lcssa, %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEiia.exit63 ] ; 2 uses
  %i.bv = icmp slt i32 %.4, %.049
  br i1 %i.bv, label %bb.e, label %._crit_edge, !llvm.loop !89

._crit_edge:                                      ; preds = %.loopexit66, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !8  ; 2 uses
  %.not55 = icmp eq ptr %i.bx, null
  br i1 %.not55, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !20
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph76, label %.loopexit

.lr.ph76:                                         ; preds = %.preheader, %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringERKS1_a.exit
  %.075 = phi i32 [ %i.cz, %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringERKS1_a.exit ], [ 0, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 123, ptr %i.c, align 2, !tbaa !36
  %i.cb = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !8
  %i.cd = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, i32 noundef %.075) ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 12 ; 2 uses
  %i.cg = load i16, ptr %i.ce, align 8, !tbaa !38 ; 2 uses
  %i.ch = icmp slt i16 %i.cg, 0
  %i.ci = ashr i16 %i.cg, 5
  %i.cj = sext i16 %i.ci to i32
  %i.ck = load i32, ptr %i.cf, align 4
  %i.cl = select i1 %i.ch, i32 %i.ck, i32 %i.cj
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringERKS1_a.exit

.lr.ph.i:                                         ; preds = %.lr.ph76, %.lr.ph.i
  %.07.i = phi i32 [ %i.cq, %.lr.ph.i ], [ 0, %.lr.ph76 ] ; 2 uses
  %i.cn = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.cd, i32 noundef %.07.i) ; 2 uses
  call void @_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringEia(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.cn, i8 noundef signext %2)
  %i.co = icmp ult i32 %i.cn, 65536
  %i.cp = select i1 %i.co, i32 1, i32 2
  %i.cq = add nuw nsw i32 %i.cp, %.07.i           ; 2 uses
  %i.cr = load i16, ptr %i.ce, align 8, !tbaa !38 ; 2 uses
  %i.cs = icmp slt i16 %i.cr, 0
  %i.ct = ashr i16 %i.cr, 5
  %i.cu = sext i16 %i.ct to i32
  %i.cv = load i32, ptr %i.cf, align 4
  %i.cw = select i1 %i.cs, i32 %i.cv, i32 %i.cu
  %i.cx = icmp slt i32 %i.cq, %i.cw
  br i1 %i.cx, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringERKS1_a.exit, !llvm.loop !84

_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringERKS1_a.exit: ; preds = %.lr.ph.i, %.lr.ph76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 125, ptr %i.b, align 2, !tbaa !36
  %i.cy = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cz = add nuw nsw i32 %.075, 1                ; 2 uses
  %i.da = load ptr, ptr %i.bw, align 8, !tbaa !8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !20
  %i.dd = icmp slt i32 %i.cz, %i.dc
  br i1 %i.dd, label %.lr.ph76, label %.loopexit, !llvm.loop !90

.loopexit:                                        ; preds = %_ZN6icu_7810UnicodeSet12_appendToPatERNS_13UnicodeStringERKS1_a.exit, %.preheader, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 93, ptr %i.a, align 2, !tbaa !36
  %i.de = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.de
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7810UnicodeSet9toPatternERNS_13UnicodeStringEa(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !38   ; 4 uses
  %i.c = trunc i16 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
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
  store i16 %i.j, ptr %i.a, align 8, !tbaa !38
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

_ZN6icu_7813UnicodeString8truncateEi.exit:        ; preds = %bb.b, %bb.c, %bb.d
  %i.k = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7810UnicodeSet10_toPatternERNS_13UnicodeStringEa(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2)
  ret ptr %i.k
}

; Function Attrs: uwtable
define noundef nonnull ptr @_ZThn8_NK6icu_7810UnicodeSet9toPatternERNS_13UnicodeStringEa(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !38   ; 4 uses
  %i.c = trunc i16 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
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
  store i16 %i.j, ptr %i.a, align 8, !tbaa !38
  br label %_ZNK6icu_7810UnicodeSet9toPatternERNS_13UnicodeStringEa.exit

_ZNK6icu_7810UnicodeSet9toPatternERNS_13UnicodeStringEa.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.k = getelementptr inbounds i8, ptr %0, i64 -8
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7810UnicodeSet10_toPatternERNS_13UnicodeStringEa(ptr noundef nonnull readonly align 8 dereferenceable(200) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2)
  ret ptr %i.l
}

declare ptr @u_memcpy_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN6icu_7810UnicodeSet6freezeEv(ptr noundef nonnull returned align 8 dereferenceable(200) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %narrow.i.not = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %narrow.i.not, label %bb.b, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !28
  %i.h = and i8 %i.g, 1
  %.not12 = icmp eq i8 %i.h, 0
  br i1 %.not12, label %bb.c, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread.thread

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet7compactEv(ptr noundef nonnull align 8 dereferenceable(200) %0) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 2 uses
  %.not.i16 = icmp eq ptr %i.k, null
  br i1 %.not.i16, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !20
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %i.n = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 392) #24 ; 7 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !8
  invoke void @_ZN6icu_7820UnicodeSetStringSpanC1ERKNS_10UnicodeSetERKNS_7UVectorEj(ptr noundef nonnull align 8 dereferenceable(392) %i.n, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i32 noundef 63)
          to label %bb.k unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !40
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.g, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  store i32 1114112, ptr %i.s, align 4, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.t, align 4, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29   ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i3.i.i, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @uprv_free_78(ptr noundef nonnull %i.v)
  store ptr null, ptr %i.u, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.w, align 8, !tbaa !30
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i

_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i: ; preds = %bb.h, %bb.g
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !8    ; 2 uses
  %.not2.i.i = icmp eq ptr %i.x, null
  br i1 %.not2.i.i, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i
  tail call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.x)
  br label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit

_ZN6icu_7810UnicodeSet10setToBogusEv.exit:        ; preds = %bb.f, %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i, %bb.i
  store i8 1, ptr %i.f, align 8, !tbaa !28
  br label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread.thread

bb.j:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.k:                                             ; preds = %bb.e
  store ptr %i.n, ptr %i.c, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 252
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !52
  %.not21 = icmp eq i32 %i.aa, 0
  br i1 %.not21, label %.thread18, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread.thread

.thread18:                                        ; preds = %bb.k
  tail call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %i.n) #24
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.n) #24
  store ptr null, ptr %i.c, align 8, !tbaa !40
  br label %bb.l

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread: ; preds = %bb.c, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %.pr.pr = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.ab = icmp eq ptr %.pr.pr, null
  br i1 %i.ab, label %bb.l, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread.thread

bb.l:                                             ; preds = %.thread18, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread
  %i.ac = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 872) #24 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !27
  invoke void @_ZN6icu_786BMPSetC1EPKii(ptr noundef nonnull align 8 dereferenceable(868) %i.ac, ptr noundef %i.af, i32 noundef %i.ah)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !32
  br label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread.thread

bb.o:                                             ; preds = %bb.l
  store ptr null, ptr %i.a, align 8, !tbaa !32
  tail call void @_ZN6icu_7810UnicodeSet10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread.thread

end_hunk_1
begin_hunk_2_@_ZNK6icu_7810UnicodeSet8spanBackEPKDsi17USetSpanCondition:bb.a
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread57, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %2 to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.d
  %i.f = tail call noundef ptr @_ZNK6icu_786BMPSet8spanBackEPKDsS2_17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(868) %i.c, ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 1
  %i.k = trunc i64 %i.j to i32
  br label %.thread55

bb.d:                                             ; preds = %bb.a
  %i.l = icmp slt i32 %2, 0
  br i1 %i.l, label %bb.e, label %.thread55

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @u_strlen_78(ptr noundef %1) ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.thread55, label %.thread57

.thread57:                                        ; preds = %bb.b, %bb.e
  %.04159 = phi i32 [ %i.m, %bb.e ], [ %2, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40   ; 2 uses
  %.not49 = icmp eq ptr %i.p, null
  br i1 %.not49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread57
  %i.q = tail call noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan8spanBackEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392) %i.p, ptr noundef %1, i32 noundef %.04159, i32 noundef %3)
  br label %.thread55

bb.g:                                             ; preds = %.thread57
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !20
  %.not63 = icmp eq i32 %i.u, 0
  br i1 %.not63, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %i.v = icmp eq i32 %3, 0
  %i.w = select i1 %i.v, i32 25, i32 26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN6icu_7820UnicodeSetStringSpanC1ERKNS_10UnicodeSetERKNS_7UVectorEj(ptr noundef nonnull align 8 dereferenceable(392) %4, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i32 noundef %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 252
  %i.y = load i32, ptr %i.x, align 4, !tbaa !52
  %.not64 = icmp eq i32 %i.y, 0
  br i1 %.not64, label %.thread61, label %bb.i

.thread61:                                        ; preds = %bb.h
  call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.z = invoke noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan8spanBackEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392) %4, ptr noundef %1, i32 noundef %.04159, i32 noundef %3)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.aa

bb.k:                                             ; preds = %bb.i
  call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.thread55

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread: ; preds = %bb.g, %.thread61, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %.not52 = icmp ne i32 %3, 0
  %spec.store.select = zext i1 %.not52 to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.l

bb.l:                                             ; preds = %bb.t, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread
  %.036 = phi i32 [ %.04159, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread ], [ %.3, %bb.t ] ; 5 uses
  %i.ac = add nsw i32 %.036, -1                   ; 3 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !36
  %i.ag = zext i16 %i.af to i32                   ; 4 uses
  %i.ah = and i32 %i.ag, 64512
  %i.ai = icmp eq i32 %i.ah, 56320
  %i.aj = icmp sgt i32 %.036, 1
  %or.cond = and i1 %i.aj, %i.ai
  br i1 %or.cond, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ak = zext nneg i32 %.036 to i64
  %i.al = getelementptr [2 x i8], ptr %1, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -4
  %i.an = load i16, ptr %i.am, align 2, !tbaa !36
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = and i32 %i.ao, 64512
  %i.aq = icmp eq i32 %i.ap, 55296
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = add nsw i32 %.036, -2
  %i.as = shl nuw nsw i32 %i.ao, 10
  %i.at = add nuw nsw i32 %i.ag, -56613888
  %i.au = add nsw i32 %i.at, %i.as
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %.3 = phi i32 [ %i.ac, %bb.l ], [ %i.ar, %bb.n ], [ %i.ac, %bb.m ] ; 3 uses
  %.139 = phi i32 [ %i.ag, %bb.l ], [ %i.au, %bb.n ], [ %i.ag, %bb.m ] ; 5 uses
  %i.av = load ptr, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  %.not13.i = icmp eq ptr %i.av, null
  br i1 %.not13.i, label %.lr.ph.i, label %tailrecurse._crit_edge.i

tailrecurse.i:                                    ; preds = %.lr.ph.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !32 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ay, null
  br i1 %.not.i54, label %.lr.ph.i, label %tailrecurse._crit_edge.i

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %bb.o
  %.lcssa.i = phi ptr [ %i.av, %bb.o ], [ %i.ay, %tailrecurse.i ] ; 2 uses
  %i.az = load ptr, ptr %.lcssa.i, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef signext i8 %i.bb(ptr noundef nonnull align 8 dereferenceable(868) %.lcssa.i, i32 noundef %.139), !inline_history !50
  br label %_ZNK6icu_7810UnicodeSet8containsEi.exit

.lr.ph.i:                                         ; preds = %bb.o, %tailrecurse.i
  %.tr14.i = phi ptr [ %i.aw, %tailrecurse.i ], [ %0, %bb.o ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr14.i, i64 88
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !40 ; 3 uses
  %.not9.i = icmp eq ptr %i.be, null
  br i1 %.not9.i, label %bb.p, label %tailrecurse.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.bf = icmp sgt i32 %.139, 1114111
  br i1 %i.bf, label %_ZNK6icu_7810UnicodeSet8containsEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr14.i, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !25 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !31
  %i.bj = icmp slt i32 %.139, %i.bi
  br i1 %i.bj, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr14.i, i64 28
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !27 ; 3 uses
  %i.bm = add nsw i32 %i.bl, -1                   ; 4 uses
  %i.bn = icmp slt i32 %i.bl, 2
  br i1 %i.bn, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = zext nneg i32 %i.bl to i64
  %i.bp = getelementptr [4 x i8], ptr %i.bh, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 -8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !31
  %.not.i.i = icmp sge i32 %.139, %i.br
  %i.bs = lshr i32 %i.bm, 1                       ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.bt
  br i1 %or.cond.i.i, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %i.bu = phi i32 [ %i.ca, %.lr.ph.i.i ], [ %i.bs, %bb.s ] ; 3 uses
  %.01830.i.i = phi i32 [ %..018.i.i, %.lr.ph.i.i ], [ %i.bm, %bb.s ]
  %.02029.i.i = phi i32 [ %.020..i.i, %.lr.ph.i.i ], [ 0, %bb.s ]
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !31
  %i.by = icmp slt i32 %.139, %i.bx               ; 2 uses
  %.020..i.i = select i1 %i.by, i32 %.02029.i.i, i32 %i.bu ; 3 uses
  %..018.i.i = select i1 %i.by, i32 %i.bu, i32 %.01830.i.i ; 3 uses
  %i.bz = add nuw nsw i32 %..018.i.i, %.020..i.i
  %i.ca = lshr i32 %i.bz, 1                       ; 2 uses
  %i.cb = icmp eq i32 %i.ca, %.020..i.i
  br i1 %i.cb, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %.lr.ph.i.i

_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i:  ; preds = %.lr.ph.i.i, %bb.s, %bb.r, %bb.q
  %.1.i.i = phi i32 [ 0, %bb.q ], [ %i.bm, %bb.r ], [ %i.bm, %bb.s ], [ %..018.i.i, %.lr.ph.i.i ]
  %i.cc = trunc i32 %.1.i.i to i8
  %i.cd = and i8 %i.cc, 1
  br label %_ZNK6icu_7810UnicodeSet8containsEi.exit

_ZNK6icu_7810UnicodeSet8containsEi.exit:          ; preds = %tailrecurse._crit_edge.i, %bb.p, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i
  %.0.i = phi i8 [ %i.bc, %tailrecurse._crit_edge.i ], [ 0, %bb.p ], [ %i.cd, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i ]
  %i.ce = sext i8 %.0.i to i32
  %.not53 = icmp eq i32 %spec.store.select, %i.ce
  br i1 %.not53, label %bb.t, label %.thread55

bb.t:                                             ; preds = %_ZNK6icu_7810UnicodeSet8containsEi.exit
  %i.cf = icmp sgt i32 %.3, 0
  br i1 %i.cf, label %bb.l, label %.thread55, !llvm.loop !91

.thread55:                                        ; preds = %bb.t, %_ZNK6icu_7810UnicodeSet8containsEi.exit, %bb.d, %bb.k, %bb.e, %bb.f, %bb.c
  %.1 = phi i32 [ %i.k, %bb.c ], [ %i.z, %bb.k ], [ %i.q, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ %.3, %bb.t ], [ %.036, %_ZNK6icu_7810UnicodeSet8containsEi.exit ]
  ret i32 %.1
}

declare noundef ptr @_ZNK6icu_786BMPSet8spanBackEPKDsS2_17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(868), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan8spanBackEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7810UnicodeSet8spanUTF8EPKci17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeSetStringSpan", align 8 ; 10 uses
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread97, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef ptr @_ZNK6icu_786BMPSet8spanUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(868) %i.c, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  br label %.thread95

bb.d:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %2, 0
  br i1 %i.i, label %bb.e, label %.thread95

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.thread95, label %.thread97

.thread97:                                        ; preds = %bb.b, %bb.e
  %.06999 = phi i32 [ %i.k, %bb.e ], [ %2, %bb.b ] ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40   ; 2 uses
  %.not84 = icmp eq ptr %i.n, null
  br i1 %.not84, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread97
  %i.o = tail call noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan8spanUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392) %i.n, ptr noundef %1, i32 noundef %.06999, i32 noundef %3)
  br label %.thread95

bb.g:                                             ; preds = %.thread97
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8    ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !20
  %.not103 = icmp eq i32 %i.s, 0
  br i1 %.not103, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %i.t = icmp eq i32 %3, 0
  %i.u = select i1 %i.t, i32 37, i32 38
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN6icu_7820UnicodeSetStringSpanC1ERKNS_10UnicodeSetERKNS_7UVectorEj(ptr noundef nonnull align 8 dereferenceable(392) %4, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.w = load i32, ptr %i.v, align 8, !tbaa !92
  %.not104 = icmp eq i32 %i.w, 0
  br i1 %.not104, label %.thread101, label %bb.i

.thread101:                                       ; preds = %bb.h
  call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = invoke noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan8spanUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392) %4, ptr noundef %1, i32 noundef %.06999, i32 noundef %3)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.y

bb.k:                                             ; preds = %bb.i
  call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.thread95

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread: ; preds = %bb.g, %.thread101, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %.not87 = icmp ne i32 %3, 0
  %spec.store.select = zext i1 %.not87 to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.l

bb.l:                                             ; preds = %bb.af, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread
  %.059 = phi i32 [ 0, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread ], [ %.5, %bb.af ] ; 4 uses
  %i.aa = add nsw i32 %.059, 1                    ; 10 uses
  %i.ab = sext i32 %.059 to i64
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !38  ; 6 uses
  %i.ae = zext i8 %i.ad to i32                    ; 4 uses
  %i.af = icmp sgt i8 %i.ad, -1
  br i1 %i.af, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not88 = icmp eq i32 %i.aa, %.06999
  br i1 %.not88, label %bb.aa, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = icmp samesign ugt i8 %i.ad, -33
  br i1 %i.ag, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.ah = icmp samesign ult i8 %i.ad, -16
  br i1 %i.ah, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ai = and i32 %i.ae, 15                       ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @.str, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !38
  %i.am = zext i8 %i.al to i32
  %i.an = sext i32 %i.aa to i64
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !38  ; 2 uses
  %i.aq = lshr i8 %i.ap, 5
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = shl nuw nsw i32 1, %i.ar
  %i.at = and i32 %i.as, %i.am
  %.not91 = icmp eq i32 %i.at, 0
  br i1 %.not91, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = and i8 %i.ap, 63
  br label %bb.v

bb.r:                                             ; preds = %bb.o
  %i.av = add nsw i32 %i.ae, -240                 ; 2 uses
  %i.aw = icmp samesign ult i8 %i.ad, -11
  br i1 %i.aw, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %bb.r
  %i.ax = sext i32 %i.aa to i64
  %i.ay = getelementptr inbounds i8, ptr %1, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !38
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %i.bb = lshr i32 %i.ba, 4
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !38
  %i.bf = sext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 1, %i.av
  %i.bh = and i32 %i.bg, %i.bf
  %.not89 = icmp eq i32 %i.bh, 0
  br i1 %.not89, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = add nsw i32 %.059, 2                    ; 4 uses
  %.not90 = icmp eq i32 %i.bi, %.06999
  br i1 %.not90, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = shl nuw nsw i32 %i.av, 6
  %i.bk = and i32 %i.ba, 63
  %i.bl = or disjoint i32 %i.bk, %i.bj
  %i.bm = sext i32 %i.bi to i64
  %i.bn = getelementptr inbounds i8, ptr %1, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !38
  %i.bp = xor i8 %i.bo, -128                      ; 2 uses
  %i.bq = icmp ult i8 %i.bp, 64
  br i1 %i.bq, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.q, %bb.u
  %.062 = phi i32 [ %i.ai, %bb.q ], [ %i.bl, %bb.u ]
  %.161 = phi i32 [ %i.aa, %bb.q ], [ %i.bi, %bb.u ]
  %.0 = phi i8 [ %i.au, %bb.q ], [ %i.bp, %bb.u ]
  %i.br = shl nuw nsw i32 %.062, 6
  %i.bs = zext nneg i8 %.0 to i32
  %i.bt = or disjoint i32 %i.br, %i.bs
  %i.bu = add nsw i32 %.161, 1                    ; 2 uses
  %.not92 = icmp eq i32 %i.bu, %.06999
  br i1 %.not92, label %bb.aa, label %bb.y

bb.w:                                             ; preds = %bb.n
  %i.bv = icmp samesign ugt i8 %i.ad, -63
  br i1 %i.bv, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bw = and i32 %i.ae, 31
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.163 = phi i32 [ %i.bt, %bb.v ], [ %i.bw, %bb.x ]
  %.2 = phi i32 [ %i.bu, %bb.v ], [ %i.aa, %bb.x ] ; 3 uses
  %i.bx = sext i32 %.2 to i64
  %i.by = getelementptr inbounds i8, ptr %1, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !38
  %i.ca = xor i8 %i.bz, -128                      ; 2 uses
  %i.cb = icmp ult i8 %i.ca, 64
  br i1 %i.cb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cc = zext nneg i8 %i.ca to i32
  %i.cd = shl nuw nsw i32 %.163, 6
  %i.ce = or disjoint i32 %i.cd, %i.cc
  %i.cf = add nsw i32 %.2, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.p, %bb.m, %bb.l
  %.365 = phi i32 [ %i.ae, %bb.l ], [ %i.ce, %bb.z ], [ 65533, %bb.y ], [ 65533, %bb.w ], [ 65533, %bb.v ], [ 65533, %bb.u ], [ 65533, %bb.t ], [ 65533, %bb.s ], [ 65533, %bb.r ], [ 65533, %bb.p ], [ 65533, %bb.m ] ; 5 uses
  %.5 = phi i32 [ %i.aa, %bb.l ], [ %i.cf, %bb.z ], [ %.2, %bb.y ], [ %i.aa, %bb.w ], [ %.06999, %bb.v ], [ %i.bi, %bb.u ], [ %.06999, %bb.t ], [ %i.aa, %bb.s ], [ %i.aa, %bb.r ], [ %i.aa, %bb.p ], [ %.06999, %bb.m ] ; 3 uses
  %i.cg = load ptr, ptr %i.z, align 8, !tbaa !32  ; 2 uses
  %.not13.i = icmp eq ptr %i.cg, null
  br i1 %.not13.i, label %.lr.ph.i, label %tailrecurse._crit_edge.i

tailrecurse.i:                                    ; preds = %.lr.ph.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !32 ; 2 uses
  %.not.i94 = icmp eq ptr %i.cj, null
  br i1 %.not.i94, label %.lr.ph.i, label %tailrecurse._crit_edge.i

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %bb.aa
  %.lcssa.i = phi ptr [ %i.cg, %bb.aa ], [ %i.cj, %tailrecurse.i ] ; 2 uses
  %i.ck = load ptr, ptr %.lcssa.i, align 8, !tbaa !23
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call noundef signext i8 %i.cm(ptr noundef nonnull align 8 dereferenceable(868) %.lcssa.i, i32 noundef %.365), !inline_history !50
  br label %_ZNK6icu_7810UnicodeSet8containsEi.exit

.lr.ph.i:                                         ; preds = %bb.aa, %tailrecurse.i
  %.tr14.i = phi ptr [ %i.ch, %tailrecurse.i ], [ %0, %bb.aa ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.tr14.i, i64 88
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !40 ; 3 uses
  %.not9.i = icmp eq ptr %i.cp, null
  br i1 %.not9.i, label %bb.ab, label %tailrecurse.i

bb.ab:                                            ; preds = %.lr.ph.i
  %i.cq = icmp sgt i32 %.365, 1114111
  br i1 %i.cq, label %_ZNK6icu_7810UnicodeSet8containsEi.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr14.i, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !25 ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !31
  %i.cu = icmp slt i32 %.365, %i.ct
  br i1 %i.cu, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cv = getelementptr inbounds nuw i8, ptr %.tr14.i, i64 28
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !27 ; 3 uses
  %i.cx = add nsw i32 %i.cw, -1                   ; 4 uses
  %i.cy = icmp slt i32 %i.cw, 2
  br i1 %i.cy, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = zext nneg i32 %i.cw to i64
  %i.da = getelementptr [4 x i8], ptr %i.cs, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !31
  %.not.i.i = icmp sge i32 %.365, %i.dc
  %i.dd = lshr i32 %i.cx, 1                       ; 2 uses
  %i.de = icmp eq i32 %i.dd, 0
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.de
  br i1 %or.cond.i.i, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ae, %.lr.ph.i.i
  %i.df = phi i32 [ %i.dl, %.lr.ph.i.i ], [ %i.dd, %bb.ae ] ; 3 uses
  %.01830.i.i = phi i32 [ %..018.i.i, %.lr.ph.i.i ], [ %i.cx, %bb.ae ]
  %.02029.i.i = phi i32 [ %.020..i.i, %.lr.ph.i.i ], [ 0, %bb.ae ]
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !31
  %i.dj = icmp slt i32 %.365, %i.di               ; 2 uses
  %.020..i.i = select i1 %i.dj, i32 %.02029.i.i, i32 %i.df ; 3 uses
  %..018.i.i = select i1 %i.dj, i32 %i.df, i32 %.01830.i.i ; 3 uses
  %i.dk = add nuw nsw i32 %..018.i.i, %.020..i.i
  %i.dl = lshr i32 %i.dk, 1                       ; 2 uses
  %i.dm = icmp eq i32 %i.dl, %.020..i.i
  br i1 %i.dm, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %.lr.ph.i.i

_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i:  ; preds = %.lr.ph.i.i, %bb.ae, %bb.ad, %bb.ac
  %.1.i.i = phi i32 [ 0, %bb.ac ], [ %i.cx, %bb.ad ], [ %i.cx, %bb.ae ], [ %..018.i.i, %.lr.ph.i.i ]
  %i.dn = trunc i32 %.1.i.i to i8
  %i.do = and i8 %i.dn, 1
  br label %_ZNK6icu_7810UnicodeSet8containsEi.exit

_ZNK6icu_7810UnicodeSet8containsEi.exit:          ; preds = %tailrecurse._crit_edge.i, %bb.ab, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i
  %.0.i = phi i8 [ %i.cn, %tailrecurse._crit_edge.i ], [ 0, %bb.ab ], [ %i.do, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i ]
  %i.dp = sext i8 %.0.i to i32
  %.not93 = icmp eq i32 %spec.store.select, %i.dp
  br i1 %.not93, label %bb.af, label %.thread95

bb.af:                                            ; preds = %_ZNK6icu_7810UnicodeSet8containsEi.exit
  %i.dq = icmp slt i32 %.5, %.06999
  br i1 %i.dq, label %bb.l, label %.thread95, !llvm.loop !93

.thread95:                                        ; preds = %bb.af, %_ZNK6icu_7810UnicodeSet8containsEi.exit, %bb.d, %bb.k, %bb.e, %bb.f, %bb.c
  %.168 = phi i32 [ %i.h, %bb.c ], [ %i.x, %bb.k ], [ %i.o, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ %.5, %bb.af ], [ %.059, %_ZNK6icu_7810UnicodeSet8containsEi.exit ]
  ret i32 %.168
}

declare noundef ptr @_ZNK6icu_786BMPSet8spanUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(868), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

declare noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan8spanUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7810UnicodeSet12spanBackUTF8EPKci17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %4 = alloca %"class.icu_78::UnicodeSetStringSpan", align 8 ; 10 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef i32 @_ZNK6icu_786BMPSet12spanBackUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(868) %i.d, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %.thread38

bb.d:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %2, 0
  br i1 %i.f, label %.thread, label %.thread38

.thread:                                          ; preds = %bb.d
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.thread38, label %.thread.thread

.thread.thread:                                   ; preds = %bb.b, %.thread
  %i.j = phi i32 [ %i.h, %.thread ], [ %2, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40   ; 2 uses
  %.not32 = icmp eq ptr %i.l, null
  br i1 %.not32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread.thread
  %i.m = tail call noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan12spanBackUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392) %i.l, ptr noundef %1, i32 noundef %i.j, i32 noundef %3)
  br label %.thread38

bb.f:                                             ; preds = %.thread.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8    ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20
  %.not42 = icmp eq i32 %i.q, 0
  br i1 %.not42, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %i.r = icmp eq i32 %3, 0
  %i.s = select i1 %i.r, i32 21, i32 22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN6icu_7820UnicodeSetStringSpanC1ERKNS_10UnicodeSetERKNS_7UVectorEj(ptr noundef nonnull align 8 dereferenceable(392) %4, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i32 noundef %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.u = load i32, ptr %i.t, align 8, !tbaa !92
  %.not43 = icmp eq i32 %i.u, 0
  br i1 %.not43, label %.thread40, label %bb.h

.thread40:                                        ; preds = %bb.g
  call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.v = invoke noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan12spanBackUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392) %4, ptr noundef %1, i32 noundef %i.j, i32 noundef %3)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.w

bb.j:                                             ; preds = %bb.h
  call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.thread38

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread: ; preds = %bb.f, %.thread40, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %.not35 = icmp ne i32 %3, 0
  %spec.store.select = zext i1 %.not35 to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.k

bb.k:                                             ; preds = %bb.r, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread
  %i.y = phi i32 [ %i.j, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread ], [ %i.bq, %bb.r ] ; 2 uses
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.a, align 4, !tbaa !31
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !38  ; 2 uses
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = icmp sgt i8 %i.ac, -1
  br i1 %i.ae, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = call i32 @utf8_prevCharSafeBody_78(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef %i.ad, i8 noundef signext -3)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.022 = phi i32 [ %i.ad, %bb.k ], [ %i.af, %bb.l ] ; 5 uses
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !32  ; 2 uses
  %.not13.i = icmp eq ptr %i.ag, null
  br i1 %.not13.i, label %.lr.ph.i, label %tailrecurse._crit_edge.i

tailrecurse.i:                                    ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !32 ; 2 uses
  %.not.i37 = icmp eq ptr %i.aj, null
  br i1 %.not.i37, label %.lr.ph.i, label %tailrecurse._crit_edge.i

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %bb.m
  %.lcssa.i = phi ptr [ %i.ag, %bb.m ], [ %i.aj, %tailrecurse.i ] ; 2 uses
  %i.ak = load ptr, ptr %.lcssa.i, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef signext i8 %i.am(ptr noundef nonnull align 8 dereferenceable(868) %.lcssa.i, i32 noundef %.022), !inline_history !50
  br label %_ZNK6icu_7810UnicodeSet8containsEi.exit

.lr.ph.i:                                         ; preds = %bb.m, %tailrecurse.i
  %.tr14.i = phi ptr [ %i.ah, %tailrecurse.i ], [ %0, %bb.m ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr14.i, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !40 ; 3 uses
  %.not9.i = icmp eq ptr %i.ap, null
  br i1 %.not9.i, label %bb.n, label %tailrecurse.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.aq = icmp sgt i32 %.022, 1114111
  br i1 %i.aq, label %_ZNK6icu_7810UnicodeSet8containsEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr14.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !25 ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !31
  %i.au = icmp slt i32 %.022, %i.at
  br i1 %i.au, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.tr14.i, i64 28
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !27 ; 3 uses
  %i.ax = add nsw i32 %i.aw, -1                   ; 4 uses
  %i.ay = icmp slt i32 %i.aw, 2
  br i1 %i.ay, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = zext nneg i32 %i.aw to i64
  %i.ba = getelementptr [4 x i8], ptr %i.as, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !31
  %.not.i.i = icmp sge i32 %.022, %i.bc
  %i.bd = lshr i32 %i.ax, 1                       ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.be
  br i1 %or.cond.i.i, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %.lr.ph.i.i
  %i.bf = phi i32 [ %i.bl, %.lr.ph.i.i ], [ %i.bd, %bb.q ] ; 3 uses
  %.01830.i.i = phi i32 [ %..018.i.i, %.lr.ph.i.i ], [ %i.ax, %bb.q ]
  %.02029.i.i = phi i32 [ %.020..i.i, %.lr.ph.i.i ], [ 0, %bb.q ]
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !31
  %i.bj = icmp slt i32 %.022, %i.bi               ; 2 uses
  %.020..i.i = select i1 %i.bj, i32 %.02029.i.i, i32 %i.bf ; 3 uses
  %..018.i.i = select i1 %i.bj, i32 %i.bf, i32 %.01830.i.i ; 3 uses
  %i.bk = add nuw nsw i32 %..018.i.i, %.020..i.i
  %i.bl = lshr i32 %i.bk, 1                       ; 2 uses
  %i.bm = icmp eq i32 %i.bl, %.020..i.i
  br i1 %i.bm, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %.lr.ph.i.i

_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i:  ; preds = %.lr.ph.i.i, %bb.q, %bb.p, %bb.o
  %.1.i.i = phi i32 [ 0, %bb.o ], [ %i.ax, %bb.p ], [ %i.ax, %bb.q ], [ %..018.i.i, %.lr.ph.i.i ]
  %i.bn = trunc i32 %.1.i.i to i8
  %i.bo = and i8 %i.bn, 1
  br label %_ZNK6icu_7810UnicodeSet8containsEi.exit

_ZNK6icu_7810UnicodeSet8containsEi.exit:          ; preds = %tailrecurse._crit_edge.i, %bb.n, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i
  %.0.i = phi i8 [ %i.an, %tailrecurse._crit_edge.i ], [ 0, %bb.n ], [ %i.bo, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i ]
  %i.bp = sext i8 %.0.i to i32
  %.not36 = icmp eq i32 %spec.store.select, %i.bp
  br i1 %.not36, label %bb.r, label %.thread38

bb.r:                                             ; preds = %_ZNK6icu_7810UnicodeSet8containsEi.exit
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !31  ; 3 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %bb.k, label %.thread38, !llvm.loop !94

.thread38:                                        ; preds = %bb.r, %_ZNK6icu_7810UnicodeSet8containsEi.exit, %bb.d, %bb.j, %.thread, %bb.e, %bb.c
  %.125 = phi i32 [ %i.e, %bb.c ], [ %i.v, %bb.j ], [ %i.m, %bb.e ], [ 0, %.thread ], [ 0, %bb.d ], [ %i.bq, %bb.r ], [ %i.y, %_ZNK6icu_7810UnicodeSet8containsEi.exit ]
  ret i32 %.125
}

declare noundef i32 @_ZNK6icu_786BMPSet12spanBackUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(868), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

declare noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan12spanBackUTF8EPKhi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

declare i32 @utf8_prevCharSafeBody_78(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #8

declare void @__cxa_pure_virtual() unnamed_addr

declare noundef ptr @_ZNK6icu_7813UnicodeFilter9toMatcherEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

declare noundef ptr @_ZNK6icu_7814UnicodeFunctor10toReplacerEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

declare void @_ZN6icu_7813UnicodeFilter7setDataEPKNS_23TransliterationRuleDataE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #8

declare noundef i32 @_ZNK6icu_787UVector7indexOfEPvi(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef) local_unnamed_addr #8

declare noundef zeroext i1 @_ZNK6icu_787UVectoreqERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

declare noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

declare void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind }
attributes #25 = { allocsize(0) }
attributes #26 = { allocsize(1) }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !18, i64 80}
!9 = !{!"_ZTSN6icu_7810UnicodeSetE", !10, i64 0, !14, i64 16, !5, i64 24, !5, i64 28, !6, i64 32, !16, i64 40, !14, i64 48, !5, i64 56, !17, i64 64, !5, i64 72, !18, i64 80, !19, i64 88, !6, i64 96}
!10 = !{!"_ZTSN6icu_7813UnicodeFilterE", !11, i64 0, !13, i64 8}
!11 = !{!"_ZTSN6icu_7814UnicodeFunctorE", !12, i64 0}
!12 = !{!"_ZTSN6icu_787UObjectE"}
!13 = !{!"_ZTSN6icu_7814UnicodeMatcherE"}
!14 = !{!"p1 int", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 _ZTSN6icu_786BMPSetE", !15, i64 0}
!17 = !{!"p1 char16_t", !15, i64 0}
!18 = !{!"p1 _ZTSN6icu_787UVectorE", !15, i64 0}
!19 = !{!"p1 _ZTSN6icu_7820UnicodeSetStringSpanE", !15, i64 0}
!20 = !{!21, !5, i64 8}
!21 = !{!"_ZTSN6icu_787UVectorE", !12, i64 0, !5, i64 8, !5, i64 12, !22, i64 16, !15, i64 24, !15, i64 32}
!22 = !{!"p1 _ZTS8UElement", !15, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !7, i64 0}
!25 = !{!9, !14, i64 16}
!26 = !{!9, !5, i64 24}
!27 = !{!9, !5, i64 28}
!28 = !{!9, !6, i64 32}
!29 = !{!9, !17, i64 64}
!30 = !{!9, !5, i64 72}
!31 = !{!5, !5, i64 0}
!32 = !{!9, !16, i64 40}
!33 = !{!34, !34, i64 0}
!34 = !{!"_ZTS10UErrorCode", !6, i64 0}
!35 = !{ptr @_ZN6icu_7810UnicodeSet15allocateStringsER10UErrorCode}
!36 = !{!37, !37, i64 0}
!37 = !{!"char16_t", !6, i64 0}
!38 = !{!6, !6, i64 0}
!39 = !{!9, !14, i64 48}
!40 = !{!9, !19, i64 88}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = distinct !{!45, !42}
!46 = distinct !{!46, !42, !47, !48}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = distinct !{!49, !42, !48, !47}
!50 = !{ptr @_ZNK6icu_7810UnicodeSet8containsEi}
!51 = distinct !{!51, !42}
!52 = !{!53, !5, i64 252}
!53 = !{!"_ZTSN6icu_7820UnicodeSetStringSpanE", !9, i64 8, !54, i64 208, !18, i64 216, !14, i64 224, !55, i64 232, !55, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !6, i64 260, !6, i64 264}
!54 = !{!"p1 _ZTSN6icu_7810UnicodeSetE", !15, i64 0}
!55 = !{!"p1 omnipotent char", !15, i64 0}
!56 = distinct !{!56, !42}
!57 = distinct !{!57, !42}
!58 = distinct !{!58, !42}
!59 = distinct !{!59, !42}
!60 = distinct !{null}
!61 = distinct !{!61, !42}
!62 = distinct !{!62, !42}
!63 = distinct !{!63, !42}
!64 = distinct !{!64, !42}
!65 = distinct !{!65, !42}
!66 = distinct !{!66, !42}
!67 = distinct !{!67, !42}
!68 = !{!9, !5, i64 56}
!69 = distinct !{!69, !42}
!70 = distinct !{!70, !42}
!71 = distinct !{!71, !42}
!72 = distinct !{!72, !42}
!73 = !{!74, !74, i64 0}
!74 = !{!"short", !6, i64 0}
!75 = distinct !{!75, !42, !47, !48}
!76 = distinct !{!76, !42, !47, !48}
!77 = distinct !{!77, !42, !48, !47}
!78 = distinct !{!78, !42, !48, !47}
!79 = distinct !{!79, !42}
!80 = distinct !{!80, !42, !47, !48}
!81 = distinct !{!81, !42, !47, !48}
!82 = distinct !{!82, !42, !48, !47}
!83 = distinct !{!83, !42, !48, !47}
!84 = distinct !{!84, !42}
!85 = distinct !{!85, !42}
!86 = distinct !{!86, !42}
!87 = distinct !{!87, !42}
!88 = distinct !{!88, !42}
!89 = distinct !{!89, !42}
!90 = distinct !{!90, !42}
!91 = distinct !{!91, !42}
!92 = !{!53, !5, i64 256}
!93 = distinct !{!93, !42}
!94 = distinct !{!94, !42}
end_hunk_2
