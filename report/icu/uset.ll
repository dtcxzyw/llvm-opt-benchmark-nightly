inline.NumInlined: 45
inline.NumDeleted: 14
begin_hunk_0_@uset_getString_78:bb.a
bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.r, %bb.g ], [ %i.p, %bb.f ], [ null, %bb.d ] ; 2 uses
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %.0.i) #10, !srcloc !25
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ZNK6icu_7813UnicodeString9getBufferEv.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %.0.i, %_ZNK6icu_7813UnicodeString9getBufferEv.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef i32 @uset_getItem_78(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.icu_78::Char16Ptr", align 8 ; 4 uses
  %i.a = load i32, ptr %6, align 4, !tbaa !26
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %6, align 4, !tbaa !26
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @_ZNK6icu_7810UnicodeSet13getRangeCountEv(ptr noundef nonnull align 8 dereferenceable(200) %0) ; 2 uses
  %i.e = icmp slt i32 %1, %i.d
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call noundef i32 @_ZNK6icu_7810UnicodeSet13getRangeStartEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1)
  store i32 %i.f, ptr %2, align 4, !tbaa !23
  %i.g = tail call noundef i32 @_ZNK6icu_7810UnicodeSet11getRangeEndEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1)
  store i32 %i.g, ptr %3, align 4, !tbaa !23
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.h = sub nsw i32 %1, %i.d                     ; 2 uses
  %i.i = tail call noundef i32 @_ZNK6icu_7810UnicodeSet11stringsSizeEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.k = tail call noundef ptr @_ZNK6icu_7810UnicodeSet9getStringEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.h)
  store ptr %4, ptr %7, align 8, !tbaa !28
  %i.l = invoke noundef i32 @_ZNK6icu_7813UnicodeString7extractENS_9Char16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 %7, i32 noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = load ptr, ptr %7, align 8, !tbaa !28
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.m) #10, !srcloc !30
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %7, align 8, !tbaa !28
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.o) #10, !srcloc !30
  resume { ptr, i32 } %i.n

bb.j:                                             ; preds = %bb.f
  store i32 8, ptr %6, align 4, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.e, %bb.h, %bb.j, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ -1, %bb.c ], [ 0, %bb.e ], [ %i.l, %bb.h ], [ -1, %bb.j ]
  ret i32 %.1
}

declare noundef i32 @_ZNK6icu_7810UnicodeSet13getRangeStartEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK6icu_7810UnicodeSet11getRangeEndEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK6icu_7813UnicodeString7extractENS_9Char16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef align 8, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @uset_serialize_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4, !tbaa !26
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @_ZNK6icu_7810UnicodeSet9serializeEPtiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare noundef i32 @_ZNK6icu_7810UnicodeSet9serializeEPtiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define signext range(i8 0, 2) i8 @uset_getSerializedSet_78(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  %i.c = icmp slt i32 %2, 1
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !31
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.f = load i16, ptr %1, align 2, !tbaa !34     ; 2 uses
  %i.g = zext i16 %i.f to i32                     ; 4 uses
  %.not = icmp sgt i16 %i.f, -1
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = and i32 %i.g, 32767                      ; 2 uses
  %i.i = add nuw nsw i32 %i.h, 2
  %i.j = icmp samesign ult i32 %2, %i.i
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !31
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i16, ptr %i.e, align 2, !tbaa !34
  %i.n = zext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.n, ptr %i.o, align 8, !tbaa !31
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %.not30 = icmp samesign ugt i32 %2, %i.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.p, align 8, !tbaa !31
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  store i32 %i.g, ptr %i.p, align 8, !tbaa !31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.026 = phi ptr [ %i.l, %bb.g ], [ %i.e, %bb.j ]
  %.0 = phi i32 [ %i.h, %bb.g ], [ %i.g, %bb.j ]
  store ptr %.026, ptr %0, align 8, !tbaa !36
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.f, %bb.i, %bb.k
  %.0.sink = phi i32 [ %.0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.c ]
  %.025.ph = phi i8 [ 1, %bb.k ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.0.sink, ptr %i.q, align 4, !tbaa !37
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.a
  %.025 = phi i8 [ 0, %bb.a ], [ %.025.ph, %.sink.split ]
  ret i8 %.025
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @uset_setSerializedToOne_78(ptr noundef %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ugt i32 %1, 1114111
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !36
  %i.d = icmp samesign ult i32 %1, 65535
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 2, ptr %i.e, align 4, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.f, align 8, !tbaa !31
  %i.g = trunc nuw i32 %1 to i16                  ; 2 uses
  store i16 %i.g, ptr %i.c, align 8, !tbaa !34
  %i.h = add nuw i16 %i.g, 1
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.h, ptr %2, align 2, !tbaa !34
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %1, 65535
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 3, ptr %i.k, align 4, !tbaa !37
  store i16 -1, ptr %i.c, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 1, ptr %i.l, align 2, !tbaa !34
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %3, align 4, !tbaa !34
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.m = icmp samesign ult i32 %1, 1114111
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.n, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 4, ptr %i.o, align 4, !tbaa !37
  %i.p = lshr i32 %1, 16
  %i.q = trunc nuw nsw i32 %i.p to i16
  store i16 %i.q, ptr %i.c, align 8, !tbaa !34
  %i.r = trunc i32 %1 to i16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.r, ptr %i.s, align 2, !tbaa !34
  %i.t = add nuw nsw i32 %1, 1                    ; 2 uses
  %i.u = lshr i32 %i.t, 16
  %i.v = trunc nuw nsw i32 %i.u to i16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.v, ptr %i.w, align 4, !tbaa !34
  %i.x = trunc i32 %i.t to i16
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.x, ptr %4, align 2, !tbaa !34
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 2, ptr %i.o, align 4, !tbaa !37
  store i16 16, ptr %i.c, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 -1, ptr %i.y, align 2, !tbaa !34
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define signext range(i8 0, 2) i8 @uset_serializedContains_78(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ugt i32 %1, 1114111
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !36     ; 7 uses
  %i.d = icmp samesign ult i32 %1, 65536
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load i16, ptr %i.c, align 2, !tbaa !34
  %i.f = zext i16 %i.e to i32
  %i.g = icmp samesign ult i32 %1, %i.f
  br i1 %i.g, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %i.j = add nsw i32 %i.i, -1                     ; 4 uses
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !34
  %i.n = zext i16 %i.m to i32
  %i.o = icmp samesign ult i32 %1, %i.n
  br i1 %i.o, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.d
  %i.p = ashr i32 %i.j, 1                         ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread, label %.lr.ph102

.lr.ph102:                                        ; preds = %.preheader, %.lr.ph102
  %i.r = phi i32 [ %i.y, %.lr.ph102 ], [ %i.p, %.preheader ] ; 3 uses
  %.076101 = phi i32 [ %.076., %.lr.ph102 ], [ 0, %.preheader ]
  %.079100 = phi i32 [ %..079, %.lr.ph102 ], [ %i.j, %.preheader ]
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !34
  %i.v = zext i16 %i.u to i32
  %i.w = icmp samesign ult i32 %1, %i.v           ; 2 uses
  %..079 = select i1 %i.w, i32 %i.r, i32 %.079100 ; 3 uses
  %.076. = select i1 %i.w, i32 %.076101, i32 %i.r ; 3 uses
  %i.x = add nsw i32 %.076., %..079
  %i.y = ashr i32 %i.x, 1                         ; 2 uses
  %i.z = icmp eq i32 %i.y, %.076.
  br i1 %i.z, label %.thread, label %.lr.ph102

.thread:                                          ; preds = %.lr.ph102, %.preheader, %bb.d, %bb.c
  %.382 = phi i32 [ 0, %bb.c ], [ %i.i, %bb.d ], [ %i.j, %.preheader ], [ %..079, %.lr.ph102 ]
  %i.aa = trunc i32 %.382 to i8
  %i.ab = and i8 %i.aa, 1
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  %i.ac = lshr i32 %1, 16                         ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !31 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !37 ; 2 uses
  %i.ah = add nsw i32 %i.ag, -2                   ; 2 uses
  %i.ai = sub nsw i32 %i.ah, %i.ae                ; 4 uses
  %i.aj = sext i32 %i.ae to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.aj ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !34
  %i.am = zext i16 %i.al to i32                   ; 2 uses
  %i.an = icmp samesign ult i32 %i.ac, %i.am
  br i1 %i.an, label %.thread94, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp eq i32 %i.ac, %i.am
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = and i32 %1, 65535
  %i.aq = getelementptr i8, ptr %i.ak, i64 2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !34
  %i.as = zext i16 %i.ar to i32
  %i.at = icmp samesign ult i32 %i.ap, %i.as
  br i1 %i.at, label %.thread94, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.au = sext i32 %i.ah to i64
  %i.av = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !34
  %i.ax = zext i16 %i.aw to i32                   ; 2 uses
  %i.ay = icmp samesign ult i32 %i.ac, %i.ax
  br i1 %i.ay, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = icmp eq i32 %i.ac, %i.ax
  br i1 %i.az, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ba = and i32 %1, 65535
  %i.bb = sext i32 %i.ag to i64
  %i.bc = getelementptr [2 x i8], ptr %i.c, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -2
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !34
  %i.bf = zext i16 %i.be to i32
  %i.bg = icmp samesign ult i32 %i.ba, %i.bf
  br i1 %i.bg, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.bh = ashr i32 %i.ai, 1
  %i.bi = and i32 %i.bh, -2                       ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.thread94, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bk = and i32 %1, 65535
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.p
  %i.bl = phi i32 [ %i.bi, %.lr.ph ], [ %i.bz, %bb.p ] ; 4 uses
  %.07199 = phi i32 [ %i.ai, %.lr.ph ], [ %.2, %bb.p ]
  %.07398 = phi i32 [ 0, %.lr.ph ], [ %.275, %bb.p ] ; 2 uses
  %i.bm = add nsw i32 %i.bl, %i.ae
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.bn ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !34
  %i.bq = zext i16 %i.bp to i32                   ; 2 uses
  %i.br = icmp samesign ult i32 %i.ac, %i.bq
  br i1 %i.br, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = icmp eq i32 %i.ac, %i.bq
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr i8, ptr %i.bo, i64 2
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !34
  %i.bv = zext i16 %i.bu to i32
  %i.bw = icmp samesign ult i32 %i.bk, %i.bv
  br i1 %i.bw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.275 = phi i32 [ %.07398, %bb.l ], [ %i.bl, %bb.o ], [ %.07398, %bb.n ] ; 3 uses
  %.2 = phi i32 [ %i.bl, %bb.l ], [ %.07199, %bb.o ], [ %i.bl, %bb.n ] ; 3 uses
  %i.bx = add nsw i32 %.2, %.275
  %i.by = ashr i32 %i.bx, 1
  %i.bz = and i32 %i.by, -2                       ; 2 uses
  %i.ca = icmp eq i32 %i.bz, %.275
  br i1 %i.ca, label %.thread94, label %bb.l

bb.q:                                             ; preds = %bb.j, %bb.i
  %i.cb = add nsw i32 %i.ai, 2
  br label %.thread94

.thread94:                                        ; preds = %bb.p, %bb.k, %bb.e, %bb.g, %bb.q
  %.3 = phi i32 [ %i.cb, %bb.q ], [ 0, %bb.e ], [ 0, %bb.g ], [ %i.ai, %bb.k ], [ %.2, %bb.p ]
  %i.cc = lshr i32 %.3, 1
  %i.cd = add i32 %i.cc, %i.ae
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = and i8 %i.ce, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %.thread94, %.thread
  %.0 = phi i8 [ %i.cf, %.thread94 ], [ %i.ab, %.thread ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -1073741823, 1073741824) i32 @uset_getSerializedRangeCount_78(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !37
  %i.f = sub nsw i32 %i.e, %i.c
  %i.g = sdiv i32 %i.f, 2
  %i.h = add i32 %i.c, 1
  %i.i = add i32 %i.h, %i.g
  %i.j = sdiv i32 %i.i, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define signext range(i8 0, 2) i8 @uset_getSerializedRange_78(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %1, 0
  %or.cond = or i1 %i.a, %i.b
end_hunk_0
