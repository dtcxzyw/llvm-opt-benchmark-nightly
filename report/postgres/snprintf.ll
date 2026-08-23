Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/snprintf?download=true
inline.NumInlined: 31
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dostr:bb.a

bb.f:                                             ; preds = %bb.e
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = ptrtoint ptr %.pre.i to i64
  %i.y = sub i64 %i.x, %i.w                       ; 2 uses
  %i.z = tail call i64 @fwrite(ptr noundef %i.r, i64 noundef 1, i64 noundef %i.y, ptr noundef nonnull %i.l) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = trunc i64 %i.z to i32
  %i.ad = add i32 %i.ab, %i.ac
  store i32 %i.ad, ptr %i.aa, align 8
  %.not.i.i = icmp eq i64 %i.z, %i.y
  br i1 %.not.i.i, label %flushbuffer.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.s, align 4
  br label %flushbuffer.exit.i

flushbuffer.exit.i:                               ; preds = %bb.g, %bb.f, %bb.e
  %i.ae = load ptr, ptr %i.q, align 8
  br label %bb.h

bb.h:                                             ; preds = %flushbuffer.exit.i, %bb.b
  %i.af = phi ptr [ %i.ae, %flushbuffer.exit.i ], [ %.pre.i, %bb.b ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %2, align 8
  store i8 %i.h, ptr %i.af, align 1
  br label %dopr_outch.exit

bb.i:                                             ; preds = %.lr.ph, %bb.o
  %.pre = phi ptr [ %.pre.pre, %.lr.ph ], [ %.pre44, %bb.o ] ; 3 uses
  %.02741 = phi ptr [ %0, %.lr.ph ], [ %.1, %bb.o ] ; 3 uses
  %.02840 = phi i32 [ %1, %.lr.ph ], [ %.129, %bb.o ] ; 5 uses
  %i.ah = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %.pre to i64               ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.thread35, label %bb.l

.thread35:                                        ; preds = %bb.k
  %i.ap = load i32, ptr %i.g, align 8
  %i.aq = add i32 %i.ap, %.02840
  store i32 %i.aq, ptr %i.g, align 8
  br label %dopr_outch.exit

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.as = load i8, ptr %i.f, align 4, !range !4, !noundef !5
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = icmp eq ptr %.pre, %i.ar
  %or.cond.not.i = select i1 %i.at, i1 true, i1 %i.au
  br i1 %or.cond.not.i, label %flushbuffer.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.aj, %i.av                    ; 2 uses
  %i.ax = tail call i64 @fwrite(ptr noundef %i.ar, i64 noundef 1, i64 noundef %i.aw, ptr noundef nonnull %i.an) ; 2 uses
  %i.ay = load i32, ptr %i.g, align 8
  %i.az = trunc i64 %i.ax to i32
  %i.ba = add i32 %i.ay, %i.az
  store i32 %i.ba, ptr %i.g, align 8
  %.not.i32 = icmp eq i64 %i.ax, %i.aw
  br i1 %.not.i32, label %flushbuffer.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.f, align 4
  br label %flushbuffer.exit

flushbuffer.exit:                                 ; preds = %bb.l, %bb.m, %bb.n
  %i.bb = load ptr, ptr %i.e, align 8             ; 2 uses
  store ptr %i.bb, ptr %2, align 8
  br label %bb.o, !llvm.loop !10

.thread:                                          ; preds = %bb.i, %bb.j
  %.02634 = phi i32 [ %i.al, %bb.j ], [ %.02840, %bb.i ]
  %i.bc = tail call i32 @llvm.umin.i32(i32 %.02634, i32 %.02840) ; 2 uses
  %i.bd = zext nneg i32 %i.bc to i64              ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.pre, ptr align 1 %.02741, i64 %i.bd, i1 false)
  %i.be = load ptr, ptr %2, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd ; 2 uses
  store ptr %i.bf, ptr %2, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.02741, i64 %i.bd
  %i.bh = sub nsw i32 %.02840, %i.bc
  br label %bb.o

bb.o:                                             ; preds = %.thread, %flushbuffer.exit
  %.pre44 = phi ptr [ %i.bf, %.thread ], [ %i.bb, %flushbuffer.exit ]
  %.129 = phi i32 [ %i.bh, %.thread ], [ %.02840, %flushbuffer.exit ] ; 2 uses
  %.1 = phi ptr [ %i.bg, %.thread ], [ %.02741, %flushbuffer.exit ]
  %i.bi = icmp sgt i32 %.129, 0
  br i1 %i.bi, label %bb.i, label %dopr_outch.exit

dopr_outch.exit:                                  ; preds = %bb.o, %.preheader, %.thread35, %bb.h, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @fmtint(i64 noundef %0, i8 noundef signext %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4, i32 noundef range(i32 0, 49) %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7, ptr nofree noundef nonnull captures(none) %8) unnamed_addr #4 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  switch i8 %1, label %trailing_pad.exit [
    i8 100, label %bb.e
    i8 105, label %bb.e
    i8 111, label %.thread
    i8 117, label %bb.b
    i8 120, label %bb.c
    i8 88, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %.thread

bb.c:                                             ; preds = %bb.a
  br label %.thread

bb.d:                                             ; preds = %bb.a
  br label %.thread

bb.e:                                             ; preds = %bb.a, %bb.a
  %.not.i = icmp sgt i64 %0, -1
  br i1 %.not.i, label %bb.f, label %.thread96

bb.f:                                             ; preds = %bb.e
  %.not4.i = icmp eq i32 %2, 0
  %spec.select = select i1 %.not4.i, i32 0, i32 43
  br label %.thread

.thread96:                                        ; preds = %bb.e
  %i.c = sub i64 0, %0
  br label %.preheader.preheader

.thread:                                          ; preds = %bb.f, %bb.a, %bb.c, %bb.b, %bb.d
  %.04564 = phi ptr [ @.str.4, %bb.d ], [ @.str.3, %bb.a ], [ @.str.3, %bb.f ], [ @.str.3, %bb.c ], [ @.str.3, %bb.b ] ; 3 uses
  %i.d = phi i1 [ true, %bb.d ], [ false, %bb.a ], [ false, %bb.f ], [ true, %bb.c ], [ false, %bb.b ]
  %i.e = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ true, %bb.f ], [ false, %bb.c ], [ true, %bb.b ]
  %.059 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ %spec.select, %bb.f ], [ 0, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.f = icmp eq i64 %0, 0
  %i.g = icmp ne i32 %7, 0
  %or.cond = and i1 %i.f, %i.g
  %i.h = icmp eq i32 %6, 0
  %or.cond3 = and i1 %i.h, %or.cond
  br i1 %or.cond3, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.thread
  br i1 %i.e, label %.preheader.preheader, label %bb.h

.preheader.preheader:                             ; preds = %.thread96, %bb.g
  %.0456492102 = phi ptr [ @.str.3, %.thread96 ], [ %.04564, %bb.g ]
  %.05993101 = phi i32 [ 45, %.thread96 ], [ %.059, %bb.g ]
  %.04895100 = phi i64 [ %i.c, %.thread96 ], [ %0, %bb.g ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.149 = phi i64 [ %i.p, %.preheader ], [ %.04895100, %.preheader.preheader ] ; 3 uses
  %.0 = phi i32 [ %i.l, %.preheader ], [ 0, %.preheader.preheader ]
  %i.i = urem i64 %.149, 10
  %i.j = getelementptr inbounds nuw i8, ptr %.0456492102, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = add i32 %.0, 1                           ; 3 uses
  %i.m = sext i32 %i.l to i64
  %i.n = sub nsw i64 64, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  store i8 %i.k, ptr %i.o, align 1
  %i.p = udiv i64 %.149, 10
  %.not56 = icmp ult i64 %.149, 10
  br i1 %.not56, label %.loopexit, label %.preheader, !llvm.loop !11

bb.h:                                             ; preds = %bb.g
  br i1 %i.d, label %.preheader71, label %.preheader73

.preheader71:                                     ; preds = %bb.h, %.preheader71
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %.preheader71 ], [ 0, %bb.h ] ; 2 uses
  %.250 = phi i64 [ %i.v, %.preheader71 ], [ %0, %bb.h ] ; 2 uses
  %i.q = and i64 %.250, 15
  %i.r = getelementptr inbounds nuw i8, ptr %.04564, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.t = sub nuw nsw i64 63, %indvars.iv82
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  store i8 %i.s, ptr %i.u, align 1
  %i.v = lshr i64 %.250, 4                        ; 2 uses
  %.not55 = icmp eq i64 %i.v, 0
  br i1 %.not55, label %.loopexit.loopexit77, label %.preheader71, !llvm.loop !12

.preheader73:                                     ; preds = %bb.h, %.preheader73
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader73 ], [ 0, %bb.h ] ; 2 uses
  %.351 = phi i64 [ %i.ab, %.preheader73 ], [ %0, %bb.h ] ; 2 uses
  %i.w = and i64 %.351, 7
  %i.x = getelementptr inbounds nuw i8, ptr %.04564, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = sub nuw nsw i64 63, %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.z
  store i8 %i.y, ptr %i.aa, align 1
  %i.ab = lshr i64 %.351, 3                       ; 2 uses
  %.not54 = icmp eq i64 %i.ab, 0
  br i1 %.not54, label %.loopexit.loopexit78, label %.preheader73, !llvm.loop !13

.loopexit.loopexit77:                             ; preds = %.preheader71
  %i.ac = trunc nuw nsw i64 %indvars.iv.next83 to i32
  br label %.loopexit

.loopexit.loopexit78:                             ; preds = %.preheader73
  %i.ad = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.loopexit.loopexit78, %.loopexit.loopexit77, %.thread
  %.05994 = phi i32 [ %.059, %.loopexit.loopexit77 ], [ %.059, %.thread ], [ %.059, %.loopexit.loopexit78 ], [ %.05993101, %.preheader ]
  %.3 = phi i32 [ %i.ac, %.loopexit.loopexit77 ], [ 0, %.thread ], [ %i.ad, %.loopexit.loopexit78 ], [ %i.l, %.preheader ] ; 4 uses
  %i.ae = sub i32 %6, %.3                         ; 2 uses
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 0) ; 2 uses
  %i.ag = add i32 %.3, %i.af
  %i.ah = sub i32 %4, %i.ag
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 0) ; 2 uses
  %.not.i58 = icmp eq i32 %3, 0
  %i.ai = sub nsw i32 0, %spec.store.select.i
  %spec.select.i = select i1 %.not.i58, i32 %spec.store.select.i, i32 %i.ai
  store i32 %spec.select.i, ptr %i.b, align 4
  call fastcc void @leading_pad(i32 noundef %5, i32 noundef %.05994, ptr noundef %i.b, ptr noundef %8)
  %.not57 = icmp slt i32 %i.ae, 1
  br i1 %.not57, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  tail call fastcc void @dopr_outchmulti(i32 noundef 48, i32 noundef %i.af, ptr noundef %8)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ak = sext i32 %.3 to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.al
  call fastcc void @dostr(ptr noundef nonnull %i.am, i32 noundef %.3, ptr noundef %8)
  %i.an = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.k, label %trailing_pad.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = sub i32 0, %i.an
  tail call fastcc void @dopr_outchmulti(i32 noundef 32, i32 noundef %i.ap, ptr noundef nonnull %8)
  br label %trailing_pad.exit

trailing_pad.exit:                                ; preds = %bb.k, %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare ptr @pg_strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @leading_pad(i32 noundef range(i32 0, 49) %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %2, align 4                ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = icmp ne i32 %0, 0
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.thread56, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  %.pre.i = load ptr, ptr %3, align 8             ; 4 uses
  %.not7.i = icmp ult ptr %.pre.i, %i.e
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not7.i
  br i1 %or.cond.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8
  br label %thread-pre-split

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !range !4, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = icmp eq ptr %.pre.i, %i.m
  %or.cond.not.i.i = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond.not.i.i, label %flushbuffer.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = ptrtoint ptr %.pre.i to i64
  %i.t = sub i64 %i.s, %i.r                       ; 2 uses
  %i.u = tail call i64 @fwrite(ptr noundef %i.m, i64 noundef 1, i64 noundef %i.t, ptr noundef nonnull %i.g) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = trunc i64 %i.u to i32
  %i.y = add i32 %i.w, %i.x
  store i32 %i.y, ptr %i.v, align 8
  %.not.i.i = icmp eq i64 %i.u, %i.t
  br i1 %.not.i.i, label %flushbuffer.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.n, align 4
  br label %flushbuffer.exit.i

flushbuffer.exit.i:                               ; preds = %bb.h, %bb.g, %bb.f
  %i.z = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %flushbuffer.exit.i, %bb.c
  %i.aa = phi ptr [ %i.z, %flushbuffer.exit.i ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.ab = trunc i32 %1 to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ac, ptr %3, align 8
  store i8 %i.ab, ptr %i.aa, align 1
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.i, %bb.e
  %i.ad = load i32, ptr %2, align 4
  %i.ae = add i32 %i.ad, -1                       ; 4 uses
  store i32 %i.ae, ptr %2, align 4
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.thread56, label %bb.j

.thread56:                                        ; preds = %bb.b, %thread-pre-split
  %i.ag = phi i32 [ %i.ae, %thread-pre-split ], [ %i.a, %bb.b ]
  tail call fastcc void @dopr_outchmulti(i32 noundef %0, i32 noundef %i.ag, ptr noundef %3)
  br label %.sink.split

bb.j:                                             ; preds = %thread-pre-split, %bb.a
  %i.ah = phi i32 [ %i.a, %bb.a ], [ %i.ae, %thread-pre-split ] ; 2 uses
  %.1 = phi i32 [ %1, %bb.a ], [ 0, %thread-pre-split ] ; 2 uses
  %i.ai = icmp ne i32 %.1, 0                      ; 3 uses
  %i.aj = zext i1 %i.ai to i32                    ; 3 uses
  %i.ak = icmp sgt i32 %i.ah, %i.aj
  br i1 %i.ak, label %.split, label %bb.k

.split:                                           ; preds = %bb.j
  %i.al = sub nuw nsw i32 %i.ah, %i.aj
  tail call fastcc void @dopr_outchmulti(i32 noundef 32, i32 noundef %i.al, ptr noundef %3)
  store i32 %i.aj, ptr %2, align 4
  br i1 %i.ai, label %bb.l, label %bb.v

bb.k:                                             ; preds = %bb.j
  br i1 %i.ai, label %bb.l, label %bb.v

bb.l:                                             ; preds = %.split, %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i34 = icmp eq ptr %i.an, null
  %.pre.i35 = load ptr, ptr %3, align 8           ; 4 uses
  %.not7.i36 = icmp ult ptr %.pre.i35, %i.an
  %or.cond.i37 = select i1 %.not.i34, i1 true, i1 %.not7.i36
  br i1 %or.cond.i37, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8
  br label %dopr_outch.exit41

bb.o:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 4, !range !4, !noundef !5
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = icmp eq ptr %.pre.i35, %i.av
  %or.cond.not.i.i38 = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond.not.i.i38, label %flushbuffer.exit.i40, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = ptrtoint ptr %i.av to i64
end_hunk_0
