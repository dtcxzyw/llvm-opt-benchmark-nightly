Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/logtape?download=true
inline.NumInlined: 18
inline.NumDeleted: 9
begin_hunk_0_@ltsGetBlock:bb.a
  %i.bt = shl i64 %.042.i, 1                      ; 2 uses
  %i.bu = or disjoint i64 %i.bt, 1                ; 4 uses
  %i.bv = add i64 %i.bt, 2                        ; 4 uses
  %i.bw = icmp ult i64 %i.bu, %i.bq               ; 3 uses
  %i.bx = icmp ult i64 %i.bv, %i.bq               ; 2 uses
  %or.cond.i = and i1 %i.bw, %i.bx
  br i1 %or.cond.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bu
  %i.bz = load i64, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bv
  %i.cb = load i64, ptr %i.ca, align 8            ; 2 uses
  %i.cc = icmp slt i64 %i.bz, %i.cb
  %i.cd = select i1 %i.cc, i64 %i.bu, i64 %i.bv
  %i.ce = tail call i64 @llvm.smin.i64(i64 %i.bz, i64 %i.cb)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %brmerge.i = or i1 %i.bw, %i.bx
  br i1 %brmerge.i, label %._crit_edge.i4, label %bb.ab

._crit_edge.i4:                                   ; preds = %bb.y
  %.mux.i = select i1 %i.bw, i64 %i.bu, i64 %i.bv ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.mux.i
  %.pre.i5 = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i4, %bb.x
  %i.cf = phi i64 [ %i.ce, %bb.x ], [ %.pre.i5, %._crit_edge.i4 ] ; 2 uses
  %.0.i = phi i64 [ %i.cd, %bb.x ], [ %.mux.i, %._crit_edge.i4 ]
  %.not.i = icmp slt i64 %i.cf, %i.bs
  br i1 %.not.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.042.i
  store i64 %i.cf, ptr %i.cg, align 8
  br label %bb.w

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.042.i
  store i64 %i.bs, ptr %i.ch, align 8
  br label %ltsGetFreeBlock.exit

ltsGetFreeBlock.exit:                             ; preds = %bb.ab, %bb.u, %bb.t, %ltsGetPreallocBlock.exit
  %.0 = phi i64 [ %.024.i, %ltsGetPreallocBlock.exit ], [ %i.bm, %bb.t ], [ %i.bo, %bb.u ], [ %i.bp, %bb.ab ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ltsWriteBlock(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.PGIOAlignedBlock, align 4096 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = phi i64 [ %i.e, %.lr.ph ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4096 dereferenceable(8192) %3, i8 0, i64 8192, i1 false)
  call fastcc void @ltsWriteBlock(ptr noundef nonnull %0, i64 noundef %i.d, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.e = load i64, ptr %i.a, align 8              ; 2 uses
  %i.f = icmp sgt i64 %1, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.g = load ptr, ptr %0, align 8
  %i.h = call i32 @BufFileSeekBlock(ptr noundef %i.g, i64 noundef %1) #8
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.i = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.j = call i32 @errcode_for_file_access() #8   ; 0 uses
  %i.k = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, i64 noundef %1) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 267, ptr noundef nonnull @__func__.ltsWriteBlock) #8
  unreachable

bb.c:                                             ; preds = %._crit_edge
  %i.l = load ptr, ptr %0, align 8
  call void @BufFileWrite(ptr noundef %i.l, ptr noundef %2, i64 noundef 8192) #8
  %i.m = load i64, ptr %i.a, align 8
  %i.n = icmp eq i64 %1, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = add i64 %1, 1
  store i64 %i.o, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @LogicalTapeRewindForRead(ptr nofree noundef captures(none) initializes((56, 60)) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.c = load i8, ptr %i.b, align 1, !range !4, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %1, i64 8192)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.f = load i32, ptr %i.e, align 4
  %i.g = sext i32 %i.f to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %spec.store.select, i64 %i.g)
  %i.h = trunc i64 %spec.select to i32
  %i.i = and i32 %i.h, -8192
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %i.i, %bb.b ], [ 8192, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !4, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.n = load i8, ptr %i.m, align 2, !range !4, !noundef !5
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.q = load i32, ptr %i.p, align 4
  %i.r = sub i32 0, %i.q
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8184
  store i64 %i.s, ptr %i.v, align 8
  %i.w = load ptr, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.t, align 8
  tail call fastcc void @ltsWriteBlock(ptr noundef %i.w, i64 noundef %i.y, ptr noundef %i.z)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i8 0, ptr %i.j, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @pfree(ptr noundef nonnull %i.ab) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr null, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %.not34 = icmp eq ptr %i.ae, null
  br i1 %.not34, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = load i32, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.am = load i8, ptr %i.ai, align 8, !range !4, !noundef !5
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ao = zext nneg i32 %i.ag to i64
  br label %.lr.ph.split

._crit_edge.loopexit36:                           ; preds = %ltsReleaseBlock.exit
  %.pre = load ptr, ptr %i.ad, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit36, %bb.j
  %i.ap = phi ptr [ %.pre, %._crit_edge.loopexit36 ], [ %i.ae, %bb.j ], [ %i.ae, %.lr.ph ]
  tail call void @pfree(ptr noundef %i.ap) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  br label %bb.p

.lr.ph.splitthread-pre-split:                     ; preds = %ltsReleaseBlock.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.pr = load i8, ptr %i.ai, align 8
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.splitthread-pre-split, %.lr.ph.split.preheader
  %2 = phi i8 [ %.pr, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph.split.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ %i.ao, %.lr.ph.split.preheader ] ; 3 uses
  %i.aq = load ptr, ptr %i.ad, align 8
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = getelementptr i8, ptr %i.ar, i64 -8
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = trunc nuw i8 %2 to i1
  br i1 %i.au, label %ltsReleaseBlock.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split
  %i.av = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.aw = load i64, ptr %i.ak, align 8            ; 3 uses
  %.not.i = icmp ult i64 %i.av, %i.aw
  br i1 %.not.i, label %._crit_edge.i, label %bb.l

._crit_edge.i:                                    ; preds = %bb.k
  %.pre.i = load ptr, ptr %i.al, align 8
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ax = shl i64 %i.aw, 4                        ; 2 uses
  %i.ay = icmp ugt i64 %i.ax, 1073741823
  br i1 %i.ay, label %ltsReleaseBlock.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = shl i64 %i.aw, 1
  store i64 %i.az, ptr %i.ak, align 8
  %i.ba = load ptr, ptr %i.al, align 8
  %i.bb = tail call ptr @repalloc(ptr noundef %i.ba, i64 noundef %i.ax) #8 ; 2 uses
  store ptr %i.bb, ptr %i.al, align 8
  %.pre35.i = load i64, ptr %i.aj, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i
  %i.bc = phi i64 [ %i.av, %._crit_edge.i ], [ %.pre35.i, %bb.m ] ; 3 uses
  %i.bd = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bb, %bb.m ] ; 3 uses
  %i.be = add i64 %i.bc, 1
  store i64 %i.be, ptr %i.aj, align 8
  %.not2831.i = icmp eq i64 %i.bc, 0
  br i1 %.not2831.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.o
  %.02432.i = phi i64 [ %i.bg, %bb.o ], [ %i.bc, %bb.n ] ; 3 uses
  %i.bf = add i64 %.02432.i, -1
  %i.bg = lshr i64 %i.bf, 1                       ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bj = icmp slt i64 %i.bi, %i.at
  br i1 %i.bj, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.02432.i
  store i64 %i.bi, ptr %i.bk, align 8
  %.not28.i = icmp eq i64 %i.bg, 0
  br i1 %.not28.i, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.o, %.lr.ph.i, %bb.n
  %.024.lcssa.i = phi i64 [ 0, %bb.n ], [ 0, %bb.o ], [ %.02432.i, %.lr.ph.i ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.024.lcssa.i
  store i64 %i.at, ptr %i.bl, align 8
  br label %ltsReleaseBlock.exit

ltsReleaseBlock.exit:                             ; preds = %.lr.ph.split, %bb.l, %.thread.i
  %i.bm = icmp sgt i64 %indvars.iv, 1
  br i1 %i.bm, label %.lr.ph.splitthread-pre-split, label %._crit_edge.loopexit36, !llvm.loop !10

bb.p:                                             ; preds = %._crit_edge, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @LogicalTapeRead(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i32, ptr %i.d, align 8
  %i.f = sext i32 %i.e to i64
  %i.g = tail call ptr @palloc(i64 noundef %i.f) #8
  store ptr %i.g, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.l, align 4
  %i.m = tail call fastcc zeroext i1 @ltsReadFillBuffer(ptr noundef nonnull %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not28 = icmp eq i64 %2, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %.pre = load i32, ptr %i.n, align 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.p = phi i32 [ %.pre, %.lr.ph ], [ %i.ab, %bb.f ] ; 2 uses
  %.02331 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.f ] ; 2 uses
  %.02430 = phi i64 [ %2, %.lr.ph ], [ %i.ad, %bb.f ] ; 2 uses
  %.02529 = phi ptr [ %1, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %i.q = load i32, ptr %i.o, align 4              ; 2 uses
  %.not27 = icmp slt i32 %i.p, %i.q
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call fastcc zeroext i1 @ltsReadFillBuffer(ptr noundef nonnull %0)
  br i1 %i.r, label %._crit_edge34, label %._crit_edge

._crit_edge34:                                    ; preds = %bb.e
  %.pre35 = load i32, ptr %i.o, align 4
  %.pre36 = load i32, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge34, %bb.d
  %i.s = phi i32 [ %.pre36, %._crit_edge34 ], [ %i.p, %bb.d ] ; 2 uses
  %i.t = phi i32 [ %.pre35, %._crit_edge34 ], [ %i.q, %bb.d ]
  %i.u = sub i32 %i.t, %i.s
  %i.v = sext i32 %i.u to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.02430, i64 %i.v) ; 5 uses
  %i.w = load ptr, ptr %i.a, align 8
  %i.x = sext i32 %i.s to i64
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02529, ptr align 1 %i.y, i64 %spec.select, i1 false)
  %i.z = load i32, ptr %i.n, align 8
  %i.aa = trunc i64 %spec.select to i32
  %i.ab = add i32 %i.z, %i.aa                     ; 2 uses
  store i32 %i.ab, ptr %i.n, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.02529, i64 %spec.select
  %i.ad = sub i64 %.02430, %spec.select           ; 2 uses
  %i.ae = add i64 %spec.select, %.02331           ; 2 uses
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.f, %bb.e, %bb.c
  %.023.lcssa = phi i64 [ 0, %bb.c ], [ %.02331, %bb.e ], [ %i.ae, %bb.f ]
  ret i64 %.023.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @ltsReadFillBuffer(ptr nofree noundef captures(none) initializes((64, 72)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load i64, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %i.i = phi i64 [ %i.bg, %bb.l ], [ %.pre, %bb.a ] ; 2 uses
  %i.j = phi i32 [ %i.bf, %bb.l ], [ 0, %bb.a ]   ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l ; 2 uses
  %i.n = icmp eq i64 %i.i, -1
  br i1 %i.n, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.e, align 8
  %i.p = add i64 %i.o, %i.i                       ; 4 uses
  %i.q = load ptr, ptr %0, align 8                ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i32 @BufFileSeekBlock(ptr noundef %i.r, i64 noundef %i.p) #8
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %ltsReadBlock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.u = tail call i32 @errcode_for_file_access() #8 ; 0 uses
  %i.v = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, i64 noundef %i.p) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 288, ptr noundef nonnull @__func__.ltsReadBlock) #8
  unreachable

ltsReadBlock.exit:                                ; preds = %bb.c
  %i.w = load ptr, ptr %i.q, align 8
  tail call void @BufFileReadExact(ptr noundef %i.w, ptr noundef %i.m, i64 noundef 8192) #8
  %i.x = load i8, ptr %i.f, align 1, !range !4, !noundef !5
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %ltsReleaseBlock.exit, label %bb.e

bb.e:                                             ; preds = %ltsReadBlock.exit
  %i.z = load ptr, ptr %0, align 8                ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load i8, ptr %i.aa, align 8, !range !4, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %ltsReleaseBlock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 72 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %.not.i29 = icmp ult i64 %i.ae, %i.ag
  br i1 %.not.i29, label %._crit_edge.i, label %bb.g

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ah = shl i64 %i.ag, 4                        ; 2 uses
  %i.ai = icmp ugt i64 %i.ah, 1073741823
  br i1 %i.ai, label %ltsReleaseBlock.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = shl i64 %i.ag, 1
  store i64 %i.aj, ptr %i.af, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 56 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call ptr @repalloc(ptr noundef %i.al, i64 noundef %i.ah) #8 ; 2 uses
  store ptr %i.am, ptr %i.ak, align 8
  %.pre35.i = load i64, ptr %i.ad, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %i.an = phi i64 [ %i.ae, %._crit_edge.i ], [ %.pre35.i, %bb.h ] ; 3 uses
  %i.ao = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.am, %bb.h ] ; 3 uses
  %i.ap = add i64 %i.an, 1
  store i64 %i.ap, ptr %i.ad, align 8
  %.not2831.i = icmp eq i64 %i.an, 0
  br i1 %.not2831.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %.02432.i = phi i64 [ %i.ar, %bb.j ], [ %i.an, %bb.i ] ; 3 uses
  %i.aq = add i64 %.02432.i, -1
  %i.ar = lshr i64 %i.aq, 1                       ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = icmp slt i64 %i.at, %i.p
  br i1 %i.au, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.02432.i
  store i64 %i.at, ptr %i.av, align 8
  %.not28.i = icmp eq i64 %i.ar, 0
  br i1 %.not28.i, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.j, %.lr.ph.i, %bb.i
  %.024.lcssa.i = phi i64 [ 0, %bb.i ], [ 0, %bb.j ], [ %.02432.i, %.lr.ph.i ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.024.lcssa.i
  store i64 %i.p, ptr %i.aw, align 8
  br label %ltsReleaseBlock.exit

ltsReleaseBlock.exit:                             ; preds = %.thread.i, %bb.g, %bb.e, %ltsReadBlock.exit
  %i.ax = load i64, ptr %i.d, align 8
  store i64 %i.ax, ptr %i.g, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 8184 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
end_hunk_0
