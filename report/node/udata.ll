inline.NumInlined: 143
inline.NumDeleted: 39
begin_hunk_0_@_ZN6icu_7817UDataPathIterator4nextEP10UErrorCode:bb.a
  store i32 0, ptr %i.f, align 8
  %i.y = load ptr, ptr %i.e, align 8
  store i8 0, ptr %i.y, align 1
  %i.z = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.e, ptr noundef nonnull %i.k, i32 noundef %.024, ptr noundef nonnull align 4 dereferenceable(4) %1) #10 ; 0 uses
  %i.aa = load ptr, ptr %i.e, align 8             ; 6 uses
  %i.ab = tail call noundef ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %i.aa, i32 noundef 47) #11 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %.0.i = select i1 %i.ac, ptr %i.aa, ptr %i.ad   ; 2 uses
  %i.ae = load i8, ptr %i.g, align 8
  %i.af = icmp ne i8 %i.ae, 0
  %i.ag = icmp sgt i32 %.024, 3                   ; 2 uses
  %or.cond = and i1 %i.ag, %i.af
  br i1 %or.cond, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ah = add i64 %.024.in, 4294967292
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ai
  %i.ak = load ptr, ptr %i.h, align 8
  %i.al = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.aj, ptr noundef nonnull dereferenceable(1) %i.ak, i64 noundef 4) #11
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.i, align 8
  %i.ao = load i32, ptr %i.j, align 8             ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = tail call i32 @strncmp(ptr noundef nonnull %.0.i, ptr noundef %i.an, i64 noundef %i.ap) #11
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #11
  %i.at = add i32 %i.ao, 4
  %i.au = zext i32 %i.at to i64
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %.loopexit35, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.aw = shl i64 %.024.in, 32                    ; 2 uses
  %sext34 = add i64 %i.aw, -4294967296
  %i.ax = ashr exact i64 %sext34, 32
  %i.ay = getelementptr inbounds i8, ptr %i.aa, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1
  %.not27 = icmp eq i8 %i.az, 47
  br i1 %.not27, label %.loopexit36, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = add i64 %.024.in, 4294967292
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bb
  %i.bd = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.bc, ptr noundef nonnull dereferenceable(5) @.str.1, i64 noundef 4) #11
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bg = load i32, ptr %i.bf, align 8            ; 4 uses
  %i.bh = icmp ne i32 %i.bg, 0
  %i.bi = icmp slt i32 %i.bg, %.024
  %or.cond33 = and i1 %i.bh, %i.bi
  br i1 %or.cond33, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bk = ashr exact i64 %i.aw, 32
  %i.bl = getelementptr inbounds i8, ptr %i.aa, i64 %i.bk
  %i.bm = sext i32 %i.bg to i64
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 %i.bn
  %i.bp = load ptr, ptr %i.bj, align 8
  %i.bq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bo, ptr noundef nonnull dereferenceable(1) %i.bp) #11
  %.not29 = icmp eq i32 %i.bq, 0
  br i1 %.not29, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.br = sub nsw i32 %.024, %i.bg
  %i.bs = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString8truncateEi(ptr noundef nonnull align 8 dereferenceable(60) %i.e, i32 noundef %i.br) #10 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.bt = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.e, i8 noundef signext 47, ptr noundef nonnull align 4 dereferenceable(4) %1) #10 ; 0 uses
  br label %.loopexit36

.loopexit36:                                      ; preds = %bb.m, %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = add nsw i32 %i.by, -1
  %i.ca = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.e, ptr noundef nonnull %i.bw, i32 noundef %i.bz, ptr noundef nonnull align 4 dereferenceable(4) %1) #10 ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8            ; 3 uses
  %.not = icmp eq i32 %i.cc, 0
  br i1 %.not, label %.loopexit35, label %bb.t

bb.t:                                             ; preds = %.loopexit36
  %i.cd = icmp sgt i32 %i.cc, 4
  br i1 %i.cd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ce = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString27ensureEndsWithFileSeparatorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %1) #10 ; 0 uses
  %.sroa.2.0.copyload.pre = load i32, ptr %i.cb, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.2.0.copyload = phi i32 [ %.sroa.2.0.copyload.pre, %bb.u ], [ %i.cc, %bb.t ]
  %.sroa.0.0.copyload = load ptr, ptr %i.h, align 8
  %i.cf = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.e, ptr noundef %.sroa.0.0.copyload, i32 noundef %.sroa.2.0.copyload, ptr noundef nonnull align 4 dereferenceable(4) %1) #10 ; 0 uses
  br label %.loopexit35

.loopexit35:                                      ; preds = %bb.l, %.loopexit36, %bb.v
  %i.cg = load ptr, ptr %i.e, align 8
  br label %.loopexit

bb.w:                                             ; preds = %bb.o, %bb.h
  %i.ch = load ptr, ptr %0, align 8
  %.not31 = icmp eq ptr %i.ch, null
  br i1 %.not31, label %.loopexit, label %bb.b, !llvm.loop !5

.loopexit:                                        ; preds = %bb.b, %bb.w, %.loopexit35, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.cg, %.loopexit35 ], [ null, %bb.w ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString8truncateEi(ptr noundef nonnull align 8 dereferenceable(60), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString27ensureEndsWithFileSeparatorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @udata_setCommonData_78(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.UDataMemory, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %1, align 4
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @UDataMemory_init_78(ptr noundef nonnull %2) #10
  call void @UDataMemory_setData_78(ptr noundef nonnull %2, ptr noundef nonnull %0) #10
  call void @udata_checkCommonData_78(ptr noundef nonnull %2, ptr noundef nonnull %1) #10
  %i.e = load i32, ptr %1, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @_ZL16setCommonICUDataP11UDataMemoryaP10UErrorCode(ptr noundef %2, i8 noundef signext 1, ptr noundef %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.a, %bb.b, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

declare void @UDataMemory_init_78(ptr noundef) local_unnamed_addr #1

declare void @UDataMemory_setData_78(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @udata_checkCommonData_78(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL16setCommonICUDataP11UDataMemoryaP10UErrorCode(ptr noundef nonnull %0, i8 noundef signext range(i8 0, 2) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @UDataMemory_createNewInstance_78(ptr noundef nonnull %2) #10 ; 3 uses
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  tail call void @UDatamemory_assign_78(ptr noundef %i.a, ptr noundef nonnull %0) #10
  tail call void @umtx_lock_78(ptr noundef null) #10
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
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
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
  tail call void @umtx_unlock_78(ptr noundef null) #10
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
  tail call void @ucln_common_registerCleanup_78(i32 noundef 23, ptr noundef nonnull @_ZL13udata_cleanupv) #10
  br label %bb.y

bb.x:                                             ; preds = %8
  tail call void @uprv_free_78(ptr noundef %i.a) #10
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @udata_setAppData_78(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.UDataMemory, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %2, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @UDataMemory_init_78(ptr noundef nonnull %3) #10
  call void @UDataMemory_setData_78(ptr noundef nonnull %3, ptr noundef nonnull %1) #10
  call void @udata_checkCommonData_78(ptr noundef nonnull %3, ptr noundef nonnull %2) #10
  %i.e = call fastcc noundef ptr @_ZL19udata_cacheDataItemPKcP11UDataMemoryP10UErrorCode(ptr noundef %0, ptr noundef %3, ptr noundef %2) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL19udata_cacheDataItemPKcP11UDataMemoryP10UErrorCode(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4
  %i.b = tail call fastcc noundef ptr @_ZL18udata_getHashTableR10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %2) ; 2 uses
  %i.c = load i32, ptr %2, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @uprv_malloc_78(i64 noundef 16) #12 ; 9 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %2, align 4
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.g = tail call ptr @UDataMemory_createNewInstance_78(ptr noundef nonnull %2) #10 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr %i.g, ptr %i.h, align 8
  %i.i = load i32, ptr %2, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @uprv_free_78(ptr noundef nonnull %i.e) #10
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  tail call void @UDatamemory_assign_78(ptr noundef %i.g, ptr noundef nonnull %1) #10
  %i.k = tail call noundef ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef 47) #11 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.0.i = select i1 %i.l, ptr %0, ptr %i.m        ; 2 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #11
  %i.o = shl i64 %i.n, 32
  %sext = add i64 %i.o, 4294967296
  %i.p = ashr exact i64 %sext, 32
  %i.q = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.p) #12 ; 3 uses
  store ptr %i.q, ptr %i.e, align 8
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 7, ptr %2, align 4
  %i.s = load ptr, ptr %i.h, align 8
  tail call void @uprv_free_78(ptr noundef %i.s) #10
  tail call void @uprv_free_78(ptr noundef nonnull %i.e) #10
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.t = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(1) %.0.i) #10 ; 0 uses
  tail call void @umtx_lock_78(ptr noundef null) #10
  %i.u = tail call ptr @uhash_get_78(ptr noundef %i.b, ptr noundef nonnull %0) #10 ; 2 uses
  %.not38 = icmp eq ptr %i.u, null                ; 2 uses
  br i1 %.not38, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 -127, ptr %i.a, align 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.e, align 8
  %i.w = call ptr @uhash_put_78(ptr noundef %i.b, ptr noundef %i.v, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #10 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @umtx_unlock_78(ptr noundef null) #10
  %i.x = load i32, ptr %i.a, align 4              ; 3 uses
  %i.y = icmp ne i32 %i.x, -127
  %i.z = icmp slt i32 %i.x, 1
  %or.cond = and i1 %i.y, %i.z
  br i1 %or.cond, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.x, ptr %2, align 4
  %i.aa = load ptr, ptr %i.e, align 8
  call void @uprv_free_78(ptr noundef %i.aa) #10
  %i.ab = load ptr, ptr %i.h, align 8
  call void @uprv_free_78(ptr noundef %i.ab) #10
  call void @uprv_free_78(ptr noundef nonnull %i.e) #10
  br i1 %.not38, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr %i.h, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.a, %bb.n, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %i.ae, %bb.n ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.a ], [ %i.ad, %bb.m ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @udata_open_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %2, align 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %3, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = tail call fastcc noundef ptr @_ZL12doOpenChoicePKcS0_S0_PFaPvS0_S0_PK9UDataInfoES1_P10UErrorCode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.f, %bb.e
  %.0 = phi ptr [ %i.g, %bb.f ], [ null, %bb.e ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL12doOpenChoicePKcS0_S0_PFaPvS0_S0_PK9UDataInfoES1_P10UErrorCode(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef readonly captures(address_is_null) %3, ptr noundef %4, ptr noundef nonnull %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %6 = alloca %"class.icu_78::CharString", align 8 ; 15 uses
  %7 = alloca %"class.icu_78::CharString", align 8 ; 13 uses
  %8 = alloca %"class.icu_78::CharString", align 8 ; 19 uses
  %9 = alloca %"class.icu_78::CharString", align 8 ; 11 uses
  %10 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %11 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %12 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %13 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %14 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %15 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %16 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %17 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %18 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %19 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %20 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %21 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %22 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4
  %i.b = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.b, label %bb.e, label %bb.b
end_hunk_0
