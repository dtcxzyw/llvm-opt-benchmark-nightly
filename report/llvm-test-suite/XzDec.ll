inline.NumInlined: 13
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@MixCoder_SetFromMethod:bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = tail call ptr %i.g(ptr noundef nonnull %i.f, i64 noundef 168) #10, !inline_history !42 ; 3 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !23
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %Lzma2State_SetFromMethod.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @Lzma2State_Free, ptr %i.j, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @Lzma2State_SetProps, ptr %i.k, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @Lzma2State_Init, ptr %i.l, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @Lzma2State_Code, ptr %i.m, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %Lzma2State_SetFromMethod.exit

bb.d:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %1, 0
  %i.p = add i64 %2, -10
  %or.cond11.i = icmp ult i64 %i.p, -7
  %or.cond = or i1 %i.o, %or.cond11.i
  br i1 %or.cond, label %Lzma2State_SetFromMethod.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !23
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = tail call ptr %i.r(ptr noundef nonnull %i.q, i64 noundef 16688) #10, !inline_history !43 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %Lzma2State_SetFromMethod.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = trunc nuw nsw i64 %2 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %i.u, ptr %i.v, align 8, !tbaa !20
  store ptr %i.s, ptr %i.c, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @BraState_Free, ptr %i.w, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @BraState_SetProps, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @BraState_Init, ptr %i.y, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @BraState_Code, ptr %i.z, align 8, !tbaa !29
  br label %Lzma2State_SetFromMethod.exit

Lzma2State_SetFromMethod.exit:                    ; preds = %bb.f, %bb.e, %bb.c, %bb.b, %bb.d
  %.0 = phi i32 [ 4, %bb.d ], [ 2, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ 2, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MixCoder_Code(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 11 uses
  %i.b = alloca i64, align 8                      ; 11 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = load i64, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.e = load i64, ptr %4, align 8, !tbaa !30
  store i64 0, ptr %2, align 8, !tbaa !30
  store i64 0, ptr %4, align 8, !tbaa !30
  store i32 2, ptr %7, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = tail call ptr %i.j(ptr noundef nonnull %i.i, i64 noundef 393216) #10 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !37
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !38   ; 4 uses
  %.not = icmp eq i32 %i.n, 1
  %spec.select = select i1 %.not, i32 %6, i32 0   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.s = icmp sgt i32 %i.n, 0
  br i1 %i.s, label %.split.preheader, label %.split141.us.thread

.split.preheader:                                 ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %.split

.split:                                           ; preds = %.split.preheader, %._crit_edge
  %i.u = phi i32 [ %i.cz, %._crit_edge ], [ %i.n, %.split.preheader ]
  %i.v = phi i32 [ %i.da, %._crit_edge ], [ %i.n, %.split.preheader ] ; 3 uses
  %.090 = phi ptr [ %.393.ph.peel, %._crit_edge ], [ %3, %.split.preheader ] ; 3 uses
  %.085 = phi i32 [ %.388.ph.lcssa, %._crit_edge ], [ 1, %.split.preheader ] ; 3 uses
  %.074 = phi ptr [ %.377.ph.lcssa, %._crit_edge ], [ %1, %.split.preheader ] ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %.split141.us

bb.d:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.x = load i64, ptr %4, align 8, !tbaa !30
  %i.y = sub i64 %i.e, %i.x
  store i64 %i.y, ptr %i.b, align 8, !tbaa !30
  %i.z = icmp eq i32 %i.v, 1
  br i1 %i.z, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.p, align 8, !tbaa !30
  %i.ab = load i64, ptr %i.q, align 8, !tbaa !30
  %.not98.peel = icmp eq i64 %i.aa, %i.ab
  br i1 %.not98.peel, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !37
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ad = load i64, ptr %2, align 8, !tbaa !30
  %i.ae = sub i64 %i.d, %i.ad
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge.peel = phi i64 [ 131072, %bb.f ], [ %i.ae, %bb.g ]
  %.072.peel = phi ptr [ %i.ac, %bb.f ], [ %.074, %bb.g ]
  store i64 %storemerge.peel, ptr %i.a, align 8, !tbaa !30
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.ah = call i32 %i.af(ptr noundef %i.ag, ptr noundef %.072.peel, ptr noundef nonnull %i.a, ptr noundef %.090, ptr noundef nonnull %i.b, i32 noundef %5, i32 noundef %spec.select, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !4   ; 2 uses
  %.not99.peel = icmp eq i32 %i.ai, 0
  %spec.select102.peel = select i1 %.not99.peel, i32 0, i32 %.085
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !30  ; 3 uses
  %i.ak = load i64, ptr %4, align 8, !tbaa !30
  %i.al = add i64 %i.ak, %i.aj
  store i64 %i.al, ptr %4, align 8, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %.090, i64 %i.aj
  %i.an = load i32, ptr %i.m, align 8, !tbaa !38  ; 3 uses
  %i.ao = icmp eq i32 %i.an, 1
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !30  ; 4 uses
  br i1 %i.ao, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.ap, ptr %i.q, align 8, !tbaa !30
  store i64 0, ptr %i.p, align 8, !tbaa !30
  store i32 %i.ai, ptr %i.r, align 4, !tbaa !4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aq = load i64, ptr %2, align 8, !tbaa !30
  %i.ar = add i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %2, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %.074, i64 %i.ap
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.276.peel = phi ptr [ %i.as, %bb.j ], [ %.074, %bb.i ]
  %.not100.peel = icmp eq i32 %i.ah, 0
  br i1 %.not100.peel, label %bb.l, label %.thread115

bb.l:                                             ; preds = %bb.k
  %i.at = icmp ne i64 %i.ap, 0
  %i.au = icmp ne i64 %i.aj, 0
  %or.cond.peel = select i1 %i.at, i1 true, i1 %i.au
  %spec.select103.peel = zext i1 %or.cond.peel to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e
  %i.av = phi i32 [ %i.an, %bb.l ], [ %i.u, %bb.e ] ; 2 uses
  %i.aw = phi i32 [ %i.an, %bb.l ], [ %i.v, %bb.e ] ; 3 uses
  %.393.ph.peel = phi ptr [ %i.am, %bb.l ], [ %.090, %bb.e ]
  %.388.ph.peel = phi i32 [ %spec.select102.peel, %bb.l ], [ %.085, %bb.e ] ; 2 uses
  %.282.ph.peel = phi i32 [ %spec.select103.peel, %bb.l ], [ 0, %bb.e ] ; 2 uses
  %.377.ph.peel = phi ptr [ %.276.peel, %bb.l ], [ %.074, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %.lr.ph.peel.next, label %._crit_edge

.lr.ph.peel.next:                                 ; preds = %bb.m, %bb.v
  %i.ay = phi i32 [ %i.cw, %bb.v ], [ %i.av, %bb.m ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 1, %bb.m ] ; 12 uses
  %i.az = phi i32 [ %i.cw, %bb.v ], [ %i.aw, %bb.m ]
  %.175136 = phi ptr [ %.377.ph, %bb.v ], [ %.377.ph.peel, %bb.m ] ; 4 uses
  %.080134 = phi i32 [ %.282.ph, %bb.v ], [ %.282.ph.peel, %bb.m ] ; 2 uses
  %.186133 = phi i32 [ %.388.ph, %bb.v ], [ %.388.ph.peel, %bb.m ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.bc = add nsw i64 %indvars.iv, -1             ; 4 uses
  %i.bd = shl nuw nsw i64 %i.bc, 17
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bc
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !30 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bg
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bc
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.bc
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !30
  %i.bm = sub i64 %i.bl, %i.bg
  store i64 %i.bm, ptr %i.b, align 8, !tbaa !30
  %i.bn = add nsw i32 %i.az, -1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = icmp eq i64 %indvars.iv, %i.bo
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.peel.next
  %i.bq = load i64, ptr %2, align 8, !tbaa !30
  %i.br = sub i64 %i.d, %i.bq
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph.peel.next
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !30
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !30
  %.not98 = icmp eq i64 %i.bt, %i.bv
  br i1 %.not98, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.bx = shl nuw nsw i64 %indvars.iv, 17
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %storemerge = phi i64 [ 131072, %bb.p ], [ %i.br, %bb.n ]
  %.072 = phi ptr [ %i.by, %bb.p ], [ %.175136, %bb.n ]
  store i64 %storemerge, ptr %i.a, align 8, !tbaa !30
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !29
  %i.cb = load ptr, ptr %i.ba, align 8, !tbaa !23
  %i.cc = call i32 %i.ca(ptr noundef %i.cb, ptr noundef %.072, ptr noundef nonnull %i.a, ptr noundef %i.bh, ptr noundef nonnull %i.b, i32 noundef %i.bj, i32 noundef %spec.select, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.cd = load i32, ptr %i.c, align 4, !tbaa !4   ; 2 uses
  %.not99 = icmp eq i32 %i.cd, 0
  %spec.select102 = select i1 %.not99, i32 0, i32 %.186133
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.cg = getelementptr i8, ptr %i.cf, i64 24     ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !30
  %i.ci = add i64 %i.ch, %i.ce
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !30
  %i.cj = load i32, ptr %i.m, align 8, !tbaa !38  ; 2 uses
  %i.ck = add nsw i32 %i.cj, -1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = icmp eq i64 %indvars.iv, %i.cl
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !30  ; 4 uses
  br i1 %i.cm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.co = load i64, ptr %2, align 8, !tbaa !30
  %i.cp = add i64 %i.co, %i.cn
  store i64 %i.cp, ptr %2, align 8, !tbaa !30
  %i.cq = getelementptr inbounds nuw i8, ptr %.175136, i64 %i.cn
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  store i64 %i.cn, ptr %i.cr, align 8, !tbaa !30
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store i64 0, ptr %i.cs, align 8, !tbaa !30
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  store i32 %i.cd, ptr %i.ct, align 4, !tbaa !4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.276 = phi ptr [ %i.cq, %bb.r ], [ %.175136, %bb.s ]
  %.not100 = icmp eq i32 %i.cc, 0
  br i1 %.not100, label %bb.u, label %.thread115

bb.u:                                             ; preds = %bb.t
  %i.cu = icmp ne i64 %i.cn, 0
  %i.cv = icmp ne i64 %i.ce, 0
  %or.cond = select i1 %i.cu, i1 true, i1 %i.cv
  %spec.select103 = select i1 %or.cond, i32 1, i32 %.080134
  br label %bb.v

.thread115:                                       ; preds = %bb.k, %bb.t
  %.lcssa = phi i32 [ %i.cc, %bb.t ], [ %i.ah, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.w

bb.v:                                             ; preds = %bb.o, %bb.u
  %i.cw = phi i32 [ %i.cj, %bb.u ], [ %i.ay, %bb.o ] ; 5 uses
  %.388.ph = phi i32 [ %spec.select102, %bb.u ], [ %.186133, %bb.o ] ; 2 uses
  %.282.ph = phi i32 [ %spec.select103, %bb.u ], [ %.080134, %bb.o ] ; 2 uses
  %.377.ph = phi ptr [ %.276, %bb.u ], [ %.175136, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp slt i64 %indvars.iv.next, %i.cx
  br i1 %i.cy, label %.lr.ph.peel.next, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.v, %bb.m
  %i.cz = phi i32 [ %i.av, %bb.m ], [ %i.cw, %bb.v ]
  %i.da = phi i32 [ %i.aw, %bb.m ], [ %i.cw, %bb.v ]
  %.388.ph.lcssa = phi i32 [ %.388.ph.peel, %bb.m ], [ %.388.ph, %bb.v ] ; 2 uses
  %.282.ph.lcssa = phi i32 [ %.282.ph.peel, %bb.m ], [ %.282.ph, %bb.v ]
  %.377.ph.lcssa = phi ptr [ %.377.ph.peel, %bb.m ], [ %.377.ph, %bb.v ]
  %i.db = icmp eq i32 %.282.ph.lcssa, 0
  br i1 %i.db, label %.split141.us, label %.split, !llvm.loop !46

.split141.us:                                     ; preds = %.split, %._crit_edge
  %.186.lcssa155 = phi i32 [ %.388.ph.lcssa, %._crit_edge ], [ %.085, %.split ]
  %i.dc = icmp eq i32 %.186.lcssa155, 0
  br i1 %i.dc, label %bb.w, label %.split141.us.thread

.split141.us.thread:                              ; preds = %bb.c, %.split141.us
  store i32 1, ptr %7, align 4, !tbaa !4
  br label %bb.w

bb.w:                                             ; preds = %.thread115, %.split141.us, %.split141.us.thread, %bb.b
  %.4 = phi i32 [ 2, %bb.b ], [ %.lcssa, %.thread115 ], [ 0, %.split141.us.thread ], [ 0, %.split141.us ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 18) i32 @Xz_ParseHeader(ptr nofree noundef captures(none) initializes((0, 2)) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !12
  %i.c = zext i8 %i.b to i16
  %i.d = shl nuw i16 %i.c, 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12
  %i.g = zext i8 %i.f to i16
  %i.h = or disjoint i16 %i.d, %i.g
  store i16 %i.h, ptr %0, align 2, !tbaa !47
  %i.i = tail call i32 @CrcCalc(ptr noundef nonnull %i.a, i64 noundef 2) #10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %.not = icmp eq i32 %i.i, %i.k
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i16, ptr %0, align 2, !tbaa !47
  %i.m = icmp ult i16 %i.l, 16
  %i.n = select i1 %i.m, i32 0, i32 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.n, %bb.b ], [ 17, %bb.a ]
  ret i32 %.0
}

declare i32 @CrcCalc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 17) i32 @XzBlock_Parse(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !12
  %i.b = zext i8 %i.a to i32
  %i.c = shl nuw nsw i32 %i.b, 2                  ; 25 uses
  %i.d = zext nneg i32 %i.c to i64                ; 4 uses
  %i.e = tail call i32 @CrcCalc(ptr noundef nonnull %1, i64 noundef %i.d) #10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %.not = icmp eq i32 %i.e, %i.g
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.i, ptr %i.j, align 8, !tbaa !49
  %i.k = and i8 %i.i, 64
  %.not93 = icmp eq i8 %i.k, 0
  br i1 %.not93, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = add nsw i32 %i.c, -2
  store i64 0, ptr %0, align 8, !tbaa !8
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.m, i32 9)
  %i.o = zext nneg i32 %i.n to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %exitcond.not.i, label %.critedge, label %bb.e, !llvm.loop !10

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.i217 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %bb.d ] ; 4 uses
  %i.p = phi i64 [ 0, %bb.c ], [ %i.w, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.i217
  %i.r = load i8, ptr %i.q, align 1, !tbaa !12    ; 3 uses
  %i.s = and i8 %i.r, 127
  %i.t = zext nneg i8 %i.s to i64
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i217, 1 ; 3 uses
  %i.u = mul nuw nsw i64 %indvars.iv.i217, 7
  %i.v = shl i64 %i.t, %i.u
  %i.w = or i64 %i.v, %i.p                        ; 4 uses
  store i64 %i.w, ptr %0, align 8, !tbaa !8
  %i.x = icmp slt i8 %i.r, 0
  br i1 %i.x, label %bb.d, label %.split.loop.exit18.i, !llvm.loop !10

.split.loop.exit18.i:                             ; preds = %bb.e
  %i.y = icmp eq i8 %i.r, 0
  %i.z = icmp ne i64 %indvars.iv.i217, 0
  %or.cond.le.i = and i1 %i.z, %i.y
  br i1 %or.cond.le.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.split.loop.exit18.i
  %i.aa = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.ab = add i32 %i.aa, 2
  %i.ac = icmp eq i64 %i.w, 0
  %i.ad = add i64 %i.w, %i.d
  %i.ae = icmp slt i64 %i.ad, 0
  %or.cond101 = or i1 %i.ac, %i.ae
  br i1 %or.cond101, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.174 = phi i32 [ %i.ab, %bb.f ], [ 2, %bb.b ]  ; 5 uses
  %.not95 = icmp sgt i8 %i.i, -1
  br i1 %.not95, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = zext i32 %.174 to i64
end_hunk_0
