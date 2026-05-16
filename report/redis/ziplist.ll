inline.NumInlined: 61
inline.NumDeleted: 7
begin_hunk_0_@__ziplistDelete:bb.a
  %i.g = load i32, ptr %i.f, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i64 [ 1, %bb.b ], [ 5, %bb.c ]
  %.sink.i = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13    ; 3 uses
  %i.k = icmp ult i8 %i.j, -64
  br i1 %i.k, label %zipEntry.exit, label %bb.e, !prof !24

bb.e:                                             ; preds = %bb.d
  switch i8 %i.j, label %bb.f [
    i8 -2, label %zipEntry.exit
    i8 -64, label %zipEntry.exit
    i8 -16, label %zipEntry.exit
    i8 -48, label %zipEntry.exit
    i8 -32, label %zipEntry.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.l = add nsw i8 %i.j, 1
  %or.cond.i = icmp ult i8 %i.l, -14
  br i1 %or.cond.i, label %bb.g, label %zipEntry.exit, !prof !24

bb.g:                                             ; preds = %bb.f
  tail call void @_serverAssert(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 619) #17
  tail call void @abort() #18
  unreachable

zipEntry.exit:                                    ; preds = %bb.d, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.f
  %i.m = icmp ne i8 %i.c, -1                      ; 2 uses
  %i.n = icmp ne i32 %2, 0
  %i.o = and i1 %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %zipEntry.exit
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %zipRawEntryLengthSafe.exit
  %.05992 = phi ptr [ %1, %.lr.ph ], [ %i.w, %zipRawEntryLengthSafe.exit ] ; 2 uses
  %.06190 = phi i32 [ 0, %.lr.ph ], [ %i.x, %zipRawEntryLengthSafe.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.r = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.b, ptr noundef nonnull %.05992, ptr noundef %3, i32 noundef 0)
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.i, label %zipRawEntryLengthSafe.exit, !prof !28

bb.i:                                             ; preds = %bb.h
  tail call void @_serverAssert(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 693) #17
  tail call void @abort() #18
  unreachable

zipRawEntryLengthSafe.exit:                       ; preds = %bb.h
  %i.s = load i32, ptr %i.p, align 8, !tbaa !26
  %i.t = load i32, ptr %i.q, align 4, !tbaa !25
  %i.u = add i32 %i.t, %i.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.05992, i64 %i.v ; 4 uses
  %i.x = add nuw i32 %.06190, 1                   ; 3 uses
  %i.y = load i8, ptr %i.w, align 1, !tbaa !13    ; 2 uses
  %i.z = icmp ne i8 %i.y, -1                      ; 2 uses
  %i.aa = icmp ult i32 %i.x, %2
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %bb.h, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %zipRawEntryLengthSafe.exit
  %indvars = trunc i32 %i.x to i16
  %.not = icmp ult ptr %i.w, %1
  br i1 %.not, label %bb.j, label %._crit_edge.thread, !prof !35

bb.j:                                             ; preds = %._crit_edge
  tail call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 862) #17
  tail call void @abort() #18
  unreachable

._crit_edge.thread:                               ; preds = %zipEntry.exit, %._crit_edge
  %.lcssa117 = phi i1 [ %i.z, %._crit_edge ], [ %i.m, %zipEntry.exit ]
  %.lcssa86116 = phi i8 [ %i.y, %._crit_edge ], [ %i.c, %zipEntry.exit ]
  %.059.lcssa115 = phi ptr [ %i.w, %._crit_edge ], [ %1, %zipEntry.exit ] ; 2 uses
  %.060.lcssa114 = phi i16 [ %indvars, %._crit_edge ], [ 0, %zipEntry.exit ]
  %i.ac = ptrtoint ptr %.059.lcssa115 to i64
  %i.ad = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = trunc i64 %i.ae to i32                  ; 3 uses
  %.not66 = icmp eq i32 %i.af, 0
  br i1 %.not66, label %bb.z, label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread
  br i1 %.lcssa117, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %.not79 = icmp eq i8 %.lcssa86116, -2
  %..i72 = select i1 %.not79, i32 -5, i32 -1
  %i.ag = icmp ult i32 %.sink.i, 254              ; 2 uses
  %i.ah = select i1 %i.ag, i32 1, i32 5
  %i.ai = add nsw i32 %..i72, %i.ah               ; 3 uses
  %narrow = sub nsw i32 0, %i.ai
  %i.aj = sext i32 %narrow to i64
  %i.ak = getelementptr inbounds i8, ptr %.059.lcssa115, i64 %i.aj ; 8 uses
  %i.al = icmp uge ptr %i.ak, %1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -1
  %i.ao = icmp ult ptr %i.ak, %i.an
  %i.ap = select i1 %i.al, i1 %i.ao, i1 false, !prof !18
  br i1 %i.ap, label %bb.n, label %bb.m, !prof !18

bb.m:                                             ; preds = %bb.l
  tail call void @_serverAssert(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 878) #17
  tail call void @abort() #18
  unreachable

bb.n:                                             ; preds = %bb.l
  br i1 %i.ag, label %bb.o, label %zipStorePrevEntryLengthLarge.exit.i

bb.o:                                             ; preds = %bb.n
  %i.aq = trunc nuw i32 %.sink.i to i8
  br label %zipStorePrevEntryLength.exit

zipStorePrevEntryLengthLarge.exit.i:              ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store i32 %.sink.i, ptr %i.ar, align 1
  br label %zipStorePrevEntryLength.exit

zipStorePrevEntryLength.exit:                     ; preds = %bb.o, %zipStorePrevEntryLengthLarge.exit.i
  %.sink = phi i8 [ %i.aq, %bb.o ], [ -2, %zipStorePrevEntryLengthLarge.exit.i ]
  store i8 %.sink, ptr %i.ak, align 1, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !9
  %i.au = call fastcc i32 @zipEntrySafe(ptr noundef nonnull %0, i64 noundef %i.b, ptr noundef nonnull %i.ak, ptr noundef %4, i32 noundef 1)
  %.not67 = icmp eq i32 %i.au, 0
  br i1 %.not67, label %bb.p, label %bb.q, !prof !28

bb.p:                                             ; preds = %zipStorePrevEntryLength.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 887) #17
  tail call void @abort() #18
  unreachable

bb.q:                                             ; preds = %zipStorePrevEntryLength.exit
  %i.av = sub i32 %i.at, %i.af
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !25
  %i.ba = add i32 %i.az, %i.ax
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13
  %.not68 = icmp eq i8 %i.bd, -1
  %i.be = select i1 %.not68, i32 0, i32 %i.ai
  %spec.select = add i32 %i.av, %i.be
  %i.bf = ptrtoint ptr %i.ak to i64
  %i.bg = ptrtoint ptr %0 to i64
  %.neg = add i64 %i.bg, -1
  %i.bh = add i64 %.neg, %i.b
  %i.bi = sub i64 %i.bh, %i.bf
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.ak, i64 %i.bi, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %bb.k
  %i.bj = ptrtoint ptr %0 to i64
  %i.bk = zext i32 %.sink.i to i64
  %i.bl = add i64 %i.bj, %i.bk
  %i.bm = sub i64 %i.ad, %i.bl
  %i.bn = trunc i64 %i.bm to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.058 = phi i32 [ %i.ai, %bb.q ], [ 0, %bb.r ]  ; 2 uses
  %.157 = phi i32 [ %spec.select, %bb.q ], [ %i.bn, %bb.r ] ; 2 uses
  %i.bo = sub i32 %i.af, %.058
  %i.bp = zext i32 %i.bo to i64
  %i.bq = sub nsw i64 %i.b, %i.bp                 ; 5 uses
  %i.br = icmp ult i64 %i.bq, 4294967295
  br i1 %i.br, label %ziplistResize.exit, label %bb.t, !prof !18

bb.t:                                             ; preds = %bb.s
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 723) #17
  tail call void @abort() #18
  unreachable

ziplistResize.exit:                               ; preds = %bb.s
  %i.bs = ptrtoint ptr %0 to i64
  %i.bt = sub i64 %i.ad, %i.bs
  %i.bu = tail call ptr @zrealloc(ptr noundef nonnull %0, i64 noundef %i.bq) #20 ; 7 uses
  %i.bv = trunc nuw i64 %i.bq to i32
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !9
  %i.bw = getelementptr i8, ptr %i.bu, i64 %i.bq
  %i.bx = getelementptr i8, ptr %i.bw, i64 -1
  store i8 -1, ptr %i.bx, align 1, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 4, !tbaa !16 ; 2 uses
  %.not69 = icmp eq i16 %i.ca, -1
  br i1 %.not69, label %bb.v, label %bb.u

bb.u:                                             ; preds = %ziplistResize.exit
  %i.cb = sub i16 %i.ca, %.060.lcssa114
  store i16 %i.cb, ptr %i.bz, align 4, !tbaa !16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %ziplistResize.exit
  %i.cc = zext i32 %.157 to i64
  %i.cd = add nsw i64 %i.bq, -1
  %.not70 = icmp ult i64 %i.cd, %i.cc
  br i1 %.not70, label %bb.w, label %bb.x, !prof !28

bb.w:                                             ; preds = %bb.v
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 913) #17
  tail call void @abort() #18
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %.157, ptr %i.ce, align 4, !tbaa !9
  %.not71 = icmp eq i32 %.058, 0
  br i1 %.not71, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = tail call ptr @__ziplistCascadeUpdate(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.by)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %._crit_edge.thread
  %.1 = phi ptr [ %0, %._crit_edge.thread ], [ %i.cf, %bb.y ], [ %i.bu, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @__ziplistInsert(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 12 uses
  %i.b = alloca i64, align 8                      ; 10 uses
  %4 = alloca %struct.zlentry, align 8            ; 5 uses
  %5 = alloca %struct.zlentry, align 8            ; 5 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !9
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.e = load i8, ptr %1, align 1, !tbaa !13      ; 2 uses
  switch i8 %i.e, label %bb.b [
    i8 -1, label %bb.d
    i8 -2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = zext i8 %i.e to i32
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 1
  %i.h = load i32, ptr %i.g, align 1
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %.not96 = icmp eq i8 %i.m, -1
  br i1 %.not96, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.n = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.d, ptr noundef nonnull %i.l, ptr noundef %4, i32 noundef 0)
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.f, label %zipRawEntryLengthSafe.exit, !prof !28

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 693) #17
  tail call void @abort() #18
  unreachable

zipRawEntryLengthSafe.exit:                       ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !25
  %i.s = add i32 %i.r, %i.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %zipRawEntryLengthSafe.exit, %bb.b, %bb.c
  %.1 = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.s, %zipRawEntryLengthSafe.exit ], [ 0, %bb.d ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.t = add i32 %3, -32
  %or.cond.i = icmp ult i32 %i.t, -31
  br i1 %or.cond.i, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = zext nneg i32 %3 to i64
  %i.v = call i32 @string2ll(ptr noundef %2, i64 noundef %i.u, ptr noundef nonnull %i.b) #17
  %.not.i109 = icmp eq i32 %i.v, 0
  br i1 %.not.i109, label %.thread164, label %bb.i

.thread164:                                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.w = icmp ult i32 %.1, 254                    ; 2 uses
  %i.x = select i1 %i.w, i32 1, i32 5             ; 2 uses
  %narrow = add nuw nsw i32 %i.x, %3
  %i.y = zext nneg i32 %narrow to i64
  br label %zipStoreEntryEncoding.exit

bb.i:                                             ; preds = %bb.h
  %i.z = load i64, ptr %i.b, align 8, !tbaa !14   ; 7 uses
  %or.cond3.i = icmp ult i64 %i.z, 13
  br i1 %or.cond3.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = add i64 %i.z, 128
  %or.cond5.i = icmp ult i64 %i.aa, 256
  br i1 %or.cond5.i, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ab = add i64 %i.z, 32768
  %or.cond7.i = icmp ult i64 %i.ab, 65536
  br i1 %or.cond7.i, label %.thread141, label %bb.l

.thread141:                                       ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ac = add i64 %i.z, 8388608
  %or.cond9.i = icmp ult i64 %i.ac, 16777216
  br i1 %or.cond9.i, label %.thread144, label %bb.m

.thread144:                                       ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ad = add i64 %i.z, 2147483648
  %or.cond11.i = icmp ult i64 %i.ad, 4294967296   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %. = select i1 %or.cond11.i, i8 -48, i8 -32
  %i.ae = select i1 %or.cond11.i, i64 4, i64 8
  br label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.af = trunc nuw nsw i64 %i.z to i8
  %i.ag = add nuw nsw i8 %i.af, -15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.q

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %.093 = zext i32 %3 to i64
  %i.ah = icmp ult i32 %.1, 254                   ; 3 uses
  %i.ai = select i1 %i.ah, i32 1, i32 5           ; 3 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aj, %.093            ; 2 uses
  %i.al = icmp ult i32 %3, 64
  br i1 %i.al, label %zipStoreEntryEncoding.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = icmp ult i32 %3, 16384
  %spec.select180 = select i1 %i.am, i64 2, i64 5
  br label %zipStoreEntryEncoding.exit

bb.q:                                             ; preds = %bb.m, %.thread, %bb.n, %.thread141, %.thread144
  %.0130136.ph = phi i8 [ -2, %.thread ], [ %., %bb.m ], [ %i.ag, %bb.n ], [ -16, %.thread144 ], [ -64, %.thread141 ]
  %.093.in.ph = phi i64 [ 1, %.thread ], [ %i.ae, %bb.m ], [ 0, %bb.n ], [ 3, %.thread144 ], [ 2, %.thread141 ]
  %i.an = icmp ult i32 %.1, 254                   ; 2 uses
  %i.ao = select i1 %i.an, i32 1, i32 5           ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = add nuw nsw i64 %.093.in.ph, %i.ap
  br label %zipStoreEntryEncoding.exit

zipStoreEntryEncoding.exit:                       ; preds = %bb.p, %bb.o, %.thread164, %bb.q
  %.not.i113162 = phi i1 [ true, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ false, %.thread164 ]
  %i.ar = phi i64 [ %i.aq, %bb.q ], [ %i.ak, %bb.p ], [ %i.ak, %bb.o ], [ %i.y, %.thread164 ]
  %i.as = phi i32 [ %i.ao, %bb.q ], [ %i.ai, %bb.p ], [ %i.ai, %bb.o ], [ %i.x, %.thread164 ]
  %i.at = phi i1 [ %i.an, %bb.q ], [ %i.ah, %bb.p ], [ %i.ah, %bb.o ], [ %i.w, %.thread164 ]
  %.0130136160 = phi i8 [ %.0130136.ph, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %.thread164 ] ; 3 uses
  %.0138158 = phi i64 [ %i.z, %bb.q ], [ 123456789, %bb.p ], [ 123456789, %bb.o ], [ 123456789, %.thread164 ] ; 5 uses
  %.025.i = phi i64 [ 1, %bb.q ], [ %spec.select180, %bb.p ], [ 1, %bb.o ], [ 1, %.thread164 ]
  %i.au = add nuw nsw i64 %.025.i, %i.ar          ; 7 uses
  %i.av = load i8, ptr %1, align 1, !tbaa !13     ; 2 uses
  %.not99 = icmp eq i8 %i.av, -1
  br i1 %.not99, label %bb.s, label %bb.r

bb.r:                                             ; preds = %zipStoreEntryEncoding.exit
  %i.aw = trunc i64 %i.au to i32
  %.not = icmp eq i8 %i.av, -2
  %..i114 = select i1 %.not, i32 -5, i32 -1
  %i.ax = icmp ult i32 %i.aw, 254
  %i.ay = select i1 %i.ax, i32 1, i32 5
  %i.az = add nsw i32 %i.ay, %..i114
  br label %bb.s

bb.s:                                             ; preds = %zipStoreEntryEncoding.exit, %bb.r
  %i.ba = phi i32 [ %i.az, %bb.r ], [ 0, %zipStoreEntryEncoding.exit ] ; 2 uses
  %i.bb = icmp ne i32 %i.ba, -4
  %i.bc = icmp samesign ugt i64 %i.au, 3
end_hunk_0
begin_hunk_1_@ziplistFind:bb.a

bb.g:                                             ; preds = %bb.f
  %bcmp = call i32 @bcmp(ptr nonnull %i.p, ptr %2, i64 %i.h)
  %i.u = icmp eq i32 %bcmp, 0
  br i1 %i.u, label %.thread65, label %bb.aa

bb.h:                                             ; preds = %bb.e
  switch i8 %.04576, label %bb.q [
    i8 0, label %bb.i
    i8 -1, label %bb.aa
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  br i1 %or.cond.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = call i32 @string2ll(ptr noundef %2, i64 noundef %i.h, ptr noundef nonnull %i.a) #17
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = load i64, ptr %i.a, align 8, !tbaa !14   ; 7 uses
  %or.cond3.i = icmp ult i64 %i.w, 13
  br i1 %or.cond3.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = trunc nuw nsw i64 %i.w to i8
  %i.y = add nuw nsw i8 %i.x, -15
  br label %.thread59

bb.m:                                             ; preds = %bb.k
  %i.z = add i64 %i.w, 128
  %or.cond5.i = icmp ult i64 %i.z, 256
  br i1 %or.cond5.i, label %.thread59, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = add i64 %i.w, 32768
  %or.cond7.i = icmp ult i64 %i.aa, 65536
  br i1 %or.cond7.i, label %.thread59, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = add i64 %i.w, 8388608
  %or.cond9.i = icmp ult i64 %i.ab, 16777216
  br i1 %or.cond9.i, label %.thread59, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = add i64 %i.w, 2147483648
  %or.cond11.i = icmp ult i64 %i.ac, 4294967296
  %..i = select i1 %or.cond11.i, i8 -48, i8 -32
  br label %.thread59

.thread59:                                        ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.550.ph = phi i8 [ -2, %bb.m ], [ %..i, %bb.p ], [ -16, %bb.o ], [ -64, %bb.n ], [ %i.y, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.q

.thread:                                          ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.aa

bb.q:                                             ; preds = %bb.h, %.thread59
  %.164 = phi i64 [ %i.w, %.thread59 ], [ %.04277, %bb.h ] ; 2 uses
  %.24763 = phi i8 [ %.550.ph, %.thread59 ], [ %.04576, %bb.h ]
  switch i8 %i.r, label %bb.w [
    i8 -2, label %bb.r
    i8 -64, label %bb.s
    i8 -48, label %bb.t
    i8 -16, label %bb.u
    i8 -32, label %bb.v
  ]

bb.r:                                             ; preds = %bb.q
  %i.ad = load i8, ptr %i.p, align 1, !tbaa !13
  %i.ae = sext i8 %i.ad to i64
  br label %zipLoadInteger.exit

bb.s:                                             ; preds = %bb.q
  %.0.copyload7.i = load i16, ptr %i.p, align 1
  %i.af = sext i16 %.0.copyload7.i to i64
  br label %zipLoadInteger.exit

bb.t:                                             ; preds = %bb.q
  %.0.copyload4.i = load i32, ptr %i.p, align 1
  %i.ag = sext i32 %.0.copyload4.i to i64
  br label %zipLoadInteger.exit

bb.u:                                             ; preds = %bb.q
  %.1.copyload.i = load i24, ptr %i.p, align 1
  %i.ah = sext i24 %.1.copyload.i to i64
  br label %zipLoadInteger.exit

bb.v:                                             ; preds = %bb.q
  %.0.copyload.i = load i64, ptr %i.p, align 1
  br label %zipLoadInteger.exit

bb.w:                                             ; preds = %bb.q
  %i.ai = add nsw i8 %i.r, 15
  %or.cond.i38 = icmp ult i8 %i.ai, 14
  br i1 %or.cond.i38, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.aj = and i8 %i.r, 15
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = add nsw i64 %i.ak, -1
  br label %zipLoadInteger.exit

bb.y:                                             ; preds = %bb.w
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 604) #17
  call void @abort() #18
  unreachable

zipLoadInteger.exit:                              ; preds = %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.x
  %.0.i37 = phi i64 [ %i.ae, %bb.r ], [ %i.af, %bb.s ], [ %i.ag, %bb.t ], [ %i.ah, %bb.u ], [ %.0.copyload.i, %bb.v ], [ %i.al, %bb.x ]
  %.not36 = icmp eq i64 %.0.i37, %.164
  br i1 %.not36, label %.thread65, label %bb.aa

bb.z:                                             ; preds = %bb.d
  %i.am = add nsw i32 %.02778, -1
  br label %bb.aa

.thread65:                                        ; preds = %zipLoadInteger.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.loopexit

bb.aa:                                            ; preds = %bb.h, %bb.z, %zipLoadInteger.exit, %bb.f, %bb.g, %.thread
  %.348 = phi i8 [ %.04576, %bb.h ], [ %.24763, %zipLoadInteger.exit ], [ %.04576, %bb.g ], [ %.04576, %bb.f ], [ %.04576, %bb.z ], [ -1, %.thread ]
  %.2 = phi i64 [ %.04277, %bb.h ], [ %.164, %zipLoadInteger.exit ], [ %.04277, %bb.g ], [ %.04277, %bb.f ], [ %.04277, %bb.z ], [ %.04277, %.thread ]
  %.128 = phi i32 [ %4, %bb.h ], [ %4, %zipLoadInteger.exit ], [ %4, %bb.g ], [ %4, %bb.f ], [ %i.am, %bb.z ], [ %4, %.thread ]
  %i.an = load i32, ptr %i.g, align 4, !tbaa !25
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ao ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %.not = icmp eq i8 %i.aq, -1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !39

.loopexit:                                        ; preds = %bb.aa, %bb.a, %.thread65
  %.5 = phi ptr [ %.02579, %.thread65 ], [ null, %bb.a ], [ null, %bb.aa ]
  ret ptr %.5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ziplistLen(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.zlentry, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !16   ; 2 uses
  %.not = icmp eq i16 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i16 %i.b to i32
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.e = load i32, ptr %0, align 4, !tbaa !9
  %i.f = zext i32 %i.e to i64
  %i.g = load i8, ptr %i.d, align 2, !tbaa !13
  %.not1517 = icmp eq i8 %i.g, -1
  br i1 %.not1517, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %zipRawEntryLengthSafe.exit
  %.019 = phi i32 [ 0, %.lr.ph ], [ %i.p, %zipRawEntryLengthSafe.exit ]
  %.01318 = phi ptr [ %i.d, %.lr.ph ], [ %i.o, %zipRawEntryLengthSafe.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.j = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.f, ptr noundef nonnull %.01318, ptr noundef %1, i32 noundef 0)
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.e, label %zipRawEntryLengthSafe.exit, !prof !28

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 693) #17
  tail call void @abort() #18
  unreachable

zipRawEntryLengthSafe.exit:                       ; preds = %bb.d
  %i.k = load i32, ptr %i.h, align 8, !tbaa !26
  %i.l = load i32, ptr %i.i, align 4, !tbaa !25
  %i.m = add i32 %i.l, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.01318, i64 %i.n ; 2 uses
  %i.p = add i32 %.019, 1                         ; 4 uses
  %i.q = load i8, ptr %i.o, align 1, !tbaa !13
  %.not15 = icmp eq i8 %i.q, -1
  br i1 %.not15, label %._crit_edge, label %bb.d, !llvm.loop !40

._crit_edge:                                      ; preds = %zipRawEntryLengthSafe.exit
  %i.r = icmp ult i32 %i.p, 65535
  br i1 %i.r, label %._crit_edge.thread, label %bb.f

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %.0.lcssa21 = phi i32 [ %i.p, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  %i.s = trunc nuw i32 %.0.lcssa21 to i16
  store i16 %i.s, ptr %i.a, align 4, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %._crit_edge.thread, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ %.0.lcssa21, %._crit_edge.thread ], [ %i.p, %._crit_edge ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local void @ziplistRepr(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.zlentry, align 8            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i16, ptr %i.c, align 4, !tbaa !16
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.a, i32 noundef %i.e, i32 noundef %i.g) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.j = load i8, ptr %i.i, align 2, !tbaa !13
  %.not30 = icmp eq i8 %i.j, -1
  br i1 %.not30, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.a
  %i.k = ptrtoint ptr %0 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph34, %bb.u
  %.02232 = phi ptr [ %i.i, %.lr.ph34 ], [ %i.bb, %bb.u ] ; 4 uses
  %.02331 = phi i32 [ 0, %.lr.ph34 ], [ %i.bc, %bb.u ] ; 2 uses
  %i.p = call fastcc i32 @zipEntrySafe(ptr noundef nonnull %0, i64 noundef %i.b, ptr noundef nonnull %.02232, ptr noundef %1, i32 noundef 1)
  %.not25 = icmp eq i32 %i.p, 0
  br i1 %.not25, label %bb.c, label %bb.d, !prof !28

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 1447) #17
  tail call void @abort() #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = ptrtoint ptr %.02232 to i64              ; 2 uses
  %i.r = sub i64 %i.q, %i.k
  %i.s = load i32, ptr %i.l, align 8, !tbaa !26   ; 3 uses
  %i.t = load i32, ptr %i.m, align 4, !tbaa !25   ; 6 uses
  %i.u = add i32 %i.t, %i.s                       ; 3 uses
  %i.v = load i32, ptr %i.n, align 4, !tbaa !23
  %i.w = load i32, ptr %1, align 8, !tbaa !19
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i64 noundef %i.q, i32 noundef %.02331, i64 noundef %i.r, i32 noundef %i.u, i32 noundef %i.s, i32 noundef %i.v, i32 noundef %i.w, i32 noundef %i.t) ; 0 uses
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19) ; 0 uses
  %.not36 = icmp eq i32 %i.u, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext i32 %i.u to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.z = zext i32 %i.s to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.02232, i64 %i.z ; 8 uses
  %i.ab = load i8, ptr %i.o, align 4, !tbaa !32   ; 4 uses
  %.not26 = icmp ugt i8 %i.ab, -65
  br i1 %.not26, label %bb.l, label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02232, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i32
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.ae) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

bb.e:                                             ; preds = %._crit_edge
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22) ; 0 uses
  %i.ah = icmp ugt i32 %i.t, 40
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr @stdout, align 8, !tbaa !42
  %i.aj = tail call i64 @fwrite(ptr noundef nonnull %i.aa, i64 noundef 40, i64 noundef 1, ptr noundef %i.ai)
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @perror(ptr noundef nonnull @.str.23) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24) ; 0 uses
  br label %bb.u

bb.i:                                             ; preds = %bb.e
  %.not27 = icmp eq i32 %i.t, 0
  br i1 %.not27, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = zext nneg i32 %i.t to i64
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !42
  %i.ao = tail call i64 @fwrite(ptr noundef nonnull %i.aa, i64 noundef %i.am, i64 noundef 1, ptr noundef %i.an)
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  tail call void @perror(ptr noundef nonnull @.str.23) #21
  br label %bb.u

bb.l:                                             ; preds = %._crit_edge
  switch i8 %i.ab, label %bb.r [
    i8 -2, label %bb.m
    i8 -64, label %bb.n
    i8 -48, label %bb.o
    i8 -16, label %bb.p
    i8 -32, label %bb.q
  ]

bb.m:                                             ; preds = %bb.l
  %i.aq = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ar = sext i8 %i.aq to i64
  br label %zipLoadInteger.exit

bb.n:                                             ; preds = %bb.l
  %.0.copyload7.i = load i16, ptr %i.aa, align 1
  %i.as = sext i16 %.0.copyload7.i to i64
  br label %zipLoadInteger.exit

bb.o:                                             ; preds = %bb.l
  %.0.copyload4.i = load i32, ptr %i.aa, align 1
  %i.at = sext i32 %.0.copyload4.i to i64
  br label %zipLoadInteger.exit

bb.p:                                             ; preds = %bb.l
  %.1.copyload.i = load i24, ptr %i.aa, align 1
  %i.au = sext i24 %.1.copyload.i to i64
  br label %zipLoadInteger.exit

bb.q:                                             ; preds = %bb.l
  %.0.copyload.i = load i64, ptr %i.aa, align 1
  br label %zipLoadInteger.exit

bb.r:                                             ; preds = %bb.l
  %i.av = add nsw i8 %i.ab, 15
  %or.cond.i = icmp ult i8 %i.av, 14
  br i1 %or.cond.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aw = and i8 %i.ab, 15
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = add nsw i64 %i.ax, -1
  br label %zipLoadInteger.exit

bb.t:                                             ; preds = %bb.r
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 604) #17
  tail call void @abort() #18
  unreachable

zipLoadInteger.exit:                              ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.s
  %.0.i = phi i64 [ %i.ar, %bb.m ], [ %i.as, %bb.n ], [ %i.at, %bb.o ], [ %i.au, %bb.p ], [ %.0.copyload.i, %bb.q ], [ %i.ay, %bb.s ]
  %i.az = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i64 noundef %.0.i) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.i, %zipLoadInteger.exit
  %puts28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.ba = zext i32 %i.t to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ba ; 2 uses
  %i.bc = add nuw nsw i32 %.02331, 1
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !13
  %.not = icmp eq i8 %i.bd, -1
  br i1 %.not, label %._crit_edge35, label %bb.b, !llvm.loop !44

._crit_edge35:                                    ; preds = %bb.u, %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ziplistValidateIntegrity(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.zlentry, align 8            ; 10 uses
  %i.a = icmp ult i64 %1, 11
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !9
  %i.c = zext i32 %i.b to i64
  %.not = icmp eq i64 %1, %i.c
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i64 %1, -1                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %.not48 = icmp eq i8 %i.f, -1
  br i1 %.not48, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !9
  %i.i = zext i32 %i.h to i64
  %i.j = icmp samesign ult i64 %i.d, %i.i
  br i1 %i.j, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not49 = icmp eq i32 %2, 0
  br i1 %.not49, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i16, ptr %i.k, align 4, !tbaa !16   ; 2 uses
  %i.m = zext i16 %i.l to i32                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.o = load i8, ptr %i.n, align 2, !tbaa !13
  %.not5071 = icmp eq i8 %i.o, -1
  br i1 %.not5071, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %.not58 = icmp eq ptr %3, null
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  br i1 %.not58, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %.074.us = phi i64 [ %i.y, %bb.g ], [ 0, %.lr.ph ]
  %.03773.us = phi ptr [ %i.z, %bb.g ], [ %i.n, %.lr.ph ] ; 3 uses
  %.04172.us = phi i32 [ %i.aa, %bb.g ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.s = call fastcc i32 @zipEntrySafe(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %.03773.us, ptr noundef %5, i32 noundef 1)
  %.not56.us = icmp ne i32 %i.s, 0
  %i.t = load i32, ptr %i.p, align 4
  %i.u = zext i32 %i.t to i64
  %.not57.us = icmp eq i64 %.074.us, %i.u
  %or.cond62.us = select i1 %.not56.us, i1 %.not57.us, i1 false
  br i1 %or.cond62.us, label %bb.g, label %.thread

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.v = load i32, ptr %i.q, align 8, !tbaa !26
  %i.w = load i32, ptr %i.r, align 4, !tbaa !25
  %i.x = add i32 %i.w, %i.v
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.03773.us, i64 %i.y ; 3 uses
  %i.aa = add i32 %.04172.us, 1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !13
  %.not50.us = icmp eq i8 %i.ab, -1
  br i1 %.not50.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !45

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.074 = phi i64 [ %i.aj, %bb.i ], [ 0, %.lr.ph ]
  %.03773 = phi ptr [ %i.ak, %bb.i ], [ %i.n, %.lr.ph ] ; 4 uses
  %.04172 = phi i32 [ %i.al, %bb.i ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ac = call fastcc i32 @zipEntrySafe(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %.03773, ptr noundef %5, i32 noundef 1)
  %.not56 = icmp ne i32 %i.ac, 0
  %i.ad = load i32, ptr %i.p, align 4
  %i.ae = zext i32 %i.ad to i64
  %.not57 = icmp eq i64 %.074, %i.ae
  %or.cond62 = select i1 %.not56, i1 %.not57, i1 false
  br i1 %or.cond62, label %bb.h, label %.thread

bb.h:                                             ; preds = %.lr.ph.split
  %i.af = tail call i32 %3(ptr noundef nonnull %.03773, i32 noundef %i.m, ptr noundef %4) #17
  %.not59 = icmp eq i32 %i.af, 0
  br i1 %.not59, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h, %.lr.ph.split, %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !26
  %i.ah = load i32, ptr %i.r, align 4, !tbaa !25
  %i.ai = add i32 %i.ah, %i.ag
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.03773, i64 %i.aj ; 3 uses
  %i.al = add i32 %.04172, 1                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !13
  %.not50 = icmp eq i8 %i.am, -1
  br i1 %.not50, label %._crit_edge, label %.lr.ph.split, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.i, %bb.g
  %.041.lcssa = phi i32 [ %i.aa, %bb.g ], [ %i.al, %bb.i ]
  %.037.lcssa = phi ptr [ %i.z, %bb.g ], [ %i.ak, %bb.i ]
  %.035.lcssa = phi ptr [ %.03773.us, %bb.g ], [ %.03773, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -1
  %.not51 = icmp eq ptr %.037.lcssa, %i.ao
  br i1 %.not51, label %bb.j, label %bb.k

._crit_edge.thread:                               ; preds = %bb.f
  %.not5190 = icmp eq i64 %1, 11
  br i1 %.not5190, label %.thread93, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.ap = load i32, ptr %i.g, align 4, !tbaa !9
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  %.not53 = icmp eq ptr %.035.lcssa, %i.ar
  br i1 %.not53, label %.thread93, label %bb.k

.thread93:                                        ; preds = %._crit_edge.thread, %bb.j
  %.041.lcssa9197 = phi i32 [ 0, %._crit_edge.thread ], [ %.041.lcssa, %bb.j ]
  %.not54 = icmp eq i16 %i.l, -1
  %.not55 = icmp eq i32 %.041.lcssa9197, %i.m
  %or.cond = select i1 %.not54, i1 true, i1 %.not55
  %spec.select = zext i1 %or.cond to i32
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread, %.thread, %.thread93, %bb.b, %bb.c, %bb.d, %bb.e, %bb.j, %._crit_edge, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.e ], [ 0, %.thread ], [ %spec.select, %.thread93 ], [ 0, %._crit_edge ], [ 0, %bb.j ], [ 0, %._crit_edge.thread ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define dso_local void @ziplistRandomPair(ptr noundef %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 1566) #17
  tail call void @abort() #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = tail call i32 @rand() #17
  %i.b = sext i32 %i.a to i64
  %i.c = urem i64 %i.b, %1
  %.tr = trunc i64 %i.c to i32
  %i.d = shl i32 %.tr, 1
  %i.e = tail call ptr @ziplistIndex(ptr noundef %0, i32 noundef %i.d) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = tail call i32 @ziplistGet(ptr noundef %i.e, ptr noundef %2, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  %.not17 = icmp eq i32 %i.h, 0
  br i1 %.not17, label %bb.d, label %bb.e, !prof !28

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 1572) #17
  tail call void @abort() #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not18 = icmp eq ptr %3, null
  br i1 %.not18, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @ziplistNext(ptr noundef %0, ptr noundef %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = tail call i32 @ziplistGet(ptr noundef %i.i, ptr noundef nonnull %3, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k)
  %.not19 = icmp eq i32 %i.l, 0
  br i1 %.not19, label %bb.g, label %bb.h, !prof !28

bb.g:                                             ; preds = %bb.f
  tail call void @_serverAssert(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 1578) #17
  tail call void @abort() #18
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @uintCompare(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = load i32, ptr %1, align 4, !tbaa !9
  %i.c = sub i32 %i.a, %i.b
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local void @ziplistRandomPairs(ptr noundef %0, i32 noundef %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.zlentry, align 8            ; 5 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 0, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 0, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store i64 0, ptr %i.e, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  store i64 0, ptr %i.f, align 8, !tbaa !14
  %i.g = zext i32 %1 to i64                       ; 5 uses
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @zmalloc(i64 noundef %i.h) #19 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !16   ; 2 uses
  %.not.i = icmp eq i16 %i.k, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = zext i16 %i.k to i32
  br label %ziplistLen.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.n = load i32, ptr %0, align 4, !tbaa !9
  %i.o = zext i32 %i.n to i64
  %i.p = load i8, ptr %i.m, align 2, !tbaa !13
  %.not1517.i = icmp eq i8 %i.p, -1
  br i1 %.not1517.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.d

bb.d:                                             ; preds = %zipRawEntryLengthSafe.exit.i, %.lr.ph.i
  %.019.i = phi i32 [ 0, %.lr.ph.i ], [ %i.y, %zipRawEntryLengthSafe.exit.i ]
  %.01318.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.x, %zipRawEntryLengthSafe.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.s = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.o, ptr noundef nonnull %.01318.i, ptr noundef %4, i32 noundef 0)
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %bb.e, label %zipRawEntryLengthSafe.exit.i, !prof !28

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 693) #17
  tail call void @abort() #18
  unreachable

zipRawEntryLengthSafe.exit.i:                     ; preds = %bb.d
  %i.t = load i32, ptr %i.q, align 8, !tbaa !26
  %i.u = load i32, ptr %i.r, align 4, !tbaa !25
  %i.v = add i32 %i.u, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.01318.i, i64 %i.w ; 2 uses
  %i.y = add i32 %.019.i, 1                       ; 4 uses
  %i.z = load i8, ptr %i.x, align 1, !tbaa !13
  %.not15.i = icmp eq i8 %i.z, -1
  br i1 %.not15.i, label %._crit_edge.i, label %bb.d, !llvm.loop !40

._crit_edge.i:                                    ; preds = %zipRawEntryLengthSafe.exit.i
  %i.aa = icmp ult i32 %i.y, 65535
  br i1 %i.aa, label %._crit_edge.thread.i, label %ziplistLen.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.c
  %.0.lcssa21.i = phi i32 [ %i.y, %._crit_edge.i ], [ 0, %bb.c ] ; 2 uses
  %i.ab = trunc nuw i32 %.0.lcssa21.i to i16
  store i16 %i.ab, ptr %i.j, align 4, !tbaa !16
  br label %ziplistLen.exit

ziplistLen.exit:                                  ; preds = %bb.b, %._crit_edge.i, %._crit_edge.thread.i
  %.1.i = phi i32 [ %i.l, %bb.b ], [ %.0.lcssa21.i, %._crit_edge.thread.i ], [ %i.y, %._crit_edge.i ]
  %i.ac = lshr i32 %.1.i, 1                       ; 2 uses
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.f, label %.preheader47, !prof !28

.preheader47:                                     ; preds = %ziplistLen.exit
  %.not61 = icmp eq i32 %1, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %ziplistLen.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1611) #17
  tail call void @abort() #18
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %.preheader47
  tail call void @qsort(ptr noundef %i.i, i64 noundef %i.g, i64 noundef 8, ptr noundef nonnull @uintCompare) #17
  %i.ad = load i32, ptr %i.i, align 4, !tbaa !46  ; 3 uses
  %i.ae = tail call ptr @ziplistIndex(ptr noundef nonnull %0, i32 noundef %i.ad) ; 3 uses
  %i.af = call i32 @ziplistGet(ptr noundef %i.ae, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e)
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = icmp ne i32 %1, 0
  %i.ai = and i1 %i.ah, %i.ag
  br i1 %i.ai, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %._crit_edge
  %.not46 = icmp eq ptr %3, null
  br i1 %.not46, label %.lr.ph59.split.us, label %.lr.ph59.split

.lr.ph59.split.us:                                ; preds = %.lr.ph59, %.critedge.us
  %.057.us = phi ptr [ %i.an, %.critedge.us ], [ %i.ae, %.lr.ph59 ]
  %.03956.us = phi i32 [ %.1.lcssa.us, %.critedge.us ], [ 0, %.lr.ph59 ] ; 3 uses
  %.04054.us = phi i32 [ %i.am, %.critedge.us ], [ %i.ad, %.lr.ph59 ] ; 2 uses
  %i.aj = call ptr @ziplistNext(ptr noundef nonnull %0, ptr noundef %.057.us) ; 2 uses
  %i.ak = call i32 @ziplistGet(ptr noundef %i.aj, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f)
  %.not45.us = icmp eq i32 %i.ak, 0
  br i1 %.not45.us, label %.split.us, label %.preheader.us, !prof !28

.critedge.us.loopexit.split.loop.exit:            ; preds = %bb.g
  %i.al = trunc nuw i64 %indvars.iv69 to i32
  br label %.critedge.us

.critedge.us:                                     ; preds = %bb.h, %.critedge.us.loopexit.split.loop.exit, %.preheader.us
  %.1.lcssa.us = phi i32 [ %.03956.us, %.preheader.us ], [ %i.al, %.critedge.us.loopexit.split.loop.exit ], [ %1, %bb.h ] ; 2 uses
  %i.am = add i32 %.04054.us, 2
  %i.an = call ptr @ziplistNext(ptr noundef nonnull %0, ptr noundef %i.aj) ; 2 uses
  %i.ao = call i32 @ziplistGet(ptr noundef %i.an, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e)
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = icmp ult i32 %.1.lcssa.us, %1
  %i.ar = and i1 %i.aq, %i.ap
  br i1 %i.ar, label %.lr.ph59.split.us, label %._crit_edge60, !llvm.loop !48

.preheader.us:                                    ; preds = %.lr.ph59.split.us
  %i.as = icmp ult i32 %.03956.us, %1
  br i1 %i.as, label %.lr.ph50.us, label %.critedge.us

.lr.ph50.us:                                      ; preds = %.preheader.us
  %i.at = load ptr, ptr %i.a, align 8
  %i.au = load i32, ptr %i.c, align 4
  %i.av = load i64, ptr %i.e, align 8
  %i.aw = zext i32 %.03956.us to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph50.us
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %bb.h ], [ %i.aw, %.lr.ph50.us ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv69 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !46
  %i.az = icmp eq i32 %.04054.us, %i.ay
  br i1 %i.az, label %bb.h, label %.critedge.us.loopexit.split.loop.exit

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !49
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [24 x i8], ptr %2, i64 %i.bc ; 3 uses
  store ptr %i.at, ptr %i.bd, align 8, !tbaa !50
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 %i.au, ptr %i.be, align 8, !tbaa !52
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %i.av, ptr %i.bf, align 8, !tbaa !53
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond72.not = icmp eq i64 %indvars.iv.next70, %i.g
  br i1 %exitcond72.not, label %.critedge.us, label %bb.g, !llvm.loop !54

.lr.ph:                                           ; preds = %.preheader47, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader47 ] ; 3 uses
  %i.bg = tail call i32 @rand() #17
  %i.bh = urem i32 %i.bg, %i.ac
  %i.bi = shl nuw i32 %i.bh, 1
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !46
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = trunc nuw i64 %indvars.iv to i32
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !55

.lr.ph59.split:                                   ; preds = %.lr.ph59, %.critedge
  %.057 = phi ptr [ %i.ck, %.critedge ], [ %i.ae, %.lr.ph59 ]
  %.03956 = phi i32 [ %.1.lcssa, %.critedge ], [ 0, %.lr.ph59 ] ; 3 uses
  %.04054 = phi i32 [ %i.cj, %.critedge ], [ %i.ad, %.lr.ph59 ] ; 2 uses
  %i.bm = call ptr @ziplistNext(ptr noundef nonnull %0, ptr noundef %.057) ; 2 uses
  %i.bn = call i32 @ziplistGet(ptr noundef %i.bm, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f)
  %.not45 = icmp eq i32 %i.bn, 0
  br i1 %.not45, label %.split.us, label %.preheader, !prof !28

.preheader:                                       ; preds = %.lr.ph59.split
  %i.bo = icmp ult i32 %.03956, %1
  br i1 %i.bo, label %.lr.ph50, label %.critedge

.lr.ph50:                                         ; preds = %.preheader
  %i.bp = load ptr, ptr %i.a, align 8
  %i.bq = load i32, ptr %i.c, align 4
  %i.br = load i64, ptr %i.e, align 8
  %i.bs = load ptr, ptr %i.b, align 8
  %i.bt = load i32, ptr %i.d, align 4
  %i.bu = load i64, ptr %i.f, align 8
  %i.bv = zext i32 %.03956 to i64
  br label %bb.i

.split.us:                                        ; preds = %.lr.ph59.split, %.lr.ph59.split.us
  call void @_serverAssert(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 1628) #17
  call void @abort() #18
  unreachable

bb.i:                                             ; preds = %.lr.ph50, %bb.j
  %indvars.iv65 = phi i64 [ %i.bv, %.lr.ph50 ], [ %indvars.iv.next66, %bb.j ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv65 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !46
  %i.by = icmp eq i32 %.04054, %i.bx
  br i1 %i.by, label %bb.j, label %.critedge.loopexit.split.loop.exit79

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !49
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds [24 x i8], ptr %2, i64 %i.cb ; 3 uses
  store ptr %i.bp, ptr %i.cc, align 8, !tbaa !50
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 %i.bq, ptr %i.cd, align 8, !tbaa !52
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 %i.br, ptr %i.ce, align 8, !tbaa !53
  %i.cf = getelementptr inbounds [24 x i8], ptr %3, i64 %i.cb ; 3 uses
  store ptr %i.bs, ptr %i.cf, align 8, !tbaa !50
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %i.bt, ptr %i.cg, align 8, !tbaa !52
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 %i.bu, ptr %i.ch, align 8, !tbaa !53
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next66, %i.g
  br i1 %exitcond68.not, label %.critedge, label %bb.i, !llvm.loop !54

.critedge.loopexit.split.loop.exit79:             ; preds = %bb.i
  %i.ci = trunc nuw i64 %indvars.iv65 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %.critedge.loopexit.split.loop.exit79, %.preheader
  %.1.lcssa = phi i32 [ %.03956, %.preheader ], [ %i.ci, %.critedge.loopexit.split.loop.exit79 ], [ %1, %bb.j ] ; 2 uses
  %i.cj = add i32 %.04054, 2
  %i.ck = call ptr @ziplistNext(ptr noundef nonnull %0, ptr noundef %i.bm) ; 2 uses
  %i.cl = call i32 @ziplistGet(ptr noundef %i.ck, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e)
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = icmp ult i32 %.1.lcssa, %1
  %i.co = and i1 %i.cn, %i.cm
  br i1 %i.co, label %.lr.ph59.split, label %._crit_edge60, !llvm.loop !48

._crit_edge60:                                    ; preds = %.critedge, %.critedge.us, %._crit_edge
  call void @zfree(ptr noundef nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local i32 @ziplistRandomPairsUnique(ptr noundef %0, i32 noundef %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.zlentry, align 8            ; 5 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i64, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 0, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !16   ; 2 uses
  %.not.i = icmp eq i16 %i.e, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i16 %i.e to i32
  br label %ziplistLen.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !9
  %i.i = zext i32 %i.h to i64
  %i.j = load i8, ptr %i.g, align 2, !tbaa !13
  %.not1517.i = icmp eq i8 %i.j, -1
  br i1 %.not1517.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.d

bb.d:                                             ; preds = %zipRawEntryLengthSafe.exit.i, %.lr.ph.i
  %.019.i = phi i32 [ 0, %.lr.ph.i ], [ %i.s, %zipRawEntryLengthSafe.exit.i ]
  %.01318.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.r, %zipRawEntryLengthSafe.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.m = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.i, ptr noundef nonnull %.01318.i, ptr noundef %4, i32 noundef 0)
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %bb.e, label %zipRawEntryLengthSafe.exit.i, !prof !28

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 693) #17
  tail call void @abort() #18
  unreachable

zipRawEntryLengthSafe.exit.i:                     ; preds = %bb.d
  %i.n = load i32, ptr %i.k, align 8, !tbaa !26
  %i.o = load i32, ptr %i.l, align 4, !tbaa !25
  %i.p = add i32 %i.o, %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.01318.i, i64 %i.q ; 2 uses
  %i.s = add i32 %.019.i, 1                       ; 4 uses
  %i.t = load i8, ptr %i.r, align 1, !tbaa !13
  %.not15.i = icmp eq i8 %i.t, -1
  br i1 %.not15.i, label %._crit_edge.i, label %bb.d, !llvm.loop !40

._crit_edge.i:                                    ; preds = %zipRawEntryLengthSafe.exit.i
  %i.u = icmp ult i32 %i.s, 65535
  br i1 %i.u, label %._crit_edge.thread.i, label %ziplistLen.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.c
  %.0.lcssa21.i = phi i32 [ %i.s, %._crit_edge.i ], [ 0, %bb.c ] ; 2 uses
  %i.v = trunc nuw i32 %.0.lcssa21.i to i16
  store i16 %i.v, ptr %i.d, align 4, !tbaa !16
  br label %ziplistLen.exit

ziplistLen.exit:                                  ; preds = %bb.b, %._crit_edge.i, %._crit_edge.thread.i
  %.1.i = phi i32 [ %i.f, %bb.b ], [ %.0.lcssa21.i, %._crit_edge.thread.i ], [ %i.s, %._crit_edge.i ]
  %i.w = lshr i32 %.1.i, 1                        ; 3 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.w) ; 5 uses
  %i.x = tail call ptr @ziplistIndex(ptr noundef nonnull %0, i32 noundef 0) ; 3 uses
  %i.y = icmp ne i32 %spec.select, 0
  %i.z = icmp ne ptr %i.x, null
  %i.aa = and i1 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ziplistLen.exit
  %.not45 = icmp eq ptr %3, null
  br i1 %.not45, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.j
  %.03254.us = phi ptr [ %i.av, %bb.j ], [ %i.x, %.lr.ph ] ; 3 uses
  %.03353.us = phi i32 [ %.134.us, %bb.j ], [ %spec.select, %.lr.ph ] ; 3 uses
  %.03552.us = phi i32 [ %.136.us, %bb.j ], [ 0, %.lr.ph ] ; 3 uses
  %.03751.us = phi i32 [ %i.aw, %bb.j ], [ 0, %.lr.ph ] ; 2 uses
  %i.ab = call i32 @rand() #17
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fdiv double %i.ac, f0x41DFFFFFFFC00000
  %i.ae = uitofp i32 %.03353.us to double
  %i.af = sub i32 %i.w, %.03751.us
  %i.ag = uitofp i32 %i.af to double
  %i.ah = fdiv double %i.ae, %i.ag
  %i.ai = fcmp ugt double %i.ad, %i.ah
  br i1 %i.ai, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.aj = call i32 @ziplistGet(ptr noundef nonnull %.03254.us, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not43.us = icmp eq i32 %i.aj, 0
  br i1 %.not43.us, label %.split.us, label %bb.g, !prof !28

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.al = load i32, ptr %i.b, align 4, !tbaa !9
  %i.am = load i64, ptr %i.c, align 8, !tbaa !14
  %i.an = zext nneg i32 %.03552.us to i64
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.an ; 3 uses
  store ptr %i.ak, ptr %i.ao, align 8, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.al, ptr %i.ap, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %i.am, ptr %i.aq, align 8, !tbaa !53
  %i.ar = call ptr @ziplistNext(ptr noundef nonnull %0, ptr noundef nonnull %.03254.us) ; 2 uses
  %.not44.us = icmp eq ptr %i.ar, null
  br i1 %.not44.us, label %.split56.us, label %bb.h, !prof !28

bb.h:                                             ; preds = %bb.g
  %i.as = add i32 %.03353.us, -1
  %i.at = add nuw nsw i32 %.03552.us, 1
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.us
  %i.au = call ptr @ziplistNext(ptr noundef nonnull %0, ptr noundef nonnull %.03254.us) ; 2 uses
  %.not.us = icmp eq ptr %i.au, null
  br i1 %.not.us, label %.split58.us, label %bb.j, !prof !28

bb.j:                                             ; preds = %bb.i, %bb.h
  %.136.us = phi i32 [ %i.at, %bb.h ], [ %.03552.us, %bb.i ] ; 3 uses
  %.134.us = phi i32 [ %i.as, %bb.h ], [ %.03353.us, %bb.i ]
  %.1.us = phi ptr [ %i.ar, %bb.h ], [ %i.au, %bb.i ]
  %i.av = call ptr @ziplistNext(ptr noundef nonnull %0, ptr noundef nonnull %.1.us) ; 2 uses
  %i.aw = add i32 %.03751.us, 1
  %i.ax = icmp ult i32 %.136.us, %spec.select
  %i.ay = icmp ne ptr %i.av, null
  %i.az = and i1 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !56

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.q
  %.03254 = phi ptr [ %i.cb, %bb.q ], [ %i.x, %.lr.ph ] ; 3 uses
  %.03353 = phi i32 [ %.134, %bb.q ], [ %spec.select, %.lr.ph ] ; 3 uses
  %.03552 = phi i32 [ %.136, %bb.q ], [ 0, %.lr.ph ] ; 3 uses
  %.03751 = phi i32 [ %i.cc, %bb.q ], [ 0, %.lr.ph ] ; 2 uses
  %i.ba = call i32 @rand() #17
  %i.bb = sitofp i32 %i.ba to double
  %i.bc = fdiv double %i.bb, f0x41DFFFFFFFC00000
  %i.bd = uitofp i32 %.03353 to double
  %i.be = sub i32 %i.w, %.03751
  %i.bf = uitofp i32 %i.be to double
  %i.bg = fdiv double %i.bd, %i.bf
  %i.bh = fcmp ugt double %i.bc, %i.bg
  br i1 %i.bh, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split
  %i.bi = call i32 @ziplistGet(ptr noundef nonnull %.03254, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not43 = icmp eq i32 %i.bi, 0
  br i1 %.not43, label %.split.us, label %bb.l, !prof !28

.split.us:                                        ; preds = %bb.k, %bb.f
  call void @_serverAssert(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 1668) #17
  call void @abort() #18
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.bk = load i32, ptr %i.b, align 4, !tbaa !9
  %i.bl = load i64, ptr %i.c, align 8, !tbaa !14
  %i.bm = zext nneg i32 %.03552 to i64            ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.bm ; 3 uses
  store ptr %i.bj, ptr %i.bn, align 8, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %i.bk, ptr %i.bo, align 8, !tbaa !52
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %i.bl, ptr %i.bp, align 8, !tbaa !53
  %i.bq = call ptr @ziplistNext(ptr noundef nonnull %0, ptr noundef nonnull %.03254) ; 3 uses
  %.not44 = icmp eq ptr %i.bq, null
  br i1 %.not44, label %.split56.us, label %bb.m, !prof !28

.split56.us:                                      ; preds = %bb.l, %bb.g
  call void @_serverAssert(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 1671) #17
  call void @abort() #18
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.br = call i32 @ziplistGet(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not46 = icmp eq i32 %i.br, 0
  br i1 %.not46, label %bb.n, label %bb.o, !prof !28

bb.n:                                             ; preds = %bb.m
  call void @_serverAssert(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 1673) #17
  call void @abort() #18
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.bt = load i32, ptr %i.b, align 4, !tbaa !9
  %i.bu = load i64, ptr %i.c, align 8, !tbaa !14
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.bm ; 3 uses
  store ptr %i.bs, ptr %i.bv, align 8, !tbaa !50
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 %i.bt, ptr %i.bw, align 8, !tbaa !52
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 %i.bu, ptr %i.bx, align 8, !tbaa !53
  %i.by = add i32 %.03353, -1
  %i.bz = add nuw nsw i32 %.03552, 1
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.split
  %i.ca = call ptr @ziplistNext(ptr noundef nonnull %0, ptr noundef nonnull %.03254) ; 2 uses
  %.not = icmp eq ptr %i.ca, null
  br i1 %.not, label %.split58.us, label %bb.q, !prof !28

.split58.us:                                      ; preds = %bb.p, %bb.i
  call void @_serverAssert(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 1680) #17
  call void @abort() #18
  unreachable

bb.q:                                             ; preds = %bb.p, %bb.o
  %.136 = phi i32 [ %i.bz, %bb.o ], [ %.03552, %bb.p ] ; 3 uses
  %.134 = phi i32 [ %i.by, %bb.o ], [ %.03353, %bb.p ]
  %.1 = phi ptr [ %i.bq, %bb.o ], [ %i.ca, %bb.p ]
  %i.cb = call ptr @ziplistNext(ptr noundef nonnull %0, ptr noundef nonnull %.1) ; 2 uses
  %i.cc = add i32 %.03751, 1
  %i.cd = icmp ult i32 %.136, %spec.select
  %i.ce = icmp ne ptr %i.cb, null
  %i.cf = and i1 %i.cd, %i.ce
  br i1 %i.cf, label %.lr.ph.split, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %bb.q, %bb.j, %ziplistLen.exit
  %.035.lcssa = phi i32 [ 0, %ziplistLen.exit ], [ %.136.us, %bb.j ], [ %.136, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.035.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.uadd.sat.i16(i16, i16) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
