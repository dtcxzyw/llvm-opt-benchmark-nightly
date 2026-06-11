inline.NumInlined: 94
inline.NumDeleted: 23
begin_hunk_0_@_ZN6icu_7810UnicodeSet9retainAllERKS0_
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7810UnicodeSet4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef ptr @_ZN6icu_7810UnicodeSet6freezeEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK6icu_7810UnicodeSet8spanBackEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7810UnicodeSet8spanUTF8EPKci17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7810UnicodeSet12spanBackUTF8EPKci17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7820UnicodeSetStringSpan15addToSpanNotSetEi(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.d, i32 noundef %1) #8
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef ptr @_ZNK6icu_7810UnicodeSet13cloneAsThawedEv(ptr noundef nonnull align 8 dereferenceable(200) %i.d) #8 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.c
  store ptr %i.g, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.a
  %i.i = phi ptr [ %i.g, %.thread ], [ %i.b, %bb.a ]
  %i.j = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.i, i32 noundef %1) #8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7820UnicodeSetStringSpanC2ERKS0_RKNS_7UVectorE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @_ZN6icu_7810UnicodeSetC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %i.a, ptr noundef nonnull align 8 dereferenceable(200) %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  store i32 %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.m = load i32, ptr %i.l, align 4
  store i32 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.p = load i32, ptr %i.o, align 8
  store i32 %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i8 1, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = tail call noundef ptr @_ZNK6icu_7810UnicodeSet5cloneEv(ptr noundef nonnull align 8 dereferenceable(200) %i.s) #8
  %.pre = load ptr, ptr %i.d, align 8
  %.pre16 = load i32, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.v = phi i32 [ %.pre16, %bb.b ], [ %i.j, %bb.a ]
  %i.w = phi ptr [ %.pre, %bb.b ], [ %2, %bb.a ]
  %storemerge = phi ptr [ %i.u, %bb.b ], [ %i.a, %bb.a ]
  store ptr %storemerge, ptr %i.c, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8              ; 3 uses
  %i.z = shl nsw i32 %i.y, 3
  %i.aa = add nsw i32 %i.z, %i.v                  ; 3 uses
  %i.ab = icmp slt i32 %i.aa, 129
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  store ptr %i.ac, ptr %i.e, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ad = zext nneg i32 %i.aa to i64
  %i.ae = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ad) #9 ; 3 uses
  store ptr %i.ae, ptr %i.e, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.n, align 8
  store i32 0, ptr %i.k, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.ag = phi ptr [ %i.ae, %bb.e ], [ %i.ac, %bb.d ] ; 2 uses
  %i.ah = sext i32 %i.y to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  store ptr %i.ai, ptr %i.f, align 8
  %i.aj = shl nsw i32 %i.y, 2
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak
  store ptr %i.al, ptr %i.g, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = sext i32 %i.aa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ag, ptr align 4 %i.an, i64 %i.ao, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

declare void @_ZN6icu_7810UnicodeSetC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #1

declare noundef ptr @_ZNK6icu_7810UnicodeSet5cloneEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7820UnicodeSetStringSpanD2Ev(ptr noundef nonnull align 8 dereferenceable(392) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not2 = icmp eq ptr %i.b, %i.c
  %or.cond = select i1 %.not, i1 true, i1 %.not2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.b) #8
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.b) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not3 = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.not4 = icmp eq ptr %i.e, %i.f
  %or.cond5 = select i1 %.not3, i1 true, i1 %.not4
  br i1 %or.cond5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @uprv_free_78(ptr noundef nonnull %i.e) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.c) #8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #4

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #1

declare noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) unnamed_addr #1

declare noundef ptr @_ZNK6icu_7810UnicodeSet13cloneAsThawedEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::OffsetList", align 8 ; 13 uses
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan7spanNotEPKDsi(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1, i32 noundef %2)
  br label %bb.bd

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = tail call noundef i32 @_ZNK6icu_7810UnicodeSet4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %i.c, ptr noundef %1, i32 noundef %2, i32 noundef 1) #8 ; 4 uses
  %i.e = icmp eq i32 %i.d, %2
  br i1 %i.e, label %bb.bd, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  store ptr %i.f, ptr %4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 10 uses
  store i32 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store i32 0, ptr %i.i, align 8
  %i.j = icmp eq i32 %3, 1                        ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.l = load i32, ptr %i.k, align 4              ; 4 uses
  %i.m = icmp slt i32 %i.l, 17
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 16, ptr %i.g, align 8
  br label %_ZN6icu_7810OffsetList12setMaxLengthEi.exit

bb.g:                                             ; preds = %bb.e
  %i.n = zext nneg i32 %i.l to i64
  %i.o = call noalias ptr @uprv_malloc_78(i64 noundef %i.n) #9 ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.h

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load i32, ptr %i.g, align 8
  %.pre = load ptr, ptr %4, align 8
  br label %_ZN6icu_7810OffsetList12setMaxLengthEi.exit

bb.h:                                             ; preds = %bb.g
  store ptr %i.o, ptr %4, align 8
  store i32 %i.l, ptr %i.g, align 8
  br label %_ZN6icu_7810OffsetList12setMaxLengthEi.exit

_ZN6icu_7810OffsetList12setMaxLengthEi.exit:      ; preds = %bb.f, %._crit_edge.i, %bb.h
  %i.p = phi ptr [ %.pre, %._crit_edge.i ], [ %i.o, %bb.h ], [ %i.f, %bb.f ]
  %i.q = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.l, %bb.h ], [ 16, %bb.f ]
  %i.r = sext i32 %i.q to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.p, i8 0, i64 %i.r, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_ZN6icu_7810OffsetList12setMaxLengthEi.exit, %bb.d
  %i.s = sub nsw i32 %2, %i.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !align !6
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8              ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.z = sext i32 %2 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.w to i64
  %wide.trip.count279 = zext nneg i32 %i.w to i64
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  %.0152 = phi i32 [ %i.s, %bb.i ], [ %.0152.be, %.backedge ] ; 13 uses
  %.0139 = phi i32 [ %i.d, %bb.i ], [ %.0139.be, %.backedge ] ; 7 uses
  %.0133 = phi i32 [ %i.d, %bb.i ], [ %.0133.be, %.backedge ] ; 5 uses
  br i1 %i.j, label %.preheader231, label %.preheader232

.preheader232:                                    ; preds = %bb.j
  br i1 %i.x, label %.lr.ph254.preheader, label %._crit_edge

.lr.ph254.preheader:                              ; preds = %.preheader232
  %i.aa = sext i32 %.0139 to i64
  br label %.lr.ph254

.preheader231:                                    ; preds = %bb.j
  br i1 %i.x, label %.lr.ph262.preheader, label %.thread218

.lr.ph262.preheader:                              ; preds = %.preheader231
  %i.ab = sext i32 %.0139 to i64
  br label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %.loopexit
  %indvars.iv276 = phi i64 [ 0, %.lr.ph262.preheader ], [ %indvars.iv.next277, %.loopexit ] ; 3 uses
  %i.ac = load ptr, ptr %i.y, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv276
  %i.ae = load i8, ptr %i.ad, align 1             ; 3 uses
  %i.af = icmp eq i8 %i.ae, -1
  br i1 %i.af, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.lr.ph262
  %i.ag = zext i8 %i.ae to i32
  %i.ah = load ptr, ptr %i.t, align 8, !nonnull !5, !align !6
  %i.ai = trunc nuw nsw i64 %indvars.iv276 to i32
  %i.aj = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i32 noundef %i.ai) #8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i16, ptr %i.ak, align 8            ; 4 uses
  %i.am = and i16 %i.al, 17
  %.not.i181 = icmp eq i16 %i.am, 0
  br i1 %.not.i181, label %bb.l, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.l:                                             ; preds = %bb.k
  %i.an = and i16 %i.al, 2
  %.not2.i = icmp eq i16 %i.an, 0
  br i1 %.not2.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.n:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.k, %bb.m, %bb.n
  %.0.i = phi ptr [ %i.aq, %bb.n ], [ %i.ao, %bb.m ], [ null, %bb.k ] ; 3 uses
  %i.ar = icmp slt i16 %i.al, 0
  %i.as = ashr i16 %i.al, 5
  %i.at = sext i16 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = select i1 %i.ar, i32 %i.av, i32 %i.at   ; 7 uses
  %i.ax = icmp eq i8 %i.ae, -2
  br i1 %i.ax, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %i.ay = add nsw i32 %i.aw, -1                   ; 3 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %.0.i, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = and i16 %i.bb, -1024
  %i.bd = icmp eq i16 %i.bc, -9216
  %i.be = icmp sgt i32 %i.aw, 1
  %or.cond = and i1 %i.be, %i.bd
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = zext nneg i32 %i.aw to i64
  %i.bg = getelementptr [2 x i8], ptr %.0.i, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = and i16 %i.bi, -1024
  %i.bk = icmp eq i16 %i.bj, -10240
  %i.bl = add nsw i32 %i.aw, -2
  %spec.select = select i1 %i.bk, i32 %i.bl, i32 %i.ay
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %.0157 = phi i32 [ %i.ag, %_ZNK6icu_7813UnicodeString9getBufferEv.exit ], [ %spec.select, %bb.p ], [ %i.ay, %bb.o ] ; 2 uses
  %spec.select176 = call i32 @llvm.smin.i32(i32 %.0157, i32 %.0133)
  %i.bm = sub nsw i32 %i.aw, %spec.select176      ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, %.0152
  br i1 %i.bn, label %.loopexit, label %.lr.ph260

.lr.ph260:                                        ; preds = %bb.q
  %i.bo = sext i32 %i.aw to i64                   ; 2 uses
  %i.bp = call i32 @llvm.smin.i32(i32 %.0157, i32 %.0133)
  %smin272 = sext i32 %i.bp to i64
  %invariant.op315 = sub nsw i64 %i.z, %i.bo
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph260, %bb.aa
  %indvars.iv273 = phi i64 [ %smin272, %.lr.ph260 ], [ %indvars.iv.next274, %bb.aa ] ; 3 uses
  %.0151258 = phi i32 [ %i.bm, %.lr.ph260 ], [ %i.cz, %bb.aa ] ; 4 uses
  %i.bq = load i32, ptr %i.i, align 8
  %i.br = add nsw i32 %i.bq, %.0151258            ; 2 uses
  %i.bs = load i32, ptr %i.g, align 8             ; 2 uses
  %.not.i182 = icmp slt i32 %i.br, %i.bs
  %i.bt = select i1 %.not.i182, i32 0, i32 %i.bs
  %spec.select.i = sub nsw i32 %i.br, %i.bt
  %5 = load ptr, ptr %4, align 8
  %i.bu = sext i32 %spec.select.i to i64
  %i.bv = getelementptr inbounds i8, ptr %5, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1
  %.not174 = icmp eq i8 %i.bw, 0
  br i1 %.not174, label %bb.s, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bx = sub nsw i64 %i.ab, %indvars.iv273       ; 3 uses
  %i.by = getelementptr inbounds [2 x i8], ptr %1, i64 %i.bx ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.04.i.i = phi ptr [ %i.by, %bb.s ], [ %i.cc, %bb.u ] ; 2 uses
  %.03.i.i = phi ptr [ %.0.i, %bb.s ], [ %i.cb, %bb.u ] ; 2 uses
  %.0.i.i = phi i32 [ %i.aw, %bb.s ], [ %i.cd, %bb.u ] ; 2 uses
  %i.bz = load i16, ptr %.04.i.i, align 2
  %i.ca = load i16, ptr %.03.i.i, align 2
  %.not.i.i = icmp eq i16 %i.bz, %i.ca
  br i1 %.not.i.i, label %bb.u, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %.03.i.i, i64 2
  %i.cc = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 2
  %i.cd = add nsw i32 %.0.i.i, -1
  %i.ce = icmp sgt i32 %.0.i.i, 1
  br i1 %i.ce, label %bb.t, label %_ZN6icu_78L9matches16EPKDsS1_i.exit.i, !llvm.loop !10

_ZN6icu_78L9matches16EPKDsS1_i.exit.i:            ; preds = %bb.u
  %i.cf = icmp sgt i64 %i.bx, 0
  br i1 %i.cf, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_ZN6icu_78L9matches16EPKDsS1_i.exit.i
  %i.cg = getelementptr inbounds i8, ptr %i.by, i64 -2
  %i.ch = load i16, ptr %i.cg, align 2
  %i.ci = and i16 %i.ch, -1024
  %i.cj = icmp eq i16 %i.ci, -10240
  br i1 %i.cj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ck = load i16, ptr %i.by, align 2
  %i.cl = and i16 %i.ck, -1024
  %i.cm = icmp eq i16 %i.cl, -9216
  br i1 %i.cm, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %_ZN6icu_78L9matches16EPKDsS1_i.exit.i
  %i.cn = icmp slt i64 %i.bx, %invariant.op315
  br i1 %i.cn, label %bb.y, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread203

bb.y:                                             ; preds = %bb.x
  %i.co = getelementptr [2 x i8], ptr %i.by, i64 %i.bo ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 -2
  %i.cq = load i16, ptr %i.cp, align 2
  %i.cr = and i16 %i.cq, -1024
  %i.cs = icmp eq i16 %i.cr, -10240
  br i1 %i.cs, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread203

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit:        ; preds = %bb.y
  %i.ct = load i16, ptr %i.co, align 2
  %i.cu = and i16 %i.ct, -1024
  %.not230 = icmp eq i16 %i.cu, -9216
  br i1 %.not230, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread203

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread203: ; preds = %bb.y, %bb.x, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit
  %i.cv = icmp eq i32 %.0151258, %.0152
  br i1 %i.cv, label %.thread212, label %bb.z

bb.z:                                             ; preds = %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread203
  store i8 1, ptr %i.bv, align 1
  %i.cw = load i32, ptr %i.h, align 4
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.h, align 4
  br label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread: ; preds = %bb.t, %bb.w, %bb.z, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit, %bb.r
  %i.cy = icmp eq i64 %indvars.iv273, 0
  br i1 %i.cy, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread
  %indvars.iv.next274 = add nsw i64 %indvars.iv273, -1
  %i.cz = add i32 %.0151258, 1
  %exitcond275.not = icmp eq i32 %.0151258, %.0152
  br i1 %exitcond275.not, label %.loopexit, label %bb.r, !llvm.loop !11

.loopexit:                                        ; preds = %bb.aa, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread, %bb.q, %.lr.ph262
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %exitcond280.not = icmp eq i64 %indvars.iv.next277, %wide.trip.count279
  br i1 %exitcond280.not, label %.thread218, label %.lr.ph262, !llvm.loop !12

.lr.ph254:                                        ; preds = %.lr.ph254.preheader, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210
  %indvars.iv269 = phi i64 [ 0, %.lr.ph254.preheader ], [ %indvars.iv.next270, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210 ] ; 3 uses
  %.0145253 = phi i32 [ 0, %.lr.ph254.preheader ], [ %.2147, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210 ] ; 5 uses
  %.0148252 = phi i32 [ 0, %.lr.ph254.preheader ], [ %.2150, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210 ] ; 4 uses
  %i.da = load ptr, ptr %i.y, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv269
  %i.dc = load i8, ptr %i.db, align 1             ; 2 uses
  %i.dd = load ptr, ptr %i.t, align 8, !nonnull !5, !align !6
  %i.de = trunc nuw nsw i64 %indvars.iv269 to i32
  %i.df = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.dd, i32 noundef %i.de) #8 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i16, ptr %i.dg, align 8            ; 4 uses
  %i.di = and i16 %i.dh, 17
  %.not.i185 = icmp eq i16 %i.di, 0
  br i1 %.not.i185, label %bb.ab, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit188

bb.ab:                                            ; preds = %.lr.ph254
  %i.dj = and i16 %i.dh, 2
  %.not2.i187 = icmp eq i16 %i.dj, 0
  br i1 %.not2.i187, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit188

bb.ad:                                            ; preds = %bb.ab
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit188

_ZNK6icu_7813UnicodeString9getBufferEv.exit188:   ; preds = %.lr.ph254, %bb.ac, %bb.ad
  %.0.i186 = phi ptr [ %i.dm, %bb.ad ], [ %i.dk, %bb.ac ], [ null, %.lr.ph254 ]
  %i.dn = icmp slt i16 %i.dh, 0
  %i.do = ashr i16 %i.dh, 5
  %i.dp = sext i16 %i.do to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = select i1 %i.dn, i32 %i.dr, i32 %i.dp   ; 5 uses
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210, label %bb.ae

bb.ae:                                            ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit188
  %i.du = zext i8 %i.dc to i32
  %i.dv = icmp ugt i8 %i.dc, -3
  %spec.select177 = select i1 %i.dv, i32 %i.ds, i32 %i.du ; 2 uses
  %.1143 = call i32 @llvm.smin.i32(i32 %spec.select177, i32 %.0133) ; 2 uses
  %i.dw = sub nsw i32 %i.ds, %.1143               ; 2 uses
  %i.dx = sext i32 %i.ds to i64                   ; 2 uses
  %i.dy = icmp sgt i32 %i.dw, %.0152
  %i.dz = icmp slt i32 %.1143, %.0145253
  %or.cond178239 = select i1 %i.dy, i1 true, i1 %i.dz
  br i1 %or.cond178239, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ae
  %i.ea = call i32 @llvm.smin.i32(i32 %spec.select177, i32 %.0133)
  %smin = sext i32 %i.ea to i64
  %i.eb = sext i32 %.0145253 to i64               ; 2 uses
  %invariant.op = sub nsw i64 %i.z, %i.dx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread
  %indvars.iv = phi i64 [ %smin, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread ] ; 7 uses
  %.0132241 = phi i32 [ %i.dw, %.lr.ph.preheader ], [ %i.fc, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread ] ; 6 uses
  %i.ec = icmp sgt i64 %indvars.iv, %i.eb
  %i.ed = icmp sgt i32 %.0132241, %.0148252
  %or.cond179 = select i1 %i.ec, i1 true, i1 %i.ed
  br i1 %or.cond179, label %bb.af, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread

bb.af:                                            ; preds = %.lr.ph
  %i.ee = sub nsw i64 %i.aa, %indvars.iv          ; 3 uses
  %i.ef = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ee ; 4 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %.04.i.i189 = phi ptr [ %i.ef, %bb.af ], [ %i.ej, %bb.ah ] ; 2 uses
  %.03.i.i190 = phi ptr [ %.0.i186, %bb.af ], [ %i.ei, %bb.ah ] ; 2 uses
  %.0.i.i191 = phi i32 [ %i.ds, %bb.af ], [ %i.ek, %bb.ah ] ; 2 uses
  %i.eg = load i16, ptr %.04.i.i189, align 2
  %i.eh = load i16, ptr %.03.i.i190, align 2
  %.not.i.i192 = icmp eq i16 %i.eg, %i.eh
  br i1 %.not.i.i192, label %bb.ah, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread

bb.ah:                                            ; preds = %bb.ag
  %i.ei = getelementptr inbounds nuw i8, ptr %.03.i.i190, i64 2
  %i.ej = getelementptr inbounds nuw i8, ptr %.04.i.i189, i64 2
  %i.ek = add nsw i32 %.0.i.i191, -1
  %i.el = icmp sgt i32 %.0.i.i191, 1
  br i1 %i.el, label %bb.ag, label %_ZN6icu_78L9matches16EPKDsS1_i.exit.i193, !llvm.loop !10

_ZN6icu_78L9matches16EPKDsS1_i.exit.i193:         ; preds = %bb.ah
  %i.em = icmp sgt i64 %i.ee, 0
  br i1 %i.em, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %_ZN6icu_78L9matches16EPKDsS1_i.exit.i193
  %i.en = getelementptr inbounds i8, ptr %i.ef, i64 -2
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = and i16 %i.eo, -1024
  %i.eq = icmp eq i16 %i.ep, -10240
  br i1 %i.eq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.er = load i16, ptr %i.ef, align 2
  %i.es = and i16 %i.er, -1024
  %i.et = icmp eq i16 %i.es, -9216
  br i1 %i.et, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %_ZN6icu_78L9matches16EPKDsS1_i.exit.i193
  %i.eu = icmp slt i64 %i.ee, %invariant.op
  br i1 %i.eu, label %bb.al, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210.loopexit.split.loop.exit304

bb.al:                                            ; preds = %bb.ak
  %i.ev = getelementptr [2 x i8], ptr %i.ef, i64 %i.dx ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 -2
  %i.ex = load i16, ptr %i.ew, align 2
  %i.ey = and i16 %i.ex, -1024
  %i.ez = icmp eq i16 %i.ey, -10240
  br i1 %i.ez, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210.loopexit.split.loop.exit

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194:     ; preds = %bb.al
  %i.fa = load i16, ptr %i.ev, align 2
  %i.fb = and i16 %i.fa, -1024
  %.not228 = icmp eq i16 %i.fb, -9216
  br i1 %.not228, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210.loopexit.split.loop.exit310

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread: ; preds = %bb.ag, %bb.aj, %.lr.ph, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fc = add nsw i32 %.0132241, 1
  %i.fd = icmp sge i32 %.0132241, %.0152
  %i.fe = icmp sle i64 %indvars.iv, %i.eb
  %or.cond178 = or i1 %i.fd, %i.fe
  br i1 %or.cond178, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210, label %.lr.ph, !llvm.loop !13

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210.loopexit.split.loop.exit: ; preds = %bb.al
  %i.ff = trunc nsw i64 %indvars.iv to i32
  br label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210.loopexit.split.loop.exit304: ; preds = %bb.ak
  %i.fg = trunc nsw i64 %indvars.iv to i32
  br label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210.loopexit.split.loop.exit310: ; preds = %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194
  %i.fh = trunc nsw i64 %indvars.iv to i32
  br label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210: ; preds = %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210.loopexit.split.loop.exit, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210.loopexit.split.loop.exit304, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210.loopexit.split.loop.exit310, %bb.ae, %_ZNK6icu_7813UnicodeString9getBufferEv.exit188
  %.2150 = phi i32 [ %.0148252, %_ZNK6icu_7813UnicodeString9getBufferEv.exit188 ], [ %.0148252, %bb.ae ], [ %.0132241, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210.loopexit.split.loop.exit ], [ %.0132241, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210.loopexit.split.loop.exit304 ], [ %.0132241, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210.loopexit.split.loop.exit310 ], [ %.0148252, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread ] ; 2 uses
  %.2147 = phi i32 [ %.0145253, %_ZNK6icu_7813UnicodeString9getBufferEv.exit188 ], [ %.0145253, %bb.ae ], [ %i.ff, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210.loopexit.split.loop.exit ], [ %i.fg, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210.loopexit.split.loop.exit304 ], [ %i.fh, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210.loopexit.split.loop.exit310 ], [ %.0145253, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread ] ; 2 uses
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next270, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph254, !llvm.loop !14

._crit_edge.loopexit:                             ; preds = %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit194.thread210
  %i.fi = icmp ne i32 %.2147, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader232
  %.0148.lcssa = phi i32 [ 0, %.preheader232 ], [ %.2150, %._crit_edge.loopexit ] ; 3 uses
  %.0145.lcssa = phi i1 [ false, %.preheader232 ], [ %i.fi, %._crit_edge.loopexit ]
  %i.fj = icmp ne i32 %.0148.lcssa, 0
  %or.cond3 = select i1 %i.fj, i1 true, i1 %.0145.lcssa
  br i1 %or.cond3, label %bb.am, label %.thread218

bb.am:                                            ; preds = %._crit_edge
  %i.fk = sub nsw i32 %.0152, %.0148.lcssa        ; 2 uses
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %.thread212, label %.backedge

.thread218:                                       ; preds = %.loopexit, %.preheader231, %._crit_edge
  %i.fm = icmp ne i32 %.0133, 0
  %i.fn = icmp eq i32 %.0139, 0
  %or.cond5 = select i1 %i.fm, i1 true, i1 %i.fn
  %i.fo = load i32, ptr %i.h, align 4
  %.not229 = icmp eq i32 %i.fo, 0                 ; 2 uses
  br i1 %or.cond5, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.thread218
  br i1 %.not229, label %.thread212, label %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit

bb.ao:                                            ; preds = %.thread218
  %i.fp = sext i32 %.0139 to i64
  %i.fq = getelementptr inbounds [2 x i8], ptr %1, i64 %i.fp ; 3 uses
  br i1 %.not229, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.fr = call noundef i32 @_ZNK6icu_7810UnicodeSet4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %i.c, ptr noundef %i.fq, i32 noundef %.0152, i32 noundef 1) #8 ; 6 uses
  %i.fs = icmp eq i32 %i.fr, %.0152
end_hunk_0
begin_hunk_1_@_ZNK6icu_7820UnicodeSetStringSpan7spanNotEPKDsi:bb.a
.preheader95:                                     ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us75, %bb.j
  %.04.i.i.us78 = phi ptr [ %i.bf, %bb.j ], [ %i.q, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us75 ] ; 2 uses
  %.03.i.i.us79 = phi ptr [ %i.be, %bb.j ], [ %.0.i54.us76, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us75 ] ; 2 uses
  %.0.i.i.us80 = phi i32 [ %i.bg, %bb.j ], [ %i.bb, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us75 ] ; 2 uses
  %i.bc = load i16, ptr %.04.i.i.us78, align 2
  %i.bd = load i16, ptr %.03.i.i.us79, align 2
  %.not.i.i.us81 = icmp eq i16 %i.bc, %i.bd
  br i1 %.not.i.i.us81, label %bb.j, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us85

bb.j:                                             ; preds = %.preheader95
  %i.be = getelementptr inbounds nuw i8, ptr %.03.i.i.us79, i64 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.04.i.i.us78, i64 2
  %i.bg = add nsw i32 %.0.i.i.us80, -1
  %i.bh = icmp sgt i32 %.0.i.i.us80, 1
  br i1 %i.bh, label %.preheader95, label %_ZN6icu_78L9matches16EPKDsS1_i.exit.i.us82, !llvm.loop !10

_ZN6icu_78L9matches16EPKDsS1_i.exit.i.us82:       ; preds = %bb.j
  %i.bi = icmp slt i32 %i.bb, %i.af
  br i1 %i.bi, label %bb.k, label %.thread64

bb.k:                                             ; preds = %_ZN6icu_78L9matches16EPKDsS1_i.exit.i.us82
  %i.bj = sext i32 %i.bb to i64
  %i.bk = getelementptr [2 x i8], ptr %i.q, i64 %i.bj ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 -2
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = and i16 %i.bm, -1024
  %i.bo = icmp eq i16 %i.bn, -10240
  br i1 %i.bo, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us83, label %.thread64

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us83:   ; preds = %bb.k
  %i.bp = load i16, ptr %i.bk, align 2
  %i.bq = and i16 %i.bp, -1024
  %.not69.us84 = icmp eq i16 %i.bq, -9216
  br i1 %.not69.us84, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us85, label %.thread64

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us85: ; preds = %.preheader95, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us83, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us75, %.lr.ph.split.us88
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.split.us88, !llvm.loop !18

._crit_edge.us:                                   ; preds = %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us85, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us.us
  %i.br = sub i32 %i.n, %.0.i.us
  %i.bs = add nsw i32 %.0.i.us, %i.o              ; 2 uses
  %.not52.us = icmp eq i32 %i.bs, 0
  br i1 %.not52.us, label %.thread64, label %.split.us, !llvm.loop !19

.lr.ph.split.us.us:                               ; preds = %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit.us, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us.us
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us.us ], [ 0, %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit.us ] ; 3 uses
  %i.bt = load ptr, ptr %i.h, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv103
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = icmp eq i8 %i.bv, -1
  br i1 %i.bw, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us.us, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us.us
  %i.bx = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.by = trunc nuw nsw i64 %indvars.iv103 to i32
  %i.bz = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bx, i32 noundef %i.by) #8 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i16, ptr %i.ca, align 8            ; 4 uses
  %i.cc = and i16 %i.cb, 17
  %.not.i53.us.us = icmp eq i16 %i.cc, 0
  br i1 %.not.i53.us.us, label %bb.m, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us.us

bb.m:                                             ; preds = %bb.l
  %i.cd = and i16 %i.cb, 2
  %.not2.i.us.us = icmp eq i16 %i.cd, 0
  br i1 %.not2.i.us.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us.us

bb.o:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us.us

_ZNK6icu_7813UnicodeString9getBufferEv.exit.us.us: ; preds = %bb.o, %bb.n, %bb.l
  %.0.i54.us.us = phi ptr [ %i.cg, %bb.o ], [ %i.ce, %bb.n ], [ null, %bb.l ]
  %i.ch = icmp slt i16 %i.cb, 0
  %i.ci = ashr i16 %i.cb, 5
  %i.cj = sext i16 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = select i1 %i.ch, i32 %i.cl, i32 %i.cj   ; 4 uses
  %.not.us.us = icmp sgt i32 %i.cm, %i.o
  br i1 %.not.us.us, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us.us, label %.preheader

.preheader:                                       ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us.us, %bb.p
  %.04.i.i.us.us = phi ptr [ %i.cq, %bb.p ], [ %i.q, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us.us ] ; 2 uses
  %.03.i.i.us.us = phi ptr [ %i.cp, %bb.p ], [ %.0.i54.us.us, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us.us ] ; 2 uses
  %.0.i.i.us.us = phi i32 [ %i.cr, %bb.p ], [ %i.cm, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us.us ] ; 2 uses
  %i.cn = load i16, ptr %.04.i.i.us.us, align 2
  %i.co = load i16, ptr %.03.i.i.us.us, align 2
  %.not.i.i.us.us = icmp eq i16 %i.cn, %i.co
  br i1 %.not.i.i.us.us, label %bb.p, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us.us

bb.p:                                             ; preds = %.preheader
  %i.cp = getelementptr inbounds nuw i8, ptr %.03.i.i.us.us, i64 2
  %i.cq = getelementptr inbounds nuw i8, ptr %.04.i.i.us.us, i64 2
  %i.cr = add nsw i32 %.0.i.i.us.us, -1
  %i.cs = icmp sgt i32 %.0.i.i.us.us, 1
  br i1 %i.cs, label %.preheader, label %_ZN6icu_78L9matches16EPKDsS1_i.exit.i.us.us, !llvm.loop !10

_ZN6icu_78L9matches16EPKDsS1_i.exit.i.us.us:      ; preds = %bb.p
  %i.ct = load i16, ptr %i.ah, align 2
  %i.cu = and i16 %i.ct, -1024
  %i.cv = icmp eq i16 %i.cu, -10240
  br i1 %i.cv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6icu_78L9matches16EPKDsS1_i.exit.i.us.us
  %i.cw = load i16, ptr %i.q, align 2
  %i.cx = and i16 %i.cw, -1024
  %i.cy = icmp eq i16 %i.cx, -9216
  br i1 %i.cy, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us.us, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN6icu_78L9matches16EPKDsS1_i.exit.i.us.us
  %i.cz = icmp slt i32 %i.cm, %i.af
  br i1 %i.cz, label %bb.s, label %.thread64

bb.s:                                             ; preds = %bb.r
  %i.da = sext i32 %i.cm to i64
  %i.db = getelementptr [2 x i8], ptr %i.q, i64 %i.da ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 -2
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = and i16 %i.dd, -1024
  %i.df = icmp eq i16 %i.de, -10240
  br i1 %i.df, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us.us, label %.thread64

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us.us:  ; preds = %bb.s
  %i.dg = load i16, ptr %i.db, align 2
  %i.dh = and i16 %i.dg, -1024
  %.not69.us.us = icmp eq i16 %i.dh, -9216
  br i1 %.not69.us.us, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us.us, label %.thread64

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us.us: ; preds = %.preheader, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us.us, %bb.q, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us.us, %.lr.ph.split.us.us
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge.us, label %.lr.ph.split.us.us, !llvm.loop !18

.split:                                           ; preds = %bb.a, %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit
  %.043 = phi i32 [ %i.eg, %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit ], [ %2, %bb.a ] ; 3 uses
  %.041 = phi i32 [ %i.ef, %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit ], [ 0, %bb.a ] ; 2 uses
  %i.di = load ptr, ptr %i.e, align 8
  %i.dj = sext i32 %.041 to i64
  %i.dk = getelementptr inbounds [2 x i8], ptr %1, i64 %i.dj
  %i.dl = tail call noundef i32 @_ZNK6icu_7810UnicodeSet4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %i.di, ptr noundef %i.dk, i32 noundef %.043, i32 noundef 0) #8 ; 3 uses
  %i.dm = icmp eq i32 %i.dl, %.043
  br i1 %i.dm, label %.thread64, label %bb.t

bb.t:                                             ; preds = %.split
  %i.dn = add nsw i32 %i.dl, %.041                ; 4 uses
  %i.do = sub nsw i32 %.043, %i.dl                ; 2 uses
  %i.dp = sext i32 %i.dn to i64
  %i.dq = getelementptr inbounds [2 x i8], ptr %1, i64 %i.dp ; 2 uses
  %i.dr = load i16, ptr %i.dq, align 2            ; 2 uses
  %i.ds = zext i16 %i.dr to i32                   ; 2 uses
  %i.dt = and i16 %i.dr, -1024
  %or.cond.i = icmp eq i16 %i.dt, -10240
  %i.du = icmp sgt i32 %i.do, 1
  %or.cond4.i = and i1 %i.du, %or.cond.i
  br i1 %or.cond4.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %i.dw = load i16, ptr %i.dv, align 2
  %i.dx = zext i16 %i.dw to i32                   ; 2 uses
  %i.dy = and i32 %i.dx, 64512
  %i.dz = icmp eq i32 %i.dy, 56320
  br i1 %i.dz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ea = shl nuw nsw i32 %i.ds, 10
  %i.eb = add nsw i32 %i.ea, -56613888
  %i.ec = add nuw nsw i32 %i.eb, %i.dx
  %i.ed = tail call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.f, i32 noundef %i.ec) #8
  %.not15.i = icmp eq i8 %i.ed, 0
  br i1 %.not15.i, label %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit, label %.thread64

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.ee = tail call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.f, i32 noundef %i.ds) #8
  %.not.i = icmp eq i8 %i.ee, 0
  br i1 %.not.i, label %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit, label %.thread64

_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit: ; preds = %bb.w, %bb.v
  %.0.i = phi i32 [ -2, %bb.v ], [ -1, %bb.w ]    ; 2 uses
  %i.ef = sub nsw i32 %i.dn, %.0.i
  %i.eg = add nsw i32 %.0.i, %i.do                ; 2 uses
  %.not52 = icmp eq i32 %i.eg, 0
  br i1 %.not52, label %.thread64, label %.split, !llvm.loop !19

.thread64:                                        ; preds = %.split, %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit, %bb.v, %bb.w, %._crit_edge.us, %bb.e, %bb.d, %.split.us, %_ZN6icu_78L9matches16EPKDsS1_i.exit.i.us82, %bb.k, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us83, %bb.r, %bb.s, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us.us
  %.5 = phi i32 [ %2, %._crit_edge.us ], [ %i.n, %_ZN6icu_78L9matches16EPKDsS1_i.exit.i.us82 ], [ %i.n, %bb.r ], [ %i.n, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us.us ], [ %i.n, %bb.s ], [ %i.n, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us83 ], [ %i.n, %bb.k ], [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ %2, %.split.us ], [ %i.dn, %bb.w ], [ %i.dn, %bb.v ], [ %2, %.split ], [ %2, %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit ]
  ret i32 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan8spanBackEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::OffsetList", align 8 ; 13 uses
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan11spanNotBackEPKDsi(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1, i32 noundef %2)
  br label %bb.bb

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = tail call noundef i32 @_ZNK6icu_7810UnicodeSet8spanBackEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %i.c, ptr noundef %1, i32 noundef %2, i32 noundef 1) #8 ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.bb, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = sub nsw i32 %2, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  store ptr %i.g, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 10 uses
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store i32 0, ptr %i.j, align 8
  %i.k = icmp eq i32 %3, 1                        ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.m = load i32, ptr %i.l, align 4              ; 4 uses
  %i.n = icmp slt i32 %i.m, 17
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 16, ptr %i.h, align 8
  br label %_ZN6icu_7810OffsetList12setMaxLengthEi.exit

bb.g:                                             ; preds = %bb.e
  %i.o = zext nneg i32 %i.m to i64
  %i.p = call noalias ptr @uprv_malloc_78(i64 noundef %i.o) #9 ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.h

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load i32, ptr %i.h, align 8
  %.pre = load ptr, ptr %4, align 8
  br label %_ZN6icu_7810OffsetList12setMaxLengthEi.exit

bb.h:                                             ; preds = %bb.g
  store ptr %i.p, ptr %4, align 8
  store i32 %i.m, ptr %i.h, align 8
  br label %_ZN6icu_7810OffsetList12setMaxLengthEi.exit

_ZN6icu_7810OffsetList12setMaxLengthEi.exit:      ; preds = %bb.f, %._crit_edge.i, %bb.h
  %i.q = phi ptr [ %.pre, %._crit_edge.i ], [ %i.p, %bb.h ], [ %i.g, %bb.f ]
  %i.r = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.m, %bb.h ], [ 16, %bb.f ]
  %i.s = sext i32 %i.r to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.q, i8 0, i64 %i.s, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_ZN6icu_7810OffsetList12setMaxLengthEi.exit, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !align !6
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8              ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.aa = load i8, ptr %i.z, align 4
  %.not = icmp eq i8 %i.aa, 0
  %i.ab = sext i32 %i.w to i64
  %.0143.idx = select i1 %.not, i64 0, i64 %i.ab
  %.0143 = getelementptr inbounds i8, ptr %i.y, i64 %.0143.idx ; 2 uses
  %i.ac = icmp sgt i32 %i.w, 0                    ; 2 uses
  %i.ad = sext i32 %2 to i64                      ; 2 uses
  %wide.trip.count = zext nneg i32 %i.w to i64
  %wide.trip.count264 = zext nneg i32 %i.w to i64
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.i
  %.0127 = phi i32 [ %i.f, %bb.i ], [ %.0127.be, %.backedge.backedge ] ; 4 uses
  %.0120 = phi i32 [ %i.d, %bb.i ], [ %.0120.be, %.backedge.backedge ] ; 17 uses
  br i1 %i.k, label %.preheader221, label %.preheader222

.preheader222:                                    ; preds = %.backedge
  br i1 %i.ac, label %.lr.ph241.preheader, label %._crit_edge

.lr.ph241.preheader:                              ; preds = %.preheader222
  %i.ae = sext i32 %.0120 to i64                  ; 2 uses
  br label %.lr.ph241

.preheader221:                                    ; preds = %.backedge
  br i1 %i.ac, label %.lr.ph249.preheader, label %.thread207

.lr.ph249.preheader:                              ; preds = %.preheader221
  %i.af = sext i32 %.0120 to i64
  %i.ag = add i32 %.0120, 1
  br label %.lr.ph249

.lr.ph249:                                        ; preds = %.lr.ph249.preheader, %.loopexit
  %indvars.iv261 = phi i64 [ 0, %.lr.ph249.preheader ], [ %indvars.iv.next262, %.loopexit ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0143, i64 %indvars.iv261
  %i.ai = load i8, ptr %i.ah, align 1             ; 3 uses
  %i.aj = icmp eq i8 %i.ai, -1
  br i1 %i.aj, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph249
  %i.ak = zext i8 %i.ai to i32
  %i.al = load ptr, ptr %i.t, align 8, !nonnull !5, !align !6
  %i.am = trunc nuw nsw i64 %indvars.iv261 to i32
  %i.an = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.al, i32 noundef %i.am) #8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i16, ptr %i.ao, align 8            ; 4 uses
  %i.aq = and i16 %i.ap, 17
  %.not.i171 = icmp eq i16 %i.aq, 0
  br i1 %.not.i171, label %bb.k, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.k:                                             ; preds = %bb.j
  %i.ar = and i16 %i.ap, 2
  %.not2.i = icmp eq i16 %i.ar, 0
  br i1 %.not2.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.m:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.j, %bb.l, %bb.m
  %.0.i = phi ptr [ %i.au, %bb.m ], [ %i.as, %bb.l ], [ null, %bb.j ] ; 3 uses
  %i.av = icmp slt i16 %i.ap, 0
  %i.aw = ashr i16 %i.ap, 5
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = select i1 %i.av, i32 %i.az, i32 %i.ax   ; 5 uses
  %i.bb = icmp eq i8 %i.ai, -2
  br i1 %i.bb, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %i.bc = load i16, ptr %.0.i, align 2
  %i.bd = and i16 %i.bc, -1024
  %i.be = icmp ne i16 %i.bd, -10240
  %.not161 = icmp eq i32 %i.ba, 1
  %or.cond164 = or i1 %.not161, %i.be
  br i1 %or.cond164, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = and i16 %i.bg, -1024
  %i.bi = icmp eq i16 %i.bh, -9216
  %spec.select = select i1 %i.bi, i32 -2, i32 -1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0140.neg = phi i32 [ -1, %bb.n ], [ %spec.select, %bb.o ]
  %i.bj = add i32 %.0140.neg, %i.ba
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %.0144 = phi i32 [ %i.bj, %bb.p ], [ %i.ak, %_ZNK6icu_7813UnicodeString9getBufferEv.exit ] ; 2 uses
  %spec.select165 = call i32 @llvm.smin.i32(i32 %.0144, i32 %.0127) ; 3 uses
  %i.bk = sub nsw i32 %i.ba, %spec.select165      ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, %.0120
  br i1 %i.bl, label %.loopexit, label %.lr.ph247

.lr.ph247:                                        ; preds = %bb.q
  %i.bm = sext i32 %i.ba to i64                   ; 2 uses
  %i.bn = sext i32 %i.bk to i64
  %i.bo = add i32 %i.ag, %spec.select165
  %i.bp = call i32 @llvm.smin.i32(i32 %.0144, i32 %.0127)
  %i.bq = sub i32 %i.bo, %i.bp
  %invariant.op297 = sub nsw i64 %i.ad, %i.bm
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph247, %bb.aa
  %indvars.iv258 = phi i64 [ %i.bn, %.lr.ph247 ], [ %indvars.iv.next259, %bb.aa ] ; 3 uses
  %.2146244 = phi i32 [ %spec.select165, %.lr.ph247 ], [ %i.db, %bb.aa ] ; 2 uses
  %i.br = load i32, ptr %i.j, align 8
  %i.bs = trunc nsw i64 %indvars.iv258 to i32     ; 2 uses
  %i.bt = add nsw i32 %i.br, %i.bs                ; 2 uses
  %i.bu = load i32, ptr %i.h, align 8             ; 2 uses
  %.not.i172 = icmp slt i32 %i.bt, %i.bu
  %i.bv = select i1 %.not.i172, i32 0, i32 %i.bu
  %spec.select.i = sub nsw i32 %i.bt, %i.bv
  %5 = load ptr, ptr %4, align 8                  ; 2 uses
  %i.bw = sext i32 %spec.select.i to i64
  %i.bx = getelementptr inbounds i8, ptr %5, i64 %i.bw ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1
  %.not162 = icmp eq i8 %i.by, 0
  br i1 %.not162, label %bb.s, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bz = sub nsw i64 %i.af, %indvars.iv258       ; 3 uses
  %i.ca = getelementptr inbounds [2 x i8], ptr %1, i64 %i.bz ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.04.i.i = phi ptr [ %i.ca, %bb.s ], [ %i.ce, %bb.u ] ; 2 uses
  %.03.i.i = phi ptr [ %.0.i, %bb.s ], [ %i.cd, %bb.u ] ; 2 uses
  %.0.i.i = phi i32 [ %i.ba, %bb.s ], [ %i.cf, %bb.u ] ; 2 uses
  %i.cb = load i16, ptr %.04.i.i, align 2
  %i.cc = load i16, ptr %.03.i.i, align 2
  %.not.i.i = icmp eq i16 %i.cb, %i.cc
  br i1 %.not.i.i, label %bb.u, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %.03.i.i, i64 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 2
  %i.cf = add nsw i32 %.0.i.i, -1
  %i.cg = icmp sgt i32 %.0.i.i, 1
  br i1 %i.cg, label %bb.t, label %_ZN6icu_78L9matches16EPKDsS1_i.exit.i, !llvm.loop !10

_ZN6icu_78L9matches16EPKDsS1_i.exit.i:            ; preds = %bb.u
  %i.ch = icmp sgt i64 %i.bz, 0
  br i1 %i.ch, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_ZN6icu_78L9matches16EPKDsS1_i.exit.i
  %i.ci = getelementptr inbounds i8, ptr %i.ca, i64 -2
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = and i16 %i.cj, -1024
  %i.cl = icmp eq i16 %i.ck, -10240
  br i1 %i.cl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cm = load i16, ptr %i.ca, align 2
  %i.cn = and i16 %i.cm, -1024
  %i.co = icmp eq i16 %i.cn, -9216
  br i1 %i.co, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %_ZN6icu_78L9matches16EPKDsS1_i.exit.i
  %i.cp = icmp slt i64 %i.bz, %invariant.op297
  br i1 %i.cp, label %bb.y, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread193

bb.y:                                             ; preds = %bb.x
  %i.cq = getelementptr [2 x i8], ptr %i.ca, i64 %i.bm ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -2
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = and i16 %i.cs, -1024
  %i.cu = icmp eq i16 %i.ct, -10240
  br i1 %i.cu, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread193

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit:        ; preds = %bb.y
  %i.cv = load i16, ptr %i.cq, align 2
  %i.cw = and i16 %i.cv, -1024
  %.not220 = icmp eq i16 %i.cw, -9216
  br i1 %.not220, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread193

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread193: ; preds = %bb.y, %bb.x, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit
  %i.cx = icmp eq i32 %.0120, %i.bs
  br i1 %i.cx, label %.thread202, label %bb.z

bb.z:                                             ; preds = %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread193
  store i8 1, ptr %i.bx, align 1
  %i.cy = load i32, ptr %i.i, align 4
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.i, align 4
  br label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread: ; preds = %bb.t, %bb.w, %bb.z, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit, %bb.r
  %i.da = icmp eq i32 %.2146244, 0
  br i1 %i.da, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread
  %i.db = add nsw i32 %.2146244, -1
  %indvars.iv.next259 = add nsw i64 %indvars.iv258, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next259 to i32
  %exitcond260.not = icmp eq i32 %i.bq, %lftr.wideiv
  br i1 %exitcond260.not, label %.loopexit, label %bb.r, !llvm.loop !20

.loopexit:                                        ; preds = %bb.aa, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread, %bb.q, %.lr.ph249
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %.thread207, label %.lr.ph249, !llvm.loop !21

.lr.ph241:                                        ; preds = %.lr.ph241.preheader, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200
  %indvars.iv255 = phi i64 [ 0, %.lr.ph241.preheader ], [ %indvars.iv.next256, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200 ] ; 3 uses
  %.0133240 = phi i32 [ 0, %.lr.ph241.preheader ], [ %.2135, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200 ] ; 6 uses
  %.0136239 = phi i32 [ 0, %.lr.ph241.preheader ], [ %.2138, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200 ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0143, i64 %indvars.iv255
  %i.dd = load i8, ptr %i.dc, align 1             ; 2 uses
  %i.de = load ptr, ptr %i.t, align 8, !nonnull !5, !align !6
  %i.df = trunc nuw nsw i64 %indvars.iv255 to i32
  %i.dg = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.de, i32 noundef %i.df) #8 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i16, ptr %i.dh, align 8            ; 4 uses
  %i.dj = and i16 %i.di, 17
  %.not.i175 = icmp eq i16 %i.dj, 0
  br i1 %.not.i175, label %bb.ab, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit178

bb.ab:                                            ; preds = %.lr.ph241
  %i.dk = and i16 %i.di, 2
  %.not2.i177 = icmp eq i16 %i.dk, 0
  br i1 %.not2.i177, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit178

bb.ad:                                            ; preds = %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit178

_ZNK6icu_7813UnicodeString9getBufferEv.exit178:   ; preds = %.lr.ph241, %bb.ac, %bb.ad
  %.0.i176 = phi ptr [ %i.dn, %bb.ad ], [ %i.dl, %bb.ac ], [ null, %.lr.ph241 ]
  %i.do = icmp slt i16 %i.di, 0
  %i.dp = ashr i16 %i.di, 5
  %i.dq = sext i16 %i.dp to i32
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = select i1 %i.do, i32 %i.ds, i32 %i.dq   ; 5 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200, label %bb.ae

bb.ae:                                            ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit178
  %i.dv = zext i8 %i.dd to i32
  %i.dw = icmp ugt i8 %i.dd, -3
  %spec.select166 = select i1 %i.dw, i32 %i.dt, i32 %i.dv
  %.1131 = call i32 @llvm.smin.i32(i32 %spec.select166, i32 %.0127) ; 3 uses
  %i.dx = sub nsw i32 %i.dt, %.1131               ; 2 uses
  %i.dy = sext i32 %i.dt to i64                   ; 2 uses
  %i.dz = icmp sgt i32 %i.dx, %.0120
  %i.ea = icmp slt i32 %.1131, %.0133240
  %or.cond167226 = select i1 %i.dz, i1 true, i1 %i.ea
  br i1 %or.cond167226, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ae
  %i.eb = sext i32 %i.dx to i64
  %i.ec = sext i32 %.0136239 to i64
  %invariant.op = sub nsw i64 %i.ad, %i.dy
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread
  %indvars.iv = phi i64 [ %i.eb, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread ] ; 7 uses
  %.2132227 = phi i32 [ %.1131, %.lr.ph.preheader ], [ %i.fd, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread ] ; 6 uses
  %i.ed = icmp sgt i32 %.2132227, %.0133240
  %i.ee = icmp sgt i64 %indvars.iv, %i.ec
  %or.cond168 = select i1 %i.ed, i1 true, i1 %i.ee
  br i1 %or.cond168, label %bb.af, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread

bb.af:                                            ; preds = %.lr.ph
  %i.ef = sub nsw i64 %i.ae, %indvars.iv          ; 3 uses
  %i.eg = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ef ; 4 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %.04.i.i179 = phi ptr [ %i.eg, %bb.af ], [ %i.ek, %bb.ah ] ; 2 uses
  %.03.i.i180 = phi ptr [ %.0.i176, %bb.af ], [ %i.ej, %bb.ah ] ; 2 uses
  %.0.i.i181 = phi i32 [ %i.dt, %bb.af ], [ %i.el, %bb.ah ] ; 2 uses
  %i.eh = load i16, ptr %.04.i.i179, align 2
  %i.ei = load i16, ptr %.03.i.i180, align 2
  %.not.i.i182 = icmp eq i16 %i.eh, %i.ei
  br i1 %.not.i.i182, label %bb.ah, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread

bb.ah:                                            ; preds = %bb.ag
  %i.ej = getelementptr inbounds nuw i8, ptr %.03.i.i180, i64 2
  %i.ek = getelementptr inbounds nuw i8, ptr %.04.i.i179, i64 2
  %i.el = add nsw i32 %.0.i.i181, -1
  %i.em = icmp sgt i32 %.0.i.i181, 1
  br i1 %i.em, label %bb.ag, label %_ZN6icu_78L9matches16EPKDsS1_i.exit.i183, !llvm.loop !10

_ZN6icu_78L9matches16EPKDsS1_i.exit.i183:         ; preds = %bb.ah
  %i.en = icmp sgt i64 %i.ef, 0
  br i1 %i.en, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %_ZN6icu_78L9matches16EPKDsS1_i.exit.i183
  %i.eo = getelementptr inbounds i8, ptr %i.eg, i64 -2
  %i.ep = load i16, ptr %i.eo, align 2
  %i.eq = and i16 %i.ep, -1024
  %i.er = icmp eq i16 %i.eq, -10240
  br i1 %i.er, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.es = load i16, ptr %i.eg, align 2
  %i.et = and i16 %i.es, -1024
  %i.eu = icmp eq i16 %i.et, -9216
  br i1 %i.eu, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %_ZN6icu_78L9matches16EPKDsS1_i.exit.i183
  %i.ev = icmp slt i64 %i.ef, %invariant.op
  br i1 %i.ev, label %bb.al, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200.loopexit.split.loop.exit286

bb.al:                                            ; preds = %bb.ak
  %i.ew = getelementptr [2 x i8], ptr %i.eg, i64 %i.dy ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 -2
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = and i16 %i.ey, -1024
  %i.fa = icmp eq i16 %i.ez, -10240
  br i1 %i.fa, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200.loopexit.split.loop.exit

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184:     ; preds = %bb.al
  %i.fb = load i16, ptr %i.ew, align 2
  %i.fc = and i16 %i.fb, -1024
  %.not216 = icmp eq i16 %i.fc, -9216
  br i1 %.not216, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200.loopexit.split.loop.exit292

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread: ; preds = %bb.ag, %bb.aj, %.lr.ph, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184
  %i.fd = add nsw i32 %.2132227, -1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.fe = icmp sge i64 %indvars.iv, %i.ae
  %i.ff = icmp sle i32 %.2132227, %.0133240
  %or.cond167 = select i1 %i.fe, i1 true, i1 %i.ff
  br i1 %or.cond167, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200, label %.lr.ph, !llvm.loop !22

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200.loopexit.split.loop.exit: ; preds = %bb.al
  %i.fg = trunc nsw i64 %indvars.iv to i32
  br label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200.loopexit.split.loop.exit286: ; preds = %bb.ak
  %i.fh = trunc nsw i64 %indvars.iv to i32
  br label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200.loopexit.split.loop.exit292: ; preds = %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184
  %i.fi = trunc nsw i64 %indvars.iv to i32
  br label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200: ; preds = %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200.loopexit.split.loop.exit, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200.loopexit.split.loop.exit286, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200.loopexit.split.loop.exit292, %bb.ae, %_ZNK6icu_7813UnicodeString9getBufferEv.exit178
  %.2138 = phi i32 [ %.0136239, %_ZNK6icu_7813UnicodeString9getBufferEv.exit178 ], [ %.0136239, %bb.ae ], [ %i.fg, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200.loopexit.split.loop.exit ], [ %i.fh, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200.loopexit.split.loop.exit286 ], [ %i.fi, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200.loopexit.split.loop.exit292 ], [ %.0136239, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread ] ; 2 uses
  %.2135 = phi i32 [ %.0133240, %_ZNK6icu_7813UnicodeString9getBufferEv.exit178 ], [ %.0133240, %bb.ae ], [ %.2132227, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200.loopexit.split.loop.exit ], [ %.2132227, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200.loopexit.split.loop.exit286 ], [ %.2132227, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200.loopexit.split.loop.exit292 ], [ %.0133240, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread ] ; 2 uses
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next256, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph241, !llvm.loop !23

._crit_edge.loopexit:                             ; preds = %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit184.thread200
  %i.fj = icmp ne i32 %.2135, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader222
  %.0136.lcssa = phi i32 [ 0, %.preheader222 ], [ %.2138, %._crit_edge.loopexit ] ; 2 uses
  %.0133.lcssa = phi i1 [ false, %.preheader222 ], [ %i.fj, %._crit_edge.loopexit ]
  %i.fk = icmp ne i32 %.0136.lcssa, 0
  %or.cond = select i1 %i.fk, i1 true, i1 %.0133.lcssa
  br i1 %or.cond, label %bb.am, label %.thread207

bb.am:                                            ; preds = %._crit_edge
  %i.fl = sub nsw i32 %.0120, %.0136.lcssa        ; 2 uses
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %.thread202.loopexit253, label %.backedge.backedge

.thread207:                                       ; preds = %.loopexit, %.preheader221, %._crit_edge
  %.not156 = icmp ne i32 %.0127, 0
  %i.fn = icmp eq i32 %.0120, %2
  %or.cond170 = select i1 %.not156, i1 true, i1 %i.fn
  %i.fo = load i32, ptr %i.i, align 4
  %.not218 = icmp eq i32 %i.fo, 0                 ; 2 uses
  br i1 %or.cond170, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.thread207
  br i1 %.not218, label %.thread202.loopexit253, label %_ZN6icu_78L11spanOneBackERKNS_10UnicodeSetEPKDsi.exit

bb.ao:                                            ; preds = %.thread207
  br i1 %.not218, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fp = call noundef i32 @_ZNK6icu_7810UnicodeSet8spanBackEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %i.c, ptr noundef %1, i32 noundef %.0120, i32 noundef 1) #8 ; 4 uses
  %i.fq = sub nsw i32 %.0120, %i.fp               ; 2 uses
  %i.fr = icmp ne i32 %i.fp, 0
  %i.fs = icmp ne i32 %i.fq, 0
  %or.cond3.not = select i1 %i.fr, i1 %i.fs, i1 false
end_hunk_1
