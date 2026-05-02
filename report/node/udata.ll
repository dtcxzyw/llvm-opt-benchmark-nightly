inline.NumInlined: 143
inline.NumDeleted: 39
begin_hunk_0_@_ZL16setCommonICUDataP11UDataMemoryaP10UErrorCode:bb.a
  tail call void @umtx_lock_78(ptr noundef null) #11
  %i.d = load ptr, ptr @_ZL19gCommonICUDataArray, align 16 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %3, label %bb.c

3:                                                ; preds = %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.01825.lcssa.wide = phi i64 [ 0, %bb.b ], [ 1, %bb.d ], [ 2, %bb.f ], [ 3, %bb.h ], [ 4, %bb.j ], [ 5, %bb.l ], [ 6, %bb.n ], [ 7, %bb.p ], [ 8, %bb.r ], [ 9, %bb.t ] ; 2 uses
  %4 = trunc nuw nsw i64 %.01825.lcssa.wide to i32
  %5 = getelementptr inbounds nuw [8 x i8], ptr @_ZL19gCommonICUDataArray, i64 %.01825.lcssa.wide
  store ptr %i.a, ptr %5, align 8
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
begin_hunk_1_@_ZL16setCommonICUDataP11UDataMemoryaP10UErrorCode:bb.a
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.e, align 8              ; 10 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL19gCommonICUDataArray, i64 8), align 8 ; 2 uses
  %.not.1 = icmp eq ptr %i.j, null
  br i1 %.not.1, label %3, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, %i.h
  br i1 %i.m, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL19gCommonICUDataArray, i64 16), align 16 ; 2 uses
  %.not.2 = icmp eq ptr %i.n, null
  br i1 %.not.2, label %3, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.p, %i.h
  br i1 %i.q, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL19gCommonICUDataArray, i64 24), align 8 ; 2 uses
  %.not.3 = icmp eq ptr %i.r, null
  br i1 %.not.3, label %3, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.t, %i.h
  br i1 %i.u, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL19gCommonICUDataArray, i64 32), align 16 ; 2 uses
  %.not.4 = icmp eq ptr %i.v, null
  br i1 %.not.4, label %3, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.x, %i.h
  br i1 %i.y, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL19gCommonICUDataArray, i64 40), align 8 ; 2 uses
  %.not.5 = icmp eq ptr %i.z, null
  br i1 %.not.5, label %3, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.ab, %i.h
  br i1 %i.ac, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL19gCommonICUDataArray, i64 48), align 16 ; 2 uses
  %.not.6 = icmp eq ptr %i.ad, null
  br i1 %.not.6, label %3, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = icmp eq ptr %i.af, %i.h
  br i1 %i.ag, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL19gCommonICUDataArray, i64 56), align 8 ; 2 uses
  %.not.7 = icmp eq ptr %i.ah, null
  br i1 %.not.7, label %3, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.aj, %i.h
  br i1 %i.ak, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL19gCommonICUDataArray, i64 64), align 16 ; 2 uses
  %.not.8 = icmp eq ptr %i.al, null
  br i1 %.not.8, label %3, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.an, %i.h
  br i1 %i.ao, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL19gCommonICUDataArray, i64 72), align 8 ; 2 uses
  %.not.9 = icmp eq ptr %i.ap, null
  br i1 %.not.9, label %3, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ar, %i.h
  %spec.select = select i1 %i.as, i32 9, i32 10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %bb.s, %3
  %.not27 = phi i1 [ true, %3 ], [ false, %bb.c ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.q ], [ false, %bb.o ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.e ]
  %.01823 = phi i32 [ %4, %3 ], [ 0, %bb.c ], [ %spec.select, %bb.u ], [ 8, %bb.s ], [ 7, %bb.q ], [ 6, %bb.o ], [ 5, %bb.m ], [ 4, %bb.k ], [ 3, %bb.i ], [ 2, %bb.g ], [ 1, %bb.e ]
  tail call void @umtx_unlock_78(ptr noundef null) #11
  %6 = icmp eq i32 %.01823, 10
  %7 = icmp ne i8 %1, 0
  %or.cond = and i1 %7, %6
  br i1 %or.cond, label %bb.v, label %8

bb.v:                                             ; preds = %.loopexit
  store i32 -127, ptr %2, align 4
  br label %8

8:                                                ; preds = %bb.v, %.loopexit
  br i1 %.not27, label %bb.w, label %bb.x

bb.w:                                             ; preds = %8
  tail call void @ucln_common_registerCleanup_78(i32 noundef 23, ptr noundef nonnull @_ZL13udata_cleanupv) #11
  br label %bb.y

bb.x:                                             ; preds = %8
  tail call void @uprv_free_78(ptr noundef %i.a) #11
  br label %bb.y

end_hunk_1
