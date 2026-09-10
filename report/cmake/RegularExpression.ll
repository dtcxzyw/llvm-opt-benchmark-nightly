Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/RegularExpression?download=true
inline.NumInlined: 73
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5cmsys17RegularExpressionaSERKS0_:bb.a
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %indvars.iv.next.3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !18
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %indvars.iv.next.3
  store i8 %i.an, ptr %i.ap, align 1, !tbaa !18
  %.not26.3 = icmp eq i64 %indvars.iv.next.3, 0
  br i1 %.not26.3, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(520) %1, i64 520, i1 false), !tbaa.struct !22
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !23 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !23
  %.not27 = icmp eq ptr %i.ar, null
  br i1 %.not27, label %bb.g, label %._crit_edge36

._crit_edge36:                                    ; preds = %._crit_edge
  %i.at = ptrtoaddr ptr %i.ar to i64
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %.not2831 = icmp eq ptr %i.au, %i.ar
  %i.av = ptrtoaddr ptr %i.au to i64
  %i.aw = sub i64 %i.at, %i.av
  %i.ax = and i64 %i.aw, 4294967295
  %.1.lcssa = select i1 %.not2831, i64 0, i64 %i.ax
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.1.lcssa
  store ptr %i.az, ptr %i.as, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge36, %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i8 %i.bb, ptr %i.bc, align 8, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 521
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 521
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 556
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !27
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 556
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.c
  ret ptr %0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK5cmsys17RegularExpressioneqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(560) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(560) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17
  %.not14 = icmp eq i32 %i.b, %i.d
  br i1 %.not14, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.b, 0
  br i1 %i.i, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = sext i32 %i.b to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.k = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.k, label %.thread, label %bb.d, !llvm.loop !46

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv21 = phi i64 [ %i.j, %.lr.ph ], [ %indvars.iv.next, %bb.c ]
  %indvars.iv.next = add nsw i64 %indvars.iv21, -1 ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.next
  %i.m = load i8, ptr %i.l, align 1, !tbaa !18
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv.next
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18
  %.not16 = icmp eq i8 %i.m, %i.o
  br i1 %.not16, label %bb.c, label %..thread.loopexit_crit_edge22, !llvm.loop !46

..thread.loopexit_crit_edge22:                    ; preds = %bb.d
  br label %.thread, !llvm.loop !46

.thread:                                          ; preds = %bb.c, %.preheader, %..thread.loopexit_crit_edge22, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ true, %.preheader ], [ false, %..thread.loopexit_crit_edge22 ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK5cmsys17RegularExpression10deep_equalERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(560) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(560) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.b, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = sext i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.k, label %._crit_edge, label %bb.c, !llvm.loop !47

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv20 = phi i64 [ %i.j, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv20, -1 ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.next
  %i.m = load i8, ptr %i.l, align 1, !tbaa !18
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv.next
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18
  %.not12 = icmp eq i8 %i.m, %i.o
  br i1 %.not12, label %bb.b, label %.loopexit, !llvm.loop !47

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.p = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t
  %.0.i = select i1 %.not.i, i64 -1, i64 %i.u
  %i.v = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %.not.i13 = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z
  %.0.i14 = select i1 %.not.i13, i64 -1, i64 %i.aa
  %i.ab = icmp eq i64 %.0.i, %.0.i14
  br i1 %i.ab, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %.not.i15 = icmp eq ptr %i.ad, null
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.t
  %.0.i16 = select i1 %.not.i15, i64 -1, i64 %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  %.not.i17 = icmp eq ptr %i.ah, null
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.z
  %.0.i18 = select i1 %.not.i17, i64 -1, i64 %i.aj
  %i.ak = icmp eq i64 %.0.i16, %.0.i18
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %._crit_edge, %bb.d, %bb.a
  %.09 = phi i1 [ %i.ak, %bb.d ], [ false, %bb.a ], [ false, %._crit_edge ], [ false, %bb.c ]
  ret i1 %.09
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5cmsys17RegularExpression7compileEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(560) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.cmsys::RegExpCompile", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %_ZN5cmsys13RegExpCompile4regcEc.exit

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.q

_ZN5cmsys13RegExpCompile4regcEc.exit:             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %1, ptr %2, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 1, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr @_ZN5cmsysL8regdummyE, ptr %i.d, align 8, !tbaa !31
  store i64 1, ptr %i.c, align 8, !tbaa !32
  %i.e = call noundef ptr @_ZN5cmsys13RegExpCompile3regEiPi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 0, ptr noundef nonnull %i.a)
  %.not27 = icmp eq ptr %i.e, null
  br i1 %.not27, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit
  %puts28 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.p

bb.d:                                             ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit
  store ptr null, ptr %0, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr null, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr null, ptr %i.g, align 8, !tbaa !33
  %i.h = load i64, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 65534
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %puts34 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5cmsys13RegExpCompile4regcEc.exit37, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.k) #15
  %.pre = load i64, ptr %i.c, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit37

_ZN5cmsys13RegExpCompile4regcEc.exit37:           ; preds = %bb.f, %bb.g
  %3 = phi i64 [ %i.h, %bb.f ], [ %.pre, %bb.g ]
  %4 = call noalias noundef nonnull ptr @_Znam(i64 noundef %3) #14 ; 3 uses
  store ptr %4, ptr %i.j, align 8, !tbaa !16
  %5 = load i64, ptr %i.c, align 8, !tbaa !32
  %i.m = trunc i64 %5 to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i32 %i.m, ptr %i.n, align 8, !tbaa !17
  %i.o = load i32, ptr %i.b, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 556
  store i32 %i.o, ptr %i.p, align 4, !tbaa !27
  store ptr %1, ptr %2, align 8, !tbaa !29
  store i32 1, ptr %i.b, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 1
  store ptr %i.q, ptr %i.d, align 8, !tbaa !31
  store i8 -100, ptr %4, align 1, !tbaa !18
  %i.r = call noundef ptr @_ZN5cmsys13RegExpCompile3regEiPi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  store i8 0, ptr %i.s, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 521 ; 2 uses
  store i8 0, ptr %i.t, align 1, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 536
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !16   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 3 uses
  %i.y = icmp ne ptr %i.x, @_ZN5cmsysL8regdummyE
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !18
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !18
  %i.af = zext i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ac, %i.af            ; 2 uses
  %i.ah = icmp ne i32 %i.ag, 0
  call void @llvm.assume(i1 %i.ah)
  %i.ai = load i8, ptr %i.x, align 1, !tbaa !18
  %i.aj = icmp eq i8 %i.ai, 7
  %i.ak = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.al = sub nsw i64 0, %i.ak
  %.0.i.v = select i1 %i.aj, i64 %i.al, i64 %i.ak
  %.0.i = getelementptr inbounds i8, ptr %i.x, i64 %.0.i.v
  %i.am = load i8, ptr %.0.i, align 1, !tbaa !18
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.h, label %bb.p

bb.h:                                             ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !18
  switch i8 %i.ap, label %bb.k [
    i8 8, label %bb.i
    i8 1, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 7
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !18
  store i8 %i.ar, ptr %i.s, align 8, !tbaa !24
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i8 1, ptr %i.t, align 1, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i
  %i.as = load i32, ptr %i.a, align 4, !tbaa !34
  %i.at = and i32 %i.as, 4
  %.not31 = icmp eq i32 %i.at, 0
  br i1 %.not31, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.k, %_ZN5cmsysL7regnextEPKc.exit39
  %.042 = phi i64 [ %.1, %_ZN5cmsysL7regnextEPKc.exit39 ], [ 0, %bb.k ] ; 3 uses
  %.01841 = phi ptr [ %.119, %_ZN5cmsysL7regnextEPKc.exit39 ], [ null, %bb.k ] ; 2 uses
  %.02040 = phi ptr [ %i.bk, %_ZN5cmsysL7regnextEPKc.exit39 ], [ %i.ao, %bb.k ] ; 6 uses
  %i.au = load i8, ptr %.02040, align 1, !tbaa !18 ; 2 uses
  %i.av = icmp eq i8 %i.au, 8
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %.02040, i64 3 ; 2 uses
  %6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #17 ; 2 uses
  %.not33 = icmp ult i64 %6, %.042
  %spec.select = select i1 %.not33, ptr %.01841, ptr %i.aw
  %spec.select35 = call i64 @llvm.umax.i64(i64 %6, i64 %.042)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader
  %.119 = phi ptr [ %.01841, %.preheader ], [ %spec.select, %bb.l ] ; 2 uses
  %.1 = phi i64 [ %.042, %.preheader ], [ %spec.select35, %bb.l ] ; 2 uses
  %i.ax = icmp eq ptr %.02040, @_ZN5cmsysL8regdummyE
  br i1 %i.ax, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %.02040, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !18
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.02040, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !18
  %i.be = zext i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bb, %i.be            ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %_ZN5cmsysL7regnextEPKc.exit39

_ZN5cmsysL7regnextEPKc.exit39:                    ; preds = %bb.n
  %i.bh = icmp eq i8 %i.au, 7
  %i.bi = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bj = sub nsw i64 0, %i.bi
  %.sink = select i1 %i.bh, i64 %i.bj, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %.02040, i64 %.sink
  br label %.preheader, !llvm.loop !48

bb.o:                                             ; preds = %bb.m, %bb.n
  store ptr %.119, ptr %i.u, align 8, !tbaa !23
  store i64 %.1, ptr %i.v, align 8, !tbaa !26
  br label %bb.p

bb.p:                                             ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit37, %bb.o, %bb.k, %bb.e, %bb.c
  %.021 = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ true, %_ZN5cmsys13RegExpCompile4regcEc.exit37 ], [ true, %bb.k ], [ true, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.b
  %.122 = phi i1 [ %.021, %bb.p ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i1 %.122
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5cmsys13RegExpCompile4regcEc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i8 noundef signext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %.not = icmp eq ptr %i.b, @_ZN5cmsysL8regdummyE
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.c, ptr %i.a, align 8, !tbaa !31
  store i8 %1, ptr %i.b, align 1, !tbaa !18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !32
  %i.f = add nsw i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef ptr @_ZN5cmsys13RegExpCompile3regEiPi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr nofree noundef captures(none) initializes((0, 4)) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  store i32 1, ptr %2, align 4, !tbaa !34
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %._crit_edge121, label %bb.b

._crit_edge121:                                   ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !31
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 31
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, 1
  store i32 %i.f, ptr %i.c, align 8, !tbaa !30
  %i.g = trunc i32 %i.d to i8                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 6 uses
  %i.j = icmp eq ptr %i.i, @_ZN5cmsysL8regdummyE
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  %i.m = add nsw i64 %i.l, 3
  store i64 %i.m, ptr %i.k, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit

bb.f:                                             ; preds = %bb.d
  %i.n = add i8 %i.g, 20
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.n, ptr %i.i, align 1, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 0, ptr %i.o, align 1, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 3 ; 2 uses
  store i8 0, ptr %i.p, align 1, !tbaa !18
  store ptr %i.q, ptr %i.h, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit

_ZN5cmsys13RegExpCompile7regnodeEc.exit:          ; preds = %bb.e, %bb.f
  %i.r = phi ptr [ @_ZN5cmsysL8regdummyE, %bb.e ], [ %i.q, %bb.f ]
  %i.s = add i8 %i.g, 52
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge121, %_ZN5cmsys13RegExpCompile7regnodeEc.exit
  %i.t = phi ptr [ %i.r, %_ZN5cmsys13RegExpCompile7regnodeEc.exit ], [ %.pre, %._crit_edge121 ] ; 8 uses
  %i.u = phi i8 [ %i.s, %_ZN5cmsys13RegExpCompile7regnodeEc.exit ], [ 0, %._crit_edge121 ]
  %.029 = phi ptr [ %i.i, %_ZN5cmsys13RegExpCompile7regnodeEc.exit ], [ null, %._crit_edge121 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.w = icmp eq ptr %i.t, @_ZN5cmsysL8regdummyE
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !32
  %i.z = add nsw i64 %i.y, 3
  store i64 %i.z, ptr %i.x, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.preheader

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 6, ptr %i.t, align 1, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store i8 0, ptr %i.aa, align 1, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  store i8 0, ptr %i.ab, align 1, !tbaa !18
  store ptr %i.ac, ptr %i.v, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.preheader

_ZN5cmsys13RegExpCompile7regnodeEc.exit88.preheader: ; preds = %bb.h, %bb.i
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit88

_ZN5cmsys13RegExpCompile7regnodeEc.exit88:        ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.backedge, %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.preheader
  %.0 = phi i32 [ 0, %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.preheader ], [ %.0.be, %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.backedge ] ; 3 uses
  %.0.i = phi ptr [ null, %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.preheader ], [ %i.af, %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.backedge ] ; 4 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !29
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !18
  switch i8 %i.ae, label %bb.j [
    i8 0, label %.critedge.i
    i8 124, label %.critedge.i
    i8 41, label %.critedge.i
  ]

bb.j:                                             ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit88
  %i.af = call noundef ptr @_ZN5cmsys13RegExpCompile8regpieceEPi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b), !inline_history !51 ; 3 uses
  %.not18.i = icmp eq ptr %i.af, null
  br i1 %.not18.i, label %_ZN5cmsys13RegExpCompile9regbranchEPi.exit.thread, label %bb.k

_ZN5cmsys13RegExpCompile9regbranchEPi.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !34  ; 2 uses
  %i.ah = and i32 %i.ag, 1
  %i.ai = or i32 %i.ah, %.0                       ; 3 uses
  %.not19.i = icmp eq ptr %.0.i, null
  br i1 %.not19.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = and i32 %i.ag, 4
  %i.ak = or i32 %i.ai, %i.aj
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.backedge

bb.m:                                             ; preds = %bb.k
  %i.al = icmp eq ptr %.0.i, @_ZN5cmsysL8regdummyE
  br i1 %i.al, label %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.backedge, label %.preheader.i78

.preheader.i78:                                   ; preds = %bb.m, %_ZN5cmsysL7regnextEPc.exit.i80
  %.01318.i79 = phi ptr [ %.0.i.i82, %_ZN5cmsysL7regnextEPc.exit.i80 ], [ %.0.i, %bb.m ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01318.i79, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !18
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.01318.i79, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !18
  %i.as = zext i8 %i.ar to i32
  %i.at = or disjoint i32 %i.ap, %i.as            ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN5cmsysL7regnextEPc.exit.thread.i83, label %_ZN5cmsysL7regnextEPc.exit.i80

_ZN5cmsysL7regnextEPc.exit.i80:                   ; preds = %.preheader.i78
  %i.av = load i8, ptr %.01318.i79, align 1, !tbaa !18
  %i.aw = icmp eq i8 %i.av, 7
  %i.ax = zext nneg i32 %i.at to i64              ; 2 uses
  %i.ay = sub nsw i64 0, %i.ax
  %.0.i.v.i81 = select i1 %i.aw, i64 %i.ay, i64 %i.ax
  %.0.i.i82 = getelementptr inbounds i8, ptr %.01318.i79, i64 %.0.i.v.i81 ; 2 uses
  %i.az = icmp eq ptr %.0.i.i82, @_ZN5cmsysL8regdummyE
  br i1 %i.az, label %_ZN5cmsysL7regnextEPc.exit.thread.i83, label %.preheader.i78, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i83:            ; preds = %_ZN5cmsysL7regnextEPc.exit.i80, %.preheader.i78
  %.013.lcssa.i84 = phi ptr [ %.01318.i79, %.preheader.i78 ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i80 ] ; 4 uses
  %i.ba = load i8, ptr %.013.lcssa.i84, align 1, !tbaa !18
  %i.bb = icmp eq i8 %i.ba, 7
  %i.bc = ptrtoint ptr %.013.lcssa.i84 to i64     ; 2 uses
  %i.bd = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = sub i64 %i.bd, %i.bc
  %.0.in.i85 = select i1 %i.bb, i64 %i.be, i64 %i.bf ; 2 uses
  %.0.i86 = trunc i64 %.0.in.i85 to i8
  %i.bg = lshr i64 %.0.in.i85, 8
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.lcssa.i84, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.lcssa.i84, i64 2
  store i8 %.0.i86, ptr %i.bj, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.backedge

_ZN5cmsys13RegExpCompile7regnodeEc.exit88.backedge: ; preds = %_ZN5cmsysL7regnextEPc.exit.thread.i83, %bb.m, %bb.l
  %.0.be = phi i32 [ %i.ai, %bb.m ], [ %i.ai, %_ZN5cmsysL7regnextEPc.exit.thread.i83 ], [ %i.ak, %bb.l ]
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit88, !llvm.loop !1

.critedge.i:                                      ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit88, %_ZN5cmsys13RegExpCompile7regnodeEc.exit88, %_ZN5cmsys13RegExpCompile7regnodeEc.exit88
  %.not17.i = icmp eq ptr %.0.i, null
  br i1 %.not17.i, label %bb.n, label %_ZN5cmsys13RegExpCompile9regbranchEPi.exit

bb.n:                                             ; preds = %.critedge.i
  %i.bk = load ptr, ptr %i.v, align 8, !tbaa !31  ; 5 uses
  %i.bl = icmp eq ptr %i.bk, @_ZN5cmsysL8regdummyE
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.bo = add nsw i64 %i.bn, 3
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile9regbranchEPi.exit

bb.p:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store i8 9, ptr %i.bk, align 1, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store i8 0, ptr %i.bp, align 1, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  store i8 0, ptr %i.bq, align 1, !tbaa !18
  store ptr %i.br, ptr %i.v, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile9regbranchEPi.exit

_ZN5cmsys13RegExpCompile9regbranchEPi.exit:       ; preds = %bb.p, %bb.o, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %.not35 = icmp eq ptr %i.t, null
  br i1 %.not35, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %_ZN5cmsys13RegExpCompile9regbranchEPi.exit
  %.not36 = icmp eq ptr %.029, null
  br i1 %.not36, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_0
begin_hunk_1_@_ZN5cmsys13RegExpCompile3regEiPi:bb.a
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  store i8 0, ptr %i.gh, align 1, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 3
  store i8 0, ptr %i.gi, align 1, !tbaa !18
  store ptr %i.gj, ptr %i.v, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit64

_ZN5cmsys13RegExpCompile7regnodeEc.exit64:        ; preds = %bb.ad, %bb.ae
  %i.gk = icmp eq ptr %.1, @_ZN5cmsysL8regdummyE
  br i1 %i.gk, label %_ZN5cmsys13RegExpCompile7regnodeEc.exit64._ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74_crit_edge, label %.preheader.i65

_ZN5cmsys13RegExpCompile7regnodeEc.exit64._ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74_crit_edge: ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit64
  %.pre124 = ptrtoint ptr %i.gc to i64
  br label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74

.preheader.i65:                                   ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit64, %_ZN5cmsysL7regnextEPc.exit.i67
  %.01318.i66 = phi ptr [ %.0.i.i69, %_ZN5cmsysL7regnextEPc.exit.i67 ], [ %.1, %_ZN5cmsys13RegExpCompile7regnodeEc.exit64 ] ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.01318.i66, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !18
  %i.gn = zext i8 %i.gm to i32
  %i.go = shl nuw nsw i32 %i.gn, 8
  %i.gp = getelementptr inbounds nuw i8, ptr %.01318.i66, i64 2
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !18
  %i.gr = zext i8 %i.gq to i32
  %i.gs = or disjoint i32 %i.go, %i.gr            ; 2 uses
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %_ZN5cmsysL7regnextEPc.exit.thread.i70, label %_ZN5cmsysL7regnextEPc.exit.i67

_ZN5cmsysL7regnextEPc.exit.i67:                   ; preds = %.preheader.i65
  %i.gu = load i8, ptr %.01318.i66, align 1, !tbaa !18
  %i.gv = icmp eq i8 %i.gu, 7
  %i.gw = zext nneg i32 %i.gs to i64              ; 2 uses
  %i.gx = sub nsw i64 0, %i.gw
  %.0.i.v.i68 = select i1 %i.gv, i64 %i.gx, i64 %i.gw
  %.0.i.i69 = getelementptr inbounds i8, ptr %.01318.i66, i64 %.0.i.v.i68 ; 2 uses
  %i.gy = icmp eq ptr %.0.i.i69, @_ZN5cmsysL8regdummyE
  br i1 %i.gy, label %_ZN5cmsysL7regnextEPc.exit.thread.i70, label %.preheader.i65, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i70:            ; preds = %_ZN5cmsysL7regnextEPc.exit.i67, %.preheader.i65
  %.013.lcssa.i71 = phi ptr [ %.01318.i66, %.preheader.i65 ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i67 ] ; 4 uses
  %i.gz = load i8, ptr %.013.lcssa.i71, align 1, !tbaa !18
  %i.ha = icmp eq i8 %i.gz, 7
  %i.hb = ptrtoint ptr %.013.lcssa.i71 to i64     ; 2 uses
  %i.hc = ptrtoint ptr %i.gc to i64               ; 3 uses
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = sub i64 %i.hc, %i.hb
  %.0.in.i72 = select i1 %i.ha, i64 %i.hd, i64 %i.he ; 2 uses
  %.0.i73 = trunc i64 %.0.in.i72 to i8
  %i.hf = lshr i64 %.0.in.i72, 8
  %i.hg = trunc i64 %i.hf to i8
  %i.hh = getelementptr inbounds nuw i8, ptr %.013.lcssa.i71, i64 1
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %.013.lcssa.i71, i64 2
  store i8 %.0.i73, ptr %i.hi, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74

_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74:    ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit64._ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74_crit_edge, %_ZN5cmsysL7regnextEPc.exit.thread.i70
  %.pre-phi = phi i64 [ %.pre124, %_ZN5cmsys13RegExpCompile7regnodeEc.exit64._ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74_crit_edge ], [ %i.hc, %_ZN5cmsysL7regnextEPc.exit.thread.i70 ] ; 2 uses
  %i.hj = icmp eq ptr %.1, @_ZN5cmsysL8regdummyE
  br i1 %i.hj, label %_ZN5cmsysL7regnextEPc.exit.thread, label %.lr.ph157

.lr.ph157:                                        ; preds = %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74, %_ZN5cmsysL7regnextEPc.exit
  %.028116156 = phi ptr [ %i.ix, %_ZN5cmsysL7regnextEPc.exit ], [ %.1, %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74 ] ; 6 uses
  %i.hk = load i8, ptr %.028116156, align 1, !tbaa !18
  %.not.i = icmp ne i8 %i.hk, 6
  %i.hl = getelementptr inbounds nuw i8, ptr %.028116156, i64 3 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, @_ZN5cmsysL8regdummyE
  %or.cond7.i = select i1 %.not.i, i1 true, i1 %i.hm
  br i1 %or.cond7.i, label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit.thread111, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph157, %_ZN5cmsysL7regnextEPc.exit.i.i
  %.01318.i.i = phi ptr [ %.0.i.i.i, %_ZN5cmsysL7regnextEPc.exit.i.i ], [ %i.hl, %.lr.ph157 ] ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.01318.i.i, i64 1
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !18
  %i.hp = zext i8 %i.ho to i32
  %i.hq = shl nuw nsw i32 %i.hp, 8
  %i.hr = getelementptr inbounds nuw i8, ptr %.01318.i.i, i64 2
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !18
  %i.ht = zext i8 %i.hs to i32
  %i.hu = or disjoint i32 %i.hq, %i.ht            ; 2 uses
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit, label %_ZN5cmsysL7regnextEPc.exit.i.i

_ZN5cmsysL7regnextEPc.exit.i.i:                   ; preds = %.preheader.i.i
  %i.hw = load i8, ptr %.01318.i.i, align 1, !tbaa !18
  %i.hx = icmp eq i8 %i.hw, 7
  %i.hy = zext nneg i32 %i.hu to i64              ; 2 uses
  %i.hz = sub nsw i64 0, %i.hy
  %.0.i.v.i.i = select i1 %i.hx, i64 %i.hz, i64 %i.hy
  %.0.i.i.i = getelementptr inbounds i8, ptr %.01318.i.i, i64 %.0.i.v.i.i ; 2 uses
  %i.ia = icmp eq ptr %.0.i.i.i, @_ZN5cmsysL8regdummyE
  br i1 %i.ia, label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit, label %.preheader.i.i, !llvm.loop !0

_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit:    ; preds = %.preheader.i.i, %_ZN5cmsysL7regnextEPc.exit.i.i
  %.013.lcssa.i.i = phi ptr [ %.01318.i.i, %.preheader.i.i ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i.i ] ; 4 uses
  %i.ib = load i8, ptr %.013.lcssa.i.i, align 1, !tbaa !18
  %i.ic = icmp eq i8 %i.ib, 7
  %i.id = ptrtoint ptr %.013.lcssa.i.i to i64     ; 2 uses
  %i.ie = sub i64 %i.id, %.pre-phi
  %i.if = sub i64 %.pre-phi, %i.id
  %.0.in.i.i = select i1 %i.ic, i64 %i.ie, i64 %i.if ; 2 uses
  %.0.i.i75 = trunc i64 %.0.in.i.i to i8
  %i.ig = lshr i64 %.0.in.i.i, 8
  %i.ih = trunc i64 %i.ig to i8
  %i.ii = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i, i64 1
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !18
  %i.ij = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i, i64 2
  store i8 %.0.i.i75, ptr %i.ij, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit.thread111

_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit.thread111: ; preds = %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit, %.lr.ph157
  %i.ik = getelementptr inbounds nuw i8, ptr %.028116156, i64 1
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !18
  %i.im = zext i8 %i.il to i32
  %i.in = shl nuw nsw i32 %i.im, 8
  %i.io = getelementptr inbounds nuw i8, ptr %.028116156, i64 2
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !18
  %i.iq = zext i8 %i.ip to i32
  %i.ir = or disjoint i32 %i.in, %i.iq            ; 2 uses
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %_ZN5cmsysL7regnextEPc.exit.thread, label %_ZN5cmsysL7regnextEPc.exit

_ZN5cmsysL7regnextEPc.exit:                       ; preds = %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit.thread111
  %i.it = load i8, ptr %.028116156, align 1, !tbaa !18
  %i.iu = icmp eq i8 %i.it, 7
  %i.iv = zext nneg i32 %i.ir to i64              ; 2 uses
  %i.iw = sub nsw i64 0, %i.iv
  %.sink = select i1 %i.iu, i64 %i.iw, i64 %i.iv
  %i.ix = getelementptr inbounds i8, ptr %.028116156, i64 %.sink ; 2 uses
  %i.iy = icmp eq ptr %i.ix, @_ZN5cmsysL8regdummyE
  br i1 %i.iy, label %_ZN5cmsysL7regnextEPc.exit.thread, label %.lr.ph157, !llvm.loop !50

_ZN5cmsysL7regnextEPc.exit.thread:                ; preds = %_ZN5cmsysL7regnextEPc.exit, %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit.thread111, %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74
  %i.iz = load ptr, ptr %0, align 8, !tbaa !29    ; 3 uses
  br i1 %.not, label %.critedge, label %bb.af

bb.af:                                            ; preds = %_ZN5cmsysL7regnextEPc.exit.thread
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 1
  store ptr %i.ja, ptr %0, align 8, !tbaa !29
  %i.jb = load i8, ptr %i.iz, align 1, !tbaa !18
  %.not39 = icmp eq i8 %i.jb, 41
  br i1 %.not39, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %puts42 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %.loopexit

.critedge:                                        ; preds = %_ZN5cmsysL7regnextEPc.exit.thread
  %i.jc = load i8, ptr %i.iz, align 1, !tbaa !18
  switch i8 %i.jc, label %bb.ai [
    i8 0, label %.loopexit
    i8 41, label %bb.ah
  ]

bb.ah:                                            ; preds = %.critedge
  %puts41 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %.loopexit

bb.ai:                                            ; preds = %.critedge
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5cmsys13RegExpCompile9regbranchEPi.exit53, %bb.af, %_ZN5cmsys13RegExpCompile9regbranchEPi.exit53.thread, %_ZN5cmsys13RegExpCompile9regbranchEPi.exit.thread, %.critedge, %_ZN5cmsys13RegExpCompile9regbranchEPi.exit, %bb.ai, %bb.ah, %bb.ag, %bb.c
  %.030 = phi ptr [ null, %bb.c ], [ null, %_ZN5cmsys13RegExpCompile9regbranchEPi.exit ], [ null, %bb.ag ], [ %.1, %bb.af ], [ null, %bb.ah ], [ null, %bb.ai ], [ %.1, %.critedge ], [ null, %_ZN5cmsys13RegExpCompile9regbranchEPi.exit53.thread ], [ null, %_ZN5cmsys13RegExpCompile9regbranchEPi.exit.thread ], [ null, %_ZN5cmsys13RegExpCompile9regbranchEPi.exit53 ]
  ret ptr %.030
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN5cmsys13RegExpCompile7regnodeEc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i8 noundef signext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 6 uses
  %i.c = icmp eq ptr %i.b, @_ZN5cmsysL8regdummyE
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !32
  %i.f = add nsw i64 %i.e, 3
  store i64 %i.f, ptr %i.d, align 8, !tbaa !32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %1, ptr %i.b, align 1, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.g, align 1, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 0, ptr %i.h, align 1, !tbaa !18
  store ptr %i.i, ptr %i.a, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef ptr @_ZN5cmsys13RegExpCompile9regbranchEPi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %1, align 4, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 8 uses
  %i.d = icmp eq ptr %i.c, @_ZN5cmsysL8regdummyE
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32
  %i.g = add nsw i64 %i.f, 3
  store i64 %i.g, ptr %i.e, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit.preheader

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 6, ptr %i.c, align 1, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 0, ptr %i.h, align 1, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 0, ptr %i.i, align 1, !tbaa !18
  store ptr %i.j, ptr %i.b, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit.preheader

_ZN5cmsys13RegExpCompile7regnodeEc.exit.preheader: ; preds = %bb.b, %bb.c
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit

_ZN5cmsys13RegExpCompile7regnodeEc.exit:          ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit.backedge, %_ZN5cmsys13RegExpCompile7regnodeEc.exit.preheader
  %.0 = phi ptr [ null, %_ZN5cmsys13RegExpCompile7regnodeEc.exit.preheader ], [ %i.m, %_ZN5cmsys13RegExpCompile7regnodeEc.exit.backedge ] ; 4 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !29
  %i.l = load i8, ptr %i.k, align 1, !tbaa !18
  switch i8 %i.l, label %bb.d [
    i8 0, label %.critedge
    i8 124, label %.critedge
    i8 41, label %.critedge
  ]

bb.d:                                             ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit
  %i.m = call noundef ptr @_ZN5cmsys13RegExpCompile8regpieceEPi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a) ; 3 uses
  %.not18 = icmp eq ptr %i.m, null
  br i1 %.not18, label %_ZN5cmsys13RegExpCompile7regnodeEc.exit20, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %i.o = and i32 %i.n, 1
  %i.p = load i32, ptr %1, align 4, !tbaa !34
  %i.q = or i32 %i.p, %i.o                        ; 2 uses
  store i32 %i.q, ptr %1, align 4, !tbaa !34
  %.not19 = icmp eq ptr %.0, null
  br i1 %.not19, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = and i32 %i.n, 4
  %i.s = or i32 %i.q, %i.r
  store i32 %i.s, ptr %1, align 4, !tbaa !34
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit.backedge

bb.g:                                             ; preds = %bb.e
  %i.t = icmp eq ptr %.0, @_ZN5cmsysL8regdummyE
  br i1 %i.t, label %_ZN5cmsys13RegExpCompile7regnodeEc.exit.backedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %_ZN5cmsysL7regnextEPc.exit.i
  %.01318.i = phi ptr [ %.0.i.i, %_ZN5cmsysL7regnextEPc.exit.i ], [ %.0, %bb.g ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01318.i, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !18
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = getelementptr inbounds nuw i8, ptr %.01318.i, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.x, %i.aa             ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZN5cmsysL7regnextEPc.exit.thread.i, label %_ZN5cmsysL7regnextEPc.exit.i

_ZN5cmsysL7regnextEPc.exit.i:                     ; preds = %.preheader.i
  %i.ad = load i8, ptr %.01318.i, align 1, !tbaa !18
  %i.ae = icmp eq i8 %i.ad, 7
  %i.af = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ag = sub nsw i64 0, %i.af
  %.0.i.v.i = select i1 %i.ae, i64 %i.ag, i64 %i.af
  %.0.i.i = getelementptr inbounds i8, ptr %.01318.i, i64 %.0.i.v.i ; 2 uses
  %i.ah = icmp eq ptr %.0.i.i, @_ZN5cmsysL8regdummyE
  br i1 %i.ah, label %_ZN5cmsysL7regnextEPc.exit.thread.i, label %.preheader.i, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i:              ; preds = %_ZN5cmsysL7regnextEPc.exit.i, %.preheader.i
  %.013.lcssa.i = phi ptr [ %.01318.i, %.preheader.i ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i ] ; 4 uses
  %i.ai = load i8, ptr %.013.lcssa.i, align 1, !tbaa !18
  %i.aj = icmp eq i8 %i.ai, 7
  %i.ak = ptrtoint ptr %.013.lcssa.i to i64       ; 2 uses
  %i.al = ptrtoint ptr %i.m to i64                ; 2 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sub i64 %i.al, %i.ak
  %.0.in.i = select i1 %i.aj, i64 %i.am, i64 %i.an ; 2 uses
  %.0.i = trunc i64 %.0.in.i to i8
  %i.ao = lshr i64 %.0.in.i, 8
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.lcssa.i, i64 1
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.lcssa.i, i64 2
  store i8 %.0.i, ptr %i.ar, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit.backedge

_ZN5cmsys13RegExpCompile7regnodeEc.exit.backedge: ; preds = %_ZN5cmsysL7regnextEPc.exit.thread.i, %bb.g, %bb.f
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit, !llvm.loop !1

.critedge:                                        ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit, %_ZN5cmsys13RegExpCompile7regnodeEc.exit, %_ZN5cmsys13RegExpCompile7regnodeEc.exit
  %.not17 = icmp eq ptr %.0, null
  br i1 %.not17, label %bb.h, label %_ZN5cmsys13RegExpCompile7regnodeEc.exit20

bb.h:                                             ; preds = %.critedge
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !31  ; 5 uses
  %i.at = icmp eq ptr %i.as, @_ZN5cmsysL8regdummyE
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !32
  %i.aw = add nsw i64 %i.av, 3
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit20

bb.j:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 9, ptr %i.as, align 1, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i8 0, ptr %i.ax, align 1, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  store i8 0, ptr %i.ay, align 1, !tbaa !18
  store ptr %i.az, ptr %i.b, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit20

_ZN5cmsys13RegExpCompile7regnodeEc.exit20:        ; preds = %bb.d, %bb.j, %bb.i, %.critedge
  %.012 = phi ptr [ %i.c, %bb.j ], [ %i.c, %.critedge ], [ %i.c, %bb.i ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.012
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5cmsys13RegExpCompile7regtailEPcPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, @_ZN5cmsysL8regdummyE
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a, %_ZN5cmsysL7regnextEPc.exit
  %.01318 = phi ptr [ %.0.i, %_ZN5cmsysL7regnextEPc.exit ], [ %0, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01318, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !18
  %i.d = zext i8 %i.c to i32
  %i.e = shl nuw nsw i32 %i.d, 8
  %i.f = getelementptr inbounds nuw i8, ptr %.01318, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18
  %i.h = zext i8 %i.g to i32
  %i.i = or disjoint i32 %i.e, %i.h               ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN5cmsysL7regnextEPc.exit.thread, label %_ZN5cmsysL7regnextEPc.exit

_ZN5cmsysL7regnextEPc.exit:                       ; preds = %.preheader
  %i.k = load i8, ptr %.01318, align 1, !tbaa !18
  %i.l = icmp eq i8 %i.k, 7
  %i.m = zext nneg i32 %i.i to i64                ; 2 uses
  %i.n = sub nsw i64 0, %i.m
  %.0.i.v = select i1 %i.l, i64 %i.n, i64 %i.m
  %.0.i = getelementptr inbounds i8, ptr %.01318, i64 %.0.i.v ; 2 uses
  %i.o = icmp eq ptr %.0.i, @_ZN5cmsysL8regdummyE
  br i1 %i.o, label %_ZN5cmsysL7regnextEPc.exit.thread, label %.preheader, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread:                ; preds = %.preheader, %_ZN5cmsysL7regnextEPc.exit
  %.013.lcssa = phi ptr [ %.01318, %.preheader ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit ] ; 4 uses
  %i.p = load i8, ptr %.013.lcssa, align 1, !tbaa !18
  %i.q = icmp eq i8 %i.p, 7
  %i.r = ptrtoint ptr %.013.lcssa to i64          ; 2 uses
  %i.s = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = sub i64 %i.s, %i.r
  %.0.in = select i1 %i.q, i64 %i.t, i64 %i.u     ; 2 uses
  %.0 = trunc i64 %.0.in to i8
  %i.v = lshr i64 %.0.in, 8
  %i.w = trunc i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %.013.lcssa, i64 1
  store i8 %i.w, ptr %i.x, align 1, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.013.lcssa, i64 2
  store i8 %.0, ptr %i.y, align 1, !tbaa !18
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN5cmsysL7regnextEPc.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5cmsys13RegExpCompile9regoptailEPcPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, @_ZN5cmsysL8regdummyE
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !18
  %.not = icmp ne i8 %i.c, 6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.e = icmp eq ptr %i.d, @_ZN5cmsysL8regdummyE
  %or.cond7 = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond7, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %_ZN5cmsysL7regnextEPc.exit.i
  %.01318.i = phi ptr [ %.0.i.i, %_ZN5cmsysL7regnextEPc.exit.i ], [ %i.d, %bb.b ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01318.i, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %.01318.i, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !18
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l               ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN5cmsysL7regnextEPc.exit.thread.i, label %_ZN5cmsysL7regnextEPc.exit.i

_ZN5cmsysL7regnextEPc.exit.i:                     ; preds = %.preheader.i
  %i.o = load i8, ptr %.01318.i, align 1, !tbaa !18
  %i.p = icmp eq i8 %i.o, 7
  %i.q = zext nneg i32 %i.m to i64                ; 2 uses
  %i.r = sub nsw i64 0, %i.q
  %.0.i.v.i = select i1 %i.p, i64 %i.r, i64 %i.q
  %.0.i.i = getelementptr inbounds i8, ptr %.01318.i, i64 %.0.i.v.i ; 2 uses
  %i.s = icmp eq ptr %.0.i.i, @_ZN5cmsysL8regdummyE
  br i1 %i.s, label %_ZN5cmsysL7regnextEPc.exit.thread.i, label %.preheader.i, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i:              ; preds = %_ZN5cmsysL7regnextEPc.exit.i, %.preheader.i
  %.013.lcssa.i = phi ptr [ %.01318.i, %.preheader.i ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i ] ; 4 uses
  %i.t = load i8, ptr %.013.lcssa.i, align 1, !tbaa !18
  %i.u = icmp eq i8 %i.t, 7
  %i.v = ptrtoint ptr %.013.lcssa.i to i64        ; 2 uses
  %i.w = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = sub i64 %i.w, %i.v
  %.0.in.i = select i1 %i.u, i64 %i.x, i64 %i.y   ; 2 uses
  %.0.i = trunc i64 %.0.in.i to i8
  %i.z = lshr i64 %.0.in.i, 8
  %i.aa = trunc i64 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.lcssa.i, i64 1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.lcssa.i, i64 2
  store i8 %.0.i, ptr %i.ac, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit

_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit:      ; preds = %_ZN5cmsysL7regnextEPc.exit.thread.i, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef ptr @_ZN5cmsys13RegExpCompile8regpieceEPi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call noundef ptr @_ZN5cmsys13RegExpCompile7regatomEPi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a) ; 38 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !29
  %i.d = load i8, ptr %i.c, align 1, !tbaa !18    ; 5 uses
  %i.e = icmp eq i8 %i.d, 42
  %i.f = icmp eq i8 %i.d, 43                      ; 2 uses
  %i.g = icmp eq i8 %i.d, 63
  %i.h = load i32, ptr %i.a, align 4, !tbaa !34   ; 4 uses
  switch i8 %i.d, label %bb.c [
    i8 63, label %bb.d
    i8 43, label %bb.d
    i8 42, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  store i32 %i.h, ptr %1, align 4, !tbaa !34
  br label %bb.al

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.i = and i32 %i.h, 1
  %i.j = icmp eq i32 %i.i, 0
  %i.k = icmp ne i8 %i.d, 63
  %or.cond8 = and i1 %i.k, %i.j
  br i1 %or.cond8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %puts48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  br label %bb.al

bb.f:                                             ; preds = %bb.d
  %i.l = select i1 %i.f, i32 1, i32 4
  store i32 %i.l, ptr %1, align 4, !tbaa !34
  br i1 %i.e, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.m = and i32 %i.h, 2
  %.not46 = icmp eq i32 %i.m, 0
  %i.n = ptrtoaddr ptr %i.b to i64                ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31   ; 10 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 6 uses
  %i.r = icmp eq ptr %i.p, @_ZN5cmsysL8regdummyE  ; 2 uses
  br i1 %.not46, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !32
  %i.u = add nsw i64 %i.t, 3
  store i64 %i.u, ptr %i.s, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  store ptr %i.v, ptr %i.o, align 8, !tbaa !31
  %i.w = icmp ugt ptr %i.p, %i.b
  br i1 %i.w, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.x = add i64 %i.n, 3
  %i.y = sub i64 %i.x, %i.q
  %scevgep.i = getelementptr i8, ptr %i.p, i64 %i.y
  %i.z = sub i64 %i.n, %i.q
  %scevgep14.i = getelementptr i8, ptr %i.p, i64 %i.z
  %i.aa = sub i64 %i.q, %i.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %scevgep.i, ptr align 1 %scevgep14.i, i64 %i.aa, i1 false), !tbaa !18
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 10, ptr %i.b, align 1, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.ab, align 1, !tbaa !18
  store i8 0, ptr %i.ac, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit

bb.k:                                             ; preds = %bb.g
  br i1 %i.r, label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55.thread, label %bb.l

_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55.thread: ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.af = add nsw i64 %i.ae, 3
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  store ptr %i.ag, ptr %i.o, align 8, !tbaa !31
  %i.ah = icmp ugt ptr %i.p, %i.b
  br i1 %i.ah, label %.lr.ph.preheader.i52, label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55

.lr.ph.preheader.i52:                             ; preds = %bb.l
  %i.ai = add i64 %i.n, 3
  %i.aj = sub i64 %i.ai, %i.q
  %scevgep.i53 = getelementptr i8, ptr %i.p, i64 %i.aj
  %i.ak = sub i64 %i.n, %i.q
  %scevgep14.i54 = getelementptr i8, ptr %i.p, i64 %i.ak
  %i.al = sub i64 %i.q, %i.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %scevgep.i53, ptr align 1 %scevgep14.i54, i64 %i.al, i1 false), !tbaa !18
  br label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55

_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55:    ; preds = %bb.l, %.lr.ph.preheader.i52
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 6, ptr %i.b, align 1, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.am, align 1, !tbaa !18
  store i8 0, ptr %i.an, align 1, !tbaa !18
  %.pre136 = load ptr, ptr %i.o, align 8, !tbaa !31 ; 6 uses
  %i.ao = icmp eq ptr %.pre136, @_ZN5cmsysL8regdummyE
  br i1 %i.ao, label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55._crit_edge, label %bb.n

_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55._crit_edge: ; preds = %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55
  %.phi.trans.insert212 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre213 = load i64, ptr %.phi.trans.insert212, align 8, !tbaa !32
  br label %bb.m

bb.m:                                             ; preds = %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55._crit_edge, %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55.thread
  %i.ap = phi i64 [ %.pre213, %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55._crit_edge ], [ %i.af, %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55.thread ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = add nsw i64 %i.ap, 3
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit

bb.n:                                             ; preds = %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55
  %i.as = getelementptr inbounds nuw i8, ptr %.pre136, i64 1
  store i8 7, ptr %.pre136, align 1, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.pre136, i64 2
  store i8 0, ptr %i.as, align 1, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.pre136, i64 3
  store i8 0, ptr %i.at, align 1, !tbaa !18
  store ptr %i.au, ptr %i.o, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit

_ZN5cmsys13RegExpCompile7regnodeEc.exit:          ; preds = %bb.m, %bb.n
  %i.av = phi ptr [ @_ZN5cmsysL8regdummyE, %bb.m ], [ %.pre136, %bb.n ]
  %i.aw = icmp eq ptr %i.b, @_ZN5cmsysL8regdummyE ; 3 uses
  br i1 %i.aw, label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit68, label %bb.o

bb.o:                                             ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit
  %i.ax = load i8, ptr %i.b, align 1, !tbaa !18   ; 2 uses
  %.not.i = icmp ne i8 %i.ax, 6
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 3 uses
  %i.az = icmp eq ptr %i.ay, @_ZN5cmsysL8regdummyE ; 2 uses
  %or.cond7.i = select i1 %.not.i, i1 true, i1 %i.az
  br i1 %or.cond7.i, label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit.thread131, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.o, %_ZN5cmsysL7regnextEPc.exit.i.i
  %.01318.i.i = phi ptr [ %.0.i.i.i, %_ZN5cmsysL7regnextEPc.exit.i.i ], [ %i.ay, %bb.o ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01318.i.i, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !18
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 8
  %i.be = getelementptr inbounds nuw i8, ptr %.01318.i.i, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !18
  %i.bg = zext i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.bd, %i.bg            ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit, label %_ZN5cmsysL7regnextEPc.exit.i.i

_ZN5cmsysL7regnextEPc.exit.i.i:                   ; preds = %.preheader.i.i
  %i.bj = load i8, ptr %.01318.i.i, align 1, !tbaa !18
  %i.bk = icmp eq i8 %i.bj, 7
  %i.bl = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bm = sub nsw i64 0, %i.bl
  %.0.i.v.i.i = select i1 %i.bk, i64 %i.bm, i64 %i.bl
  %.0.i.i.i = getelementptr inbounds i8, ptr %.01318.i.i, i64 %.0.i.v.i.i ; 2 uses
  %i.bn = icmp eq ptr %.0.i.i.i, @_ZN5cmsysL8regdummyE
  br i1 %i.bn, label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit, label %.preheader.i.i, !llvm.loop !0

_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit:    ; preds = %.preheader.i.i, %_ZN5cmsysL7regnextEPc.exit.i.i
  %.013.lcssa.i.i = phi ptr [ %.01318.i.i, %.preheader.i.i ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i.i ] ; 4 uses
  %i.bo = load i8, ptr %.013.lcssa.i.i, align 1, !tbaa !18
  %i.bp = icmp eq i8 %i.bo, 7
  %i.bq = ptrtoint ptr %.013.lcssa.i.i to i64     ; 2 uses
  %i.br = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = sub i64 %i.br, %i.bq
  %.0.in.i.i = select i1 %i.bp, i64 %i.bs, i64 %i.bt ; 2 uses
  %.0.i.i = trunc i64 %.0.in.i.i to i8
  %i.bu = lshr i64 %.0.in.i.i, 8
  %i.bv = trunc i64 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i, i64 1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i, i64 2
  store i8 %.0.i.i, ptr %i.bx, align 1, !tbaa !18
  %.pre137 = load i8, ptr %i.b, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit.thread131

_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit.thread131: ; preds = %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit, %bb.o
  %i.by = phi i8 [ %.pre137, %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit ], [ %i.ax, %bb.o ]
  %.not.i57 = icmp ne i8 %i.by, 6
  %or.cond7.i58 = select i1 %.not.i57, i1 true, i1 %i.az
end_hunk_1
begin_hunk_2_@_ZN5cmsys13RegExpCompile8regpieceEPi:bb.a
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit95._crit_edge, %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit95.thread
  %i.lu = phi i64 [ %.pre208, %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit95._crit_edge ], [ %i.lk, %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit95.thread ]
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lw = add nsw i64 %i.lu, 3
  store i64 %i.lw, ptr %i.lv, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit96

bb.ah:                                            ; preds = %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit95
  %i.lx = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  store i8 6, ptr %.pre, align 1, !tbaa !18
  %i.ly = getelementptr inbounds nuw i8, ptr %.pre, i64 2
  store i8 0, ptr %i.lx, align 1, !tbaa !18
  %i.lz = getelementptr inbounds nuw i8, ptr %.pre, i64 3 ; 2 uses
  store i8 0, ptr %i.ly, align 1, !tbaa !18
  store ptr %i.lz, ptr %i.le, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit96

_ZN5cmsys13RegExpCompile7regnodeEc.exit96:        ; preds = %bb.ag, %bb.ah
  %i.ma = phi ptr [ @_ZN5cmsysL8regdummyE, %bb.ag ], [ %.pre, %bb.ah ]
  %i.mb = phi ptr [ @_ZN5cmsysL8regdummyE, %bb.ag ], [ %i.lz, %bb.ah ]
  %i.mc = icmp eq ptr %i.b, @_ZN5cmsysL8regdummyE ; 2 uses
  br i1 %i.mc, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit106, label %.preheader.i97

.preheader.i97:                                   ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit96, %_ZN5cmsysL7regnextEPc.exit.i99
  %.01318.i98 = phi ptr [ %.0.i.i101, %_ZN5cmsysL7regnextEPc.exit.i99 ], [ %i.b, %_ZN5cmsys13RegExpCompile7regnodeEc.exit96 ] ; 5 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.01318.i98, i64 1
  %i.me = load i8, ptr %i.md, align 1, !tbaa !18
  %i.mf = zext i8 %i.me to i32
  %i.mg = shl nuw nsw i32 %i.mf, 8
  %i.mh = getelementptr inbounds nuw i8, ptr %.01318.i98, i64 2
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !18
  %i.mj = zext i8 %i.mi to i32
  %i.mk = or disjoint i32 %i.mg, %i.mj            ; 2 uses
  %i.ml = icmp eq i32 %i.mk, 0
  br i1 %i.ml, label %_ZN5cmsysL7regnextEPc.exit.thread.i102, label %_ZN5cmsysL7regnextEPc.exit.i99

_ZN5cmsysL7regnextEPc.exit.i99:                   ; preds = %.preheader.i97
  %i.mm = load i8, ptr %.01318.i98, align 1, !tbaa !18
  %i.mn = icmp eq i8 %i.mm, 7
  %i.mo = zext nneg i32 %i.mk to i64              ; 2 uses
  %i.mp = sub nsw i64 0, %i.mo
  %.0.i.v.i100 = select i1 %i.mn, i64 %i.mp, i64 %i.mo
  %.0.i.i101 = getelementptr inbounds i8, ptr %.01318.i98, i64 %.0.i.v.i100 ; 2 uses
  %i.mq = icmp eq ptr %.0.i.i101, @_ZN5cmsysL8regdummyE
  br i1 %i.mq, label %_ZN5cmsysL7regnextEPc.exit.thread.i102, label %.preheader.i97, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i102:           ; preds = %_ZN5cmsysL7regnextEPc.exit.i99, %.preheader.i97
  %.013.lcssa.i103 = phi ptr [ %.01318.i98, %.preheader.i97 ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i99 ] ; 4 uses
  %i.mr = load i8, ptr %.013.lcssa.i103, align 1, !tbaa !18
  %i.ms = icmp eq i8 %i.mr, 7
  %i.mt = ptrtoint ptr %.013.lcssa.i103 to i64    ; 2 uses
  %i.mu = ptrtoint ptr %i.ma to i64               ; 2 uses
  %i.mv = sub i64 %i.mt, %i.mu
  %i.mw = sub i64 %i.mu, %i.mt
  %.0.in.i104 = select i1 %i.ms, i64 %i.mv, i64 %i.mw ; 2 uses
  %.0.i105 = trunc i64 %.0.in.i104 to i8
  %i.mx = lshr i64 %.0.in.i104, 8
  %i.my = trunc i64 %i.mx to i8
  %i.mz = getelementptr inbounds nuw i8, ptr %.013.lcssa.i103, i64 1
  store i8 %i.my, ptr %i.mz, align 1, !tbaa !18
  %i.na = getelementptr inbounds nuw i8, ptr %.013.lcssa.i103, i64 2
  store i8 %.0.i105, ptr %i.na, align 1, !tbaa !18
  %.pre135 = load ptr, ptr %i.le, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit106

_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit106:   ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit96, %_ZN5cmsysL7regnextEPc.exit.thread.i102
  %i.nb = phi ptr [ %i.mb, %_ZN5cmsys13RegExpCompile7regnodeEc.exit96 ], [ %.pre135, %_ZN5cmsysL7regnextEPc.exit.thread.i102 ] ; 6 uses
  %i.nc = icmp eq ptr %i.nb, @_ZN5cmsysL8regdummyE
  br i1 %i.nc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit106
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !32
  %i.nf = add nsw i64 %i.ne, 3
  store i64 %i.nf, ptr %i.nd, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit107

bb.aj:                                            ; preds = %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit106
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nb, i64 1
  store i8 9, ptr %i.nb, align 1, !tbaa !18
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nb, i64 2
  store i8 0, ptr %i.ng, align 1, !tbaa !18
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nb, i64 3
  store i8 0, ptr %i.nh, align 1, !tbaa !18
  store ptr %i.ni, ptr %i.le, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit107

_ZN5cmsys13RegExpCompile7regnodeEc.exit107:       ; preds = %bb.ai, %bb.aj
  br i1 %i.mc, label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit, label %.preheader.i108

.preheader.i108:                                  ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit107, %_ZN5cmsysL7regnextEPc.exit.i110
  %.01318.i109 = phi ptr [ %.0.i.i112, %_ZN5cmsysL7regnextEPc.exit.i110 ], [ %i.b, %_ZN5cmsys13RegExpCompile7regnodeEc.exit107 ] ; 5 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.01318.i109, i64 1
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !18
  %i.nl = zext i8 %i.nk to i32
  %i.nm = shl nuw nsw i32 %i.nl, 8
  %i.nn = getelementptr inbounds nuw i8, ptr %.01318.i109, i64 2
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !18
  %i.np = zext i8 %i.no to i32
  %i.nq = or disjoint i32 %i.nm, %i.np            ; 2 uses
  %i.nr = icmp eq i32 %i.nq, 0
  br i1 %i.nr, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit117, label %_ZN5cmsysL7regnextEPc.exit.i110

_ZN5cmsysL7regnextEPc.exit.i110:                  ; preds = %.preheader.i108
  %i.ns = load i8, ptr %.01318.i109, align 1, !tbaa !18
  %i.nt = icmp eq i8 %i.ns, 7
  %i.nu = zext nneg i32 %i.nq to i64              ; 2 uses
  %i.nv = sub nsw i64 0, %i.nu
  %.0.i.v.i111 = select i1 %i.nt, i64 %i.nv, i64 %i.nu
  %.0.i.i112 = getelementptr inbounds i8, ptr %.01318.i109, i64 %.0.i.v.i111 ; 2 uses
  %i.nw = icmp eq ptr %.0.i.i112, @_ZN5cmsysL8regdummyE
  br i1 %i.nw, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit117, label %.preheader.i108, !llvm.loop !0

_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit117:   ; preds = %.preheader.i108, %_ZN5cmsysL7regnextEPc.exit.i110
  %.013.lcssa.i114 = phi ptr [ %.01318.i109, %.preheader.i108 ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i110 ] ; 4 uses
  %i.nx = load i8, ptr %.013.lcssa.i114, align 1, !tbaa !18
  %i.ny = icmp eq i8 %i.nx, 7
  %i.nz = ptrtoint ptr %.013.lcssa.i114 to i64    ; 2 uses
  %i.oa = ptrtoint ptr %i.nb to i64               ; 4 uses
  %i.ob = sub i64 %i.nz, %i.oa
  %i.oc = sub i64 %i.oa, %i.nz
  %.0.in.i115 = select i1 %i.ny, i64 %i.ob, i64 %i.oc ; 2 uses
  %.0.i116 = trunc i64 %.0.in.i115 to i8
  %i.od = lshr i64 %.0.in.i115, 8
  %i.oe = trunc i64 %i.od to i8
  %i.of = getelementptr inbounds nuw i8, ptr %.013.lcssa.i114, i64 1
  store i8 %i.oe, ptr %i.of, align 1, !tbaa !18
  %i.og = getelementptr inbounds nuw i8, ptr %.013.lcssa.i114, i64 2
  store i8 %.0.i116, ptr %i.og, align 1, !tbaa !18
  %i.oh = load i8, ptr %i.b, align 1, !tbaa !18
  %.not.i119 = icmp ne i8 %i.oh, 6
  %i.oi = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.oj = icmp eq ptr %i.oi, @_ZN5cmsysL8regdummyE
  %or.cond7.i120 = select i1 %.not.i119, i1 true, i1 %i.oj
  br i1 %or.cond7.i120, label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit, label %.preheader.i.i121

.preheader.i.i121:                                ; preds = %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit117, %_ZN5cmsysL7regnextEPc.exit.i.i123
  %.01318.i.i122 = phi ptr [ %.0.i.i.i125, %_ZN5cmsysL7regnextEPc.exit.i.i123 ], [ %i.oi, %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit117 ] ; 5 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.01318.i.i122, i64 1
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !18
  %i.om = zext i8 %i.ol to i32
  %i.on = shl nuw nsw i32 %i.om, 8
  %i.oo = getelementptr inbounds nuw i8, ptr %.01318.i.i122, i64 2
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !18
  %i.oq = zext i8 %i.op to i32
  %i.or = or disjoint i32 %i.on, %i.oq            ; 2 uses
  %i.os = icmp eq i32 %i.or, 0
  br i1 %i.os, label %_ZN5cmsysL7regnextEPc.exit.thread.i.i126, label %_ZN5cmsysL7regnextEPc.exit.i.i123

_ZN5cmsysL7regnextEPc.exit.i.i123:                ; preds = %.preheader.i.i121
  %i.ot = load i8, ptr %.01318.i.i122, align 1, !tbaa !18
  %i.ou = icmp eq i8 %i.ot, 7
  %i.ov = zext nneg i32 %i.or to i64              ; 2 uses
  %i.ow = sub nsw i64 0, %i.ov
  %.0.i.v.i.i124 = select i1 %i.ou, i64 %i.ow, i64 %i.ov
  %.0.i.i.i125 = getelementptr inbounds i8, ptr %.01318.i.i122, i64 %.0.i.v.i.i124 ; 2 uses
  %i.ox = icmp eq ptr %.0.i.i.i125, @_ZN5cmsysL8regdummyE
  br i1 %i.ox, label %_ZN5cmsysL7regnextEPc.exit.thread.i.i126, label %.preheader.i.i121, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i.i126:         ; preds = %_ZN5cmsysL7regnextEPc.exit.i.i123, %.preheader.i.i121
  %.013.lcssa.i.i127 = phi ptr [ %.01318.i.i122, %.preheader.i.i121 ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i.i123 ] ; 4 uses
  %i.oy = load i8, ptr %.013.lcssa.i.i127, align 1, !tbaa !18
  %i.oz = icmp eq i8 %i.oy, 7
  %i.pa = ptrtoint ptr %.013.lcssa.i.i127 to i64  ; 2 uses
  %i.pb = sub i64 %i.pa, %i.oa
  %i.pc = sub i64 %i.oa, %i.pa
  %.0.in.i.i128 = select i1 %i.oz, i64 %i.pb, i64 %i.pc ; 2 uses
  %.0.i.i129 = trunc i64 %.0.in.i.i128 to i8
  %i.pd = lshr i64 %.0.in.i.i128, 8
  %i.pe = trunc i64 %i.pd to i8
  %i.pf = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i127, i64 1
  store i8 %i.pe, ptr %i.pf, align 1, !tbaa !18
  %i.pg = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i127, i64 2
  store i8 %.0.i.i129, ptr %i.pg, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit

_ZN5cmsys13RegExpCompile9reginsertEcPc.exit:      ; preds = %_ZN5cmsysL7regnextEPc.exit.thread.i201, %_ZN5cmsys13RegExpCompile7regnodeEc.exit90, %_ZN5cmsys13RegExpCompile7regnodeEc.exit107, %_ZN5cmsysL7regnextEPc.exit.thread.i.i126, %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit117, %._crit_edge.i82, %bb.v, %_ZN5cmsysL7regnextEPc.exit.thread.i77, %_ZN5cmsys13RegExpCompile7regnodeEc.exit71, %._crit_edge.i, %bb.i, %.critedge50
  %i.ph = load ptr, ptr %0, align 8, !tbaa !29
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 1 ; 2 uses
  store ptr %i.pi, ptr %0, align 8, !tbaa !29
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !18
  switch i8 %i.pj, label %bb.al [
    i8 42, label %bb.ak
    i8 43, label %bb.ak
    i8 63, label %bb.ak
  ]

bb.ak:                                            ; preds = %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit, %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit, %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit, %bb.a, %bb.ak, %bb.e, %bb.c
  %.0 = phi ptr [ null, %bb.e ], [ null, %bb.ak ], [ null, %bb.a ], [ %i.b, %bb.c ], [ %i.b, %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef ptr @_ZN5cmsys13RegExpCompile7regatomEPi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %1, align 4, !tbaa !34
  %i.b = load ptr, ptr %0, align 8, !tbaa !29     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !29
  %i.d = load i8, ptr %i.b, align 1, !tbaa !18
  switch i8 %i.d, label %bb.as [
    i8 94, label %bb.b
    i8 36, label %bb.e
    i8 46, label %bb.h
    i8 91, label %bb.k
    i8 40, label %bb.aj
    i8 0, label %bb.al
    i8 124, label %bb.al
    i8 41, label %bb.al
    i8 63, label %bb.am
    i8 43, label %bb.am
    i8 42, label %bb.am
    i8 92, label %bb.an
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 6 uses
  %i.g = icmp eq ptr %i.f, @_ZN5cmsysL8regdummyE
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !32
  %i.j = add nsw i64 %i.i, 3
  store i64 %i.j, ptr %i.h, align 8, !tbaa !32
  br label %.critedge59

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 1, ptr %i.f, align 1, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 0, ptr %i.k, align 1, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  store i8 0, ptr %i.l, align 1, !tbaa !18
  store ptr %i.m, ptr %i.e, align 8, !tbaa !31
  br label %.critedge59

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31   ; 6 uses
  %i.p = icmp eq ptr %i.o, @_ZN5cmsysL8regdummyE
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !32
  %i.s = add nsw i64 %i.r, 3
  store i64 %i.s, ptr %i.q, align 8, !tbaa !32
  br label %.critedge59

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 2, ptr %i.o, align 1, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i8 0, ptr %i.t, align 1, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  store i8 0, ptr %i.u, align 1, !tbaa !18
  store ptr %i.v, ptr %i.n, align 8, !tbaa !31
  br label %.critedge59

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31   ; 6 uses
  %i.y = icmp eq ptr %i.x, @_ZN5cmsysL8regdummyE
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !32
  %i.ab = add nsw i64 %i.aa, 3
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit62

bb.j:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 3, ptr %i.x, align 1, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i8 0, ptr %i.ac, align 1, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  store i8 0, ptr %i.ad, align 1, !tbaa !18
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !31
  %.pre107 = load i32, ptr %1, align 4, !tbaa !34
  %i.af = or i32 %.pre107, 3
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit62

_ZN5cmsys13RegExpCompile7regnodeEc.exit62:        ; preds = %bb.i, %bb.j
  %i.ag = phi i32 [ 3, %bb.i ], [ %i.af, %bb.j ]
  store i32 %i.ag, ptr %1, align 4, !tbaa !34
  br label %.critedge59

bb.k:                                             ; preds = %bb.a
  %i.ah = load i8, ptr %i.c, align 1, !tbaa !18
  %i.ai = icmp eq i8 %i.ah, 94
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31 ; 11 uses
  %i.al = icmp eq ptr %i.ak, @_ZN5cmsysL8regdummyE ; 2 uses
  br i1 %i.ai, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !32
  %i.ao = add nsw i64 %i.an, 3
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit63

bb.n:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store i8 5, ptr %i.ak, align 1, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store i8 0, ptr %i.ap, align 1, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 3 ; 2 uses
  store i8 0, ptr %i.aq, align 1, !tbaa !18
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !31
  %.pre103 = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit63

_ZN5cmsys13RegExpCompile7regnodeEc.exit63:        ; preds = %bb.m, %bb.n
  %i.as = phi ptr [ @_ZN5cmsysL8regdummyE, %bb.m ], [ %i.ar, %bb.n ]
  %i.at = phi ptr [ %i.c, %bb.m ], [ %.pre103, %bb.n ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  store ptr %i.au, ptr %0, align 8, !tbaa !29
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit64

bb.o:                                             ; preds = %bb.k
  br i1 %i.al, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32
  %i.ax = add nsw i64 %i.aw, 3
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit64

bb.q:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store i8 4, ptr %i.ak, align 1, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store i8 0, ptr %i.ay, align 1, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 3 ; 2 uses
  store i8 0, ptr %i.az, align 1, !tbaa !18
  store ptr %i.ba, ptr %i.aj, align 8, !tbaa !31
  %.pre104 = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit64

_ZN5cmsys13RegExpCompile7regnodeEc.exit64:        ; preds = %bb.q, %bb.p, %_ZN5cmsys13RegExpCompile7regnodeEc.exit63
  %i.bb = phi ptr [ %i.as, %_ZN5cmsys13RegExpCompile7regnodeEc.exit63 ], [ @_ZN5cmsysL8regdummyE, %bb.p ], [ %i.ba, %bb.q ] ; 3 uses
  %i.bc = phi ptr [ %i.au, %_ZN5cmsys13RegExpCompile7regnodeEc.exit63 ], [ %i.c, %bb.p ], [ %.pre104, %bb.q ] ; 3 uses
  %.037 = phi ptr [ %i.ak, %_ZN5cmsys13RegExpCompile7regnodeEc.exit63 ], [ @_ZN5cmsysL8regdummyE, %bb.p ], [ %i.ak, %bb.q ]
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !18
  switch i8 %i.bd, label %_ZN5cmsys13RegExpCompile4regcEc.exit [
    i8 93, label %bb.r
    i8 45, label %bb.r
  ]

bb.r:                                             ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit64, %_ZN5cmsys13RegExpCompile7regnodeEc.exit64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store ptr %i.be, ptr %0, align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.bb, @_ZN5cmsysL8regdummyE
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !31
  store i8 %i.bg, ptr %i.bb, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit

bb.t:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !32
  %i.bk = add nsw i64 %i.bj, 1
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit

_ZN5cmsys13RegExpCompile4regcEc.exit:             ; preds = %bb.t, %bb.s, %_ZN5cmsys13RegExpCompile7regnodeEc.exit64
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit66

_ZN5cmsys13RegExpCompile4regcEc.exit66:           ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit66.backedge, %_ZN5cmsys13RegExpCompile4regcEc.exit
  %i.bn = load ptr, ptr %0, align 8, !tbaa !29    ; 6 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !18
  switch i8 %i.bo, label %bb.ac [
    i8 0, label %.critedge
    i8 93, label %.critedge
    i8 45, label %bb.u
  ]
end_hunk_2
