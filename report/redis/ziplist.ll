inline.NumInlined: 61
inline.NumDeleted: 7
begin_hunk_0_@__ziplistDelete:bb.a
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
  %or.cond.not = select i1 %i.bb, i1 true, i1 %i.bc ; 2 uses
  %spec.select = select i1 %or.cond.not, i32 %i.ba, i32 0 ; 3 uses
  %i.bd = ptrtoint ptr %1 to i64
  %i.be = ptrtoint ptr %0 to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 4 uses
  %i.bg = add nuw nsw i64 %i.au, %i.d
  %i.bh = sext i32 %spec.select to i64            ; 3 uses
  %i.bi = add nsw i64 %i.bg, %i.bh                ; 5 uses
  %i.bj = icmp ult i64 %i.bi, 4294967295
  br i1 %i.bj, label %ziplistResize.exit, label %bb.t, !prof !18

bb.t:                                             ; preds = %bb.s
  call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 723) #17
  call void @abort() #18
  unreachable

ziplistResize.exit:                               ; preds = %bb.s
  %i.bk = call ptr @zrealloc(ptr noundef nonnull %0, i64 noundef %i.bi) #20 ; 8 uses
  %i.bl = trunc nuw i64 %i.bi to i32
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !9
  %i.bm = getelementptr i8, ptr %i.bk, i64 %i.bi
  %i.bn = getelementptr i8, ptr %i.bm, i64 -1
  store i8 -1, ptr %i.bn, align 1, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bf ; 5 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !13
  %.not100 = icmp eq i8 %i.bp, -1
  br i1 %.not100, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %ziplistResize.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.au ; 8 uses
  %i.br = sub nsw i64 0, %i.bh
  %i.bs = getelementptr inbounds i8, ptr %i.bo, i64 %i.br
  %i.bt = xor i64 %i.bf, -1
  %i.bu = add i64 %i.d, %i.bt
  %i.bv = add i64 %i.bu, %i.bh
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull align 1 %i.bs, i64 %i.bv, i1 false)
  %i.bw = trunc i64 %i.au to i32                  ; 4 uses
  br i1 %or.cond.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 -2, ptr %i.bq, align 1, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i32 %i.bw, ptr %i.bx, align 1
  br label %zipStorePrevEntryLength.exit

bb.w:                                             ; preds = %bb.u
  %i.by = icmp ult i32 %i.bw, 254
  br i1 %i.by, label %bb.x, label %zipStorePrevEntryLengthLarge.exit.i

bb.x:                                             ; preds = %bb.w
  %i.bz = trunc i64 %i.au to i8
  store i8 %i.bz, ptr %i.bq, align 1, !tbaa !13
  br label %zipStorePrevEntryLength.exit

zipStorePrevEntryLengthLarge.exit.i:              ; preds = %bb.w
  store i8 -2, ptr %i.bq, align 1, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i32 %i.bw, ptr %i.ca, align 1
  br label %zipStorePrevEntryLength.exit

zipStorePrevEntryLength.exit:                     ; preds = %zipStorePrevEntryLengthLarge.exit.i, %bb.x, %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !9
  %i.cd = add i32 %i.cc, %i.bw
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !9
  %i.ce = call fastcc i32 @zipEntrySafe(ptr noundef nonnull %i.bk, i64 noundef %i.bi, ptr noundef nonnull %i.bq, ptr noundef %5, i32 noundef 1)
  %.not104 = icmp eq i32 %i.ce, 0
  br i1 %.not104, label %bb.y, label %bb.z, !prof !28

bb.y:                                             ; preds = %zipStorePrevEntryLength.exit
  call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 994) #17
  call void @abort() #18
  unreachable

bb.z:                                             ; preds = %zipStorePrevEntryLength.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !26
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !25
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ch
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
  %.not105 = icmp eq i8 %i.cn, -1
  br i1 %.not105, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = load i32, ptr %i.cb, align 4, !tbaa !9
  %i.cp = add i32 %i.co, %spec.select
  store i32 %i.cp, ptr %i.cb, align 4, !tbaa !9
  br label %bb.ac

bb.ab:                                            ; preds = %ziplistResize.exit
  %i.cq = trunc i64 %i.bf to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !9
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.aa, %bb.ab
  %.not106 = icmp eq i32 %spec.select, 0
  br i1 %.not106, label %.thread171, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.au
  %i.ct = call ptr @__ziplistCascadeUpdate(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.cs) ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.bf
  %i.cv = icmp eq ptr %i.ct, null
  br i1 %i.cv, label %zipStorePrevEntryLength.exit119, label %.thread171

.thread171:                                       ; preds = %bb.ac, %bb.ad
  %.088177 = phi ptr [ %i.ct, %bb.ad ], [ %i.bk, %bb.ac ] ; 2 uses
  %.092175 = phi ptr [ %i.cu, %bb.ad ], [ %i.bo, %bb.ac ] ; 5 uses
  br i1 %i.at, label %bb.ae, label %zipStorePrevEntryLengthLarge.exit.i117

bb.ae:                                            ; preds = %.thread171
  %i.cw = trunc nuw i32 %.1 to i8
  store i8 %i.cw, ptr %.092175, align 1, !tbaa !13
  br label %zipStorePrevEntryLength.exit119

zipStorePrevEntryLengthLarge.exit.i117:           ; preds = %.thread171
  store i8 -2, ptr %.092175, align 1, !tbaa !13
  %i.cx = getelementptr inbounds nuw i8, ptr %.092175, i64 1
  store i32 %.1, ptr %i.cx, align 1
  br label %zipStorePrevEntryLength.exit119

zipStorePrevEntryLength.exit119:                  ; preds = %bb.ad, %bb.ae, %zipStorePrevEntryLengthLarge.exit.i117
  %.088176 = phi ptr [ %.088177, %zipStorePrevEntryLengthLarge.exit.i117 ], [ %.088177, %bb.ae ], [ null, %bb.ad ] ; 2 uses
  %.092174 = phi ptr [ %.092175, %zipStorePrevEntryLengthLarge.exit.i117 ], [ %.092175, %bb.ae ], [ null, %bb.ad ]
  %.0.i118 = phi i32 [ 5, %zipStorePrevEntryLengthLarge.exit.i117 ], [ 1, %bb.ae ], [ %i.as, %bb.ad ]
  %i.cy = zext nneg i32 %.0.i118 to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.092174, i64 %i.cy ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br i1 %.not.i113162, label %bb.al, label %bb.af

bb.af:                                            ; preds = %zipStorePrevEntryLength.exit119
  %i.da = icmp ult i32 %3, 64
  br i1 %i.da, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.db = trunc nuw nsw i32 %3 to i8
  store i8 %i.db, ptr %i.a, align 1, !tbaa !13
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.dc = icmp ult i32 %3, 16384
  br i1 %i.dc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dd = lshr i32 %3, 8
  %i.de = trunc nuw nsw i32 %i.dd to i8
  %i.df = or disjoint i8 %i.de, 64
  store i8 %i.df, ptr %i.a, align 1, !tbaa !13
  %i.dg = trunc i32 %3 to i8
  %.1..1..1..1..1..1..sroa_idx191 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.dg, ptr %.1..1..1..1..1..1..sroa_idx191, align 1, !tbaa !13
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  store i8 -128, ptr %i.a, align 1, !tbaa !13
  %i.dh = lshr i32 %3, 24
  %i.di = trunc nuw i32 %i.dh to i8
  %.1..1..1..1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.di, ptr %.1..1..1..1..1..1..sroa_idx, align 1, !tbaa !13
  %i.dj = lshr i32 %3, 16
  %i.dk = trunc i32 %i.dj to i8
  %.2..2..2..2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.dk, ptr %.2..2..2..2..2..2..sroa_idx, align 1, !tbaa !13
  %i.dl = lshr i32 %3, 8
  %i.dm = trunc i32 %i.dl to i8
  %.3..3..3..3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.dm, ptr %.3..3..3..3..3..3..sroa_idx, align 1, !tbaa !13
  %i.dn = trunc i32 %3 to i8
  %.4..4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.dn, ptr %.4..4..4..4..4..4..sroa_idx, align 1, !tbaa !13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ag, %bb.ai, %bb.aj
  %.0.i121.ph = phi i64 [ 5, %bb.aj ], [ 2, %bb.ai ], [ 1, %bb.ag ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cz, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %.0.i121.ph, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
begin_hunk_1_@ziplistGet:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  store ptr %i.aa, ptr %1, align 8, !tbaa !36
  br label %bb.ac

bb.s:                                             ; preds = %zipEntry.exit
  %.not16 = icmp eq ptr %3, null
  br i1 %.not16, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ab = zext nneg i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab ; 5 uses
  switch i8 %spec.select.i, label %bb.z [
    i8 -2, label %bb.u
    i8 -64, label %bb.v
    i8 -48, label %bb.w
    i8 -16, label %bb.x
    i8 -32, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = sext i8 %i.ad to i64
  br label %zipLoadInteger.exit

bb.v:                                             ; preds = %bb.t
  %.0.copyload7.i = load i16, ptr %i.ac, align 1
  %i.af = sext i16 %.0.copyload7.i to i64
  br label %zipLoadInteger.exit

bb.w:                                             ; preds = %bb.t
  %.0.copyload4.i = load i32, ptr %i.ac, align 1
  %i.ag = sext i32 %.0.copyload4.i to i64
  br label %zipLoadInteger.exit

bb.x:                                             ; preds = %bb.t
  %.1.copyload.i = load i24, ptr %i.ac, align 1
  %i.ah = sext i24 %.1.copyload.i to i64
  br label %zipLoadInteger.exit

bb.y:                                             ; preds = %bb.t
  %.0.copyload.i = load i64, ptr %i.ac, align 1
  br label %zipLoadInteger.exit

bb.z:                                             ; preds = %bb.t
  %i.ai = add nsw i8 %spec.select.i, 15
  %or.cond.i17 = icmp ult i8 %i.ai, 14
  br i1 %or.cond.i17, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.aj = and i8 %spec.select.i, 15
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = add nsw i64 %i.ak, -1
  br label %zipLoadInteger.exit

bb.ab:                                            ; preds = %bb.z
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 604) #17
  tail call void @abort() #18
  unreachable

zipLoadInteger.exit:                              ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.aa
  %.0.i = phi i64 [ %i.ae, %bb.u ], [ %i.af, %bb.v ], [ %i.ag, %bb.w ], [ %i.ah, %bb.x ], [ %.0.copyload.i, %bb.y ], [ %i.al, %bb.aa ]
  store i64 %.0.i, ptr %3, align 8, !tbaa !14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.r, %bb.q, %zipLoadInteger.exit, %bb.s, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.s ], [ 1, %zipLoadInteger.exit ], [ 1, %bb.q ], [ 1, %bb.r ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ziplistInsert(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @__ziplistInsert(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ziplistDelete(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = tail call ptr @__ziplistDelete(ptr noundef %0, ptr noundef %i.a, i32 noundef 1) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  store ptr %i.f, ptr %1, align 8, !tbaa !36
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ziplistDeleteRange(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @ziplistIndex(ptr noundef %0, i32 noundef %1) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__ziplistDelete(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ziplistReplace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 12 uses
  %i.b = alloca i64, align 8                      ; 10 uses
  %i.c = load i8, ptr %1, align 1, !tbaa !13
  %i.d = icmp ult i8 %i.c, -2
  %.81 = select i1 %i.d, i64 1, i64 5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.81 ; 7 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13    ; 6 uses
  %i.g = icmp ult i8 %i.f, -64
  br i1 %i.g, label %bb.b, label %bb.f, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i8 %i.f, 6
  switch i8 %i.h, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = and i8 %i.f, 63
  %i.j = zext nneg i8 %i.i to i32
  br label %zipEntry.exit

bb.d:                                             ; preds = %bb.b
  %i.k = and i8 %i.f, 63
  %i.l = zext nneg i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p
  br label %zipEntry.exit

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.s = load i32, ptr %i.r, align 1
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.s)
  br label %zipEntry.exit

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.a
  switch i8 %i.f, label %bb.k [
    i8 -2, label %zipEntry.exit
    i8 -64, label %bb.g
    i8 -16, label %bb.h
    i8 -48, label %bb.i
    i8 -32, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  br label %zipEntry.exit

bb.h:                                             ; preds = %bb.f
  br label %zipEntry.exit

bb.i:                                             ; preds = %bb.f
  br label %zipEntry.exit

bb.j:                                             ; preds = %bb.f
  br label %zipEntry.exit

bb.k:                                             ; preds = %bb.f
  %i.u = add nsw i8 %i.f, 1
  %or.cond.i = icmp ult i8 %i.u, -14
  br i1 %or.cond.i, label %bb.l, label %zipEntry.exit, !prof !24

bb.l:                                             ; preds = %bb.k
  tail call void @_serverAssert(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 619) #17
  tail call void @abort() #18
  unreachable

zipEntry.exit:                                    ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.5.1 = phi i32 [ 1, %bb.k ], [ 1, %bb.c ], [ 2, %bb.d ], [ 5, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ]
  %.sroa.12.0 = phi i32 [ 0, %bb.k ], [ %i.j, %bb.c ], [ %i.q, %bb.d ], [ %i.t, %bb.e ], [ 1, %bb.f ], [ 2, %bb.g ], [ 3, %bb.h ], [ 4, %bb.i ], [ 8, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.v = add i32 %3, -32
  %or.cond.i15 = icmp ult i32 %i.v, -31
  br i1 %or.cond.i15, label %bb.t, label %bb.m

bb.m:                                             ; preds = %zipEntry.exit
  %i.w = zext nneg i32 %3 to i64
  %i.x = call i32 @string2ll(ptr noundef %2, i64 noundef %i.w, ptr noundef nonnull %i.b) #17
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %.thread72, label %bb.n

.thread72:                                        ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %zipStoreEntryEncoding.exit

bb.n:                                             ; preds = %bb.m
  %i.y = load i64, ptr %i.b, align 8, !tbaa !14   ; 11 uses
  %or.cond3.i = icmp ult i64 %i.y, 13
  br i1 %or.cond3.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = add i64 %i.y, 128
  %or.cond5.i = icmp ult i64 %i.z, 256
  br i1 %or.cond5.i, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %zipStoreEntryEncoding.exit

bb.p:                                             ; preds = %bb.o
  %i.aa = add i64 %i.y, 32768
  %or.cond7.i = icmp ult i64 %i.aa, 65536
  br i1 %or.cond7.i, label %.thread48, label %bb.q

.thread48:                                        ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %zipStoreEntryEncoding.exit

bb.q:                                             ; preds = %bb.p
  %i.ab = add i64 %i.y, 8388608
  %or.cond9.i = icmp ult i64 %i.ab, 16777216
  br i1 %or.cond9.i, label %.thread51, label %bb.r

.thread51:                                        ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %zipStoreEntryEncoding.exit

bb.r:                                             ; preds = %bb.q
  %i.ac = add i64 %i.y, 2147483648
  %or.cond11.i = icmp ult i64 %i.ac, 4294967296   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %. = select i1 %or.cond11.i, i32 4, i32 8
  %.79 = select i1 %or.cond11.i, i8 -48, i8 -32
  br label %zipStoreEntryEncoding.exit

bb.s:                                             ; preds = %bb.n
  %i.ad = trunc nuw nsw i64 %i.y to i8
  %i.ae = add nuw nsw i8 %i.ad, -15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %zipStoreEntryEncoding.exit

bb.t:                                             ; preds = %zipEntry.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.af = icmp ult i32 %3, 64
  br i1 %i.af, label %zipStoreEntryEncoding.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = icmp ult i32 %3, 16384
  %spec.select = select i1 %i.ag, i32 2, i32 5
  br label %zipStoreEntryEncoding.exit

zipStoreEntryEncoding.exit:                       ; preds = %bb.u, %bb.r, %.thread51, %.thread48, %bb.s, %.thread, %bb.t, %.thread72
  %.not.i2070 = phi i1 [ false, %bb.u ], [ true, %bb.s ], [ false, %bb.t ], [ false, %.thread72 ], [ true, %.thread48 ], [ true, %.thread51 ], [ true, %.thread ], [ true, %bb.r ]
  %.068 = phi i32 [ %3, %bb.u ], [ 0, %bb.s ], [ %3, %bb.t ], [ %3, %.thread72 ], [ 2, %.thread48 ], [ 3, %.thread51 ], [ 1, %.thread ], [ %., %bb.r ]
  %.0364266 = phi i8 [ 0, %bb.u ], [ %i.ae, %bb.s ], [ 0, %bb.t ], [ 0, %.thread72 ], [ -64, %.thread48 ], [ -16, %.thread51 ], [ -2, %.thread ], [ %.79, %bb.r ] ; 3 uses
  %.0354564 = phi i64 [ 123456789, %bb.u ], [ %i.y, %bb.s ], [ 123456789, %bb.t ], [ 123456789, %.thread72 ], [ %i.y, %.thread48 ], [ %i.y, %.thread51 ], [ %i.y, %.thread ], [ %i.y, %bb.r ] ; 5 uses
  %.025.i = phi i32 [ %spec.select, %bb.u ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %.thread72 ], [ 1, %.thread48 ], [ 1, %.thread51 ], [ 1, %.thread ], [ 1, %bb.r ]
  %i.ah = add i32 %.025.i, %.068
  %i.ai = add i32 %.sroa.12.0, %.sroa.5.1
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.v, label %bb.ak

bb.v:                                             ; preds = %zipStoreEntryEncoding.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br i1 %.not.i2070, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ak = icmp ult i32 %3, 64
  br i1 %i.ak, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.al = trunc nuw nsw i32 %3 to i8
  store i8 %i.al, ptr %i.a, align 1, !tbaa !13
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.am = icmp ult i32 %3, 16384
  br i1 %i.am, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.an = lshr i32 %3, 8
  %i.ao = trunc nuw nsw i32 %i.an to i8
  %i.ap = or disjoint i8 %i.ao, 64
  store i8 %i.ap, ptr %i.a, align 1, !tbaa !13
  %i.aq = trunc i32 %3 to i8
  %.1..1..1..1..1..1..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.aq, ptr %.1..1..1..1..1..1..sroa_idx85, align 1, !tbaa !13
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store i8 -128, ptr %i.a, align 1, !tbaa !13
  %i.ar = lshr i32 %3, 24
  %i.as = trunc nuw i32 %i.ar to i8
  %.1..1..1..1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.as, ptr %.1..1..1..1..1..1..sroa_idx, align 1, !tbaa !13
  %i.at = lshr i32 %3, 16
  %i.au = trunc i32 %i.at to i8
  %.2..2..2..2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.au, ptr %.2..2..2..2..2..2..sroa_idx, align 1, !tbaa !13
  %i.av = lshr i32 %3, 8
  %i.aw = trunc i32 %i.av to i8
  %.3..3..3..3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.aw, ptr %.3..3..3..3..3..3..sroa_idx, align 1, !tbaa !13
  %i.ax = trunc i32 %3 to i8
  %.4..4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.ax, ptr %.4..4..4..4..4..4..sroa_idx, align 1, !tbaa !13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.z, %bb.aa
  %.0.i22.ph = phi i64 [ 5, %bb.aa ], [ 2, %bb.z ], [ 1, %bb.x ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %.0.i22.ph, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0.i22.ph
  %i.az = zext i32 %3 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr align 1 %2, i64 %i.az, i1 false)
  br label %zipSaveInteger.exit

bb.ac:                                            ; preds = %bb.v
  store i8 %.0364266, ptr %i.e, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 5 uses
  switch i8 %.0364266, label %bb.ai [
    i8 -2, label %bb.ad
    i8 -64, label %bb.ae
    i8 -16, label %bb.af
    i8 -48, label %bb.ag
    i8 -32, label %bb.ah
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.bb = trunc i64 %.0354564 to i8
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !13
  br label %zipSaveInteger.exit

bb.ae:                                            ; preds = %bb.ac
  %i.bc = trunc i64 %.0354564 to i16
  store i16 %i.bc, ptr %i.ba, align 1
  br label %zipSaveInteger.exit

bb.af:                                            ; preds = %bb.ac
  %.1.extract.trunc.i = trunc i64 %.0354564 to i24
  store i24 %.1.extract.trunc.i, ptr %i.ba, align 1
  br label %zipSaveInteger.exit

bb.ag:                                            ; preds = %bb.ac
  %i.bd = trunc i64 %.0354564 to i32
  store i32 %i.bd, ptr %i.ba, align 1
  br label %zipSaveInteger.exit

bb.ah:                                            ; preds = %bb.ac
  store i64 %.0354564, ptr %i.ba, align 1
  br label %zipSaveInteger.exit

bb.ai:                                            ; preds = %bb.ac
  %i.be = add nsw i8 %.0364266, 15
  %or.cond.i25 = icmp ult i8 %i.be, 14
  br i1 %or.cond.i25, label %zipSaveInteger.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 573) #17
  call void @abort() #18
  unreachable

bb.ak:                                            ; preds = %zipStoreEntryEncoding.exit
  %i.bf = ptrtoint ptr %1 to i64
  %i.bg = ptrtoint ptr %0 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = call noundef ptr @__ziplistDelete(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  %i.bk = call noundef ptr @__ziplistInsert(ptr noundef %i.bi, ptr noundef %i.bj, ptr noundef %2, i32 noundef %3)
  br label %zipSaveInteger.exit

zipSaveInteger.exit:                              ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.ak
  %.013 = phi ptr [ %0, %bb.ab ], [ %i.bk, %bb.ak ], [ %0, %bb.ad ], [ %0, %bb.ae ], [ %0, %bb.af ], [ %0, %bb.ag ], [ %0, %bb.ah ], [ %0, %bb.ai ]
  ret ptr %.013
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ziplistCompare(ptr noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !13      ; 2 uses
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not26 = icmp eq i8 %i.b, -2
  %..i = select i1 %.not26, i32 5, i32 1          ; 2 uses
  %i.d = zext nneg i32 %..i to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13    ; 8 uses
  %i.g = icmp ult i8 %i.f, -64                    ; 2 uses
  %i.h = and i8 %i.f, -64
  %spec.select.i = select i1 %i.g, i8 %i.h, i8 %i.f ; 4 uses
  br i1 %i.g, label %bb.c, label %bb.g, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i8 %i.f, 6
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = and i8 %i.f, 63
  %i.k = zext nneg i8 %i.j to i32
  br label %zipEntry.exit

bb.e:                                             ; preds = %bb.c
  %i.l = and i8 %i.f, 63
  %i.m = zext nneg i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q
  br label %zipEntry.exit

bb.f:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.t = load i32, ptr %i.s, align 1
  %i.u = tail call i32 @llvm.bswap.i32(i32 %i.t)
  br label %zipEntry.exit

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  switch i8 %i.f, label %bb.l [
    i8 -2, label %zipEntry.exit
    i8 -64, label %bb.h
    i8 -16, label %bb.i
    i8 -48, label %bb.j
    i8 -32, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  br label %zipEntry.exit

bb.i:                                             ; preds = %bb.g
  br label %zipEntry.exit

bb.j:                                             ; preds = %bb.g
  br label %zipEntry.exit

bb.k:                                             ; preds = %bb.g
  br label %zipEntry.exit

bb.l:                                             ; preds = %bb.g
  %i.v = add nsw i8 %i.f, 1
  %or.cond.i = icmp ult i8 %i.v, -14
  br i1 %or.cond.i, label %bb.m, label %zipEntry.exit, !prof !24

bb.m:                                             ; preds = %bb.l
  tail call void @_serverAssert(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 619) #17
end_hunk_1
