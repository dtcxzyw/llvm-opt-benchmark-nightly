inline.NumInlined: 103
inline.NumDeleted: 11
begin_hunk_0_@lpMerge:bb.a
  %i.x = load i32, ptr %i.w, align 1              ; 2 uses
  %i.y = zext i32 %i.x to i64                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 1             ; 2 uses
  %i.ab = zext i16 %i.aa to i32
  %.not.i82 = icmp eq i16 %i.aa, -1
  br i1 %.not.i82, label %bb.h, label %lpLength.exit94

bb.h:                                             ; preds = %lpLength.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 6 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = icmp eq i8 %i.ad, -1
  br i1 %i.ae, label %._crit_edge.thread.i92, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !19
  %i.af = call i32 @lpValidateNext(ptr noundef nonnull readnone %i.w, ptr noundef nonnull %i.a, i64 noundef %i.y)
  %.not.i.i.i85 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i85, label %bb.j, label %.lr.ph.preheader.i86, !prof !18

bb.j:                                             ; preds = %bb.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

.lr.ph.preheader.i86:                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.lr.ph.i87, %.lr.ph.preheader.i86
  %.021.i88 = phi ptr [ %i.ah, %.lr.ph.i87 ], [ %i.ac, %.lr.ph.preheader.i86 ]
  %.01520.i89 = phi i32 [ %i.ag, %.lr.ph.i87 ], [ 0, %.lr.ph.preheader.i86 ]
  %i.ag = add i32 %.01520.i89, 1                  ; 4 uses
  %i.ah = tail call ptr @lpNext(ptr noundef nonnull %i.w, ptr noundef nonnull %.021.i88) ; 2 uses
  %.not18.i90 = icmp eq ptr %i.ah, null
  br i1 %.not18.i90, label %._crit_edge.i91, label %.lr.ph.i87, !llvm.loop !23

._crit_edge.i91:                                  ; preds = %.lr.ph.i87
  %i.ai = icmp ult i32 %i.ag, 65535
  br i1 %i.ai, label %._crit_edge.thread.i92, label %lpLength.exit94

._crit_edge.thread.i92:                           ; preds = %._crit_edge.i91, %bb.h
  %.015.lcssa25.i93 = phi i32 [ %i.ag, %._crit_edge.i91 ], [ 0, %bb.h ] ; 2 uses
  %i.aj = trunc nuw i32 %.015.lcssa25.i93 to i16
  store i16 %i.aj, ptr %i.z, align 1
  br label %lpLength.exit94

lpLength.exit94:                                  ; preds = %lpLength.exit, %._crit_edge.i91, %._crit_edge.thread.i92
  %.016.in.i83 = phi i32 [ %i.ab, %lpLength.exit ], [ %.015.lcssa25.i93, %._crit_edge.thread.i92 ], [ %i.ag, %._crit_edge.i91 ]
  %.not = icmp ult i32 %i.j, %i.x                 ; 3 uses
  %. = select i1 %.not, ptr %0, ptr %1
  %.067 = load ptr, ptr %., align 8, !tbaa !19    ; 2 uses
  %i.ak = add nsw i64 %i.k, -7
  %i.al = add nsw i64 %i.ak, %i.y                 ; 3 uses
  %i.am = icmp ult i64 %i.al, 4294967295
  br i1 %i.am, label %bb.l, label %bb.k, !prof !22

bb.k:                                             ; preds = %lpLength.exit94
  tail call void @_serverAssert(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1513) #21
  tail call void @abort() #22
  unreachable

bb.l:                                             ; preds = %lpLength.exit94
  %.78 = select i1 %.not, ptr %1, ptr %0
  %.016.i84 = zext i32 %.016.in.i83 to i64
  %.066 = load ptr, ptr %.78, align 8, !tbaa !19
  %i.an = add nuw nsw i64 %.016.i84, %.016.i
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 65535)
  %i.ap = tail call ptr @zrealloc_usable(ptr noundef %.066, i64 noundef %i.al, ptr noundef null, ptr noundef null) #21 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.k
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -1 ; 2 uses
  %i.as = add nsw i64 %i.y, -6                    ; 2 uses
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %.067, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull align 1 %i.at, i64 %i.as, i1 false)
  br label %.sink.split

bb.n:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull align 1 %i.au, i64 %i.as, i1 false)
  %i.av = add nsw i64 %i.k, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %.067, i64 %i.av, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.m
  %.sink107 = phi ptr [ %1, %bb.m ], [ %0, %bb.n ] ; 2 uses
  %.sink = phi ptr [ %0, %bb.m ], [ %1, %bb.n ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ax = trunc nuw i64 %i.ao to i16
  store i16 %i.ax, ptr %i.aw, align 1
  %i.ay = trunc nuw i64 %i.al to i32
  store i32 %i.ay, ptr %i.ap, align 1
  %i.az = load ptr, ptr %.sink107, align 8, !tbaa !19
  tail call void @zfree(ptr noundef %i.az) #21
  store ptr null, ptr %.sink107, align 8, !tbaa !19
  store ptr %i.ap, ptr %.sink, align 8, !tbaa !19
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.c ], [ %i.ap, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpDup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = tail call ptr @zmalloc_usable(i64 noundef %i.b, ptr noundef null) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr nonnull align 1 %0, i64 %i.b, i1 false)
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 2, 11) i64 @lpEntrySizeInteger(i64 noundef %0) local_unnamed_addr #12 {
bb.a:
  %or.cond.i = icmp ult i64 %0, 128
  br i1 %or.cond.i, label %lpEncodeBacklenBytes.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %0, 4096
  %or.cond3.i = icmp ult i64 %i.a, 8192
  br i1 %or.cond3.i, label %lpEncodeBacklenBytes.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = add i64 %0, 32768
  %or.cond5.i = icmp ult i64 %i.b, 65536
  br i1 %or.cond5.i, label %lpEncodeBacklenBytes.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = add i64 %0, 8388608
  %or.cond7.i = icmp ult i64 %i.c, 16777216
  br i1 %or.cond7.i, label %lpEncodeBacklenBytes.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = add i64 %0, 2147483648
  %or.cond9.i = icmp ult i64 %i.d, 4294967296
  %i.e = select i1 %or.cond9.i, i64 6, i64 10
  br label %lpEncodeBacklenBytes.exit

lpEncodeBacklenBytes.exit:                        ; preds = %bb.e, %bb.a, %bb.b, %bb.c, %bb.d
  %.sink.i = phi i64 [ 5, %bb.d ], [ %i.e, %bb.e ], [ 3, %bb.b ], [ 4, %bb.c ], [ 2, %bb.a ]
  ret i64 %.sink.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @lpEstimateBytesRepeatedInteger(i64 noundef %0, i64 noundef %1) local_unnamed_addr #12 {
bb.a:
  %or.cond.i.i = icmp ult i64 %0, 128
  br i1 %or.cond.i.i, label %lpEntrySizeInteger.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %0, 4096
  %or.cond3.i.i = icmp ult i64 %i.a, 8192
  br i1 %or.cond3.i.i, label %lpEntrySizeInteger.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = add i64 %0, 32768
  %or.cond5.i.i = icmp ult i64 %i.b, 65536
  br i1 %or.cond5.i.i, label %lpEntrySizeInteger.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = add i64 %0, 8388608
  %or.cond7.i.i = icmp ult i64 %i.c, 16777216
  br i1 %or.cond7.i.i, label %lpEntrySizeInteger.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = add i64 %0, 2147483648
  %or.cond9.i.i = icmp ult i64 %i.d, 4294967296
  %i.e = select i1 %or.cond9.i.i, i64 6, i64 10
  br label %lpEntrySizeInteger.exit

lpEntrySizeInteger.exit:                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.sink.i.i = phi i64 [ 5, %bb.d ], [ %i.e, %bb.e ], [ 3, %bb.b ], [ 4, %bb.c ], [ 2, %bb.a ]
  %i.f = mul i64 %.sink.i.i, %1
  %i.g = add i64 %i.f, 7
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @lpValidateFirst(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  %i.c = icmp eq i8 %i.b, -1
  %. = select i1 %i.c, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @lpValidateNext(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !19     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %lpCurrentEncodedSizeBytes.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.c = icmp ult ptr %i.a, %i.b
  br i1 %i.c, label %lpCurrentEncodedSizeBytes.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1 ; 3 uses
  %i.f = icmp ugt ptr %i.a, %i.e
  br i1 %i.f, label %lpCurrentEncodedSizeBytes.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.a, align 1, !tbaa !13    ; 7 uses
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %lpCurrentEncodedSizeBytes.exit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = zext i8 %i.g to i32                      ; 6 uses
  %i.j = icmp sgt i8 %i.g, -1                     ; 2 uses
  %i.k = and i32 %i.i, 192
  %i.l = icmp eq i32 %i.k, 128                    ; 2 uses
  %i.m = and i32 %i.i, 224
  %i.n = icmp eq i32 %i.m, 192                    ; 2 uses
  %.off.i = add i8 %i.g, 15
  %switch.i = icmp ult i8 %.off.i, 4
  %i.o = or i1 %switch.i, %i.l
  %i.p = or i1 %i.j, %i.o
  %or.cond15.i = or i1 %i.n, %i.p
  br i1 %or.cond15.i, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = and i32 %i.i, 240
  %i.r = icmp eq i32 %i.q, 224
  br i1 %i.r, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %switch.selectcmp16.i = icmp eq i8 %i.g, -16
  br i1 %switch.selectcmp16.i, label %select.unfold, label %lpCurrentEncodedSizeBytes.exit

select.unfold:                                    ; preds = %bb.g, %bb.e, %bb.f
  %.0.i.ph = phi i64 [ 1, %bb.e ], [ 2, %bb.f ], [ 5, %bb.g ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i.ph ; 2 uses
  %3 = icmp ult ptr %i.s, %i.b
  %i.t = icmp ugt ptr %i.s, %i.e
  %or.cond = or i1 %3, %i.t
  br i1 %or.cond, label %lpCurrentEncodedSizeBytes.exit, label %bb.h

bb.h:                                             ; preds = %select.unfold
  br i1 %i.j, label %lpEncodeBacklenBytes.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.l, label %lpCurrentEncodedSizeUnsafe.exit.thread, label %bb.j

lpCurrentEncodedSizeUnsafe.exit.thread:           ; preds = %bb.i
  %i.u = and i32 %i.i, 63
  %i.v = add nuw nsw i32 %i.u, 1
  br label %lpEncodeBacklenBytes.exit

bb.j:                                             ; preds = %bb.i
  br i1 %i.n, label %lpEncodeBacklenBytes.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %switch.tableidx = add nsw i8 %i.g, 15          ; 2 uses
  %i.w = icmp ult i8 %switch.tableidx, 4
  br i1 %i.w, label %switch.lookup, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = and i32 %i.i, 240
  %i.y = icmp eq i32 %i.x, 224
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = shl nuw nsw i32 %i.i, 8
  %i.aa = and i32 %i.z, 3840
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.aa, 2
  %i.af = add nuw nsw i32 %i.ae, %i.ad
  br label %lpCurrentEncodedSizeUnsafe.exit

bb.n:                                             ; preds = %bb.l
  %cond = icmp eq i8 %i.g, -16
  br i1 %cond, label %bb.o, label %lpEncodeBacklenBytes.exit

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ah = load i32, ptr %i.ag, align 1
  %i.ai = add i32 %i.ah, 5
  br label %lpCurrentEncodedSizeUnsafe.exit

lpCurrentEncodedSizeUnsafe.exit:                  ; preds = %bb.m, %bb.o
  %.0.i46 = phi i32 [ %i.af, %bb.m ], [ %i.ai, %bb.o ] ; 8 uses
  %i.aj = icmp ult i32 %.0.i46, 128
  br i1 %i.aj, label %lpEncodeBacklenBytes.exit, label %bb.p

bb.p:                                             ; preds = %lpCurrentEncodedSizeUnsafe.exit
  %i.ak = icmp ult i32 %.0.i46, 16383
  br i1 %i.ak, label %lpEncodeBacklenBytes.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = icmp ult i32 %.0.i46, 2097151
  br i1 %i.al, label %lpEncodeBacklenBytes.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = icmp ult i32 %.0.i46, 268435455
  %..i = select i1 %i.am, i64 4, i64 5
  br label %lpEncodeBacklenBytes.exit

switch.lookup:                                    ; preds = %bb.k
  %i.an = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.lpRandomPairs.5, i64 %i.an
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %lpEncodeBacklenBytes.exit

lpEncodeBacklenBytes.exit:                        ; preds = %switch.lookup, %lpCurrentEncodedSizeUnsafe.exit.thread, %bb.j, %bb.h, %bb.n, %lpCurrentEncodedSizeUnsafe.exit, %bb.p, %bb.q, %bb.r
  %.shrunk = phi i32 [ %.0.i46, %bb.q ], [ %.0.i46, %lpCurrentEncodedSizeUnsafe.exit ], [ %.0.i46, %bb.p ], [ %.0.i46, %bb.r ], [ 1, %bb.h ], [ %switch.ext, %switch.lookup ], [ 2, %bb.j ], [ 0, %bb.n ], [ %i.v, %lpCurrentEncodedSizeUnsafe.exit.thread ]
  %.0.i47 = phi i64 [ 3, %bb.q ], [ 1, %lpCurrentEncodedSizeUnsafe.exit ], [ 2, %bb.p ], [ %..i, %bb.r ], [ 1, %bb.h ], [ 1, %switch.lookup ], [ 1, %bb.j ], [ 1, %bb.n ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread ]
  %i.ao = zext i32 %.shrunk to i64                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i47
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao ; 4 uses
  %i.ar = icmp ult ptr %i.aq, %i.b
  %i.as = icmp ugt ptr %i.aq, %i.e
  %or.cond45 = or i1 %i.ar, %i.as
  br i1 %or.cond45, label %lpCurrentEncodedSizeBytes.exit, label %bb.s

bb.s:                                             ; preds = %lpEncodeBacklenBytes.exit
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -1
  %i.au = tail call fastcc i64 @lpDecodeBacklen(ptr noundef %i.at)
  %.not44 = icmp eq i64 %i.au, %i.ao
  br i1 %.not44, label %lpCurrentEncodedSizeBytes.exit.sink.split, label %lpCurrentEncodedSizeBytes.exit

lpCurrentEncodedSizeBytes.exit.sink.split:        ; preds = %bb.s, %bb.d
  %.sink = phi ptr [ null, %bb.d ], [ %i.aq, %bb.s ]
  store ptr %.sink, ptr %1, align 8, !tbaa !19
  br label %lpCurrentEncodedSizeBytes.exit

lpCurrentEncodedSizeBytes.exit:                   ; preds = %lpCurrentEncodedSizeBytes.exit.sink.split, %bb.g, %select.unfold, %bb.s, %lpEncodeBacklenBytes.exit, %bb.b, %bb.c, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.s ], [ 0, %select.unfold ], [ 0, %lpEncodeBacklenBytes.exit ], [ 1, %lpCurrentEncodedSizeBytes.exit.sink.split ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @lpValidateIntegrity(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = icmp ult i64 %1, 7
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 1
  %i.d = zext i32 %i.c to i64
  %.not = icmp eq i64 %1, %i.d
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 %1
  %i.f = getelementptr i8, ptr %i.e, i64 -1       ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %.not35 = icmp eq i8 %i.g, -1
  br i1 %.not35, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %.not36 = icmp eq i32 %2, 0
  br i1 %.not36, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i16, ptr %i.h, align 1              ; 2 uses
  %i.j = zext i16 %i.i to i32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !19
  %.not43 = icmp eq ptr %3, null
  br i1 %.not43, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.g
  %.02849.us = phi i32 [ %i.o, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %i.l = phi ptr [ %.pr.us, %bb.g ], [ %i.k, %bb.e ] ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %.not38.us = icmp eq i8 %i.m, -1
  br i1 %.not38.us, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.split.us
  %i.n = call i32 @lpValidateNext(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %1)
  %.not42.us = icmp eq i32 %i.n, 0
  br i1 %.not42.us, label %.critedge46, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = add i32 %.02849.us, 1                    ; 2 uses
  %.pr.us = load ptr, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %.not37.us = icmp eq ptr %.pr.us, null
  br i1 %.not37.us, label %.critedge, label %.split.us, !llvm.loop !47

.split:                                           ; preds = %bb.e, %bb.j
  %.02849 = phi i32 [ %i.t, %bb.j ], [ 0, %bb.e ] ; 2 uses
  %i.p = phi ptr [ %.pr, %bb.j ], [ %i.k, %bb.e ] ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %.not38 = icmp eq i8 %i.q, -1
  br i1 %.not38, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.split
  %i.r = call i32 @lpValidateNext(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %1)
  %.not42 = icmp eq i32 %i.r, 0
  br i1 %.not42, label %.critedge46, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call i32 %3(ptr noundef nonnull %i.p, i32 noundef %i.j, ptr noundef %4) #21
  %.not44 = icmp eq i32 %i.s, 0
  br i1 %.not44, label %.critedge46, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = add i32 %.02849, 1                       ; 2 uses
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not37 = icmp eq ptr %.pr, null
  br i1 %.not37, label %.critedge, label %.split, !llvm.loop !47

.critedge:                                        ; preds = %.split, %bb.j, %.split.us, %bb.g
  %.us-phi = phi ptr [ %i.l, %.split.us ], [ null, %bb.g ], [ null, %bb.j ], [ %i.p, %.split ]
  %.us-phi50 = phi i32 [ %.02849.us, %.split.us ], [ %i.o, %bb.g ], [ %i.t, %bb.j ], [ %.02849, %.split ]
  %.not39 = icmp eq ptr %.us-phi, %i.f
  br i1 %.not39, label %bb.k, label %.critedge46

bb.k:                                             ; preds = %.critedge
  %.not40 = icmp eq i16 %i.i, -1
  %.not41 = icmp eq i32 %.us-phi50, %i.j
  %or.cond = select i1 %.not40, i1 true, i1 %.not41
  %spec.select = zext i1 %or.cond to i32
  br label %.critedge46

.critedge46:                                      ; preds = %bb.i, %bb.h, %bb.f, %bb.k, %.critedge
  %.2 = phi i32 [ %spec.select, %bb.k ], [ 0, %.critedge ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.l

bb.l:                                             ; preds = %.critedge46, %bb.b, %bb.c, %bb.d, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %.2, %.critedge46 ], [ 1, %bb.d ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @lpCompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !13      ; 7 uses
  %i.b = icmp eq i8 %i.a, -1
end_hunk_0
begin_hunk_1_@lpRandomPair:bb.a
  %i.bj = zext i8 %i.bi to i32                    ; 6 uses
  %i.bk = and i32 %i.bj, 192
  %i.bl = icmp eq i32 %i.bk, 128
  br i1 %i.bl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bm = and i32 %i.bj, 63
  br label %bb.aq

bb.ac:                                            ; preds = %bb.aa
  %i.bn = and i32 %i.bj, 240
  %i.bo = icmp eq i32 %i.bn, 224
  br i1 %i.bo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bp = shl nuw nsw i32 %i.bj, 8
  %i.bq = and i32 %i.bp, 3840
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !13
  %i.bt = zext i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.bq, %i.bt
  br label %bb.aq

bb.ae:                                            ; preds = %bb.ac
  %i.bv = icmp eq i8 %i.bi, -16
  br i1 %i.bv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bx = load i32, ptr %i.bw, align 1
  br label %bb.aq

bb.ag:                                            ; preds = %bb.ae
  %i.by = icmp sgt i8 %i.bi, -1
  br i1 %i.by, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bz = zext nneg i8 %i.bi to i64
  br label %bb.ar

bb.ai:                                            ; preds = %bb.ag
  %i.ca = and i32 %i.bj, 224
  %i.cb = icmp eq i32 %i.ca, 192
  br i1 %i.cb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cc = shl nuw nsw i32 %i.bj, 8
  %i.cd = and i32 %i.cc, 7936
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !13
  %i.cg = zext i8 %i.cf to i32
  %i.ch = or disjoint i32 %i.cd, %i.cg
  %i.ci = zext nneg i32 %i.ch to i64
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ai
  switch i8 %i.bi, label %bb.ap [
    i8 -15, label %bb.al
    i8 -14, label %bb.am
    i8 -13, label %bb.an
    i8 -12, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.ck = load i16, ptr %i.cj, align 1
  %i.cl = zext i16 %i.ck to i64
  br label %bb.ar

bb.am:                                            ; preds = %bb.ak
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.cn = load i16, ptr %i.cm, align 1
  %i.co = zext i16 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bf, i64 3
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !13
  %i.cr = zext i8 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 16
  %i.ct = or disjoint i64 %i.cs, %i.co
  br label %bb.ar

bb.an:                                            ; preds = %bb.ak
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.cv = load i32, ptr %i.cu, align 1
  %i.cw = zext i32 %i.cv to i64
  br label %bb.ar

bb.ao:                                            ; preds = %bb.ak
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.cy = load i64, ptr %i.cx, align 1
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ak
  %i.cz = zext i8 %i.bi to i64
  %i.da = or disjoint i64 %i.cz, 12345678900000000
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ab, %bb.ad, %bb.af
  %.sink54 = phi i64 [ 1, %bb.ab ], [ 2, %bb.ad ], [ 5, %bb.af ]
  %.035.ph.in = phi i32 [ %i.bm, %bb.ab ], [ %i.bu, %bb.ad ], [ %i.bx, %bb.af ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.sink54
  store i32 %.035.ph.in, ptr %i.bg, align 4, !tbaa !9
  br label %lpGetValue.exit24

bb.ar:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.aj, %bb.ah
  %.061.i.i26 = phi i64 [ %i.bz, %bb.ah ], [ %i.ci, %bb.aj ], [ %i.cl, %bb.al ], [ %i.ct, %bb.am ], [ %i.cw, %bb.an ], [ %i.cy, %bb.ao ], [ %i.da, %bb.ap ] ; 3 uses
  %.060.i.i27 = phi i64 [ -1, %bb.ah ], [ 4096, %bb.aj ], [ 32768, %bb.al ], [ 8388608, %bb.am ], [ 2147483648, %bb.an ], [ -9223372036854775808, %bb.ao ], [ -1, %bb.ap ]
  %.059.neg.i.i28 = phi i64 [ 0, %bb.ah ], [ -8191, %bb.aj ], [ -65535, %bb.al ], [ -16777215, %bb.am ], [ -4294967295, %bb.an ], [ 1, %bb.ao ], [ 0, %bb.ap ]
  %.not66.i.i29 = icmp ult i64 %.061.i.i26, %.060.i.i27
  %.neg.i.i30 = add i64 %.061.i.i26, -1
  %i.dc = add i64 %.neg.i.i30, %.059.neg.i.i28
  %.062.i.i31 = select i1 %.not66.i.i29, i64 %.061.i.i26, i64 %i.dc
  store i64 %.062.i.i31, ptr %i.bh, align 8, !tbaa !24
  br label %lpGetValue.exit24

lpGetValue.exit24:                                ; preds = %bb.aq, %bb.ar
  %.0.i.i3246 = phi ptr [ %i.db, %bb.aq ], [ null, %bb.ar ]
  store ptr %.0.i.i3246, ptr %3, align 8, !tbaa !33
  br label %bb.as

bb.as:                                            ; preds = %lpGetValue.exit, %lpGetValue.exit24
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @lpRandomEntries(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = zext i32 %1 to i64                       ; 4 uses
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = tail call ptr @zmalloc_usable(i64 noundef %i.e, ptr noundef null) #21 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i16, ptr %i.g, align 1              ; 2 uses
  %i.i = zext i16 %i.h to i32
  %.not.i = icmp eq i16 %i.h, -1
  br i1 %.not.i, label %bb.b, label %lpLength.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %._crit_edge.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %0, align 1
  %i.n = zext i32 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.j, ptr %i.c, align 8, !tbaa !19
  %i.o = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.c, i64 noundef %i.n)
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %bb.d, label %.lr.ph.preheader.i, !prof !18

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.021.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %.01520.i = phi i32 [ %i.p, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.p = add i32 %.01520.i, 1                     ; 4 uses
  %i.q = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.021.i) ; 2 uses
  %.not18.i = icmp eq ptr %i.q, null
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.r = icmp ult i32 %i.p, 65535
  br i1 %i.r, label %._crit_edge.thread.i, label %.preheader52

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.b
  %.015.lcssa25.i = phi i32 [ %i.p, %._crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.s = trunc nuw i32 %.015.lcssa25.i to i16
  store i16 %i.s, ptr %i.g, align 1
  br label %lpLength.exit

lpLength.exit:                                    ; preds = %bb.a, %._crit_edge.thread.i
  %.016.in.i = phi i32 [ %i.i, %bb.a ], [ %.015.lcssa25.i, %._crit_edge.thread.i ] ; 2 uses
  %.not = icmp eq i32 %.016.in.i, 0
  br i1 %.not, label %bb.e, label %.preheader52, !prof !48

.preheader52:                                     ; preds = %._crit_edge.i, %lpLength.exit
  %.016.in.i101 = phi i32 [ %.016.in.i, %lpLength.exit ], [ %i.p, %._crit_edge.i ]
  %.not72 = icmp eq i32 %1, 0                     ; 2 uses
  br i1 %.not72, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %lpLength.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1828) #21
  tail call void @abort() #22
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %.preheader52
  tail call void @qsort(ptr noundef %i.f, i64 noundef %i.d, i64 noundef 8, ptr noundef nonnull @uintCompare) #21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 6 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = icmp eq i8 %i.u, -1
  br i1 %i.v, label %lpFirst.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.w = load i32, ptr %0, align 1
  %i.x = zext i32 %i.w to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.t, ptr %i.b, align 8, !tbaa !19
  %i.y = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.b, i64 noundef %i.x)
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %bb.g, label %lpAssertValidEntry.exit.i, !prof !18

bb.g:                                             ; preds = %bb.f
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

lpAssertValidEntry.exit.i:                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %lpFirst.exit

lpFirst.exit:                                     ; preds = %._crit_edge, %lpAssertValidEntry.exit.i
  %.0.i = phi ptr [ %i.t, %lpAssertValidEntry.exit.i ], [ null, %._crit_edge ]
  br i1 %.not72, label %._crit_edge71, label %.preheader

.lr.ph:                                           ; preds = %.preheader52, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader52 ] ; 3 uses
  %i.z = tail call i32 @rand() #21
  %i.aa = urem i32 %i.z, %.016.in.i101
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = trunc nuw i64 %indvars.iv to i32
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

.preheader:                                       ; preds = %lpFirst.exit, %lpGetValue.exit
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %lpGetValue.exit ], [ 0, %lpFirst.exit ] ; 2 uses
  %.03070 = phi ptr [ %.1.lcssa, %lpGetValue.exit ], [ %.0.i, %lpFirst.exit ] ; 2 uses
  %.03268 = phi i32 [ %.133.lcssa, %lpGetValue.exit ], [ 0, %lpFirst.exit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv77 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !49 ; 3 uses
  %i.ag = icmp ult i32 %.03268, %i.af
  br i1 %i.ag, label %.lr.ph65, label %lpGetValue.exit

._crit_edge71:                                    ; preds = %lpGetValue.exit, %lpFirst.exit
  tail call void @zfree(ptr noundef %i.f) #21
  ret void

.lr.ph65:                                         ; preds = %.preheader, %lpNext.exit
  %.163 = phi ptr [ %.0.i39, %lpNext.exit ], [ %.03070, %.preheader ] ; 5 uses
  %.13362 = phi i32 [ %i.ep, %lpNext.exit ], [ %.03268, %.preheader ]
  %.not.i36 = icmp eq ptr %.163, null
  br i1 %.not.i36, label %bb.h, label %bb.i, !prof !18

bb.h:                                             ; preds = %.lr.ph65
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 521) #21
  tail call void @abort() #22
  unreachable

bb.i:                                             ; preds = %.lr.ph65
  %i.ah = load i8, ptr %.163, align 1, !tbaa !13  ; 4 uses
  %i.ai = zext i8 %i.ah to i32                    ; 5 uses
  %i.aj = icmp sgt i8 %i.ah, -1
  br i1 %i.aj, label %lpSkip.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = and i32 %i.ai, 192
  %i.al = icmp eq i32 %i.ak, 128
  br i1 %i.al, label %lpCurrentEncodedSizeUnsafe.exit.thread.i.i, label %bb.k

lpCurrentEncodedSizeUnsafe.exit.thread.i.i:       ; preds = %bb.j
  %i.am = and i32 %i.ai, 63
  %i.an = add nuw nsw i32 %i.am, 1
  br label %lpSkip.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ao = and i32 %i.ai, 224
  %i.ap = icmp eq i32 %i.ao, 192
  br i1 %i.ap, label %lpSkip.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %switch.tableidx = add nsw i8 %i.ah, 15         ; 2 uses
  %i.aq = icmp ult i8 %switch.tableidx, 4
  br i1 %i.aq, label %switch.lookup, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = and i32 %i.ai, 240
  %i.as = icmp eq i32 %i.ar, 224
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = shl nuw nsw i32 %i.ai, 8
  %i.au = and i32 %i.at, 3840
  %i.av = getelementptr inbounds nuw i8, ptr %.163, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.au, 2
  %i.az = add nuw nsw i32 %i.ay, %i.ax
  br label %lpCurrentEncodedSizeUnsafe.exit.i.i

bb.o:                                             ; preds = %bb.m
  switch i8 %i.ah, label %bb.q [
    i8 -16, label %bb.p
    i8 -1, label %lpSkip.exit.i
  ]

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %.163, i64 1
  %i.bb = load i32, ptr %i.ba, align 1
  %i.bc = add i32 %i.bb, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i.i

bb.q:                                             ; preds = %bb.o
  br label %lpSkip.exit.i

lpCurrentEncodedSizeUnsafe.exit.i.i:              ; preds = %bb.p, %bb.n
  %.0.i.i.i = phi i32 [ %i.az, %bb.n ], [ %i.bc, %bb.p ] ; 8 uses
  %i.bd = icmp ult i32 %.0.i.i.i, 128
  br i1 %i.bd, label %lpSkip.exit.i, label %bb.r

bb.r:                                             ; preds = %lpCurrentEncodedSizeUnsafe.exit.i.i
  %i.be = icmp ult i32 %.0.i.i.i, 16383
  br i1 %i.be, label %lpSkip.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = icmp ult i32 %.0.i.i.i, 2097151
  br i1 %i.bf, label %lpSkip.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = icmp ult i32 %.0.i.i.i, 268435455
  %..i.i.i = select i1 %i.bg, i64 4, i64 5
  br label %lpSkip.exit.i

switch.lookup:                                    ; preds = %bb.l
  %i.bh = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.lpRandomPairs.5, i64 %i.bh
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %lpSkip.exit.i

lpSkip.exit.i:                                    ; preds = %switch.lookup, %bb.t, %bb.s, %bb.r, %lpCurrentEncodedSizeUnsafe.exit.i.i, %bb.q, %bb.o, %bb.k, %lpCurrentEncodedSizeUnsafe.exit.thread.i.i, %bb.i
  %.shrunk.i.i = phi i32 [ %.0.i.i.i, %bb.s ], [ %.0.i.i.i, %lpCurrentEncodedSizeUnsafe.exit.i.i ], [ %.0.i.i.i, %bb.r ], [ %.0.i.i.i, %bb.t ], [ 1, %bb.o ], [ %switch.ext, %switch.lookup ], [ 1, %bb.i ], [ 0, %bb.q ], [ %i.an, %lpCurrentEncodedSizeUnsafe.exit.thread.i.i ], [ 2, %bb.k ]
  %.0.i5.i.i = phi i64 [ 3, %bb.s ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i.i ], [ 2, %bb.r ], [ %..i.i.i, %bb.t ], [ 1, %bb.o ], [ 1, %switch.lookup ], [ 1, %bb.i ], [ 1, %bb.q ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i.i ], [ 1, %bb.k ]
  %i.bi = zext i32 %.shrunk.i.i to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.163, i64 %.0.i5.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi ; 8 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13  ; 7 uses
  %i.bm = icmp eq i8 %i.bl, -1
  br i1 %i.bm, label %lpNext.exit, label %bb.u

bb.u:                                             ; preds = %lpSkip.exit.i
  %i.bn = icmp ult ptr %i.bk, %i.t
  br i1 %i.bn, label %lpDecodeBacklen.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = load i32, ptr %0, align 1
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -1 ; 3 uses
  %i.bs = icmp ugt ptr %i.bk, %i.br
  br i1 %i.bs, label %lpDecodeBacklen.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = zext i8 %i.bl to i32                    ; 6 uses
  %i.bu = icmp sgt i8 %i.bl, -1                   ; 2 uses
  %i.bv = and i32 %i.bt, 192
  %i.bw = icmp eq i32 %i.bv, 128                  ; 2 uses
  %i.bx = and i32 %i.bt, 224
  %i.by = icmp eq i32 %i.bx, 192                  ; 2 uses
  %.off.i.i = add i8 %i.bl, 15
  %switch.i.i = icmp ult i8 %.off.i.i, 4
  %i.bz = or i1 %switch.i.i, %i.bw
  %i.ca = or i1 %i.bu, %i.bz
  %or.cond15.i.i = or i1 %i.by, %i.ca
  br i1 %or.cond15.i.i, label %select.unfold.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = and i32 %i.bt, 240
  %i.cc = icmp eq i32 %i.cb, 224
  br i1 %i.cc, label %select.unfold.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %switch.selectcmp16.i.i = icmp eq i8 %i.bl, -16
  br i1 %switch.selectcmp16.i.i, label %select.unfold.i, label %lpDecodeBacklen.exit.thread

select.unfold.i:                                  ; preds = %bb.y, %bb.x, %bb.w
  %.0.i.ph.i = phi i64 [ 1, %bb.w ], [ 2, %bb.x ], [ 5, %bb.y ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.0.i.ph.i ; 2 uses
  %3 = icmp ult ptr %i.cd, %i.t
  %i.ce = icmp ugt ptr %i.cd, %i.br
  %or.cond.i = or i1 %3, %i.ce
  br i1 %or.cond.i, label %lpDecodeBacklen.exit.thread, label %bb.z

bb.z:                                             ; preds = %select.unfold.i
  br i1 %i.bu, label %lpEncodeBacklenBytes.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bw, label %lpCurrentEncodedSizeUnsafe.exit.thread.i, label %bb.ab

lpCurrentEncodedSizeUnsafe.exit.thread.i:         ; preds = %bb.aa
  %i.cf = and i32 %i.bt, 63
  %i.cg = add nuw nsw i32 %i.cf, 1
  br label %lpEncodeBacklenBytes.exit.i

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.by, label %lpEncodeBacklenBytes.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %switch.tableidx102 = add nsw i8 %i.bl, 15      ; 2 uses
  %i.ch = icmp ult i8 %switch.tableidx102, 4
  br i1 %i.ch, label %switch.lookup103, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ci = and i32 %i.bt, 240
  %i.cj = icmp eq i32 %i.ci, 224
  br i1 %i.cj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ck = shl nuw nsw i32 %i.bt, 8
  %i.cl = and i32 %i.ck, 3840
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
  %i.co = zext i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.cl, 2
  %i.cq = add nuw nsw i32 %i.cp, %i.co
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.af:                                            ; preds = %bb.ad
  %cond.i = icmp eq i8 %i.bl, -16
  br i1 %cond.i, label %bb.ag, label %lpEncodeBacklenBytes.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.cs = load i32, ptr %i.cr, align 1
  %i.ct = add i32 %i.cs, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i

lpCurrentEncodedSizeUnsafe.exit.i:                ; preds = %bb.ag, %bb.ae
  %.0.i46.i = phi i32 [ %i.cq, %bb.ae ], [ %i.ct, %bb.ag ] ; 8 uses
  %i.cu = icmp ult i32 %.0.i46.i, 128
  br i1 %i.cu, label %lpEncodeBacklenBytes.exit.i, label %bb.ah

bb.ah:                                            ; preds = %lpCurrentEncodedSizeUnsafe.exit.i
  %i.cv = icmp ult i32 %.0.i46.i, 16383
  br i1 %i.cv, label %lpEncodeBacklenBytes.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cw = icmp ult i32 %.0.i46.i, 2097151
  br i1 %i.cw, label %lpEncodeBacklenBytes.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cx = icmp ult i32 %.0.i46.i, 268435455
  %..i.i = select i1 %i.cx, i64 4, i64 5
  br label %lpEncodeBacklenBytes.exit.i

switch.lookup103:                                 ; preds = %bb.ac
  %i.cy = zext nneg i8 %switch.tableidx102 to i64
  %switch.gep104 = getelementptr inbounds nuw i8, ptr @switch.table.lpRandomPairs.5, i64 %i.cy
  %switch.load105 = load i8, ptr %switch.gep104, align 1
  %switch.ext106 = zext i8 %switch.load105 to i32
  br label %lpEncodeBacklenBytes.exit.i

lpEncodeBacklenBytes.exit.i:                      ; preds = %switch.lookup103, %bb.aj, %bb.ai, %bb.ah, %lpCurrentEncodedSizeUnsafe.exit.i, %bb.af, %bb.ab, %lpCurrentEncodedSizeUnsafe.exit.thread.i, %bb.z
  %.shrunk.i = phi i32 [ %.0.i46.i, %bb.ai ], [ %.0.i46.i, %lpCurrentEncodedSizeUnsafe.exit.i ], [ %.0.i46.i, %bb.ah ], [ %.0.i46.i, %bb.aj ], [ 1, %bb.z ], [ %switch.ext106, %switch.lookup103 ], [ 2, %bb.ab ], [ 0, %bb.af ], [ %i.cg, %lpCurrentEncodedSizeUnsafe.exit.thread.i ]
  %.0.i47.i = phi i64 [ 3, %bb.ai ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i ], [ 2, %bb.ah ], [ %..i.i, %bb.aj ], [ 1, %bb.z ], [ 1, %switch.lookup103 ], [ 1, %bb.ab ], [ 1, %bb.af ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i ]
  %i.cz = zext i32 %.shrunk.i to i64              ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.0.i47.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cz ; 7 uses
  %i.dc = icmp ult ptr %i.db, %i.t
  %i.dd = icmp ugt ptr %i.db, %i.br
  %or.cond45.i = or i1 %i.dc, %i.dd
  br i1 %or.cond45.i, label %lpDecodeBacklen.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %lpEncodeBacklenBytes.exit.i
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 -1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !13  ; 3 uses
  %.not.i42 = icmp sgt i8 %i.df, -1
  br i1 %.not.i42, label %bb.al, label %bb.am, !prof !22

bb.al:                                            ; preds = %bb.ak
  %i.dg = zext nneg i8 %i.df to i64
  br label %lpDecodeBacklen.exit

bb.am:                                            ; preds = %bb.ak
  %i.dh = and i8 %i.df, 127
  %i.di = zext nneg i8 %i.dh to i64               ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.db, i64 -2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !13  ; 3 uses
  %.not21.i = icmp sgt i8 %i.dk, -1
  br i1 %.not21.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dl = zext nneg i8 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 7
  %i.dn = or disjoint i64 %i.dm, %i.di
  br label %lpDecodeBacklen.exit

bb.ao:                                            ; preds = %bb.am
  %i.do = and i8 %i.dk, 127
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, 7
  %i.dr = or disjoint i64 %i.dq, %i.di            ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.db, i64 -3
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !13  ; 3 uses
  %.not22.i = icmp sgt i8 %i.dt, -1
  br i1 %.not22.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.du = zext nneg i8 %i.dt to i64
  %i.dv = shl nuw nsw i64 %i.du, 14
  %i.dw = or disjoint i64 %i.dv, %i.dr
  br label %lpDecodeBacklen.exit

bb.aq:                                            ; preds = %bb.ao
  %i.dx = and i8 %i.dt, 127
  %i.dy = zext nneg i8 %i.dx to i64
  %i.dz = shl nuw nsw i64 %i.dy, 14
  %i.ea = or disjoint i64 %i.dz, %i.dr            ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.db, i64 -4
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !13  ; 3 uses
  %.not23.i = icmp sgt i8 %i.ec, -1
  br i1 %.not23.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = shl nuw nsw i64 %i.ed, 21
  %i.ef = or disjoint i64 %i.ee, %i.ea
  br label %lpDecodeBacklen.exit

bb.as:                                            ; preds = %bb.aq
  %i.eg = getelementptr inbounds i8, ptr %i.db, i64 -5
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !13  ; 2 uses
  %.not24.i = icmp sgt i8 %i.eh, -1
  br i1 %.not24.i, label %bb.at, label %lpDecodeBacklen.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.ei = and i8 %i.ec, 127
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = shl nuw nsw i64 %i.ej, 21
  %i.el = zext nneg i8 %i.eh to i64
  %i.em = shl nuw nsw i64 %i.el, 28
  %i.en = or disjoint i64 %i.em, %i.ek
  %i.eo = or disjoint i64 %i.en, %i.ea
  br label %lpDecodeBacklen.exit

lpDecodeBacklen.exit:                             ; preds = %bb.al, %bb.an, %bb.ap, %bb.ar, %bb.at
  %.0.i43 = phi i64 [ %i.dg, %bb.al ], [ %i.dn, %bb.an ], [ %i.eo, %bb.at ], [ %i.ef, %bb.ar ], [ %i.dw, %bb.ap ]
  %.not44.i = icmp eq i64 %.0.i43, %i.cz
  br i1 %.not44.i, label %lpNext.exit, label %lpDecodeBacklen.exit.thread

lpDecodeBacklen.exit.thread:                      ; preds = %bb.as, %bb.y, %bb.u, %bb.v, %lpDecodeBacklen.exit, %select.unfold.i, %lpEncodeBacklenBytes.exit.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

lpNext.exit:                                      ; preds = %lpDecodeBacklen.exit, %lpSkip.exit.i
  %.0.i39 = phi ptr [ null, %lpSkip.exit.i ], [ %i.bk, %lpDecodeBacklen.exit ] ; 2 uses
  %i.ep = add nuw i32 %.13362, 1                  ; 2 uses
  %exitcond76.not = icmp eq i32 %i.ep, %i.af
  br i1 %exitcond76.not, label %lpGetValue.exit, label %.lr.ph65, !llvm.loop !53

lpGetValue.exit:                                  ; preds = %lpNext.exit, %.preheader
  %.133.lcssa = phi i32 [ %.03268, %.preheader ], [ %i.af, %lpNext.exit ]
  %.1.lcssa = phi ptr [ %.03070, %.preheader ], [ %.0.i39, %lpNext.exit ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.es = call ptr @lpGet(ptr noundef readonly %.1.lcssa, ptr noundef nonnull %i.a, ptr noundef null) ; 2 uses
  %.not.i40 = icmp eq ptr %i.es, null             ; 2 uses
  %i.et = load i64, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.eu = trunc i64 %i.et to i32
  %spec.select = select i1 %.not.i40, i32 0, i32 %i.eu
  %spec.select51 = select i1 %.not.i40, i64 %i.et, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ev = sext i32 %i.er to i64
  %i.ew = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ev ; 3 uses
  store ptr %i.es, ptr %i.ew, align 8, !tbaa !33
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i32 %spec.select, ptr %i.ex, align 8, !tbaa !38
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store i64 %spec.select51, ptr %i.ey, align 8, !tbaa !37
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %i.d
  br i1 %exitcond81.not, label %._crit_edge71, label %.preheader, !llvm.loop !54
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @uintCompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = load i32, ptr %1, align 4, !tbaa !9
  %i.c = sub i32 %i.a, %i.b
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local void @lpRandomPairs(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp sgt i32 %4, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1867) #21
  tail call void @abort() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64                       ; 5 uses
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = tail call ptr @zmalloc_usable(i64 noundef %i.d, ptr noundef null) #21 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i16, ptr %i.f, align 1              ; 2 uses
  %i.h = zext i16 %i.g to i32
  %.not.i = icmp eq i16 %i.g, -1
  br i1 %.not.i, label %bb.d, label %lpLength.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %._crit_edge.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %0, align 1
  %i.m = zext i32 %i.l to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8, !tbaa !19
  %i.n = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.a, i64 noundef %i.m)
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %.lr.ph.preheader.i, !prof !18

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.021.i = phi ptr [ %i.p, %.lr.ph.i ], [ %i.i, %.lr.ph.preheader.i ]
  %.01520.i = phi i32 [ %i.o, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.o = add i32 %.01520.i, 1                     ; 4 uses
  %i.p = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.021.i) ; 2 uses
  %.not18.i = icmp eq ptr %i.p, null
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.q = icmp ult i32 %i.o, 65535
  br i1 %i.q, label %._crit_edge.thread.i, label %lpLength.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.015.lcssa25.i = phi i32 [ %i.o, %._crit_edge.i ], [ 0, %bb.d ] ; 2 uses
  %i.r = trunc nuw i32 %.015.lcssa25.i to i16
  store i16 %i.r, ptr %i.f, align 1
  br label %lpLength.exit

lpLength.exit:                                    ; preds = %bb.c, %._crit_edge.i, %._crit_edge.thread.i
  %.016.in.i = phi i32 [ %i.h, %bb.c ], [ %.015.lcssa25.i, %._crit_edge.thread.i ], [ %i.o, %._crit_edge.i ] ; 2 uses
  %i.s = udiv i32 %.016.in.i, %4
  %.not = icmp ult i32 %.016.in.i, %4
  br i1 %.not, label %bb.g, label %.preheader, !prof !18

.preheader:                                       ; preds = %lpLength.exit
  %.not134 = icmp eq i32 %1, 0
  br i1 %.not134, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %lpLength.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1878) #21
  tail call void @abort() #22
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  tail call void @qsort(ptr noundef %i.e, i64 noundef %i.c, i64 noundef 8, ptr noundef nonnull @uintCompare) #21
  %i.t = load i32, ptr %i.e, align 4, !tbaa !55   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = tail call ptr @lpSeek(ptr noundef nonnull %0, i64 noundef %i.u) ; 2 uses
  %i.w = icmp ne ptr %i.v, null
  %i.x = icmp ne i32 %1, 0
  %i.y = and i1 %i.x, %i.w
  br i1 %i.y, label %.lr.ph132, label %._crit_edge133

.lr.ph132:                                        ; preds = %._crit_edge
  %.not60 = icmp eq ptr %3, null
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.aa = add nsw i32 %4, -2
  br label %bb.h

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.ab = tail call i32 @rand() #21
  %i.ac = urem i32 %i.ab, %i.s
  %i.ad = mul i32 %i.ac, %4
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = trunc nuw i64 %indvars.iv to i32
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !58

.loopexit:                                        ; preds = %lpNext.exit
  %i.ah = icmp ne ptr %.0.i, null
  %i.ai = icmp ult i32 %.151.lcssa, %1
  %i.aj = and i1 %i.ai, %i.ah
  br i1 %i.aj, label %bb.h, label %._crit_edge133, !llvm.loop !59

bb.h:                                             ; preds = %.lr.ph132, %.loopexit
  %.049129 = phi ptr [ %i.v, %.lr.ph132 ], [ %.0.i, %.loopexit ] ; 13 uses
  %.050128 = phi i32 [ 0, %.lr.ph132 ], [ %.151.lcssa, %.loopexit ] ; 3 uses
  %.052126 = phi i32 [ %i.t, %.lr.ph132 ], [ %i.fe, %.loopexit ] ; 3 uses
  %.083125 = phi i64 [ 0, %.lr.ph132 ], [ %.184, %.loopexit ] ; 3 uses
  %.085124 = phi i64 [ 0, %.lr.ph132 ], [ %.186, %.loopexit ] ; 3 uses
  %.087123 = phi i32 [ 0, %.lr.ph132 ], [ %.188, %.loopexit ]
  %.089122 = phi i32 [ 0, %.lr.ph132 ], [ %.190, %.loopexit ]
  %i.ak = load i8, ptr %.049129, align 1, !tbaa !13 ; 6 uses
  %i.al = zext i8 %i.ak to i32                    ; 6 uses
  %i.am = and i32 %i.al, 192
  %i.an = icmp eq i32 %i.am, 128
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = and i32 %i.al, 63
  %i.ap = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  br label %lpGetValue.exit

bb.j:                                             ; preds = %bb.h
  %i.aq = and i32 %i.al, 240
  %i.ar = icmp eq i32 %i.aq, 224
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = shl nuw nsw i32 %i.al, 8
  %i.at = and i32 %i.as, 3840
  %i.au = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !13
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %i.at, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.049129, i64 2
  br label %lpGetValue.exit

bb.l:                                             ; preds = %bb.j
  %i.az = icmp eq i8 %i.ak, -16
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.bb = load i32, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.049129, i64 5
  br label %lpGetValue.exit

bb.n:                                             ; preds = %bb.l
  %i.bd = icmp sgt i8 %i.ak, -1
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = zext nneg i8 %i.ak to i64
  br label %bb.x

bb.p:                                             ; preds = %bb.n
  %i.bf = and i32 %i.al, 224
  %i.bg = icmp eq i32 %i.bf, 192
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = shl nuw nsw i32 %i.al, 8
  %i.bi = and i32 %i.bh, 7936
  %i.bj = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !13
  %i.bl = zext i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bi, %i.bl
  %i.bn = zext nneg i32 %i.bm to i64
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  switch i8 %i.ak, label %bb.w [
    i8 -15, label %bb.s
    i8 -14, label %bb.t
    i8 -13, label %bb.u
    i8 -12, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.bp = load i16, ptr %i.bo, align 1
  %i.bq = zext i16 %i.bp to i64
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.bs = load i16, ptr %i.br, align 1
  %i.bt = zext i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.049129, i64 3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !13
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 16
  %i.by = or disjoint i64 %i.bx, %i.bt
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.ca = load i32, ptr %i.bz, align 1
  %i.cb = zext i32 %i.ca to i64
  br label %bb.x

bb.v:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.cd = load i64, ptr %i.cc, align 1
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.ce = zext i8 %i.ak to i64
  %i.cf = or disjoint i64 %i.ce, 12345678900000000
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %bb.o
  %.061.i.i = phi i64 [ %i.be, %bb.o ], [ %i.bn, %bb.q ], [ %i.bq, %bb.s ], [ %i.by, %bb.t ], [ %i.cb, %bb.u ], [ %i.cd, %bb.v ], [ %i.cf, %bb.w ] ; 3 uses
  %.060.i.i = phi i64 [ -1, %bb.o ], [ 4096, %bb.q ], [ 32768, %bb.s ], [ 8388608, %bb.t ], [ 2147483648, %bb.u ], [ -9223372036854775808, %bb.v ], [ -1, %bb.w ]
  %.059.neg.i.i = phi i64 [ 0, %bb.o ], [ -8191, %bb.q ], [ -65535, %bb.s ], [ -16777215, %bb.t ], [ -4294967295, %bb.u ], [ 1, %bb.v ], [ 0, %bb.w ]
  %.not66.i.i = icmp ult i64 %.061.i.i, %.060.i.i
  %.neg.i.i = add i64 %.061.i.i, -1
  %i.cg = add i64 %.neg.i.i, %.059.neg.i.i
  %.062.i.i = select i1 %.not66.i.i, i64 %.061.i.i, i64 %i.cg
  br label %lpGetValue.exit

lpGetValue.exit:                                  ; preds = %bb.m, %bb.k, %bb.i, %bb.x
  %.0.i.i97 = phi ptr [ null, %bb.x ], [ %i.bc, %bb.m ], [ %i.ay, %bb.k ], [ %i.ap, %bb.i ] ; 2 uses
  %.190 = phi i32 [ %.089122, %bb.x ], [ %i.bb, %bb.m ], [ %i.ax, %bb.k ], [ %i.ao, %bb.i ] ; 3 uses
  %.186 = phi i64 [ %.062.i.i, %bb.x ], [ %.085124, %bb.m ], [ %.085124, %bb.k ], [ %.085124, %bb.i ] ; 3 uses
  %i.ch = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.049129) ; 14 uses
  %.not59 = icmp eq ptr %i.ch, null
  br i1 %.not59, label %bb.y, label %bb.z, !prof !18

bb.y:                                             ; preds = %lpGetValue.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1896) #21
  tail call void @abort() #22
  unreachable

bb.z:                                             ; preds = %lpGetValue.exit
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !13  ; 6 uses
  %i.cj = zext i8 %i.ci to i32                    ; 6 uses
  %i.ck = and i32 %i.cj, 192
  %i.cl = icmp eq i32 %i.ck, 128
  br i1 %i.cl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = and i32 %i.cj, 63
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  br label %lpGetValue.exit63

bb.ab:                                            ; preds = %bb.z
  %i.co = and i32 %i.cj, 240
  %i.cp = icmp eq i32 %i.co, 224
  br i1 %i.cp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cq = shl nuw nsw i32 %i.cj, 8
  %i.cr = and i32 %i.cq, 3840
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !13
  %i.cu = zext i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cr, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  br label %lpGetValue.exit63

bb.ad:                                            ; preds = %bb.ab
  %i.cx = icmp eq i8 %i.ci, -16
  br i1 %i.cx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.cz = load i32, ptr %i.cy, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.ch, i64 5
  br label %lpGetValue.exit63

bb.af:                                            ; preds = %bb.ad
  %i.db = icmp sgt i8 %i.ci, -1
  br i1 %i.db, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dc = zext nneg i8 %i.ci to i64
  br label %bb.ap

bb.ah:                                            ; preds = %bb.af
end_hunk_1
begin_hunk_2_@lpRandomPairs:bb.a
.lr.ph113.split.us:                               ; preds = %.lr.ph113, %bb.aq
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %bb.aq ], [ %i.eg, %.lr.ph113 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv142 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !55
  %i.ej = icmp eq i32 %.052126, %i.ei
  br i1 %i.ej, label %bb.aq, label %.lr.ph120.preheader.loopexit.split.loop.exit

bb.aq:                                            ; preds = %.lr.ph113.split.us
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !57
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [24 x i8], ptr %2, i64 %i.em ; 3 uses
  store ptr %.0.i.i97, ptr %i.en, align 8, !tbaa !33
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i32 %.190, ptr %i.eo, align 8, !tbaa !38
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 %.186, ptr %i.ep, align 8, !tbaa !37
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next143, %i.c
  br i1 %exitcond145.not, label %.lr.ph120.preheader, label %.lr.ph113.split.us, !llvm.loop !60

.lr.ph113.split:                                  ; preds = %.lr.ph113, %bb.ar
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %bb.ar ], [ %i.eg, %.lr.ph113 ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv138 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !55
  %i.es = icmp eq i32 %.052126, %i.er
  br i1 %i.es, label %bb.ar, label %.lr.ph120.preheader.loopexit170.split.loop.exit

bb.ar:                                            ; preds = %.lr.ph113.split
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !57
  %i.ev = sext i32 %i.eu to i64                   ; 2 uses
  %i.ew = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ev ; 3 uses
  store ptr %.0.i.i97, ptr %i.ew, align 8, !tbaa !33
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i32 %.190, ptr %i.ex, align 8, !tbaa !38
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store i64 %.186, ptr %i.ey, align 8, !tbaa !37
  %i.ez = getelementptr inbounds [24 x i8], ptr %3, i64 %i.ev ; 3 uses
  store ptr %.0.i.i73103, ptr %i.ez, align 8, !tbaa !33
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i32 %.188, ptr %i.fa, align 8, !tbaa !38
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store i64 %.184, ptr %i.fb, align 8, !tbaa !37
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next139, %i.c
  br i1 %exitcond141.not, label %.lr.ph120.preheader, label %.lr.ph113.split, !llvm.loop !60

.lr.ph120.preheader.loopexit.split.loop.exit:     ; preds = %.lr.ph113.split.us
  %i.fc = trunc nuw i64 %indvars.iv142 to i32
  br label %.lr.ph120.preheader

.lr.ph120.preheader.loopexit170.split.loop.exit:  ; preds = %.lr.ph113.split
  %i.fd = trunc nuw i64 %indvars.iv138 to i32
  br label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %bb.ar, %bb.aq, %.lr.ph120.preheader.loopexit170.split.loop.exit, %.lr.ph120.preheader.loopexit.split.loop.exit, %lpGetValue.exit63
  %.151.lcssa = phi i32 [ %.050128, %lpGetValue.exit63 ], [ %1, %bb.aq ], [ %i.fc, %.lr.ph120.preheader.loopexit.split.loop.exit ], [ %i.fd, %.lr.ph120.preheader.loopexit170.split.loop.exit ], [ %1, %bb.ar ] ; 2 uses
  %i.fe = add i32 %.052126, %4
  br label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %lpNext.exit
  %.0119 = phi i32 [ %i.jn, %lpNext.exit ], [ 0, %.lr.ph120.preheader ] ; 2 uses
  %.1117 = phi ptr [ %.0.i, %lpNext.exit ], [ %i.ch, %.lr.ph120.preheader ] ; 5 uses
  %.not.i64 = icmp eq ptr %.1117, null
  br i1 %.not.i64, label %bb.as, label %bb.at, !prof !18

bb.as:                                            ; preds = %.lr.ph120
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 521) #21
  tail call void @abort() #22
  unreachable

bb.at:                                            ; preds = %.lr.ph120
  %i.ff = load i8, ptr %.1117, align 1, !tbaa !13 ; 4 uses
  %i.fg = zext i8 %i.ff to i32                    ; 5 uses
  %i.fh = icmp sgt i8 %i.ff, -1
  br i1 %i.fh, label %lpSkip.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fi = and i32 %i.fg, 192
  %i.fj = icmp eq i32 %i.fi, 128
  br i1 %i.fj, label %lpCurrentEncodedSizeUnsafe.exit.thread.i.i, label %bb.av

lpCurrentEncodedSizeUnsafe.exit.thread.i.i:       ; preds = %bb.au
  %i.fk = and i32 %i.fg, 63
  %i.fl = add nuw nsw i32 %i.fk, 1
  br label %lpSkip.exit.i

bb.av:                                            ; preds = %bb.au
  %i.fm = and i32 %i.fg, 224
  %i.fn = icmp eq i32 %i.fm, 192
  br i1 %i.fn, label %lpSkip.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %switch.tableidx = add nsw i8 %i.ff, 15         ; 2 uses
  %i.fo = icmp ult i8 %switch.tableidx, 4
  br i1 %i.fo, label %switch.lookup, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fp = and i32 %i.fg, 240
  %i.fq = icmp eq i32 %i.fp, 224
  br i1 %i.fq, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fr = shl nuw nsw i32 %i.fg, 8
  %i.fs = and i32 %i.fr, 3840
  %i.ft = getelementptr inbounds nuw i8, ptr %.1117, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !13
  %i.fv = zext i8 %i.fu to i32
  %i.fw = or disjoint i32 %i.fs, 2
  %i.fx = add nuw nsw i32 %i.fw, %i.fv
  br label %lpCurrentEncodedSizeUnsafe.exit.i.i

bb.az:                                            ; preds = %bb.ax
  switch i8 %i.ff, label %bb.bb [
    i8 -16, label %bb.ba
    i8 -1, label %lpSkip.exit.i
  ]

bb.ba:                                            ; preds = %bb.az
  %i.fy = getelementptr inbounds nuw i8, ptr %.1117, i64 1
  %i.fz = load i32, ptr %i.fy, align 1
  %i.ga = add i32 %i.fz, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i.i

bb.bb:                                            ; preds = %bb.az
  br label %lpSkip.exit.i

lpCurrentEncodedSizeUnsafe.exit.i.i:              ; preds = %bb.ba, %bb.ay
  %.0.i.i.i = phi i32 [ %i.fx, %bb.ay ], [ %i.ga, %bb.ba ] ; 8 uses
  %i.gb = icmp ult i32 %.0.i.i.i, 128
  br i1 %i.gb, label %lpSkip.exit.i, label %bb.bc

bb.bc:                                            ; preds = %lpCurrentEncodedSizeUnsafe.exit.i.i
  %i.gc = icmp ult i32 %.0.i.i.i, 16383
  br i1 %i.gc, label %lpSkip.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gd = icmp ult i32 %.0.i.i.i, 2097151
  br i1 %i.gd, label %lpSkip.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ge = icmp ult i32 %.0.i.i.i, 268435455
  %..i.i.i = select i1 %i.ge, i64 4, i64 5
  br label %lpSkip.exit.i

switch.lookup:                                    ; preds = %bb.aw
  %i.gf = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.lpRandomPairs.5, i64 %i.gf
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %lpSkip.exit.i

lpSkip.exit.i:                                    ; preds = %switch.lookup, %bb.be, %bb.bd, %bb.bc, %lpCurrentEncodedSizeUnsafe.exit.i.i, %bb.bb, %bb.az, %bb.av, %lpCurrentEncodedSizeUnsafe.exit.thread.i.i, %bb.at
  %.shrunk.i.i = phi i32 [ %.0.i.i.i, %bb.bd ], [ %.0.i.i.i, %lpCurrentEncodedSizeUnsafe.exit.i.i ], [ %.0.i.i.i, %bb.bc ], [ %.0.i.i.i, %bb.be ], [ 1, %bb.az ], [ %switch.ext, %switch.lookup ], [ 1, %bb.at ], [ 0, %bb.bb ], [ %i.fl, %lpCurrentEncodedSizeUnsafe.exit.thread.i.i ], [ 2, %bb.av ]
  %.0.i5.i.i = phi i64 [ 3, %bb.bd ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i.i ], [ 2, %bb.bc ], [ %..i.i.i, %bb.be ], [ 1, %bb.az ], [ 1, %switch.lookup ], [ 1, %bb.at ], [ 1, %bb.bb ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i.i ], [ 1, %bb.av ]
  %i.gg = zext i32 %.shrunk.i.i to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %.1117, i64 %.0.i5.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gg ; 8 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !13  ; 7 uses
  %i.gk = icmp eq i8 %i.gj, -1
  br i1 %i.gk, label %lpNext.exit, label %bb.bf

bb.bf:                                            ; preds = %lpSkip.exit.i
  %i.gl = icmp ult ptr %i.gi, %i.z
  br i1 %i.gl, label %lpDecodeBacklen.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gm = load i32, ptr %0, align 1
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 %i.gn
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -1 ; 3 uses
  %i.gq = icmp ugt ptr %i.gi, %i.gp
  br i1 %i.gq, label %lpDecodeBacklen.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gr = zext i8 %i.gj to i32                    ; 6 uses
  %i.gs = icmp sgt i8 %i.gj, -1                   ; 2 uses
  %i.gt = and i32 %i.gr, 192
  %i.gu = icmp eq i32 %i.gt, 128                  ; 2 uses
  %i.gv = and i32 %i.gr, 224
  %i.gw = icmp eq i32 %i.gv, 192                  ; 2 uses
  %.off.i.i = add i8 %i.gj, 15
  %switch.i.i = icmp ult i8 %.off.i.i, 4
  %i.gx = or i1 %switch.i.i, %i.gu
  %i.gy = or i1 %i.gs, %i.gx
  %or.cond15.i.i = or i1 %i.gw, %i.gy
  br i1 %or.cond15.i.i, label %select.unfold.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gz = and i32 %i.gr, 240
  %i.ha = icmp eq i32 %i.gz, 224
  br i1 %i.ha, label %select.unfold.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %switch.selectcmp16.i.i = icmp eq i8 %i.gj, -16
  br i1 %switch.selectcmp16.i.i, label %select.unfold.i, label %lpDecodeBacklen.exit.thread

select.unfold.i:                                  ; preds = %bb.bj, %bb.bi, %bb.bh
  %.0.i.ph.i = phi i64 [ 1, %bb.bh ], [ 2, %bb.bi ], [ 5, %bb.bj ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.0.i.ph.i ; 2 uses
  %5 = icmp ult ptr %i.hb, %i.z
  %i.hc = icmp ugt ptr %i.hb, %i.gp
  %or.cond.i = or i1 %5, %i.hc
  br i1 %or.cond.i, label %lpDecodeBacklen.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %select.unfold.i
  br i1 %i.gs, label %lpEncodeBacklenBytes.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.gu, label %lpCurrentEncodedSizeUnsafe.exit.thread.i, label %bb.bm

lpCurrentEncodedSizeUnsafe.exit.thread.i:         ; preds = %bb.bl
  %i.hd = and i32 %i.gr, 63
  %i.he = add nuw nsw i32 %i.hd, 1
  br label %lpEncodeBacklenBytes.exit.i

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.gw, label %lpEncodeBacklenBytes.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %switch.tableidx179 = add nsw i8 %i.gj, 15      ; 2 uses
  %i.hf = icmp ult i8 %switch.tableidx179, 4
  br i1 %i.hf, label %switch.lookup180, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hg = and i32 %i.gr, 240
  %i.hh = icmp eq i32 %i.hg, 224
  br i1 %i.hh, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.hi = shl nuw nsw i32 %i.gr, 8
  %i.hj = and i32 %i.hi, 3840
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !13
  %i.hm = zext i8 %i.hl to i32
  %i.hn = or disjoint i32 %i.hj, 2
  %i.ho = add nuw nsw i32 %i.hn, %i.hm
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.bq:                                            ; preds = %bb.bo
  %cond.i = icmp eq i8 %i.gj, -16
  br i1 %cond.i, label %bb.br, label %lpEncodeBacklenBytes.exit.i

bb.br:                                            ; preds = %bb.bq
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.hq = load i32, ptr %i.hp, align 1
  %i.hr = add i32 %i.hq, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i

lpCurrentEncodedSizeUnsafe.exit.i:                ; preds = %bb.br, %bb.bp
  %.0.i46.i = phi i32 [ %i.ho, %bb.bp ], [ %i.hr, %bb.br ] ; 8 uses
  %i.hs = icmp ult i32 %.0.i46.i, 128
  br i1 %i.hs, label %lpEncodeBacklenBytes.exit.i, label %bb.bs

bb.bs:                                            ; preds = %lpCurrentEncodedSizeUnsafe.exit.i
  %i.ht = icmp ult i32 %.0.i46.i, 16383
  br i1 %i.ht, label %lpEncodeBacklenBytes.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hu = icmp ult i32 %.0.i46.i, 2097151
  br i1 %i.hu, label %lpEncodeBacklenBytes.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hv = icmp ult i32 %.0.i46.i, 268435455
  %..i.i = select i1 %i.hv, i64 4, i64 5
  br label %lpEncodeBacklenBytes.exit.i

switch.lookup180:                                 ; preds = %bb.bn
  %i.hw = zext nneg i8 %switch.tableidx179 to i64
  %switch.gep181 = getelementptr inbounds nuw i8, ptr @switch.table.lpRandomPairs.5, i64 %i.hw
  %switch.load182 = load i8, ptr %switch.gep181, align 1
  %switch.ext183 = zext i8 %switch.load182 to i32
  br label %lpEncodeBacklenBytes.exit.i

lpEncodeBacklenBytes.exit.i:                      ; preds = %switch.lookup180, %bb.bu, %bb.bt, %bb.bs, %lpCurrentEncodedSizeUnsafe.exit.i, %bb.bq, %bb.bm, %lpCurrentEncodedSizeUnsafe.exit.thread.i, %bb.bk
  %.shrunk.i = phi i32 [ %.0.i46.i, %bb.bt ], [ %.0.i46.i, %lpCurrentEncodedSizeUnsafe.exit.i ], [ %.0.i46.i, %bb.bs ], [ %.0.i46.i, %bb.bu ], [ 1, %bb.bk ], [ %switch.ext183, %switch.lookup180 ], [ 2, %bb.bm ], [ 0, %bb.bq ], [ %i.he, %lpCurrentEncodedSizeUnsafe.exit.thread.i ]
  %.0.i47.i = phi i64 [ 3, %bb.bt ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i ], [ 2, %bb.bs ], [ %..i.i, %bb.bu ], [ 1, %bb.bk ], [ 1, %switch.lookup180 ], [ 1, %bb.bm ], [ 1, %bb.bq ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i ]
  %i.hx = zext i32 %.shrunk.i to i64              ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.0.i47.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hx ; 7 uses
  %i.ia = icmp ult ptr %i.hz, %i.z
  %i.ib = icmp ugt ptr %i.hz, %i.gp
  %or.cond45.i = or i1 %i.ia, %i.ib
  br i1 %or.cond45.i, label %lpDecodeBacklen.exit.thread, label %bb.bv

bb.bv:                                            ; preds = %lpEncodeBacklenBytes.exit.i
  %i.ic = getelementptr inbounds i8, ptr %i.hz, i64 -1
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !13  ; 3 uses
  %.not.i76 = icmp sgt i8 %i.id, -1
  br i1 %.not.i76, label %bb.bw, label %bb.bx, !prof !22

bb.bw:                                            ; preds = %bb.bv
  %i.ie = zext nneg i8 %i.id to i64
  br label %lpDecodeBacklen.exit

bb.bx:                                            ; preds = %bb.bv
  %i.if = and i8 %i.id, 127
  %i.ig = zext nneg i8 %i.if to i64               ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %i.hz, i64 -2
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !13  ; 3 uses
  %.not21.i = icmp sgt i8 %i.ii, -1
  br i1 %.not21.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ij = zext nneg i8 %i.ii to i64
  %i.ik = shl nuw nsw i64 %i.ij, 7
  %i.il = or disjoint i64 %i.ik, %i.ig
  br label %lpDecodeBacklen.exit

bb.bz:                                            ; preds = %bb.bx
  %i.im = and i8 %i.ii, 127
  %i.in = zext nneg i8 %i.im to i64
  %i.io = shl nuw nsw i64 %i.in, 7
  %i.ip = or disjoint i64 %i.io, %i.ig            ; 2 uses
  %i.iq = getelementptr inbounds i8, ptr %i.hz, i64 -3
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !13  ; 3 uses
  %.not22.i = icmp sgt i8 %i.ir, -1
  br i1 %.not22.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.is = zext nneg i8 %i.ir to i64
  %i.it = shl nuw nsw i64 %i.is, 14
  %i.iu = or disjoint i64 %i.it, %i.ip
  br label %lpDecodeBacklen.exit

bb.cb:                                            ; preds = %bb.bz
  %i.iv = and i8 %i.ir, 127
  %i.iw = zext nneg i8 %i.iv to i64
  %i.ix = shl nuw nsw i64 %i.iw, 14
  %i.iy = or disjoint i64 %i.ix, %i.ip            ; 2 uses
  %i.iz = getelementptr inbounds i8, ptr %i.hz, i64 -4
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !13  ; 3 uses
  %.not23.i = icmp sgt i8 %i.ja, -1
  br i1 %.not23.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.jb = zext nneg i8 %i.ja to i64
  %i.jc = shl nuw nsw i64 %i.jb, 21
  %i.jd = or disjoint i64 %i.jc, %i.iy
  br label %lpDecodeBacklen.exit

bb.cd:                                            ; preds = %bb.cb
  %i.je = getelementptr inbounds i8, ptr %i.hz, i64 -5
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !13  ; 2 uses
  %.not24.i = icmp sgt i8 %i.jf, -1
  br i1 %.not24.i, label %bb.ce, label %lpDecodeBacklen.exit.thread

bb.ce:                                            ; preds = %bb.cd
  %i.jg = and i8 %i.ja, 127
  %i.jh = zext nneg i8 %i.jg to i64
  %i.ji = shl nuw nsw i64 %i.jh, 21
  %i.jj = zext nneg i8 %i.jf to i64
  %i.jk = shl nuw nsw i64 %i.jj, 28
  %i.jl = or disjoint i64 %i.jk, %i.ji
  %i.jm = or disjoint i64 %i.jl, %i.iy
  br label %lpDecodeBacklen.exit

lpDecodeBacklen.exit:                             ; preds = %bb.bw, %bb.by, %bb.ca, %bb.cc, %bb.ce
  %.0.i77 = phi i64 [ %i.ie, %bb.bw ], [ %i.il, %bb.by ], [ %i.jm, %bb.ce ], [ %i.jd, %bb.cc ], [ %i.iu, %bb.ca ]
  %.not44.i = icmp eq i64 %.0.i77, %i.hx
  br i1 %.not44.i, label %lpNext.exit, label %lpDecodeBacklen.exit.thread

lpDecodeBacklen.exit.thread:                      ; preds = %bb.cd, %bb.bj, %bb.bf, %bb.bg, %lpDecodeBacklen.exit, %select.unfold.i, %lpEncodeBacklenBytes.exit.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

lpNext.exit:                                      ; preds = %lpDecodeBacklen.exit, %lpSkip.exit.i
  %.0.i = phi ptr [ null, %lpSkip.exit.i ], [ %i.gi, %lpDecodeBacklen.exit ] ; 3 uses
  %i.jn = add nuw nsw i32 %.0119, 1
  %exitcond146.not = icmp eq i32 %.0119, %i.aa
  br i1 %exitcond146.not, label %.loopexit, label %.lr.ph120, !llvm.loop !61

._crit_edge133:                                   ; preds = %.loopexit, %._crit_edge
  tail call void @zfree(ptr noundef nonnull %i.e) #21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lpRandomPairsUnique(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = icmp sgt i32 %4, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1927) #21
  tail call void @abort() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i16, ptr %i.e, align 1              ; 2 uses
  %i.g = zext i16 %i.f to i32
  %.not.i = icmp eq i16 %i.f, -1
  br i1 %.not.i, label %bb.d, label %lpLength.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %._crit_edge.thread.i, label %bb.e
end_hunk_2
