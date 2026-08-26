Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mov?download=true
inline.NumInlined: 191
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@mov_read_ares:bb.a
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  switch i32 %i.n, label %bb.f [
    i32 1852397121, label %bb.c
    i32 828659265, label %bb.g
    i32 845829697, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !82
  %i.q = icmp eq i32 %i.p, 27
  %i.r = icmp sgt i64 %3, 11
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.d, label %.thread50

bb.d:                                             ; preds = %bb.c
  %i.s = tail call i64 @avio_skip(ptr noundef %1, i64 noundef 10) #16 ; 0 uses
  %i.t = tail call i32 @avio_rb16(ptr noundef %1) #16
  %i.u = add i32 %i.t, -3405
  %or.cond4 = icmp ult i32 %i.u, 2
  br i1 %or.cond4, label %bb.e, label %mov_read_avid.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store i32 1440, ptr %i.v, align 8, !tbaa !84
  br label %mov_read_avid.exit

bb.f:                                             ; preds = %bb.b
  %i.w = icmp eq i32 %i.n, 1852069441
  %i.x = icmp sgt i64 %3, 23
  %or.cond7 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond7, label %bb.h, label %.thread50

bb.g:                                             ; preds = %bb.b, %bb.b
  %.old6 = icmp sgt i64 %3, 23
  br i1 %.old6, label %bb.h, label %.thread50

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.y = tail call i64 @avio_skip(ptr noundef %1, i64 noundef 12) #16 ; 0 uses
  %i.z = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 2 uses
  %i.aa = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 4 uses
  %i.ab = icmp slt i32 %i.z, 1
  %i.ac = icmp slt i32 %i.aa, 1
  %or.cond10 = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond10, label %mov_read_avid.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call i32 @avio_rb32(ptr noundef %1) #16
  switch i32 %i.ad, label %mov_read_avid.exit [
    i32 2, label %bb.j
    i32 1, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.ae = icmp samesign ugt i32 %i.aa, 1073741822
  br i1 %i.ae, label %mov_read_avid.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = shl nuw nsw i32 %i.aa, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.046 = phi i32 [ %i.af, %bb.k ], [ %i.aa, %bb.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 740
  store i32 %i.z, ptr %i.ag, align 4, !tbaa !87
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 744
  store i32 %.046, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !87
  br label %mov_read_avid.exit

.thread50:                                        ; preds = %bb.c, %bb.f, %bb.g, %bb.a
  %i.ah = tail call fastcc i32 @mov_read_extradata(ptr noundef nonnull readonly %0, ptr noundef %1, i32 %2, i64 %3, i32 noundef 199) ; 2 uses
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.m, label %mov_read_avid.exit

bb.m:                                             ; preds = %.thread50
  %i.ai = tail call fastcc i32 @mov_read_extradata(ptr noundef nonnull readonly %0, ptr noundef %1, i32 %2, i64 %3, i32 noundef 99)
  br label %mov_read_avid.exit

mov_read_avid.exit:                               ; preds = %bb.j, %bb.l, %bb.i, %bb.d, %bb.e, %bb.h, %bb.m, %.thread50
  %.2 = phi i32 [ %i.ai, %bb.m ], [ %i.ah, %.thread50 ], [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.j ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mov_read_avss(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @mov_read_extradata(ptr noundef %0, ptr noundef %1, i32 %2, i64 %3, i32 noundef 87)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mov_read_chpl(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = alloca [257 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.c = load i32, ptr %i.b, align 4, !tbaa !238
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %3, -5
  %i.e = icmp slt i64 %3, 5
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @avio_r8(ptr noundef %1) #16
  %i.g = tail call i32 @avio_rb24(ptr noundef %1) #16 ; 0 uses
  %.not27 = icmp eq i32 %i.f, 0
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = tail call i32 @avio_r8(ptr noundef %1) #16 ; 2 uses
  %i.j = icmp slt i32 %i.i, 1
  %i.k = icmp samesign ult i64 %3, 14
  %or.cond28 = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = zext nneg i32 %i.i to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.sroa.1.030 = phi i64 [ %i.d, %.lr.ph ], [ %i.r, %bb.h ]
  %i.n = call i64 @avio_rb64(ptr noundef %1) #16
  %i.o = call i32 @avio_r8(ptr noundef %1) #16    ; 3 uses
  %i.p = add nsw i32 %i.o, 9
  %i.q = sext i32 %i.p to i64
  %i.r = sub nsw i64 %.sroa.1.030, %i.q           ; 3 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = call i32 @ffio_read_size(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %i.o) #16 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = sext i32 %i.o to i64
  %i.w = getelementptr inbounds i8, ptr %i.a, i64 %i.v
  store i8 0, ptr %i.w, align 1, !tbaa !86
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !9
  %i.y = call ptr @avpriv_new_chapter(ptr noundef %i.x, i64 noundef %indvars.iv, i64 42949672960000001, i64 noundef %i.n, i64 noundef -9223372036854775808, ptr noundef nonnull %i.a) #16 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = icmp samesign uge i64 %indvars.iv.next, %i.m
  %i.aa = icmp slt i64 %i.r, 9
  %or.cond = or i1 %i.z, %i.aa
  br i1 %or.cond, label %.loopexit, label %bb.f, !llvm.loop !426

.loopexit:                                        ; preds = %bb.f, %bb.g, %bb.h, %bb.e, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.e ], [ %i.t, %bb.g ], [ 0, %bb.f ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @mov_read_stco(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !149
  %i.c = icmp slt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.e, i32 noundef 24, ptr noundef nonnull @.str.42) #16
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.k = add i32 %i.g, -1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %i.q = tail call i32 @avio_r8(ptr noundef %1) #16 ; 0 uses
  %i.r = tail call i32 @avio_rb24(ptr noundef %1) #16 ; 0 uses
  %i.s = tail call i32 @avio_rb32(ptr noundef %1) #16
  %i.t = zext i32 %i.s to i64
  %i.u = add nsw i64 %3, -8
  %i.v = icmp eq i32 %2, 1868788851               ; 2 uses
  %4 = select i1 %i.v, i64 4, i64 8
  %i.w = sdiv i64 %i.u, %4
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.w, i64 0)
  %i.x = tail call i64 @llvm.umin.i64(i64 %spec.select, i64 %i.t) ; 5 uses
  %i.y = trunc nuw i64 %i.x to i32                ; 3 uses
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !177
  %.not62 = icmp eq ptr %i.aa, null
  br i1 %.not62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ab, i32 noundef 24, ptr noundef nonnull @.str.43) #16
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  tail call void @av_free(ptr noundef null) #16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 28 ; 3 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !169
  %i.ad = tail call ptr @av_malloc_array(i64 noundef %i.x, i64 noundef 8) #16 ; 2 uses
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !177
  %.not63 = icmp eq ptr %i.ad, null
  br i1 %.not63, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.y, ptr %i.ac, align 4, !tbaa !169
  br i1 %i.v, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.j
  %indvars.iv76 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next77, %bb.j ] ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !49
  %.not65 = icmp eq i32 %i.af, 0
  br i1 %.not65, label %bb.j, label %.critedge.loopexit.split.loop.exit87

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call i32 @avio_rb32(ptr noundef nonnull %1) #16
  %i.ah = zext i32 %i.ag to i64
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !177
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv76
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !178
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %i.x
  br i1 %exitcond80.not, label %.critedge, label %bb.i, !llvm.loop !427

bb.k:                                             ; preds = %bb.h
  %i.ak = icmp eq i32 %2, 875982691
  br i1 %i.ak, label %.preheader69, label %bb.q

.preheader69:                                     ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.l

bb.l:                                             ; preds = %.preheader69, %bb.o
  %indvars.iv = phi i64 [ 0, %.preheader69 ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !49
  %.not64 = icmp eq i32 %i.am, 0
  br i1 %.not64, label %bb.m, label %.critedge.loopexit83.split.loop.exit

bb.m:                                             ; preds = %bb.l
  %i.an = tail call i64 @avio_rb64(ptr noundef nonnull %1) #16 ; 2 uses
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !177
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !178
  %i.aq = icmp slt i64 %i.an, 0
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ar, i32 noundef 24, ptr noundef nonnull @.str.44) #16
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !177
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv
  store i64 0, ptr %i.at, align 8, !tbaa !178
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %.critedge, label %bb.l, !llvm.loop !428

.critedge.loopexit.split.loop.exit87:             ; preds = %bb.i
  %i.au = trunc nuw i64 %indvars.iv76 to i32
  br label %.critedge

.critedge.loopexit83.split.loop.exit:             ; preds = %bb.l
  %i.av = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.j, %.critedge.loopexit83.split.loop.exit, %.critedge.loopexit.split.loop.exit87
  %.2 = phi i32 [ %i.y, %bb.j ], [ %i.au, %.critedge.loopexit.split.loop.exit87 ], [ %i.av, %.critedge.loopexit83.split.loop.exit ], [ %i.y, %bb.o ]
  store i32 %.2, ptr %i.ac, align 4, !tbaa !169
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !49
  %.not66 = icmp eq i32 %i.ax, 0
  br i1 %.not66, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ay, i32 noundef 24, ptr noundef nonnull @.str.45) #16
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.k, %bb.g, %bb.d, %bb.c, %bb.p, %bb.f, %bb.b
  %.054 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ -541478725, %bb.p ], [ -1094995529, %bb.k ], [ -12, %bb.g ], [ 0, %bb.d ], [ 0, %.critedge ]
  ret i32 %.054
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mov_read_colr(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, i8 0, i64 5, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 468
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !151 ; 3 uses
  br i1 %i.f, label %get_curr_st.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %.pre, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.j = add i32 %i.e, -1
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  br label %get_curr_st.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.n = load i32, ptr %i.m, align 8, !tbaa !155  ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i, label %get_curr_st.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !156
  %wide.trip.count.i.i = zext nneg i32 %i.n to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !157  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !164
  %.not12.i.i = icmp eq i32 %i.u, %.pre
  br i1 %.not12.i.i, label %get_curr_st.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %get_curr_st.exit.thread, label %bb.e, !llvm.loop !184

get_curr_st.exit:                                 ; preds = %bb.f, %bb.c
  %.0.i.in = phi ptr [ %i.l, %bb.c ], [ %i.s, %bb.f ]
  %.0.i = load ptr, ptr %.0.i.in, align 8, !tbaa !40 ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %get_curr_st.exit.thread, label %get_heif_item.exit

get_curr_st.exit.thread:                          ; preds = %bb.g, %bb.a, %bb.d, %get_curr_st.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.w = load i32, ptr %i.v, align 8, !tbaa !155  ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i, label %get_heif_item.exit.thread

.lr.ph.i:                                         ; preds = %get_curr_st.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !156
  %wide.trip.count.i = zext nneg i32 %i.w to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !157 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !164
  %.not12.i = icmp eq i32 %i.ad, %.pre
  br i1 %.not12.i, label %get_heif_item.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@mov_read_dref:bb.a
  %i.dv = load ptr, ptr %i.ci, align 8, !tbaa !449
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv271
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !86
  switch i8 %i.dy, label %bb.v [
    i8 58, label %bb.u
    i8 0, label %bb.u
  ]

bb.u:                                             ; preds = %.lr.ph238.1, %.lr.ph238.1
  store i8 47, ptr %i.dx, align 1, !tbaa !86
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph238.1
  %indvars.iv.next272.1 = add nuw nsw i64 %indvars.iv271, 2 ; 2 uses
  %niter315.next.1 = add i64 %niter315, 2         ; 2 uses
  %niter315.ncmp.1 = icmp eq i64 %niter315.next.1, %unroll_iter314
  br i1 %niter315.ncmp.1, label %._crit_edge239.loopexit.unr-lcssa, label %.lr.ph238, !llvm.loop !451

._crit_edge239.loopexit.unr-lcssa:                ; preds = %bb.v
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %._crit_edge239, label %.lr.ph238.epil.preheader

.lr.ph238.epil.preheader:                         ; preds = %._crit_edge239.loopexit.unr-lcssa, %.lr.ph238.preheader
  %indvars.iv271.epil.init = phi i64 [ 0, %.lr.ph238.preheader ], [ %indvars.iv.next272.1, %._crit_edge239.loopexit.unr-lcssa ]
  %lcmp.mod313 = trunc i32 %.0181230.in to i1
  tail call void @llvm.assume(i1 %lcmp.mod313)
  %i.dz = load ptr, ptr %i.ci, align 8, !tbaa !449
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv271.epil.init ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !86
  switch i8 %i.eb, label %._crit_edge239 [
    i8 58, label %bb.w
    i8 0, label %bb.w
  ]

bb.w:                                             ; preds = %.lr.ph238.epil.preheader, %.lr.ph238.epil.preheader
  store i8 47, ptr %i.ea, align 1, !tbaa !86
  br label %._crit_edge239

._crit_edge239:                                   ; preds = %bb.s, %._crit_edge239.loopexit.unr-lcssa, %bb.w, %.lr.ph238.epil.preheader, %bb.q, %._crit_edge233
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.ed = load ptr, ptr %i.ci, align 8, !tbaa !449
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ec, i32 noundef 48, ptr noundef nonnull @.str.65, ptr noundef %i.ed) #16
  br label %bb.af

bb.x:                                             ; preds = %bb.k
  %i.ee = load ptr, ptr %i.ch, align 8, !tbaa !452
  tail call void @av_free(ptr noundef %i.ee) #16
  %i.ef = zext i16 %.0168 to i32                  ; 2 uses
  %i.eg = add nuw nsw i32 %i.ef, 1
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = tail call noalias ptr @av_malloc(i64 noundef %i.eh) #16 ; 3 uses
  store ptr %i.ei, ptr %i.ch, align 8, !tbaa !452
  %.not205 = icmp eq ptr %i.ei, null
  br i1 %.not205, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = tail call i32 @ffio_read_size(ptr noundef %1, ptr noundef nonnull %i.ei, i32 noundef %i.ef) #16 ; 2 uses
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %.thread.sink.split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.el = load ptr, ptr %i.ch, align 8, !tbaa !452
  %i.em = zext i16 %.0168 to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.em
  store i8 0, ptr %i.en, align 1, !tbaa !86
  %.not252 = icmp eq i16 %.0168, 0
  br i1 %.not252, label %._crit_edge227, label %.lr.ph226.preheader

.lr.ph226.preheader:                              ; preds = %bb.z
  %wide.trip.count = zext i16 %.0168 to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.eo = icmp eq i16 %.0168, 1
  br i1 %i.eo, label %.lr.ph226.epil.preheader, label %.lr.ph226.preheader.new

.lr.ph226.preheader.new:                          ; preds = %.lr.ph226.preheader
  %unroll_iter = and i64 %wide.trip.count, 65534
  br label %.lr.ph226

.lr.ph226:                                        ; preds = %bb.ac, %.lr.ph226.preheader.new
  %indvars.iv265 = phi i64 [ 0, %.lr.ph226.preheader.new ], [ %indvars.iv.next266.1, %bb.ac ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph226.preheader.new ], [ %niter.next.1, %bb.ac ]
  %i.ep = load ptr, ptr %i.ch, align 8, !tbaa !452
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %indvars.iv265 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !86
  %i.es = icmp eq i8 %i.er, 58
  br i1 %i.es, label %bb.aa, label %.lr.ph226.1

bb.aa:                                            ; preds = %.lr.ph226
  store i8 47, ptr %i.eq, align 1, !tbaa !86
  br label %.lr.ph226.1

.lr.ph226.1:                                      ; preds = %.lr.ph226, %bb.aa
  %i.et = load ptr, ptr %i.ch, align 8, !tbaa !452
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %indvars.iv265
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !86
  %i.ex = icmp eq i8 %i.ew, 58
  br i1 %i.ex, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph226.1
  store i8 47, ptr %i.ev, align 1, !tbaa !86
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph226.1
  %indvars.iv.next266.1 = add nuw nsw i64 %indvars.iv265, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge227.loopexit.unr-lcssa, label %.lr.ph226, !llvm.loop !453

._crit_edge227.loopexit.unr-lcssa:                ; preds = %bb.ac
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge227, label %.lr.ph226.epil.preheader

.lr.ph226.epil.preheader:                         ; preds = %._crit_edge227.loopexit.unr-lcssa, %.lr.ph226.preheader
  %indvars.iv265.epil.init = phi i64 [ 0, %.lr.ph226.preheader ], [ %indvars.iv.next266.1, %._crit_edge227.loopexit.unr-lcssa ]
  %lcmp.mod310 = trunc i16 %.0168 to i1
  tail call void @llvm.assume(i1 %lcmp.mod310)
  %i.ey = load ptr, ptr %i.ch, align 8, !tbaa !452
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv265.epil.init ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !86
  %i.fb = icmp eq i8 %i.fa, 58
  br i1 %i.fb, label %bb.ad, label %._crit_edge227

bb.ad:                                            ; preds = %.lr.ph226.epil.preheader
  store i8 47, ptr %i.ez, align 1, !tbaa !86
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %._crit_edge227.loopexit.unr-lcssa, %bb.ad, %.lr.ph226.epil.preheader, %bb.z
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.fd = load ptr, ptr %i.ch, align 8, !tbaa !452
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fc, i32 noundef 48, ptr noundef nonnull @.str.66, ptr noundef %i.fd) #16
  br label %bb.af

bb.ae:                                            ; preds = %bb.k
  %i.fe = zext i16 %.0168 to i64
  %i.ff = tail call i64 @avio_skip(ptr noundef %1, i64 noundef %i.fe) #16 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge227, %bb.ae, %._crit_edge239
  %sext200.mask = and i32 %i.cn, 65535
  %.not201 = icmp eq i32 %sext200.mask, 65535
  br i1 %.not201, label %.loopexit.loopexit, label %bb.i, !llvm.loop !454

bb.ag:                                            ; preds = %bb.e
  %i.fg = load ptr, ptr %i.a, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fg, i32 noundef 48, ptr noundef nonnull @.str.67, i32 noundef %i.ay, i32 noundef %i.am) #16
  %i.fh = add nsw i32 %.0172241, -1
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.i, %bb.af
  %i.fi = add nsw i32 %.1176240, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ag
  %.2177 = phi i32 [ %.1176240, %bb.ag ], [ %i.fi, %.loopexit.loopexit ] ; 2 uses
  %.1173 = phi i32 [ %i.fh, %bb.ag ], [ %.0172241, %.loopexit.loopexit ] ; 2 uses
  %i.fj = tail call i64 @avio_seek(ptr noundef %1, i64 noundef %i.av, i32 noundef 0) #16 ; 0 uses
  %i.fk = icmp slt i32 %.2177, %.1173
  br i1 %i.fk, label %.lr.ph243, label %.thread, !llvm.loop !455

.thread.sink.split:                               ; preds = %bb.y, %bb.m
  %.lcssa298.sink = phi ptr [ %i.ci, %bb.m ], [ %i.ch, %bb.y ]
  %.4.ph = phi i32 [ %i.cz, %bb.m ], [ %i.ej, %bb.y ]
  tail call void @av_freep(ptr noundef nonnull %.lcssa298.sink) #16
  br label %.thread

.thread:                                          ; preds = %.loopexit, %.lr.ph243, %bb.f, %bb.g, %bb.l, %bb.j, %bb.x, %.thread.sink.split, %._crit_edge, %bb.b, %bb.c, %bb.a
  %.4 = phi i32 [ -1094995529, %bb.b ], [ 0, %bb.a ], [ %.4.ph, %.thread.sink.split ], [ -12, %._crit_edge ], [ -1094995529, %bb.c ], [ -12, %bb.l ], [ -12, %bb.x ], [ -541478725, %bb.j ], [ 0, %.loopexit ], [ %i.bo, %bb.g ], [ %i.be, %bb.f ], [ -1094995529, %.lr.ph243 ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @mov_read_elst(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.critedge92, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load i32, ptr %i.f, align 8, !tbaa !456
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %.critedge92

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.j = add i32 %i.d, -1
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42   ; 2 uses
  %i.p = tail call i32 @avio_r8(ptr noundef %1) #16
  %i.q = tail call i32 @avio_rb24(ptr noundef %1) #16 ; 0 uses
  %i.r = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 3 uses
  %i.s = add nsw i64 %3, -8                       ; 6 uses
  %.fr112 = freeze i32 %i.p
  %i.t = icmp eq i32 %.fr112, 1                   ; 2 uses
  %i.u = select i1 %i.t, i64 20, i64 12           ; 3 uses
  %i.v = sext i32 %i.r to i64
  %i.w = mul nsw i64 %i.u, %i.v
  %.not83 = icmp eq i64 %i.s, %i.w
  br i1 %.not83, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 272
  %i.z = load i32, ptr %i.y, align 8, !tbaa !131
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.x, i32 noundef 16, ptr noundef nonnull @.str.68, i32 noundef %i.r, i64 noundef %3) #16
  br label %.critedge92

bb.f:                                             ; preds = %bb.d
  %i.ab = sdiv i64 %i.s, %i.u                     ; 2 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 3 uses
  %sext = shl i64 %i.ab, 32
  %i.ad = ashr exact i64 %sext, 32
  %i.ae = mul nsw i64 %i.ad, %i.u
  %.not84 = icmp eq i64 %i.ae, %i.s
  br i1 %.not84, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.x, i32 noundef 24, ptr noundef nonnull @.str.69, i64 noundef %i.s, i32 noundef %i.ac) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c
  %.078 = phi i32 [ %i.ac, %bb.g ], [ %i.ac, %bb.f ], [ %i.r, %bb.c ] ; 4 uses
  %.not85 = icmp eq i32 %.078, 0
  br i1 %.not85, label %.critedge92, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 144 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !457
  %.not86 = icmp eq ptr %i.ag, null
  br i1 %.not86, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ah, i32 noundef 24, ptr noundef nonnull @.str.70) #16
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !457
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = phi ptr [ %.pre, %bb.j ], [ null, %bb.i ]
  tail call void @av_free(ptr noundef %i.ai) #16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 152 ; 2 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !458
  %i.ak = sext i32 %.078 to i64                   ; 3 uses
  %i.al = tail call ptr @av_malloc_array(i64 noundef %i.ak, i64 noundef 24) #16 ; 2 uses
  store ptr %i.al, ptr %i.af, align 8, !tbaa !457
  %.not87 = icmp eq ptr %i.al, null
  br i1 %.not87, label %.critedge92, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !28
  %i.ap = add i32 %i.ao, -1
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.am, i32 noundef 56, ptr noundef nonnull @.str.71, i32 noundef %i.ap, i32 noundef %.078) #16
  %i.aq = icmp sgt i32 %.078, 0
  %i.ar = icmp sgt i64 %3, 8
  %or.cond98 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond98, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  br i1 %i.t, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.p
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %bb.p ], [ 0, %.lr.ph ] ; 5 uses
  %.sroa.1.0100.us = phi i64 [ %.reass111, %bb.p ], [ %i.s, %.lr.ph ] ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !49
  %.not88.us = icmp eq i32 %i.at, 0
  br i1 %.not88.us, label %bb.m, label %.critedge.loopexit

bb.m:                                             ; preds = %.lr.ph.split.us
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !457
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %indvars.iv129 ; 5 uses
  %i.aw = tail call i64 @avio_rb64(ptr noundef nonnull %1) #16
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !459
  %i.ax = tail call i64 @avio_rb64(ptr noundef nonnull %1) #16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !462
  %i.az = tail call i32 @avio_rb32(ptr noundef nonnull %1) #16
  %i.ba = uitofp nsz i32 %i.az to double
  %i.bb = fmul nnan nsz double %i.ba, f0x3EF0000000000000
  %i.bc = fptrunc nsz double %i.bb to float       ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store float %i.bc, ptr %i.bd, align 8, !tbaa !463
  %.reass111 = add nsw i64 %.sroa.1.0100.us, -20
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.bf = load i64, ptr %i.av, align 8, !tbaa !459
  %i.bg = load i64, ptr %i.ay, align 8, !tbaa !462
  %i.bh = fpext nsz float %i.bc to double
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.be, i32 noundef 56, ptr noundef nonnull @.str.72, i64 noundef %i.bf, i64 noundef %i.bg, double noundef %i.bh) #16
  %i.bi = load i64, ptr %i.ay, align 8, !tbaa !462 ; 2 uses
  %or.cond90.us = icmp sgt i64 %i.bi, -2
  br i1 %or.cond90.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 272
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !131
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.split.us, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bn = load i64, ptr %i.av, align 8, !tbaa !459 ; 2 uses
  %i.bo = icmp slt i64 %i.bn, 0
  br i1 %i.bo, label %.split107.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 3 uses
  %i.bp = icmp slt i64 %indvars.iv.next130, %i.ak
  %i.bq = icmp samesign ugt i64 %.sroa.1.0100.us, 20
  %or.cond.us = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond.us, label %.lr.ph.split.us, label %.critedge.loopexit, !llvm.loop !464

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ 0, %.lr.ph ] ; 5 uses
  %.sroa.1.0100 = phi i64 [ %.reass, %bb.t ], [ %i.s, %.lr.ph ] ; 2 uses
  %i.br = load i32, ptr %i.as, align 8, !tbaa !49
  %.not88 = icmp eq i32 %i.br, 0
  br i1 %.not88, label %bb.q, label %.critedge.loopexit138

bb.q:                                             ; preds = %.lr.ph.split
  %i.bs = load ptr, ptr %i.af, align 8, !tbaa !457
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %indvars.iv ; 5 uses
  %i.bu = tail call i32 @avio_rb32(ptr noundef nonnull %1) #16
  %i.bv = zext i32 %i.bu to i64
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !459
  %i.bw = tail call i32 @avio_rb32(ptr noundef nonnull %1) #16
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !462
  %i.bz = tail call i32 @avio_rb32(ptr noundef nonnull %1) #16
  %i.ca = uitofp nsz i32 %i.bz to double
  %i.cb = fmul nnan nsz double %i.ca, f0x3EF0000000000000
  %i.cc = fptrunc nsz double %i.cb to float       ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store float %i.cc, ptr %i.cd, align 8, !tbaa !463
  %.reass = add nsw i64 %.sroa.1.0100, -12
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.cf = load i64, ptr %i.bt, align 8, !tbaa !459
  %i.cg = load i64, ptr %i.by, align 8, !tbaa !462
  %i.ch = fpext nsz float %i.cc to double
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ce, i32 noundef 56, ptr noundef nonnull @.str.72, i64 noundef %i.cf, i64 noundef %i.cg, double noundef %i.ch) #16
  %i.ci = load i64, ptr %i.by, align 8, !tbaa !462 ; 2 uses
  %or.cond90 = icmp sgt i64 %i.ci, -2
  br i1 %or.cond90, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 272
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !131
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.split.us, label %bb.s

.split.us:                                        ; preds = %bb.r, %bb.n
  %indvars.iv.lcssa158.sink = phi i64 [ %indvars.iv129, %bb.n ], [ %indvars.iv, %bb.r ]
  %.us-phi103 = phi i64 [ %i.bi, %bb.n ], [ %i.ci, %bb.r ]
  %.us-phi105 = phi ptr [ %i.bj, %bb.n ], [ %i.cj, %bb.r ] ; 2 uses
  %i.cn = trunc nuw nsw i64 %indvars.iv.lcssa158.sink to i32
  %i.co = getelementptr inbounds nuw i8, ptr %.us-phi105, i64 44
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !28
  %i.cq = add i32 %i.cp, -1
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %.us-phi105, i32 noundef 16, ptr noundef nonnull @.str.73, i32 noundef %i.cq, i32 noundef %i.cn, i64 noundef %.us-phi103) #16
  br label %.critedge92

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cr = load i64, ptr %i.bt, align 8, !tbaa !459 ; 2 uses
  %i.cs = icmp slt i64 %i.cr, 0
  br i1 %i.cs, label %.split107.us, label %bb.t

.split107.us:                                     ; preds = %bb.s, %bb.o
  %indvars.iv.lcssa157.sink = phi i64 [ %indvars.iv129, %bb.o ], [ %indvars.iv, %bb.s ]
  %.us-phi108 = phi i64 [ %i.bn, %bb.o ], [ %i.cr, %bb.s ]
  %i.ct = trunc nuw nsw i64 %indvars.iv.lcssa157.sink to i32
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 44
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !28
  %i.cx = add i32 %i.cw, -1
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cu, i32 noundef 16, ptr noundef nonnull @.str.74, i32 noundef %i.cx, i32 noundef %i.ct, i64 noundef %.us-phi108) #16
  br label %.critedge92

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cy = icmp slt i64 %indvars.iv.next, %i.ak
  %i.cz = icmp samesign ugt i64 %.sroa.1.0100, 12
  %or.cond = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond, label %.lr.ph.split, label %.critedge.loopexit138, !llvm.loop !464

.critedge.loopexit:                               ; preds = %.lr.ph.split.us, %bb.p
  %indvars.iv129.lcssa.sink = phi i64 [ %indvars.iv.next130, %bb.p ], [ %indvars.iv129, %.lr.ph.split.us ]
  %i.da = trunc i64 %indvars.iv129.lcssa.sink to i32
  br label %.critedge

.critedge.loopexit138:                            ; preds = %.lr.ph.split, %bb.t
  %indvars.iv.lcssa.sink = phi i64 [ %indvars.iv.next, %bb.t ], [ %indvars.iv, %.lr.ph.split ]
  %i.db = trunc i64 %indvars.iv.lcssa.sink to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit138, %.critedge.loopexit, %bb.l
  %.077.lcssa = phi i32 [ 0, %bb.l ], [ %i.da, %.critedge.loopexit ], [ %i.db, %.critedge.loopexit138 ]
  store i32 %.077.lcssa, ptr %i.aj, align 8, !tbaa !458
  br label %.critedge92

.critedge92:                                      ; preds = %.split.us, %.split107.us, %bb.k, %bb.h, %bb.a, %bb.b, %.critedge, %bb.e
  %.2 = phi i32 [ 0, %bb.a ], [ -1094995529, %bb.e ], [ -12, %bb.k ], [ 0, %.critedge ], [ 0, %bb.h ], [ 0, %bb.b ], [ -1094995529, %.split107.us ], [ -1094995529, %.split.us ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mov_read_enda(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = tail call i32 @avio_rb16(ptr noundef %1) #16
end_hunk_1
