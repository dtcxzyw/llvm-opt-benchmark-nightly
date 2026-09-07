Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/ziplist?download=true
inline.NumInlined: 60
inline.NumDeleted: 6
begin_hunk_0_@__ziplistInsert:bb.a
  store i8 -2, ptr %i.bv, align 1, !tbaa !14
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i32 %i.cb, ptr %i.cc, align 1
  br label %zipStorePrevEntryLength.exit

bb.z:                                             ; preds = %bb.x
  %i.cd = icmp ult i32 %i.cb, 254
  br i1 %i.cd, label %bb.aa, label %zipStorePrevEntryLengthLarge.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.ce = trunc i64 %i.az to i8
  store i8 %i.ce, ptr %i.bv, align 1, !tbaa !14
  br label %zipStorePrevEntryLength.exit

zipStorePrevEntryLengthLarge.exit.i:              ; preds = %bb.z
  store i8 -2, ptr %i.bv, align 1, !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i32 %i.cb, ptr %i.cf, align 1
  br label %zipStorePrevEntryLength.exit

zipStorePrevEntryLength.exit:                     ; preds = %zipStorePrevEntryLengthLarge.exit.i, %bb.aa, %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 4 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !13
  %i.ci = add i32 %i.ch, %i.cb
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !13
  %i.cj = call fastcc i32 @zipEntrySafe(ptr noundef nonnull %i.bp, i64 noundef %i.bn, ptr noundef nonnull %i.bv, ptr noundef %5, i32 noundef 1)
  %.not104 = icmp eq i32 %i.cj, 0
  br i1 %.not104, label %bb.ab, label %bb.ac, !prof !25

bb.ab:                                            ; preds = %zipStorePrevEntryLength.exit
  call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 994) #18
  call void @abort() #19
  unreachable

bb.ac:                                            ; preds = %zipStorePrevEntryLength.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !23
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !24
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cm
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cp
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !14
  %.not105 = icmp eq i8 %i.cs, -1
  br i1 %.not105, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = load i32, ptr %i.cg, align 4, !tbaa !13
  %i.cu = add i32 %i.ct, %spec.select
  store i32 %i.cu, ptr %i.cg, align 4, !tbaa !13
  br label %bb.af

bb.ae:                                            ; preds = %ziplistResize.exit
  %i.cv = trunc i64 %i.bk to i32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !13
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae
  %.not106 = icmp eq i32 %spec.select, 0
  br i1 %.not106, label %.thread155, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.az
  %i.cy = call ptr @__ziplistCascadeUpdate(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.cx) ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.bk
  %i.da = icmp eq ptr %i.cy, null
  br i1 %i.da, label %zipStorePrevEntryLength.exit119, label %.thread155

.thread155:                                       ; preds = %bb.af, %bb.ag
  %.092161 = phi ptr [ %i.cy, %bb.ag ], [ %i.bp, %bb.af ] ; 2 uses
  %.093159 = phi ptr [ %i.cz, %bb.ag ], [ %i.bt, %bb.af ] ; 5 uses
  br i1 %i.ay, label %bb.ah, label %zipStorePrevEntryLengthLarge.exit.i117

bb.ah:                                            ; preds = %.thread155
  %i.db = trunc nuw i32 %.1 to i8
  store i8 %i.db, ptr %.093159, align 1, !tbaa !14
  br label %zipStorePrevEntryLength.exit119

zipStorePrevEntryLengthLarge.exit.i117:           ; preds = %.thread155
  store i8 -2, ptr %.093159, align 1, !tbaa !14
  %i.dc = getelementptr inbounds nuw i8, ptr %.093159, i64 1
  store i32 %.1, ptr %i.dc, align 1
  br label %zipStorePrevEntryLength.exit119

zipStorePrevEntryLength.exit119:                  ; preds = %bb.ag, %bb.ah, %zipStorePrevEntryLengthLarge.exit.i117
  %.092160 = phi ptr [ %.092161, %zipStorePrevEntryLengthLarge.exit.i117 ], [ %.092161, %bb.ah ], [ null, %bb.ag ] ; 2 uses
  %.093158 = phi ptr [ %.093159, %zipStorePrevEntryLengthLarge.exit.i117 ], [ %.093159, %bb.ah ], [ null, %bb.ag ]
  %.0.i118 = phi i32 [ 5, %zipStorePrevEntryLengthLarge.exit.i117 ], [ 1, %bb.ah ], [ %i.ax, %bb.ag ]
  %i.dd = zext nneg i32 %.0.i118 to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.093158, i64 %i.dd ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br i1 %.not.i113147, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %zipStorePrevEntryLength.exit119
  %i.df = icmp ult i32 %3, 64
  br i1 %i.df, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dg = trunc nuw nsw i32 %3 to i8
  store i8 %i.dg, ptr %i.a, align 1, !tbaa !14
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.dh = icmp ult i32 %3, 16384
  br i1 %i.dh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.di = lshr i32 %3, 8
  %i.dj = trunc nuw nsw i32 %i.di to i8
  %i.dk = or disjoint i8 %i.dj, 64
  store i8 %i.dk, ptr %i.a, align 1, !tbaa !14
  %i.dl = trunc i32 %3 to i8
  %.1..1..1..1..1..1..sroa_idx175 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.dl, ptr %.1..1..1..1..1..1..sroa_idx175, align 1, !tbaa !14
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  store i8 -128, ptr %i.a, align 1, !tbaa !14
  %i.dm = lshr i32 %3, 24
  %i.dn = trunc nuw i32 %i.dm to i8
  %.1..1..1..1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.dn, ptr %.1..1..1..1..1..1..sroa_idx, align 1, !tbaa !14
  %i.do = lshr i32 %3, 16
  %i.dp = trunc i32 %i.do to i8
  %.2..2..2..2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.dp, ptr %.2..2..2..2..2..2..sroa_idx, align 1, !tbaa !14
  %i.dq = lshr i32 %3, 8
  %i.dr = trunc i32 %i.dq to i8
  %.3..3..3..3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.dr, ptr %.3..3..3..3..3..3..sroa_idx, align 1, !tbaa !14
  %i.ds = trunc i32 %3 to i8
  %.4..4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.ds, ptr %.4..4..4..4..4..4..sroa_idx, align 1, !tbaa !14
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %bb.al, %bb.am
  %.0.i121.ph = phi i64 [ 5, %bb.am ], [ 2, %bb.al ], [ 1, %bb.aj ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.de, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %.0.i121.ph, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.de, i64 %.0.i121.ph
  %i.du = zext i32 %3 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dt, ptr align 1 %2, i64 %i.du, i1 false)
  br label %bb.ap

bb.ao:                                            ; preds = %zipStorePrevEntryLength.exit119
  store i8 %.0129135145, ptr %i.de, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  call void @zipSaveInteger(ptr noundef nonnull %i.dv, i64 noundef %.0137143, i8 noundef zeroext %.0129135145)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dw = getelementptr inbounds nuw i8, ptr %.092160, i64 8 ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !18 ; 2 uses
  %.not108 = icmp eq i16 %i.dx, -1
  br i1 %.not108, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dy = add nuw i16 %i.dx, 1
  store i16 %i.dy, ptr %i.dw, align 2, !tbaa !18
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret ptr %.092160
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ziplistMerge(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !33     ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !33     ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp eq ptr %i.b, %i.e
  %or.cond78 = or i1 %i.f, %i.g
  br i1 %or.cond78, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.b, align 4, !tbaa !13   ; 2 uses
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i16, ptr %i.j, align 4, !tbaa !18   ; 2 uses
  %i.l = load i32, ptr %i.e, align 4, !tbaa !13
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load i16, ptr %i.n, align 4, !tbaa !18   ; 2 uses
  %i.p = add nsw i64 %i.i, -11
  %i.q = add nsw i64 %i.p, %i.m                   ; 3 uses
  %i.r = icmp ult i64 %i.q, 4294967295
  br i1 %i.r, label %bb.f, label %bb.e, !prof !19

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1085) #18
  tail call void @abort() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not = icmp ult i16 %i.k, %i.o                 ; 2 uses
  %.75 = select i1 %.not, ptr %i.e, ptr %i.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !13
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !13
  %i.x = tail call ptr @zrealloc(ptr noundef nonnull %.75, i64 noundef %i.q) #21 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.i
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -1 ; 2 uses
  %i.aa = add nsw i64 %i.m, -10                   ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 2 %i.ab, i64 %i.aa, i1 false)
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.ac, i64 %i.aa, i1 false)
  %i.ad = add nsw i64 %i.i, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 4 %i.b, i64 %i.ad, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g
  %.86 = phi ptr [ %1, %bb.h ], [ %0, %bb.g ]
  %. = phi ptr [ %0, %bb.h ], [ %1, %bb.g ]       ; 2 uses
  %i.ae = trunc nuw i64 %i.q to i32
  store i32 %i.ae, ptr %i.x, align 4, !tbaa !13
  %2 = tail call i16 @llvm.uadd.sat.i16(i16 %i.k, i16 %i.o)
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i16 %2, ptr %i.af, align 4, !tbaa !18
  %i.ag = add i32 %i.h, -11
  %i.ah = add i32 %i.ag, %i.w
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.u
  %i.ak = tail call ptr @__ziplistCascadeUpdate(ptr noundef nonnull %i.x, ptr noundef nonnull %i.aj) ; 2 uses
  %i.al = load ptr, ptr %., align 8, !tbaa !33
  tail call void @zfree(ptr noundef %i.al) #18
  store ptr null, ptr %., align 8, !tbaa !33
  store ptr %i.ak, ptr %.86, align 8, !tbaa !33
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a, %bb.b, %bb.c
  %.068 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.c ], [ %i.ak, %.sink.split ]
  ret ptr %.068
}

declare void @zfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ziplistPush(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !13
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %i.b, %bb.b ], [ %i.f, %bb.c ]
  %i.h = tail call ptr @__ziplistInsert(ptr noundef %0, ptr noundef nonnull %i.g, ptr noundef %1, i32 noundef %2)
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ziplistIndex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.zlentry, align 8            ; 3 uses
  %3 = alloca %struct.zlentry, align 8            ; 5 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !13
  %i.b = zext i32 %i.a to i64                     ; 4 uses
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = xor i32 %1, -1                           ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = zext i32 %i.f to i64                     ; 6 uses
  %.ptr67 = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 3 uses
  %i.h = load i8, ptr %.ptr67, align 1, !tbaa !14 ; 2 uses
  switch i8 %i.h, label %bb.c [
    i8 -1, label %.critedge
    i8 -2, label %.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i64 %i.b, -1                     ; 2 uses
  %i.j = add nuw nsw i64 %i.g, 1
  %i.k = icmp slt i64 %i.j, %i.i
  br i1 %i.k, label %bb.e, label %bb.d, !prof !19

.thread:                                          ; preds = %bb.b
  %i.l = add nsw i64 %i.b, -1                     ; 2 uses
  %i.m = add nuw nsw i64 %i.g, 5
  %i.n = icmp slt i64 %i.m, %i.l
  br i1 %i.n, label %.thread70, label %bb.d, !prof !19

bb.d:                                             ; preds = %.thread, %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1163) #18
  tail call void @abort() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = zext i8 %i.h to i32
  br label %bb.f

.thread70:                                        ; preds = %.thread
  %i.p = getelementptr i8, ptr %.ptr67, i64 1
  %i.q = load i32, ptr %i.p, align 1
  br label %bb.f

bb.f:                                             ; preds = %.thread70, %bb.e
  %i.r = phi i64 [ %i.i, %bb.e ], [ %i.l, %.thread70 ]
  %.0 = phi i32 [ %i.o, %bb.e ], [ %i.q, %.thread70 ] ; 2 uses
  %.not6574 = icmp eq i32 %.0, 0
  br i1 %.not6574, label %.critedge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %.not6699 = icmp eq i32 %1, -1
  br i1 %.not6699, label %.critedge.loopexit, label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph.preheader
  %i.s = sub nuw nsw i32 -2, %1
  br label %bb.g

.lr.ph:                                           ; preds = %bb.l
  %i.t = add nsw i32 %i.u, -1
  %.not66 = icmp eq i32 %i.u, 0
  br i1 %.not66, label %.critedge.loopexit, label %bb.g, !llvm.loop !41

bb.g:                                             ; preds = %.lr.ph102, %.lr.ph
  %i.u = phi i32 [ %i.s, %.lr.ph102 ], [ %i.t, %.lr.ph ] ; 3 uses
  %.051.idx76101 = phi i64 [ %i.g, %.lr.ph102 ], [ %.051.add, %.lr.ph ]
  %.177100 = phi i32 [ %.0, %.lr.ph102 ], [ %.2, %.lr.ph ]
  %i.v = zext i32 %.177100 to i64
  %.051.add = sub nsw i64 %.051.idx76101, %i.v    ; 6 uses
  %.ptr = getelementptr inbounds i8, ptr %0, i64 %.051.add ; 2 uses
  %i.w = icmp sgt i64 %.051.add, 9
  %i.x = icmp slt i64 %.051.add, %i.r
  %i.y = and i1 %i.w, %i.x
  br i1 %i.y, label %bb.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 1167) #18
  tail call void @abort() #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = load i8, ptr %.ptr, align 1, !tbaa !14   ; 2 uses
  %i.aa = icmp ult i8 %i.z, -2
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = zext i8 %i.z to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %.ptr, i64 1
  %i.ad = load i32, ptr %i.ac, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2 = phi i32 [ %i.ab, %bb.j ], [ %i.ad, %bb.k ] ; 2 uses
  %.not65 = icmp eq i32 %.2, 0
  br i1 %.not65, label %..critedge.loopexit.loopexit_crit_edge, label %.lr.ph, !llvm.loop !41

bb.m:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.not93 = icmp eq i32 %1, 0
  br i1 %.not93, label %.critedge, label %.lr.ph95

bb.n:                                             ; preds = %zipRawEntryLengthSafe.exit
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %.critedge, label %.lr.ph95, !llvm.loop !42

.lr.ph95:                                         ; preds = %bb.m, %bb.n
  %.in = phi i32 [ %i.ai, %bb.n ], [ %1, %bb.m ]
  %.15294 = phi ptr [ %i.an, %bb.n ], [ %i.ae, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.ah = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.b, ptr noundef nonnull %.15294, ptr noundef %3, i32 noundef 0)
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.o, label %zipRawEntryLengthSafe.exit, !prof !25

bb.o:                                             ; preds = %.lr.ph95
  tail call void @_serverAssert(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 693) #18
  tail call void @abort() #19
  unreachable

zipRawEntryLengthSafe.exit:                       ; preds = %.lr.ph95
  %i.ai = add nsw i32 %.in, -1                    ; 3 uses
  %i.aj = load i32, ptr %i.af, align 8, !tbaa !23
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !24
  %i.al = add i32 %i.ak, %i.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.15294, i64 %i.am ; 4 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14
  %i.ap = icmp eq i8 %i.ao, -1
  br i1 %i.ap, label %zipRawEntryLengthSafe.exit..critedge.loopexit91_crit_edge, label %bb.n, !llvm.loop !42

..critedge.loopexit.loopexit_crit_edge:           ; preds = %bb.l
  br label %.critedge.loopexit, !llvm.loop !41

.critedge.loopexit:                               ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.loopexit.loopexit_crit_edge, %bb.f
  %.051.idx.lcssa = phi i64 [ %i.g, %bb.f ], [ %.051.add, %..critedge.loopexit.loopexit_crit_edge ], [ %i.g, %.lr.ph.preheader ], [ %.051.add, %.lr.ph ]
  %.256.ph = phi i32 [ %i.d, %bb.f ], [ %i.u, %..critedge.loopexit.loopexit_crit_edge ], [ -1, %.lr.ph.preheader ], [ -1, %.lr.ph ]
  %.051.ptr.le = getelementptr inbounds nuw i8, ptr %0, i64 %.051.idx.lcssa
  br label %.critedge

zipRawEntryLengthSafe.exit..critedge.loopexit91_crit_edge: ; preds = %zipRawEntryLengthSafe.exit
  br label %.critedge, !llvm.loop !42

.critedge:                                        ; preds = %bb.n, %bb.m, %zipRawEntryLengthSafe.exit..critedge.loopexit91_crit_edge, %.critedge.loopexit, %bb.b
  %.256 = phi i32 [ %i.d, %bb.b ], [ %.256.ph, %.critedge.loopexit ], [ %i.ai, %zipRawEntryLengthSafe.exit..critedge.loopexit91_crit_edge ], [ -1, %bb.m ], [ -1, %bb.n ]
  %.253 = phi ptr [ %.ptr67, %bb.b ], [ %.051.ptr.le, %.critedge.loopexit ], [ %i.an, %zipRawEntryLengthSafe.exit..critedge.loopexit91_crit_edge ], [ %i.ae, %bb.m ], [ %i.an, %bb.n ] ; 3 uses
  %i.aq = load i8, ptr %.253, align 1, !tbaa !14
  %i.ar = icmp eq i8 %i.aq, -1
  %i.as = icmp sgt i32 %.256, 0
  %or.cond = select i1 %i.ar, i1 true, i1 %i.as
end_hunk_0
begin_hunk_1_@ziplistRandomPairsUnique:bb.a
  tail call void @abort() #19
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %.379.ph = phi ptr [ null, %bb.j ], [ %i.bc, %bb.i ]
  %.374.ph = phi i32 [ %.071108, %bb.j ], [ %i.az, %bb.i ] ; 3 uses
  %.3.ph = phi i64 [ %i.bg, %bb.j ], [ %.069109, %bb.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.bh = zext nneg i32 %.032112 to i64           ; 2 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.bh ; 3 uses
  store ptr %.379.ph, ptr %i.bi, align 8, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 %.374.ph, ptr %i.bj, align 8, !tbaa !36
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 %.3.ph, ptr %i.bk, align 8, !tbaa !37
  %i.bl = load i32, ptr %0, align 4, !tbaa !13
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load i8, ptr %.035110, align 1, !tbaa !14
  %i.bo = icmp eq i8 %i.bn, -1
  br i1 %i.bo, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call fastcc void @zipEntry(ptr noundef nonnull %.035110, ptr noundef %10)
  %i.bp = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.bq = load i32, ptr %i.ac, align 4, !tbaa !24
  %i.br = add i32 %i.bq, %i.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.035110, i64 %i.bs ; 7 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !14
  %i.bv = icmp eq i8 %i.bu, -1
  br i1 %i.bv, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.bw = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.bm, ptr noundef nonnull %i.bt, ptr noundef %9, i32 noundef 1)
  %.not.i.i50 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i50, label %bb.o, label %bb.q, !prof !25

bb.o:                                             ; preds = %bb.n
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 707) #18
  tail call void @abort() #19
  unreachable

bb.p:                                             ; preds = %bb.l, %bb.m
  tail call void @_serverAssert(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 1671) #18
  tail call void @abort() #19
  unreachable

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br i1 %.not45, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !14
  %i.by = icmp eq i8 %i.bx, -1
  br i1 %i.by, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  call fastcc void @zipEntry(ptr noundef nonnull %i.bt, ptr noundef %8)
  %i.bz = load i8, ptr %i.ad, align 4, !tbaa !29  ; 2 uses
  %.not1517.i53 = icmp ugt i8 %i.bz, -65
  br i1 %.not1517.i53, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = load i32, ptr %i.ae, align 4, !tbaa !24
  %i.cb = load i32, ptr %i.af, align 8, !tbaa !23
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cc
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ce = load i32, ptr %i.af, align 8, !tbaa !23
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cf
  %i.ch = tail call i64 @zipLoadInteger(ptr noundef nonnull %i.cg, i8 noundef zeroext %i.bz)
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  tail call void @_serverAssert(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 1673) #18
  tail call void @abort() #19
  unreachable

bb.w:                                             ; preds = %bb.u, %bb.t
  %.480.ph = phi ptr [ null, %bb.u ], [ %i.cd, %bb.t ]
  %.475.ph = phi i32 [ %.374.ph, %bb.u ], [ %i.ca, %bb.t ] ; 2 uses
  %.4.ph = phi i64 [ %i.ch, %bb.u ], [ %.3.ph, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.bh ; 3 uses
  store ptr %.480.ph, ptr %i.ci, align 8, !tbaa !35
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i32 %.475.ph, ptr %i.cj, align 8, !tbaa !36
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %.4.ph, ptr %i.ck, align 8, !tbaa !37
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.q
  %.172 = phi i32 [ %.374.ph, %bb.q ], [ %.475.ph, %bb.w ]
  %.170 = phi i64 [ %.3.ph, %bb.q ], [ %.4.ph, %bb.w ]
  %i.cl = add i32 %.0113, -1
  %i.cm = add nuw nsw i32 %.032112, 1
  br label %bb.ad

bb.y:                                             ; preds = %bb.f
  %i.cn = load i32, ptr %0, align 4, !tbaa !13
  %i.co = zext i32 %i.cn to i64
  %i.cp = load i8, ptr %.035110, align 1, !tbaa !14
  %i.cq = icmp eq i8 %i.cp, -1
  br i1 %i.cq, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call fastcc void @zipEntry(ptr noundef nonnull %.035110, ptr noundef %7)
  %i.cr = load i32, ptr %i.ag, align 8, !tbaa !23
  %i.cs = load i32, ptr %i.ah, align 4, !tbaa !24
  %i.ct = add i32 %i.cs, %i.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.035110, i64 %i.cu ; 3 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !14
  %i.cx = icmp eq i8 %i.cw, -1
  br i1 %i.cx, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.cy = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.co, ptr noundef nonnull %i.cv, ptr noundef %6, i32 noundef 1)
  %.not.i.i57 = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i57, label %bb.ab, label %ziplistNext.exit60, !prof !25

bb.ab:                                            ; preds = %bb.aa
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 707) #18
  tail call void @abort() #19
  unreachable

ziplistNext.exit60:                               ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y, %bb.z
  tail call void @_serverAssert(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 1680) #18
  tail call void @abort() #19
  unreachable

bb.ad:                                            ; preds = %ziplistNext.exit60, %bb.x
  %.273 = phi i32 [ %.071108, %ziplistNext.exit60 ], [ %.172, %bb.x ]
  %.2 = phi i64 [ %.069109, %ziplistNext.exit60 ], [ %.170, %bb.x ]
  %.136 = phi ptr [ %i.cv, %ziplistNext.exit60 ], [ %i.bt, %bb.x ] ; 3 uses
  %.133 = phi i32 [ %.032112, %ziplistNext.exit60 ], [ %i.cm, %bb.x ] ; 5 uses
  %.1 = phi i32 [ %.0113, %ziplistNext.exit60 ], [ %i.cl, %bb.x ]
  %i.cz = load i32, ptr %0, align 4, !tbaa !13
  %i.da = zext i32 %i.cz to i64
  %i.db = load i8, ptr %.136, align 1, !tbaa !14
  %i.dc = icmp eq i8 %i.db, -1
  br i1 %i.dc, label %._crit_edge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call fastcc void @zipEntry(ptr noundef nonnull %.136, ptr noundef %5)
  %i.dd = load i32, ptr %i.ai, align 8, !tbaa !23
  %i.de = load i32, ptr %i.aj, align 4, !tbaa !24
  %i.df = add i32 %i.de, %i.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.136, i64 %i.dg ; 3 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !14
  %i.dj = icmp eq i8 %i.di, -1
  br i1 %i.dj, label %._crit_edge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.dk = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.da, ptr noundef nonnull %i.dh, ptr noundef %4, i32 noundef 1)
  %.not.i.i61 = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i61, label %bb.ag, label %ziplistNext.exit64, !prof !25

bb.ag:                                            ; preds = %bb.af
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 707) #18
  tail call void @abort() #19
  unreachable

ziplistNext.exit64:                               ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.dl = add i32 %.034111, 1
  %i.dm = icmp ult i32 %.133, %spec.select
  br i1 %i.dm, label %bb.f, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.ae, %bb.ad, %ziplistNext.exit64, %ziplistLen.exit
  %.032.lcssa = phi i32 [ 0, %ziplistLen.exit ], [ %.133, %ziplistNext.exit64 ], [ %.133, %bb.ad ], [ %.133, %bb.ae ]
  ret i32 %.032.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.uadd.sat.i16(i16, i16) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nofree nounwind }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(1) }
attributes #22 = { cold }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !28}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{i32 1, !"ThinLTO", i32 0}
!8 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!9 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!11, !11, i64 0}
!15 = !{!"long long", !11, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"short", !11, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = !{!"any pointer", !11, i64 0}
!21 = !{!"p1 omnipotent char", !20, i64 0}
!22 = !{!"zlentry", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !11, i64 20, !21, i64 24}
!23 = !{!22, !12, i64 16}
!24 = !{!22, !12, i64 12}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = !{!22, !12, i64 4}
!27 = !{!22, !12, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!22, !11, i64 20}
!30 = !{!"branch_weights", i32 1073205, i32 2146410443}
!31 = !{!22, !12, i64 8}
!32 = !{!22, !21, i64 24}
!33 = !{!21, !21, i64 0}
!34 = !{!"", !21, i64 0, !12, i64 8, !15, i64 16}
!35 = !{!34, !21, i64 0}
!36 = !{!34, !12, i64 8}
!37 = !{!34, !15, i64 16}
!38 = distinct !{!38, !28}
!39 = distinct !{!39, !28}
!40 = distinct !{!40, !28}
!41 = distinct !{!41, !28}
!42 = distinct !{!42, !28}
!43 = distinct !{!43, !28}
!44 = distinct !{!44, !28}
!45 = distinct !{!45, !28}
!46 = !{!"p1 _ZTS8_IO_FILE", !20, i64 0}
!47 = !{!46, !46, i64 0}
!48 = distinct !{!48, !28}
!49 = distinct !{!49, !28}
!50 = distinct !{!50, !28}
!51 = distinct !{!51, !28}
!52 = !{!"", !12, i64 0, !12, i64 4}
!53 = !{!52, !12, i64 0}
!54 = !{!52, !12, i64 4}
!55 = distinct !{!55, !28}
end_hunk_1
