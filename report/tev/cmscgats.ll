Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmscgats?download=true
inline.NumInlined: 222
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@LocatePatch:bb.a
  %i.aa = add nuw nsw i32 %i.z, %i.m
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49 ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %GetData.exit.thread, label %bb.h

bb.h:                                             ; preds = %GetData.exit
  %i.ae = tail call i32 @cmsstrcasecmp(ptr noundef nonnull %i.ad, ptr noundef %1) #18
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %._crit_edge, label %GetData.exit.thread

GetData.exit.thread:                              ; preds = %GetTable.exit.i, %bb.g, %GetData.exit, %bb.h
  %i.ag = add nuw nsw i32 %.017, 1                ; 2 uses
  %i.ah = load i32, ptr %i.h, align 4, !tbaa !87
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %._crit_edge, !llvm.loop !131

._crit_edge:                                      ; preds = %bb.h, %GetData.exit.thread, %GetTable.exit
  %.011 = phi i32 [ -1, %GetTable.exit ], [ -1, %GetData.exit.thread ], [ %.017, %bb.h ]
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define double @cmsIT8GetDataDbl(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @cmsIT8GetData(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.b = tail call fastcc double @ParseFloatNumber(ptr noundef %i.a)
  ret double %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cmsIT8SetData(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32   ; 4 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !31
  %.not.i = icmp ult i32 %i.b, %i.c
  br i1 %.not.i, label %GetTable.exit.thread, label %GetTable.exit

GetTable.exit.thread:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = zext i32 %i.b to i64
  %i.f = getelementptr inbounds nuw [1064 x i8], ptr %i.d, i64 %i.e
  br label %bb.c

GetTable.exit:                                    ; preds = %bb.a
  tail call void (ptr, ptr, ...) @SynError(ptr noundef nonnull %0, ptr noundef nonnull @.str.83, i32 noundef %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !32  ; 3 uses
  %.pre56 = load i32, ptr %0, align 8, !tbaa !31
  %i.h = icmp ult i32 %.pre, %.pre56
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %GetTable.exit
  tail call void (ptr, ptr, ...) @SynError(ptr noundef nonnull %0, ptr noundef nonnull @.str.83, i32 noundef %.pre)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %GetTable.exit.i

bb.c:                                             ; preds = %GetTable.exit.thread, %GetTable.exit
  %.0.i80 = phi ptr [ %i.f, %GetTable.exit.thread ], [ %i.g, %GetTable.exit ]
  %i.j = phi i32 [ %i.b, %GetTable.exit.thread ], [ %.pre, %GetTable.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = zext i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [1064 x i8], ptr %i.k, i64 %i.l
  br label %GetTable.exit.i

GetTable.exit.i:                                  ; preds = %bb.c, %bb.b
  %.0.i79 = phi ptr [ %i.g, %bb.b ], [ %.0.i80, %bb.c ] ; 2 uses
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %i.m, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1024 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !77
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i, label %LocateSample.exit.thread

.lr.ph.i:                                         ; preds = %GetTable.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  br label %bb.d

bb.d:                                             ; preds = %GetDataFormat.exit.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %GetDataFormat.exit.thread.i ] ; 3 uses
  %i.r = load i32, ptr %i.a, align 4, !tbaa !32   ; 3 uses
  %i.s = load i32, ptr %0, align 8, !tbaa !31
  %.not.i.i.i = icmp ult i32 %i.r, %i.s
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @SynError(ptr noundef nonnull %0, ptr noundef nonnull @.str.83, i32 noundef %i.r)
  br label %GetTable.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = zext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [1064 x i8], ptr %i.q, i64 %i.t
  br label %GetTable.exit.i.i

GetTable.exit.i.i:                                ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.u, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1048
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !76   ; 2 uses
  %.not.i12.i = icmp eq ptr %i.w, null
  br i1 %.not.i12.i, label %GetDataFormat.exit.thread.i, label %GetDataFormat.exit.i

GetDataFormat.exit.i:                             ; preds = %GetTable.exit.i.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !49   ; 2 uses
  %.not.i28 = icmp eq ptr %i.y, null
  br i1 %.not.i28, label %GetDataFormat.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %GetDataFormat.exit.i
  %i.z = tail call i32 @cmsstrcasecmp(ptr noundef nonnull %i.y, ptr noundef %2) #18
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %LocateSample.exit, label %GetDataFormat.exit.thread.i

GetDataFormat.exit.thread.i:                      ; preds = %bb.g, %GetDataFormat.exit.i, %GetTable.exit.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ab = load i32, ptr %i.n, align 8, !tbaa !77
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i, %i.ac
  br i1 %i.ad, label %bb.d, label %LocateSample.exit.thread, !llvm.loop !6

LocateSample.exit:                                ; preds = %bb.g
  %i.ae = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i79, i64 1028
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !87
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %bb.k

bb.h:                                             ; preds = %LocateSample.exit
  %i.ai = tail call fastcc i32 @AllocateDataFormat(ptr noundef nonnull %0)
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %LocateSample.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call fastcc i32 @AllocateDataSet(ptr noundef nonnull %0)
  %.not27 = icmp eq i32 %i.aj, 0
  br i1 %.not27, label %LocateSample.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @CookPointers(ptr noundef nonnull %0)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %LocateSample.exit
  %i.ak = tail call i32 @cmsstrcasecmp(ptr noundef %2, ptr noundef nonnull @.str.9) #18
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.am = load i32, ptr %i.a, align 4, !tbaa !32  ; 3 uses
  %i.an = load i32, ptr %0, align 8, !tbaa !31
  %.not.i.i29 = icmp ult i32 %i.am, %i.an
  br i1 %.not.i.i29, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ptr, ...) @SynError(ptr noundef nonnull %0, ptr noundef nonnull @.str.83, i32 noundef %i.am)
  br label %GetTable.exit.i30

bb.n:                                             ; preds = %bb.l
  %i.ao = zext i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw [1064 x i8], ptr %i.q, i64 %i.ao
  br label %GetTable.exit.i30

GetTable.exit.i30:                                ; preds = %bb.n, %bb.m
  %.0.i.i31 = phi ptr [ %i.q, %bb.m ], [ %i.ap, %bb.n ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i31, i64 1028 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !87 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i32, label %LocateEmptyPatch.exit.thread42

.lr.ph.i32:                                       ; preds = %GetTable.exit.i30
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i31, i64 1032 ; 2 uses
  %i.au = load i32, ptr %i.a, align 4, !tbaa !32  ; 2 uses
  %i.av = load i32, ptr %0, align 8, !tbaa !31
  %i.aw = icmp ult i32 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i32
  %i.ax = load i32, ptr %i.at, align 8, !tbaa !90
  %.fr21.i = freeze i32 %i.ax                     ; 3 uses
  %i.ay = zext i32 %i.au to i64
  %i.az = getelementptr inbounds nuw [1064 x i8], ptr %i.q, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1024
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !77
  %.fr.i = freeze i32 %i.bb                       ; 2 uses
  %i.bc = icmp sgt i32 %.fr21.i, -1
  %.not.i10.us.i = icmp slt i32 %.fr21.i, %.fr.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 1056
  %i.be = and i1 %i.bc, %.not.i10.us.i
  br i1 %i.be, label %GetTable.exit.i.us.preheader.i, label %LocateEmptyPatch.exit.thread

GetTable.exit.i.us.preheader.i:                   ; preds = %.lr.ph.split.us.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 1028
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !87
  %i.bh = zext i32 %.fr.i to i64
  %i.bi = zext nneg i32 %.fr21.i to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 0) ; 2 uses
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  %i.bj = zext nneg i32 %i.ar to i64
  br label %GetTable.exit.i.us.i

GetTable.exit.i.us.i:                             ; preds = %bb.p, %GetTable.exit.i.us.preheader.i
  %indvars.iv.i36 = phi i64 [ 0, %GetTable.exit.i.us.preheader.i ], [ %indvars.iv.next.i37, %bb.p ] ; 5 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i36, %wide.trip.count.i
  br i1 %exitcond.not.i, label %LocateEmptyPatch.exit.thread, label %bb.o

bb.o:                                             ; preds = %GetTable.exit.i.us.i
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !81 ; 2 uses
  %.not19.i.us.i = icmp eq ptr %i.bk, null
  br i1 %.not19.i.us.i, label %GetData.exit.thread.loopexit.split.loop.exit36.i, label %GetData.exit.us.i

GetData.exit.us.i:                                ; preds = %bb.o
  %i.bl = mul nuw nsw i64 %indvars.iv.i36, %i.bh
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bi
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !49
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %LocateEmptyPatch.exit.a, label %bb.p

bb.p:                                             ; preds = %GetData.exit.us.i
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i36, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i37, %i.bj
  br i1 %exitcond.not, label %LocateEmptyPatch.exit.thread42, label %GetTable.exit.i.us.i, !llvm.loop !132

.lr.ph.split.i:                                   ; preds = %.lr.ph.i32, %bb.t
  %.013.i = phi i32 [ %i.cj, %bb.t ], [ 0, %.lr.ph.i32 ] ; 6 uses
  %i.bq = load i32, ptr %i.at, align 8, !tbaa !90 ; 3 uses
  %i.br = load i32, ptr %i.a, align 4, !tbaa !32  ; 3 uses
  %i.bs = load i32, ptr %0, align 8, !tbaa !31
  %.not.i.i.i33 = icmp ult i32 %i.br, %i.bs
  br i1 %.not.i.i.i33, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.i
  tail call void (ptr, ptr, ...) @SynError(ptr noundef nonnull %0, ptr noundef nonnull @.str.83, i32 noundef %i.br)
  br label %GetTable.exit.i.i34

bb.r:                                             ; preds = %.lr.ph.split.i
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw [1064 x i8], ptr %i.q, i64 %i.bt
  br label %GetTable.exit.i.i34

GetTable.exit.i.i34:                              ; preds = %bb.r, %bb.q
  %.0.i.i.i35 = phi ptr [ %i.q, %bb.q ], [ %i.bu, %bb.r ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.i35, i64 1024
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !77 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i35, i64 1028
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !87
  %i.bz = icmp slt i32 %.013.i, %i.by
  %i.ca = icmp sgt i32 %i.bq, -1
  %or.cond.not23.i.i = and i1 %i.ca, %i.bz
  %.not.i10.i = icmp slt i32 %i.bq, %i.bw
  %or.cond20.i.i = select i1 %or.cond.not23.i.i, i1 %.not.i10.i, i1 false
  br i1 %or.cond20.i.i, label %bb.s, label %LocateEmptyPatch.exit.thread

bb.s:                                             ; preds = %GetTable.exit.i.i34
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i.i35, i64 1056
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !81 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.cc, null
  br i1 %.not19.i.i, label %LocateEmptyPatch.exit.thread, label %GetData.exit.i

GetData.exit.i:                                   ; preds = %bb.s
  %i.cd = mul nuw nsw i32 %i.bw, %.013.i
  %i.ce = add nuw nsw i32 %i.cd, %i.bq
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !49
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %LocateEmptyPatch.exit.thread, label %bb.t

bb.t:                                             ; preds = %GetData.exit.i
  %i.cj = add nuw nsw i32 %.013.i, 1              ; 2 uses
  %i.ck = load i32, ptr %i.aq, align 4, !tbaa !87
  %i.cl = icmp slt i32 %i.cj, %i.ck
  br i1 %i.cl, label %.lr.ph.split.i, label %LocateEmptyPatch.exit.thread42, !llvm.loop !133

GetData.exit.thread.loopexit.split.loop.exit36.i: ; preds = %bb.o
  %4 = trunc nuw nsw i64 %indvars.iv.i36 to i32
  br label %LocateEmptyPatch.exit.thread

LocateEmptyPatch.exit.a:                          ; preds = %GetData.exit.us.i
  %.09.i = trunc nuw nsw i64 %indvars.iv.i36 to i32
  br label %LocateEmptyPatch.exit.thread

LocateEmptyPatch.exit.thread42:                   ; preds = %bb.t, %bb.p, %GetTable.exit.i30
  tail call void (ptr, ptr, ...) @SynError(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, ptr noundef %1)
  br label %LocateSample.exit.thread

LocateEmptyPatch.exit.thread:                     ; preds = %bb.s, %GetTable.exit.i.i34, %GetData.exit.i, %GetTable.exit.i.us.i, %.lr.ph.split.us.i, %LocateEmptyPatch.exit.a, %GetData.exit.thread.loopexit.split.loop.exit36.i
  %.09.i.ph = phi i32 [ %4, %GetData.exit.thread.loopexit.split.loop.exit36.i ], [ %.09.i, %LocateEmptyPatch.exit.a ], [ %smax.i, %GetTable.exit.i.us.i ], [ 0, %.lr.ph.split.us.i ], [ %.013.i, %GetData.exit.i ], [ %.013.i, %GetTable.exit.i.i34 ], [ %.013.i, %bb.s ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i79, i64 1032
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !90
  br label %bb.v

bb.u:                                             ; preds = %bb.k
  %i.co = tail call fastcc i32 @LocatePatch(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %LocateSample.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u, %LocateEmptyPatch.exit.thread
  %.022 = phi i32 [ %i.cn, %LocateEmptyPatch.exit.thread ], [ %i.ae, %bb.u ]
  %.0 = phi i32 [ %.09.i.ph, %LocateEmptyPatch.exit.thread ], [ %i.co, %bb.u ]
  %i.cq = tail call fastcc i32 @SetData(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef %.022, ptr noundef %3)
  br label %LocateSample.exit.thread

LocateSample.exit.thread:                         ; preds = %GetDataFormat.exit.thread.i, %GetTable.exit.i, %bb.u, %bb.i, %bb.h, %bb.v, %LocateEmptyPatch.exit.thread42
  %.023 = phi i32 [ 0, %GetTable.exit.i ], [ 0, %LocateEmptyPatch.exit.thread42 ], [ %i.cq, %bb.v ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.u ], [ 0, %GetDataFormat.exit.thread.i ]
  ret i32 %.023
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @AllocateDataFormat(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32   ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !31
  %.not.i = icmp ult i32 %i.b, %i.c
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @SynError(ptr noundef nonnull %0, ptr noundef nonnull @.str.83, i32 noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %GetTable.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = zext i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [1064 x i8], ptr %i.e, i64 %i.f
  br label %GetTable.exit

GetTable.exit:                                    ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 1048 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.o

bb.d:                                             ; preds = %GetTable.exit
  %i.j = load i32, ptr %i.a, align 4, !tbaa !32   ; 3 uses
  %i.k = load i32, ptr %0, align 8, !tbaa !31
  %.not.i.i = icmp ult i32 %i.j, %i.k
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @SynError(ptr noundef nonnull %0, ptr noundef nonnull @.str.83, i32 noundef %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %GetTable.exit.i

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = zext i32 %i.j to i64
  %i.o = getelementptr inbounds nuw [1064 x i8], ptr %i.m, i64 %i.n
  br label %GetTable.exit.i

GetTable.exit.i:                                  ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %i.l, %bb.e ], [ %i.o, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1040
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68   ; 2 uses
  %cond2950.i.i = icmp eq ptr %i.q, null
  br i1 %cond2950.i.i, label %satoi.exit.thread, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %GetTable.exit.i, %bb.g
  %.02130.i.i = phi ptr [ %i.v, %bb.g ], [ %i.q, %GetTable.exit.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02130.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.t = tail call i32 @cmsstrcasecmp(ptr noundef nonnull @.str.16, ptr noundef %i.s) #18
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %cmsIT8GetProperty.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.i.i
  %i.v = load ptr, ptr %.02130.i.i, align 8, !tbaa !58 ; 2 uses
  %cond.i.i = icmp eq ptr %i.v, null
  br i1 %cond.i.i, label %satoi.exit.thread, label %.lr.ph.split.i.i, !llvm.loop !2

cmsIT8GetProperty.exit:                           ; preds = %.lr.ph.split.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.02130.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %satoi.exit.thread, label %bb.h

bb.h:                                             ; preds = %cmsIT8GetProperty.exit
  %i.z = tail call i64 @strtol(ptr noundef nonnull readonly captures(none) %i.x, ptr noundef null, i32 noundef 10) #18, !inline_history !3
  %i.aa = trunc i64 %i.z to i32                   ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 2147483632
  br i1 %i.ab, label %satoi.exit.thread, label %satoi.exit

satoi.exit.thread:                                ; preds = %bb.g, %cmsIT8GetProperty.exit, %bb.h, %GetTable.exit.i
  %.0.i15.ph = phi i32 [ 2147483632, %bb.h ], [ 0, %cmsIT8GetProperty.exit ], [ 0, %GetTable.exit.i ], [ 0, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 1024
  store i32 %.0.i15.ph, ptr %i.ac, align 8, !tbaa !77
  br label %bb.i

satoi.exit:                                       ; preds = %bb.h
  %..i = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 -2147483632) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 1024
  store i32 %..i, ptr %i.ad, align 8, !tbaa !77
  %i.ae = add i32 %i.aa, -32767
  %or.cond = icmp ult i32 %i.ae, -32766
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %satoi.exit.thread, %satoi.exit
  tail call void (ptr, ptr, ...) @SynError(ptr noundef nonnull %0, ptr noundef nonnull @.str.153)
  br label %bb.o

bb.j:                                             ; preds = %satoi.exit
  %i.af = shl nuw nsw i32 %..i, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 271344 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 271352 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !44 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 271356 ; 4 uses
  %i.ak = add nuw nsw i32 %i.af, 8                ; 3 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !46 ; 2 uses
  %i.am = sub i32 %i.ai, %i.al
  %i.an = icmp ugt i32 %i.ak, %i.am
  br i1 %i.an, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ao = icmp eq i32 %i.ai, 0
  %i.ap = shl i32 %i.ai, 1
  %storemerge.i = select i1 %i.ao, i32 20480, i32 %i.ap
  %storemerge31.i = tail call i32 @llvm.umax.i32(i32 %storemerge.i, i32 %i.ak) ; 2 uses
  store i32 %storemerge31.i, ptr %i.ah, align 8, !tbaa !44
  store i32 0, ptr %i.aj, align 4, !tbaa !46
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 271736 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !28
  %i.as = tail call ptr @_cmsMallocZero(ptr noundef %i.ar, i32 noundef %storemerge31.i) #18 ; 5 uses
  %.not.i.i16 = icmp eq ptr %i.as, null
  br i1 %.not.i.i16, label %AllocChunk.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !28
  %i.au = tail call ptr @_cmsMallocZero(ptr noundef %i.at, i32 noundef 16) #18 ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !28
  tail call void @_cmsFree(ptr noundef %i.aw, ptr noundef nonnull %i.as) #18
  br label %AllocChunk.exit.thread

.thread.i:                                        ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 271336 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !24
  store ptr %i.az, ptr %i.au, align 8, !tbaa !26
  store ptr %i.au, ptr %i.ay, align 8, !tbaa !24
  store ptr %i.as, ptr %i.ag, align 8, !tbaa !45
  %.pre.i = load i32, ptr %i.aj, align 4, !tbaa !46
  br label %AllocChunk.exit

bb.n:                                             ; preds = %bb.j
  %.pr.i = load ptr, ptr %i.ag, align 8, !tbaa !45 ; 2 uses
  %i.ba = icmp eq ptr %.pr.i, null
  br i1 %i.ba, label %AllocChunk.exit.thread, label %AllocChunk.exit

AllocChunk.exit.thread:                           ; preds = %bb.n, %bb.m, %bb.k
  store ptr null, ptr %i.h, align 8, !tbaa !76
  tail call void (ptr, ptr, ...) @SynError(ptr noundef nonnull %0, ptr noundef nonnull @.str.154)
  br label %bb.o

AllocChunk.exit:                                  ; preds = %.thread.i, %bb.n
  %i.bb = phi i32 [ %.pre.i, %.thread.i ], [ %i.al, %bb.n ] ; 2 uses
  %i.bc = phi ptr [ %i.as, %.thread.i ], [ %.pr.i, %bb.n ]
  %i.bd = zext i32 %i.bb to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  %i.bf = add i32 %i.bb, %i.ak
  store i32 %i.bf, ptr %i.aj, align 4, !tbaa !46
  store ptr %i.be, ptr %i.h, align 8, !tbaa !76
  br label %bb.o

bb.o:                                             ; preds = %AllocChunk.exit, %GetTable.exit, %AllocChunk.exit.thread, %bb.i
  %.0 = phi i32 [ 1, %GetTable.exit ], [ 0, %bb.i ], [ 0, %AllocChunk.exit.thread ], [ 1, %AllocChunk.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @AllocateDataSet(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32   ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !31
  %.not.i = icmp ult i32 %i.b, %i.c
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @SynError(ptr noundef nonnull %0, ptr noundef nonnull @.str.83, i32 noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %GetTable.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = zext i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [1064 x i8], ptr %i.e, i64 %i.f
  br label %GetTable.exit

GetTable.exit:                                    ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 1056 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.v
end_hunk_0
