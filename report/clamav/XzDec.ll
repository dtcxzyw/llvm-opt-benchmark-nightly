Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/XzDec?download=true
inline.NumInlined: 13
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@MixCoder_Code:bb.a
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.ah = call i32 %i.af(ptr noundef %i.ag, ptr noundef %.072.peel, ptr noundef nonnull %i.a, ptr noundef %.091, ptr noundef nonnull %i.b, i32 noundef %5, i32 noundef %spec.select, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !29  ; 2 uses
  %.not99.peel = icmp eq i32 %i.ai, 0
  %spec.select102.peel = select i1 %.not99.peel, i32 0, i32 %.077
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !28  ; 3 uses
  %i.ak = load i64, ptr %4, align 8, !tbaa !28
  %i.al = add i64 %i.ak, %i.aj
  store i64 %i.al, ptr %4, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %.091, i64 %i.aj
  %i.an = load i32, ptr %i.m, align 8, !tbaa !34  ; 3 uses
  %i.ao = icmp eq i32 %i.an, 1
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !28  ; 4 uses
  br i1 %i.ao, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.ap, ptr %i.q, align 8, !tbaa !28
  store i64 0, ptr %i.p, align 8, !tbaa !28
  store i32 %i.ai, ptr %i.r, align 4, !tbaa !29
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aq = load i64, ptr %2, align 8, !tbaa !28
  %i.ar = add i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %2, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %.086, i64 %i.ap
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.288.peel = phi ptr [ %i.as, %bb.j ], [ %.086, %bb.i ]
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
  %.394.ph.peel = phi ptr [ %i.am, %bb.l ], [ %.091, %bb.e ]
  %.389.ph.peel = phi ptr [ %.288.peel, %bb.l ], [ %.086, %bb.e ] ; 2 uses
  %.3.ph.peel = phi i32 [ %spec.select102.peel, %bb.l ], [ %.077, %bb.e ] ; 2 uses
  %.2.ph.peel = phi i32 [ %spec.select103.peel, %bb.l ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %.lr.ph.peel.next, label %._crit_edge

.lr.ph.peel.next:                                 ; preds = %bb.m, %bb.v
  %i.ay = phi i32 [ %i.cw, %bb.v ], [ %i.av, %bb.m ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 1, %bb.m ] ; 12 uses
  %i.az = phi i32 [ %i.cw, %bb.v ], [ %i.aw, %bb.m ]
  %.074135 = phi i32 [ %.2.ph, %bb.v ], [ %.2.ph.peel, %bb.m ] ; 2 uses
  %.178134 = phi i32 [ %.3.ph, %bb.v ], [ %.3.ph.peel, %bb.m ] ; 2 uses
  %.187133 = phi ptr [ %.389.ph, %bb.v ], [ %.389.ph.peel, %bb.m ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.bc = add nsw i64 %indvars.iv, -1             ; 4 uses
  %i.bd = shl nuw nsw i64 %i.bc, 17
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bc
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !28 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bg
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bc
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !29
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.bc
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !28
  %i.bm = sub i64 %i.bl, %i.bg
  store i64 %i.bm, ptr %i.b, align 8, !tbaa !28
  %i.bn = add nsw i32 %i.az, -1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = icmp eq i64 %indvars.iv, %i.bo
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.peel.next
  %i.bq = load i64, ptr %2, align 8, !tbaa !28
  %i.br = sub i64 %i.d, %i.bq
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph.peel.next
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !28
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !28
  %.not98 = icmp eq i64 %i.bt, %i.bv
  br i1 %.not98, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.bx = shl nuw nsw i64 %indvars.iv, 17
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %storemerge = phi i64 [ 131072, %bb.p ], [ %i.br, %bb.n ]
  %.072 = phi ptr [ %i.by, %bb.p ], [ %.187133, %bb.n ]
  store i64 %storemerge, ptr %i.a, align 8, !tbaa !28
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !27
  %i.cb = load ptr, ptr %i.ba, align 8, !tbaa !22
  %i.cc = call i32 %i.ca(ptr noundef %i.cb, ptr noundef %.072, ptr noundef nonnull %i.a, ptr noundef %i.bh, ptr noundef nonnull %i.b, i32 noundef %i.bj, i32 noundef %spec.select, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.cd = load i32, ptr %i.c, align 4, !tbaa !29  ; 2 uses
  %.not99 = icmp eq i32 %i.cd, 0
  %spec.select102 = select i1 %.not99, i32 0, i32 %.178134
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.cg = getelementptr i8, ptr %i.cf, i64 24     ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !28
  %i.ci = add i64 %i.ch, %i.ce
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !28
  %i.cj = load i32, ptr %i.m, align 8, !tbaa !34  ; 2 uses
  %i.ck = add nsw i32 %i.cj, -1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = icmp eq i64 %indvars.iv, %i.cl
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !28  ; 4 uses
  br i1 %i.cm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.co = load i64, ptr %2, align 8, !tbaa !28
  %i.cp = add i64 %i.co, %i.cn
  store i64 %i.cp, ptr %2, align 8, !tbaa !28
  %i.cq = getelementptr inbounds nuw i8, ptr %.187133, i64 %i.cn
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  store i64 %i.cn, ptr %i.cr, align 8, !tbaa !28
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store i64 0, ptr %i.cs, align 8, !tbaa !28
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  store i32 %i.cd, ptr %i.ct, align 4, !tbaa !29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.288 = phi ptr [ %i.cq, %bb.r ], [ %.187133, %bb.s ]
  %.not100 = icmp eq i32 %i.cc, 0
  br i1 %.not100, label %bb.u, label %.thread115

bb.u:                                             ; preds = %bb.t
  %i.cu = icmp ne i64 %i.cn, 0
  %i.cv = icmp ne i64 %i.ce, 0
  %or.cond = select i1 %i.cu, i1 true, i1 %i.cv
  %spec.select103 = select i1 %or.cond, i32 1, i32 %.074135
  br label %bb.v

.thread115:                                       ; preds = %bb.k, %bb.t
  %.lcssa = phi i32 [ %i.cc, %bb.t ], [ %i.ah, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.w

bb.v:                                             ; preds = %bb.o, %bb.u
  %i.cw = phi i32 [ %i.cj, %bb.u ], [ %i.ay, %bb.o ] ; 5 uses
  %.389.ph = phi ptr [ %.288, %bb.u ], [ %.187133, %bb.o ] ; 2 uses
  %.3.ph = phi i32 [ %spec.select102, %bb.u ], [ %.178134, %bb.o ] ; 2 uses
  %.2.ph = phi i32 [ %spec.select103, %bb.u ], [ %.074135, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp slt i64 %indvars.iv.next, %i.cx
  br i1 %i.cy, label %.lr.ph.peel.next, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %bb.v, %bb.m
  %i.cz = phi i32 [ %i.av, %bb.m ], [ %i.cw, %bb.v ]
  %i.da = phi i32 [ %i.aw, %bb.m ], [ %i.cw, %bb.v ]
  %.389.ph.lcssa = phi ptr [ %.389.ph.peel, %bb.m ], [ %.389.ph, %bb.v ]
  %.3.ph.lcssa = phi i32 [ %.3.ph.peel, %bb.m ], [ %.3.ph, %bb.v ] ; 2 uses
  %.2.ph.lcssa = phi i32 [ %.2.ph.peel, %bb.m ], [ %.2.ph, %bb.v ]
  %i.db = icmp eq i32 %.2.ph.lcssa, 0
  br i1 %i.db, label %.split141.us, label %.split, !llvm.loop !58

.split141.us:                                     ; preds = %.split, %._crit_edge
  %.178.lcssa155 = phi i32 [ %.3.ph.lcssa, %._crit_edge ], [ %.077, %.split ]
  %i.dc = icmp eq i32 %.178.lcssa155, 0
  br i1 %i.dc, label %bb.w, label %.split141.us.thread

.split141.us.thread:                              ; preds = %bb.c, %.split141.us
  store i32 1, ptr %7, align 4, !tbaa !29
  br label %bb.w

bb.w:                                             ; preds = %.thread115, %.split141.us, %.split141.us.thread, %bb.b
  %.484 = phi i32 [ 2, %bb.b ], [ %.lcssa, %.thread115 ], [ 0, %.split141.us.thread ], [ 0, %.split141.us ]
  ret i32 %.484
}

; Function Attrs: nounwind uwtable
define range(i32 0, 18) i32 @Xz_ParseHeader(ptr nofree noundef captures(none) initializes((0, 2)) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %2 = load i8, ptr %i.a, align 1, !tbaa !11
  %3 = zext i8 %2 to i16
  %4 = shl nuw i16 %3, 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %6 = load i8, ptr %5, align 1, !tbaa !11
  %7 = zext i8 %6 to i16
  %8 = or disjoint i16 %4, %7
  store i16 %8, ptr %0, align 2, !tbaa !38
  %i.b = tail call i32 @CrcCalc(ptr noundef nonnull %i.a, i64 noundef 2) #10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 1, !tbaa !11
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %0, align 2, !tbaa !38
  %i.f = icmp ult i16 %i.e, 16
  %i.g = select i1 %i.f, i32 0, i32 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 17, %bb.a ]
  ret i32 %.0
}

declare i32 @CrcCalc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 17) i32 @XzBlock_Parse(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !11
  %i.b = zext i8 %i.a to i32
  %i.c = shl nuw nsw i32 %i.b, 2                  ; 25 uses
  %i.d = zext nneg i32 %i.c to i64                ; 4 uses
  %i.e = tail call i32 @CrcCalc(ptr noundef nonnull %1, i64 noundef %i.d) #10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.g = load i32, ptr %i.f, align 1, !tbaa !11
  %.not = icmp eq i32 %i.e, %i.g
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.i, ptr %i.j, align 8, !tbaa !40
  %i.k = and i8 %i.i, 64
  %.not94 = icmp eq i8 %i.k, 0
  br i1 %.not94, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = add nsw i32 %i.c, -2
  store i64 0, ptr %0, align 8, !tbaa !10
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.m, i32 9)
  %i.o = zext nneg i32 %i.n to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %exitcond.not.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.i218 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %bb.d ] ; 4 uses
  %i.p = phi i64 [ 0, %bb.c ], [ %i.w, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.i218
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11    ; 3 uses
  %i.s = and i8 %i.r, 127
  %i.t = zext nneg i8 %i.s to i64
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i218, 1 ; 3 uses
  %i.u = mul nuw nsw i64 %indvars.iv.i218, 7
  %i.v = shl i64 %i.t, %i.u
  %i.w = or i64 %i.v, %i.p                        ; 4 uses
  store i64 %i.w, ptr %0, align 8, !tbaa !10
  %i.x = icmp slt i8 %i.r, 0
  br i1 %i.x, label %bb.d, label %.split.loop.exit18.i

.split.loop.exit18.i:                             ; preds = %bb.e
  %i.y = icmp eq i8 %i.r, 0
  %i.z = icmp ne i64 %indvars.iv.i218, 0
  %or.cond.le.i = and i1 %i.z, %i.y
  br i1 %or.cond.le.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.split.loop.exit18.i
  %i.aa = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.ab = add nuw nsw i32 %i.aa, 2
  %i.ac = icmp eq i64 %i.w, 0
  %i.ad = add i64 %i.w, %i.d
  %i.ae = icmp slt i64 %i.ad, 0
  %or.cond102 = or i1 %i.ac, %i.ae
  br i1 %or.cond102, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.175 = phi i32 [ %i.ab, %bb.f ], [ 2, %bb.b ]  ; 5 uses
  %.not96 = icmp sgt i8 %i.i, -1
  br i1 %.not96, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = zext i32 %.175 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  %i.ah = sub i32 %i.c, %.175
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.ai, align 8, !tbaa !10
  %i.aj = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 9)
  %i.ak = zext nneg i32 %i.aj to i64
  %exitcond.not.i104219 = icmp eq i32 %i.c, %.175
  br i1 %exitcond.not.i104219, label %.critedge, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %exitcond.not.i104 = icmp eq i64 %indvars.iv.next.i105, %i.ak
  br i1 %exitcond.not.i104, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %indvars.iv.i103220 = phi i64 [ %indvars.iv.next.i105, %bb.i ], [ 0, %bb.h ] ; 4 uses
  %i.al = phi i64 [ %i.as, %bb.i ], [ 0, %bb.h ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.i103220
  %i.an = load i8, ptr %i.am, align 1, !tbaa !11  ; 3 uses
  %i.ao = and i8 %i.an, 127
  %i.ap = zext nneg i8 %i.ao to i64
  %indvars.iv.next.i105 = add nuw nsw i64 %indvars.iv.i103220, 1 ; 3 uses
  %i.aq = mul nuw nsw i64 %indvars.iv.i103220, 7
  %i.ar = shl i64 %i.ap, %i.aq
  %i.as = or i64 %i.ar, %i.al                     ; 2 uses
  store i64 %i.as, ptr %i.ai, align 8, !tbaa !10
  %i.at = icmp slt i8 %i.an, 0
  br i1 %i.at, label %bb.i, label %.split.loop.exit18.i106

.split.loop.exit18.i106:                          ; preds = %.lr.ph
  %i.au = icmp eq i8 %i.an, 0
  %i.av = icmp ne i64 %indvars.iv.i103220, 0
  %or.cond.le.i107 = and i1 %i.av, %i.au
  br i1 %or.cond.le.i107, label %.critedge, label %Xz_ReadVarInt.exit109

Xz_ReadVarInt.exit109:                            ; preds = %.split.loop.exit18.i106
  %i.aw = trunc nuw nsw i64 %indvars.iv.next.i105 to i32
  %i.ax = add i32 %.175, %i.aw
  br label %bb.j

bb.j:                                             ; preds = %Xz_ReadVarInt.exit109, %bb.g
  %.377 = phi i32 [ %i.ax, %Xz_ReadVarInt.exit109 ], [ %.175, %bb.g ] ; 5 uses
  %i.ay = and i8 %i.i, 3                          ; 2 uses
  %narrow = add nuw nsw i8 %i.ay, 1               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ba = zext i32 %.377 to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ba
  %i.bc = sub i32 %i.c, %.377
  store i64 0, ptr %i.az, align 8, !tbaa !10
  %i.bd = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 9)
  %i.be = zext nneg i32 %i.bd to i64
  %exitcond.not.i111221 = icmp eq i32 %i.c, %.377
  br i1 %exitcond.not.i111221, label %.critedge, label %.lr.ph224

.lr.ph224:                                        ; preds = %bb.j
  %i.bf = add i32 %.377, 2
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next171 = add i32 %indvars.iv170222, 1
  %exitcond.not.i111 = icmp eq i64 %indvars.iv.next.i112, %i.be
  br i1 %exitcond.not.i111, label %.critedge, label %bb.l

bb.l:                                             ; preds = %.lr.ph224, %bb.k
  %indvars.iv.i110223 = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next.i112, %bb.k ] ; 4 uses
  %i.bg = phi i64 [ 0, %.lr.ph224 ], [ %i.bn, %bb.k ]
  %indvars.iv170222 = phi i32 [ %i.bf, %.lr.ph224 ], [ %indvars.iv.next171, %bb.k ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i110223
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !11  ; 3 uses
  %i.bj = and i8 %i.bi, 127
  %i.bk = zext nneg i8 %i.bj to i64
  %indvars.iv.next.i112 = add nuw nsw i64 %indvars.iv.i110223, 1 ; 3 uses
  %i.bl = mul nuw nsw i64 %indvars.iv.i110223, 7
  %i.bm = shl i64 %i.bk, %i.bl
  %i.bn = or i64 %i.bm, %i.bg                     ; 2 uses
  store i64 %i.bn, ptr %i.az, align 8, !tbaa !10
  %i.bo = icmp slt i8 %i.bi, 0
  br i1 %i.bo, label %bb.k, label %.split.loop.exit18.i113

.split.loop.exit18.i113:                          ; preds = %bb.l
  %i.bp = icmp eq i8 %i.bi, 0
  %i.bq = icmp ne i64 %indvars.iv.i110223, 0
  %or.cond.le.i114 = and i1 %i.bq, %i.bp
  br i1 %or.cond.le.i114, label %.critedge, label %bb.m

bb.m:                                             ; preds = %.split.loop.exit18.i113
  %i.br = trunc nuw nsw i64 %indvars.iv.next.i112 to i32
  %i.bs = add i32 %.377, %i.br                    ; 4 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  %i.bv = sub i32 %i.c, %i.bs
  %i.bw = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 9)
  %i.bx = zext nneg i32 %i.bw to i64
  %exitcond.not.i118226 = icmp eq i32 %i.c, %i.bs
  br i1 %exitcond.not.i118226, label %.critedge, label %.lr.ph229

bb.n:                                             ; preds = %.lr.ph229
  %indvars.iv.next174 = add i32 %indvars.iv173227, 1
  %exitcond.not.i118 = icmp eq i64 %indvars.iv.next.i119, %i.bx
  br i1 %exitcond.not.i118, label %.critedge, label %.lr.ph229

.lr.ph229:                                        ; preds = %bb.m, %bb.n
  %indvars.iv.i117228 = phi i64 [ %indvars.iv.next.i119, %bb.n ], [ 0, %bb.m ] ; 4 uses
  %i.by = phi i64 [ %i.cf, %bb.n ], [ 0, %bb.m ]
  %indvars.iv173227 = phi i32 [ %indvars.iv.next174, %bb.n ], [ %indvars.iv170222, %bb.m ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv.i117228
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !11  ; 3 uses
  %i.cb = and i8 %i.ca, 127
  %i.cc = zext nneg i8 %i.cb to i64
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i117228, 1 ; 3 uses
  %i.cd = mul nuw nsw i64 %indvars.iv.i117228, 7
end_hunk_0
begin_hunk_1_@XzDec_Init:bb.a
  %.pre-phi = phi i64 [ 0, %bb.m ], [ %i.ax, %bb.s ], [ %i.i, %bb.g ], [ %i.i, %bb.f ], [ %i.i, %bb.d ], [ %i.i, %bb.b ]
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92.pre-phi
  br i1 %exitcond93.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.loopexit, %bb.t
  %indvars.iv89 = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next90, %bb.t ] ; 3 uses
  %i.cg = sub nuw nsw i64 %.pre-phi, %indvars.iv89
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cf, i64 %indvars.iv89 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !25
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !22
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !42
  %i.cp = zext i32 %i.co to i64
  %i.cq = load ptr, ptr %0, align 8, !tbaa !32
  %i.cr = tail call i32 %i.ck(ptr noundef %i.cl, ptr noundef nonnull %i.cm, i64 noundef %i.cp, ptr noundef %i.cq) #10 ; 2 uses
  %.not66 = icmp eq i32 %i.cr, 0
  br i1 %.not66, label %bb.t, label %MixCoder_Init.exit

bb.v:                                             ; preds = %bb.t
  %i.cs = load i32, ptr %i.e, align 8, !tbaa !34  ; 3 uses
  %i.ct = icmp sgt i32 %i.cs, 1
  br i1 %i.ct, label %.preheader.thread.i, label %.preheader.i

.preheader.thread.i:                              ; preds = %bb.v
  %i.cu = add nsw i32 %i.cs, -1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cy = zext nneg i32 %i.cu to i64              ; 2 uses
  %i.cz = shl nuw nsw i64 %i.cy, 3                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cv, i8 0, i64 %i.cz, i1 false), !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cw, i8 0, i64 %i.cz, i1 false), !tbaa !28
  %i.da = shl nuw nsw i64 %i.cy, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cx, i8 0, i64 %i.da, i1 false), !tbaa !29
  br label %.lr.ph17.i.preheader

.preheader.i:                                     ; preds = %bb.v
  %i.db = icmp eq i32 %i.cs, 1
  br i1 %i.db, label %.lr.ph17.i.preheader, label %MixCoder_Init.exit

.lr.ph17.i.preheader:                             ; preds = %.preheader.i, %.preheader.thread.i
  br label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %.lr.ph17.i.preheader, %.lr.ph17.i
  %indvars.iv.i69 = phi i64 [ %indvars.iv.next.i70, %.lr.ph17.i ], [ 0, %.lr.ph17.i.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [40 x i8], ptr %i.cf, i64 %indvars.iv.i69 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !26
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !22
  tail call void %i.de(ptr noundef %i.df) #10, !inline_history !64
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i69, 1 ; 2 uses
  %i.dg = load i32, ptr %i.e, align 8, !tbaa !34
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next.i70, %i.dh
  br i1 %i.di, label %.lr.ph17.i, label %MixCoder_Init.exit

MixCoder_Init.exit:                               ; preds = %bb.q, %bb.n, %bb.p, %bb.u, %.lr.ph17.i, %bb.l, %MixCoder_Free.exit, %.preheader.i
  %.5 = phi i32 [ 0, %.lr.ph17.i ], [ %i.cr, %bb.u ], [ 0, %.preheader.i ], [ 2, %bb.l ], [ 4, %MixCoder_Free.exit ], [ 2, %bb.n ], [ 4, %bb.p ], [ 2, %bb.q ]
  ret i32 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @XzUnpacker_Create(ptr nofree noundef writeonly captures(none) initializes((0, 8), (40, 48), (64, 80), (88, 108), (200, 208), (240, 248), (280, 288), (320, 328)) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %1, ptr %i.a, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr null, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr null, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr null, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr null, ptr %i.g, align 8, !tbaa !22
  store i32 0, ptr %0, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @XzUnpacker_Free(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %._crit_edge.i, label %.lr.ph.split.i

.lr.ph.splitthread-pre-split.i:                   ; preds = %bb.e
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !32
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.splitthread-pre-split.i
  %i.h = phi ptr [ %.pr.i, %.lr.ph.splitthread-pre-split.i ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.i = phi i32 [ %i.n, %.lr.ph.splitthread-pre-split.i ], [ %i.c, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.splitthread-pre-split.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %indvars.iv.i ; 3 uses
  %.not19.i = icmp eq ptr %i.h, null
  br i1 %.not19.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %.not20.i = icmp eq ptr %i.k, null
  br i1 %.not20.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  tail call void %i.m(ptr noundef nonnull %i.k, ptr noundef nonnull %i.h) #10, !inline_history !43
  store ptr null, ptr %i.j, align 8, !tbaa !22
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.split.i
  %i.n = phi i32 [ %.pre.i, %bb.d ], [ %i.i, %bb.c ], [ %i.i, %.lr.ph.split.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next.i, %i.o
  br i1 %i.p, label %.lr.ph.splitthread-pre-split.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph.i, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33   ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %MixCoder_Free.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14
  tail call void %i.u(ptr noundef %i.s, ptr noundef nonnull %i.r) #10, !inline_history !43
  store ptr null, ptr %i.q, align 8, !tbaa !33
  br label %MixCoder_Free.exit

MixCoder_Free.exit:                               ; preds = %._crit_edge.i, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !65
  tail call void @cl_hash_destroy(ptr noundef %i.w) #10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !49
  tail call void @cl_hash_destroy(ptr noundef %i.y) #10
  store ptr null, ptr %i.x, align 8, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %MixCoder_Free.exit
  ret void
}

declare void @cl_hash_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @XzUnpacker_Code(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5, ptr nofree noundef captures(none) initializes((0, 4)) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %i.d = alloca [64 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 16               ; 6 uses
  %i.f = load i64, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.g = load i64, ptr %4, align 8, !tbaa !28     ; 3 uses
  store i64 0, ptr %2, align 8, !tbaa !28
  store i64 0, ptr %4, align 8, !tbaa !28
  store i32 0, ptr %6, align 4, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 19 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 585
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 586
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 577
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 582 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 583
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.af = phi i64 [ 0, %bb.a ], [ %.pre, %.backedge ] ; 8 uses
  %.0265 = phi ptr [ %3, %bb.a ], [ %.5270.jt3, %.backedge ] ; 32 uses
  %.0262 = phi ptr [ %1, %bb.a ], [ %.2264.jt3, %.backedge ] ; 22 uses
  %i.ag = sub i64 %i.g, %i.af                     ; 5 uses
  %i.ah = load i32, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 6
  br i1 %i.ai, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.aj = load i64, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.ak = sub i64 %i.f, %i.aj
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i64 %i.ag, ptr %i.b, align 8, !tbaa !28
  %i.al = icmp eq i64 %i.g, %i.af
  %i.am = icmp eq i64 %i.f, %i.aj
  %or.cond = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %6, align 4, !tbaa !29
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.an = call i32 @MixCoder_Code(ptr noundef nonnull %i.ab, ptr noundef %.0262, ptr noundef nonnull %i.a, ptr noundef %.0265, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef %5, ptr noundef nonnull %6) ; 2 uses
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !28
  call void @XzCheck_Update(ptr noundef nonnull %i.x, ptr noundef %.0262, i64 noundef %i.ao) #10
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !28  ; 4 uses
  %i.aq = load i64, ptr %4, align 8, !tbaa !28
  %i.ar = add i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %4, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %.0265, i64 %i.ap
  %i.at = load i64, ptr %i.v, align 8, !tbaa !66
  %i.au = add i64 %i.at, %i.ap                    ; 2 uses
  store i64 %i.au, ptr %i.v, align 8, !tbaa !66
  %i.av = load i64, ptr %i.a, align 8, !tbaa !28  ; 4 uses
  %i.aw = load i64, ptr %2, align 8, !tbaa !28
  %i.ax = add i64 %i.aw, %i.av
  store i64 %i.ax, ptr %2, align 8, !tbaa !28
  %i.ay = getelementptr inbounds nuw i8, ptr %.0262, i64 %i.av
  %i.az = load i64, ptr %i.aa, align 8, !tbaa !67
  %i.ba = add i64 %i.az, %i.av
  store i64 %i.ba, ptr %i.aa, align 8, !tbaa !67
  %.not311 = icmp eq i32 %i.an, 0
  br i1 %.not311, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.bb = load i32, ptr %6, align 4, !tbaa !29
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.bd = load i32, ptr %i.y, align 4, !tbaa !68
  %i.be = zext i32 %i.bd to i64
  %i.bf = add i64 %i.au, %i.be
  %i.bg = load i16, ptr %i.l, align 8, !tbaa !69
  %i.bh = call i32 @XzFlags_GetCheckSize(i16 noundef zeroext %i.bg) #10
  %i.bi = zext i32 %i.bh to i64
  %i.bj = add i64 %i.bf, %i.bi
  %i.bk = call i32 @Xz_WriteVarInt(ptr noundef nonnull %i.c, i64 noundef %i.bj) #10 ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bl
  %i.bn = load i64, ptr %i.aa, align 8, !tbaa !67
  %i.bo = call i32 @Xz_WriteVarInt(ptr noundef nonnull %i.bm, i64 noundef %i.bn) #10
  %i.bp = add i32 %i.bo, %i.bk
  %i.bq = load ptr, ptr %i.t, align 8, !tbaa !49  ; 2 uses
  %.not312 = icmp eq ptr %i.bq, null
  %.pre351 = zext i32 %i.bp to i64                ; 2 uses
  br i1 %.not312, label %._crit_edge350, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = call i32 @cl_update_hash(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.c, i64 noundef %.pre351) #10 ; 0 uses
  br label %._crit_edge350

._crit_edge350:                                   ; preds = %bb.g, %bb.h
  %i.bs = load <2 x i64>, ptr %i.ad, align 8, !tbaa !10
  %i.bt = insertelement <2 x i64> <i64 1, i64 poison>, i64 %.pre351, i64 1
  %i.bu = add <2 x i64> %i.bs, %i.bt
  store <2 x i64> %i.bu, ptr %i.ad, align 8, !tbaa !10
  store i32 7, ptr %0, align 8, !tbaa !46
  store i32 0, ptr %i.i, align 4, !tbaa !47
  store i32 0, ptr %i.w, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.bv = icmp eq i64 %i.ap, 0
  %i.bw = icmp eq i64 %i.av, 0
  %or.cond11 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond11, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %._crit_edge350, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.backedge

bb.k:                                             ; preds = %bb.b
  %i.bx = icmp eq i64 %i.g, %i.af
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 3, ptr %6, align 4, !tbaa !29
  br label %.thread336

bb.m:                                             ; preds = %bb.k
  switch i32 %i.ah, label %.backedge [
    i32 0, label %bb.n
    i32 5, label %bb.t
    i32 7, label %bb.ad
    i32 1, label %bb.aj
    i32 2, label %bb.au
    i32 3, label %bb.ax
    i32 4, label %bb.bb
  ]

bb.n:                                             ; preds = %bb.m
  %i.by = load i32, ptr %i.i, align 4, !tbaa !47  ; 4 uses
  %i.bz = icmp ult i32 %i.by, 12
  br i1 %i.bz, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ca = icmp samesign ult i32 %i.by, 6
  %.pre348 = load i8, ptr %.0265, align 1, !tbaa !11 ; 2 uses
  %i.cb = zext nneg i32 %i.by to i64              ; 2 uses
  br i1 %i.ca, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr @XZ_SIG, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !11
  %.not310 = icmp eq i8 %.pre348, %i.cd
  br i1 %.not310, label %._crit_edge, label %.thread336

._crit_edge:                                      ; preds = %bb.o, %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %.0265, i64 1
  %i.cf = add nuw nsw i32 %i.by, 1
  store i32 %i.cf, ptr %i.i, align 4, !tbaa !47
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cb
  store i8 %.pre348, ptr %i.cg, align 1, !tbaa !11
  %i.ch = load i64, ptr %4, align 8, !tbaa !28
  %i.ci = add i64 %i.ch, 1
  store i64 %i.ci, ptr %4, align 8, !tbaa !28
  br label %.backedge

bb.q:                                             ; preds = %bb.n
  %9 = load i8, ptr %i.ae, align 2, !tbaa !11
  %10 = zext i8 %9 to i16
  %11 = shl nuw i16 %10, 8
  %12 = load i8, ptr %8, align 1, !tbaa !11
  %13 = zext i8 %12 to i16
  %14 = or disjoint i16 %11, %13
  store i16 %14, ptr %i.l, align 8, !tbaa !38
  %i.cj = call i32 @CrcCalc(ptr noundef nonnull %i.ae, i64 noundef 2) #10
  %i.ck = load i32, ptr %i.o, align 8, !tbaa !11
  %.not.i = icmp eq i32 %i.cj, %i.ck
  br i1 %.not.i, label %bb.r, label %.thread336

bb.r:                                             ; preds = %bb.q
  %i.cl = load i16, ptr %i.l, align 8, !tbaa !38
  %i.cm = icmp ult i16 %i.cl, 16
  br i1 %i.cm, label %bb.s, label %.thread336

bb.s:                                             ; preds = %bb.r
  store i32 5, ptr %0, align 8, !tbaa !46
  %i.cn = call ptr @cl_hash_init(ptr noundef nonnull @.str) #10
  store ptr %i.cn, ptr %i.t, align 8, !tbaa !49
  store i32 0, ptr %i.i, align 4, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  br label %.backedge

bb.t:                                             ; preds = %bb.m
  %i.co = load i32, ptr %i.i, align 4, !tbaa !47  ; 5 uses
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %.0265, i64 1
  %i.cr = load i8, ptr %.0265, align 1, !tbaa !11
  store i32 1, ptr %i.i, align 4, !tbaa !47
  store i8 %i.cr, ptr %i.j, align 8, !tbaa !11
  %i.cs = load i64, ptr %4, align 8, !tbaa !28
  %i.ct = add i64 %i.cs, 1
  store i64 %i.ct, ptr %4, align 8, !tbaa !28
  %i.cu = load i8, ptr %i.j, align 8, !tbaa !11   ; 2 uses
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cw = load i64, ptr %i.ad, align 8, !tbaa !48
  %i.cx = call i32 @Xz_WriteVarInt(ptr noundef nonnull %i.ac, i64 noundef %i.cw) #10
  %i.cy = add i32 %i.cx, 1                        ; 2 uses
  store i32 %i.cy, ptr %i.r, align 4, !tbaa !71
  %i.cz = zext i32 %i.cy to i64                   ; 3 uses
  store i64 %i.cz, ptr %i.s, align 8, !tbaa !72
  %i.da = load i64, ptr %i.m, align 8, !tbaa !73
  %i.db = add i64 %i.da, %i.cz
  store i64 %i.db, ptr %i.m, align 8, !tbaa !73
  %i.dc = load ptr, ptr %i.t, align 8, !tbaa !49  ; 2 uses
  %.not308 = icmp eq ptr %i.dc, null
  br i1 %.not308, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = call i32 @cl_finish_hash(ptr noundef nonnull %i.dc, ptr noundef nonnull %i.u) #10 ; 0 uses
  %i.de = call ptr @cl_hash_init(ptr noundef nonnull @.str) #10
  store ptr %i.de, ptr %i.t, align 8, !tbaa !49
  %.pre346 = load i32, ptr %i.r, align 4, !tbaa !71
  %.pre349 = zext i32 %.pre346 to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pre-phi = phi i64 [ %.pre349, %bb.w ], [ %i.cz, %bb.v ]
  %i.df = call i32 @CrcUpdate(i32 noundef -1, ptr noundef nonnull %i.j, i64 noundef %.pre-phi) #10
  store i32 %i.df, ptr %i.q, align 8, !tbaa !74
  store i32 1, ptr %0, align 8, !tbaa !46
  %.pre347 = load i8, ptr %i.j, align 8, !tbaa !11
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %i.dg = phi i8 [ %.pre347, %bb.x ], [ %i.cu, %bb.u ]
  %i.dh = zext i8 %i.dg to i32
  %i.di = shl nuw nsw i32 %i.dh, 2
  %i.dj = add nuw nsw i32 %i.di, 4
  store i32 %i.dj, ptr %i.y, align 4, !tbaa !68
  br label %.backedge

bb.z:                                             ; preds = %bb.t
  %i.dk = load i32, ptr %i.y, align 4, !tbaa !68  ; 2 uses
  %.not305 = icmp eq i32 %i.co, %i.dk
  br i1 %.not305, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = sub i32 %i.dk, %i.co
  %i.dm = zext i32 %i.dl to i64
  %spec.select345 = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.dm) ; 4 uses
  %spec.select = trunc nuw i64 %spec.select345 to i32
  %i.dn = zext i32 %i.co to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr align 1 %.0265, i64 %spec.select345, i1 false)
  %i.dp = add i32 %i.co, %spec.select
  store i32 %i.dp, ptr %i.i, align 4, !tbaa !47
  %i.dq = load i64, ptr %4, align 8, !tbaa !28
  %i.dr = add i64 %i.dq, %spec.select345
  store i64 %i.dr, ptr %4, align 8, !tbaa !28
  %i.ds = getelementptr inbounds nuw i8, ptr %.0265, i64 %spec.select345
  br label %.backedge

bb.ab:                                            ; preds = %bb.z
  %i.dt = call i32 @XzBlock_Parse(ptr noundef nonnull %i.z, ptr noundef nonnull %i.j) ; 2 uses
  %.not306 = icmp eq i32 %i.dt, 0
  br i1 %.not306, label %bb.ac, label %.thread336

bb.ac:                                            ; preds = %bb.ab
  store i32 6, ptr %0, align 8, !tbaa !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.du = load i16, ptr %i.l, align 8, !tbaa !69
  %i.dv = and i16 %i.du, 15
  %i.dw = zext nneg i16 %i.dv to i32
  call void @XzCheck_Init(ptr noundef nonnull %i.x, i32 noundef %i.dw) #10
  %i.dx = call i32 @XzDec_Init(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.z) ; 2 uses
  %.not307 = icmp eq i32 %i.dx, 0
  br i1 %.not307, label %.backedge, label %.thread336

bb.ad:                                            ; preds = %bb.m
  %i.dy = load i64, ptr %i.v, align 8, !tbaa !66
  %i.dz = load i32, ptr %i.w, align 8, !tbaa !70  ; 2 uses
  %i.ea = zext i32 %i.dz to i64
  %i.eb = add i64 %i.dy, %i.ea
  %i.ec = and i64 %i.eb, 3
  %.not299 = icmp eq i64 %i.ec, 0
  br i1 %.not299, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ed = add i64 %i.af, 1
  store i64 %i.ed, ptr %4, align 8, !tbaa !28
  %i.ee = add i32 %i.dz, 1
  store i32 %i.ee, ptr %i.w, align 8, !tbaa !70
  %i.ef = getelementptr inbounds nuw i8, ptr %.0265, i64 1
  %i.eg = load i8, ptr %.0265, align 1, !tbaa !11
  %.not304 = icmp eq i8 %i.eg, 0
  br i1 %.not304, label %.backedge, label %.thread336

bb.af:                                            ; preds = %bb.ad
  %i.eh = load i16, ptr %i.l, align 8, !tbaa !69
  %i.ei = call i32 @XzFlags_GetCheckSize(i16 noundef zeroext %i.eh) #10 ; 3 uses
  %i.ej = load i32, ptr %i.i, align 4, !tbaa !47  ; 4 uses
  %.not300 = icmp eq i32 %i.ei, %i.ej
  br i1 %.not300, label %bb.ag, label %.thread

.thread:                                          ; preds = %bb.af
  %i.ek = sub i32 %i.ei, %i.ej
  %i.el = zext i32 %i.ek to i64
  %spec.select315344 = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.el) ; 4 uses
  %spec.select315 = trunc nuw i64 %spec.select315344 to i32
  %i.em = zext i32 %i.ej to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.em
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.en, ptr align 1 %.0265, i64 %spec.select315344, i1 false)
  %i.eo = add i32 %i.ej, %spec.select315
  store i32 %i.eo, ptr %i.i, align 4, !tbaa !47
  %i.ep = load i64, ptr %4, align 8, !tbaa !28
  %i.eq = add i64 %i.ep, %spec.select315344
  store i64 %i.eq, ptr %4, align 8, !tbaa !28
  %i.er = getelementptr inbounds nuw i8, ptr %.0265, i64 %spec.select315344
  br label %.backedge

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 5, ptr %0, align 8, !tbaa !46
  store i32 0, ptr %i.i, align 4, !tbaa !47
  %i.es = call i32 @XzCheck_Final(ptr noundef nonnull %i.x, ptr noundef nonnull %i.d) #10
  %.not301 = icmp eq i32 %i.es, 0
  br i1 %.not301, label %.thread327, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.et = zext i32 %i.ei to i64
  %bcmp302 = call i32 @bcmp(ptr nonnull %i.d, ptr nonnull %i.j, i64 %i.et)
  %.not303 = icmp eq i32 %bcmp302, 0
  br i1 %.not303, label %.thread327, label %bb.ai

.thread327:                                       ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %.backedge

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %.thread336

bb.aj:                                            ; preds = %bb.m
  %i.eu = load i32, ptr %i.i, align 4, !tbaa !47  ; 3 uses
  %i.ev = load i32, ptr %i.r, align 4, !tbaa !71
  %i.ew = icmp ult i32 %i.eu, %i.ev
  br i1 %i.ew, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ex = add i64 %i.af, 1
  store i64 %i.ex, ptr %4, align 8, !tbaa !28
  %i.ey = getelementptr inbounds nuw i8, ptr %.0265, i64 1
  %i.ez = load i8, ptr %.0265, align 1, !tbaa !11
  %i.fa = add nuw i32 %i.eu, 1
  store i32 %i.fa, ptr %i.i, align 4, !tbaa !47
  %i.fb = zext i32 %i.eu to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !11
  %.not298 = icmp eq i8 %i.ez, %i.fd
  br i1 %.not298, label %.backedge, label %.thread336

bb.al:                                            ; preds = %bb.aj
  %i.fe = load i64, ptr %i.s, align 8, !tbaa !72  ; 4 uses
  %i.ff = load i64, ptr %i.m, align 8, !tbaa !73  ; 4 uses
  %i.fg = icmp ult i64 %i.fe, %i.ff
  br i1 %i.fg, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.fh = sub nuw i64 %i.ff, %i.fe
  %spec.select316 = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.fh) ; 5 uses
  %i.fi = load i32, ptr %i.q, align 8, !tbaa !74
  %i.fj = call i32 @CrcUpdate(i32 noundef %i.fi, ptr noundef %.0265, i64 noundef %spec.select316) #10
  store i32 %i.fj, ptr %i.q, align 8, !tbaa !74
  %i.fk = load ptr, ptr %i.t, align 8, !tbaa !49  ; 2 uses
  %.not297 = icmp eq ptr %i.fk, null
  br i1 %.not297, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fl = call i32 @cl_update_hash(ptr noundef nonnull %i.fk, ptr noundef %.0265, i64 noundef %spec.select316) #10 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fm = load i64, ptr %4, align 8, !tbaa !28
  %i.fn = add i64 %i.fm, %spec.select316
  store i64 %i.fn, ptr %4, align 8, !tbaa !28
  %i.fo = getelementptr inbounds nuw i8, ptr %.0265, i64 %spec.select316
  %i.fp = load i64, ptr %i.s, align 8, !tbaa !72
  %i.fq = add i64 %i.fp, %spec.select316
  store i64 %i.fq, ptr %i.s, align 8, !tbaa !72
  br label %.backedge

bb.ap:                                            ; preds = %bb.al
  %i.fr = and i64 %i.fe, 3
  %.not293 = icmp eq i64 %i.fr, 0
  br i1 %.not293, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fs = getelementptr inbounds nuw i8, ptr %.0265, i64 1
  %i.ft = load i8, ptr %.0265, align 1, !tbaa !11 ; 2 uses
  %i.fu = load i32, ptr %i.q, align 8, !tbaa !74  ; 2 uses
  %i.fv = zext i8 %i.ft to i32
  %.masked = and i32 %i.fu, 255
  %i.fw = xor i32 %.masked, %i.fv
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !29
  %i.ga = lshr i32 %i.fu, 8
  %i.gb = xor i32 %i.fz, %i.ga
  store i32 %i.gb, ptr %i.q, align 8, !tbaa !74
  %i.gc = add i64 %i.af, 1
  store i64 %i.gc, ptr %4, align 8, !tbaa !28
  %i.gd = add i64 %i.fe, 1
  store i64 %i.gd, ptr %i.s, align 8, !tbaa !72
  %i.ge = add i64 %i.ff, 1
  store i64 %i.ge, ptr %i.m, align 8, !tbaa !73
  %.not296 = icmp eq i8 %i.ft, 0
  br i1 %.not296, label %.backedge, label %.thread336

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store i32 2, ptr %0, align 8, !tbaa !46
  %i.gf = add i64 %i.ff, 4
  store i64 %i.gf, ptr %i.m, align 8, !tbaa !73
  store i32 0, ptr %i.i, align 4, !tbaa !47
  %i.gg = load ptr, ptr %i.t, align 8, !tbaa !49  ; 2 uses
  %.not294 = icmp eq ptr %i.gg, null
  br i1 %.not294, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gh = call i32 @cl_finish_hash(ptr noundef nonnull %i.gg, ptr noundef nonnull %i.e) #10 ; 0 uses
  store ptr null, ptr %i.t, align 8, !tbaa !49
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gi = load i128, ptr %i.e, align 16
  %i.gj = load i128, ptr %i.u, align 1
  %i.gk = xor i128 %i.gi, %i.gj
  %i.gl = getelementptr i8, ptr %i.e, i64 16
  %i.gm = getelementptr i8, ptr %i.u, i64 16
  %i.gn = load i128, ptr %i.gl, align 16
  %i.go = load i128, ptr %i.gm, align 1
  %i.gp = xor i128 %i.gn, %i.go
  %i.gq = or i128 %i.gk, %i.gp
  %i.gr = icmp ne i128 %i.gq, 0
  %i.gs = zext i1 %i.gr to i32
  %.not295 = icmp eq i32 %i.gs, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br i1 %.not295, label %.backedge, label %.thread336

bb.au:                                            ; preds = %bb.m
  %i.gt = load i32, ptr %i.i, align 4, !tbaa !47  ; 3 uses
  %i.gu = icmp ult i32 %i.gt, 4
  br i1 %i.gu, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gv = add i64 %i.af, 1
  store i64 %i.gv, ptr %4, align 8, !tbaa !28
  %i.gw = getelementptr inbounds nuw i8, ptr %.0265, i64 1
  %i.gx = load i8, ptr %.0265, align 1, !tbaa !11
  %i.gy = add nuw nsw i32 %i.gt, 1
  store i32 %i.gy, ptr %i.i, align 4, !tbaa !47
  %i.gz = zext nneg i32 %i.gt to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gz
  store i8 %i.gx, ptr %i.ha, align 1, !tbaa !11
  br label %.backedge

bb.aw:                                            ; preds = %bb.au
  store i32 3, ptr %0, align 8, !tbaa !46
  store i32 0, ptr %i.i, align 4, !tbaa !47
  %i.hb = load i32, ptr %i.q, align 8, !tbaa !74
  %i.hc = load i32, ptr %i.j, align 8, !tbaa !11
  %i.hd = xor i32 %i.hc, %i.hb
  %.not292 = icmp eq i32 %i.hd, -1
  br i1 %.not292, label %.backedge, label %.thread336

bb.ax:                                            ; preds = %bb.m
  %i.he = load i32, ptr %i.i, align 4, !tbaa !47  ; 3 uses
  %i.hf = sub i32 12, %i.he
  %i.hg = zext i32 %i.hf to i64
  %spec.select319342 = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.hg) ; 4 uses
  %spec.select319 = trunc nuw i64 %spec.select319342 to i32
  %i.hh = zext i32 %i.he to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hi, ptr align 1 %.0265, i64 %spec.select319342, i1 false)
  %i.hj = add i32 %i.he, %spec.select319          ; 2 uses
  store i32 %i.hj, ptr %i.i, align 4, !tbaa !47
  %i.hk = load i64, ptr %4, align 8, !tbaa !28
  %i.hl = add i64 %i.hk, %spec.select319342
  store i64 %i.hl, ptr %4, align 8, !tbaa !28
  %i.hm = getelementptr inbounds nuw i8, ptr %.0265, i64 %spec.select319342 ; 2 uses
  %i.hn = icmp eq i32 %i.hj, 12
  br i1 %i.hn, label %bb.ay, label %.backedge

bb.ay:                                            ; preds = %bb.ax
  store i32 4, ptr %0, align 8, !tbaa !46
  %i.ho = load i64, ptr %i.k, align 8, !tbaa !75
  %i.hp = add i64 %i.ho, 1
  store i64 %i.hp, ptr %i.k, align 8, !tbaa !75
  store i64 0, ptr %i.h, align 8, !tbaa !50
  %i.hq = load i16, ptr %i.l, align 8, !tbaa !69
  %i.hr = load i64, ptr %i.m, align 8, !tbaa !73
  %i.hs = load i32, ptr %i.n, align 4, !tbaa !11
  %i.ht = sext i32 %i.hs to i64
  %i.hu = shl nsw i64 %i.ht, 2
  %i.hv = add nsw i64 %i.hu, 4
  %i.hw = icmp eq i64 %i.hr, %i.hv
  br i1 %i.hw, label %bb.az, label %.thread336

bb.az:                                            ; preds = %bb.ay
  %i.hx = load i32, ptr %i.j, align 8, !tbaa !11
  %i.hy = call i32 @CrcCalc(ptr noundef nonnull %i.n, i64 noundef 6) #10
  %i.hz = icmp eq i32 %i.hx, %i.hy
  br i1 %i.hz, label %bb.ba, label %.thread336

bb.ba:                                            ; preds = %bb.az
  %15 = zext i16 %i.hq to i32
  %16 = load i8, ptr %i.o, align 8, !tbaa !11
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = load i8, ptr %7, align 1, !tbaa !11
  %20 = zext i8 %19 to i32
  %21 = or disjoint i32 %18, %20
  %i.ia = icmp eq i32 %21, %15
  br i1 %i.ia, label %Xz_CheckFooter.exit, label %.thread336

Xz_CheckFooter.exit:                              ; preds = %bb.ba
  %i.ib = load i16, ptr %i.p, align 1
  %i.ic = load i16, ptr @XZ_FOOTER_SIG, align 1
  %i.id = icmp ne i16 %i.ib, %i.ic
  %i.ie = zext i1 %i.id to i32
  %.not343 = icmp eq i32 %i.ie, 0
  br i1 %.not343, label %.backedge, label %.thread336

bb.bb:                                            ; preds = %bb.m
  %i.if = load i8, ptr %.0265, align 1, !tbaa !11
  %.not = icmp eq i8 %i.if, 0
  br i1 %.not, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ig = load i64, ptr %i.h, align 8, !tbaa !50
  %i.ih = and i64 %i.ig, 3
  %.not290 = icmp eq i64 %i.ih, 0
  br i1 %.not290, label %bb.bd, label %.thread336

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.i, align 4, !tbaa !47
  store i32 0, ptr %0, align 8, !tbaa !46
  br label %.backedge

bb.be:                                            ; preds = %bb.bb
  %i.ii = add i64 %i.af, 1
  store i64 %i.ii, ptr %4, align 8, !tbaa !28
  %i.ij = getelementptr inbounds nuw i8, ptr %.0265, i64 1
  %i.ik = load i64, ptr %i.h, align 8, !tbaa !50
  %i.il = add i64 %i.ik, 1
  store i64 %i.il, ptr %i.h, align 8, !tbaa !50
  br label %.backedge

.loopexit:                                        ; preds = %bb.e, %bb.i, %bb.d
  %.2253.jt1 = phi i32 [ 0, %bb.d ], [ %i.an, %bb.e ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.thread336

.backedge:                                        ; preds = %bb.j, %bb.m, %._crit_edge, %bb.s, %bb.y, %bb.aa, %bb.ac, %bb.ae, %.thread327, %bb.ak, %bb.ao, %bb.aq, %bb.at, %bb.av, %bb.aw, %.thread, %bb.bd, %bb.be, %bb.ax, %Xz_CheckFooter.exit
  %.5270.jt3 = phi ptr [ %i.as, %bb.j ], [ %.0265, %bb.m ], [ %i.ce, %._crit_edge ], [ %.0265, %bb.s ], [ %i.cq, %bb.y ], [ %i.ds, %bb.aa ], [ %.0265, %bb.ac ], [ %i.ef, %bb.ae ], [ %.0265, %.thread327 ], [ %i.ey, %bb.ak ], [ %i.fo, %bb.ao ], [ %i.fs, %bb.aq ], [ %.0265, %bb.at ], [ %i.gw, %bb.av ], [ %.0265, %bb.aw ], [ %i.er, %.thread ], [ %.0265, %bb.bd ], [ %i.ij, %bb.be ], [ %i.hm, %bb.ax ], [ %i.hm, %Xz_CheckFooter.exit ]
  %.2264.jt3 = phi ptr [ %i.ay, %bb.j ], [ %.0262, %bb.m ], [ %.0262, %._crit_edge ], [ %.0262, %bb.s ], [ %.0262, %bb.y ], [ %.0262, %bb.aa ], [ %.0262, %bb.ac ], [ %.0262, %bb.ae ], [ %.0262, %.thread327 ], [ %.0262, %bb.ak ], [ %.0262, %bb.ao ], [ %.0262, %bb.aq ], [ %.0262, %bb.at ], [ %.0262, %bb.av ], [ %.0262, %bb.aw ], [ %.0262, %.thread ], [ %.0262, %bb.bd ], [ %.0262, %bb.be ], [ %.0262, %bb.ax ], [ %.0262, %Xz_CheckFooter.exit ]
  %.pre = load i64, ptr %4, align 8, !tbaa !28
  br label %bb.b

.thread336:                                       ; preds = %bb.az, %bb.ba, %bb.ay, %Xz_CheckFooter.exit, %bb.q, %bb.r, %bb.bc, %bb.ak, %bb.at, %bb.aq, %bb.ae, %bb.p, %bb.ab, %bb.ac, %bb.aw, %.loopexit, %bb.ai, %bb.l
  %.13341 = phi i32 [ 0, %bb.l ], [ 3, %bb.ai ], [ %.2253.jt1, %.loopexit ], [ 3, %bb.az ], [ 3, %bb.ba ], [ 3, %bb.ay ], [ 3, %Xz_CheckFooter.exit ], [ 17, %bb.q ], [ 3, %bb.aw ], [ %i.dx, %bb.ac ], [ %i.dt, %bb.ab ], [ 17, %bb.p ], [ 3, %bb.ae ], [ 3, %bb.aq ], [ 3, %bb.at ], [ 3, %bb.ak ], [ 4, %bb.r ], [ 17, %bb.bc ]
  ret i32 %.13341
}

declare void @XzCheck_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @Xz_WriteVarInt(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @XzFlags_GetCheckSize(i16 noundef zeroext) local_unnamed_addr #4

declare i32 @cl_update_hash(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @cl_hash_init(ptr noundef) local_unnamed_addr #4

declare i32 @cl_finish_hash(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @CrcUpdate(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @XzCheck_Init(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @XzCheck_Final(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @XzUnpacker_IsStreamWasFinished(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !46
  %i.b = icmp eq i32 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !50
  %i.e = and i64 %i.d, 3
  %i.f = icmp eq i64 %i.e, 0
  %i.g = zext i1 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ 0, %bb.a ], [ %i.g, %bb.b ]
  ret i32 %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @Delta_Encode(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @Delta_Decode(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @x86_Convert(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @PPC_Convert(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @IA64_Convert(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @ARM_Convert(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @ARMT_Convert(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @SPARC_Convert(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @Lzma2State_Free(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  tail call void @LzmaDec_Free(ptr noundef %0, ptr noundef %1) #10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  tail call void %i.b(ptr noundef %1, ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Lzma2State_SetProps(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) #2 {
bb.a:
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !11
  %i.b = tail call i32 @Lzma2Dec_Allocate(ptr noundef %0, i8 noundef zeroext %i.a, ptr noundef %3) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 4, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @Lzma2State_Init(ptr noundef %0) #2 {
bb.a:
  tail call void @Lzma2Dec_Init(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Lzma2State_Code(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call i32 @Lzma2Dec_DecodeToBuf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %6, ptr noundef nonnull %i.a) #10
  %i.c = load i32, ptr %i.a, align 4, !tbaa !29
  %i.d = icmp eq i32 %i.c, 1
  %i.e = zext i1 %i.d to i32
  store i32 %i.e, ptr %7, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.b
}

declare void @LzmaDec_Free(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @Lzma2Dec_Allocate(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare void @Lzma2Dec_Init(ptr noundef) local_unnamed_addr #4

declare i32 @Lzma2Dec_DecodeToBuf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !35}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long long", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"", !12, i64 0, !12, i64 8}
!14 = !{!13, !12, i64 8}
!15 = !{!"long", !5, i64 0}
!16 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !5, i64 44, !5, i64 300}
!17 = !{!16, !6, i64 28}
!18 = !{!16, !6, i64 36}
!19 = !{!16, !6, i64 24}
!20 = !{!16, !6, i64 32}
!21 = !{!"_IStateCoder", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!22 = !{!21, !12, i64 0}
!23 = !{!13, !12, i64 0}
!24 = !{!21, !12, i64 8}
!25 = !{!21, !12, i64 16}
!26 = !{!21, !12, i64 24}
!27 = !{!21, !12, i64 32}
!28 = !{!15, !15, i64 0}
!29 = !{!6, !6, i64 0}
!30 = !{!"p1 omnipotent char", !12, i64 0}
!31 = !{!"", !12, i64 0, !30, i64 8, !6, i64 16, !5, i64 20, !5, i64 32, !5, i64 56, !5, i64 80, !5, i64 112}
!32 = !{!31, !12, i64 0}
!33 = !{!31, !30, i64 8}
!34 = !{!31, !6, i64 16}
!35 = !{!"llvm.loop.unswitch.partial.disable"}
!36 = !{!"llvm.loop.peeled.count", i32 1}
!37 = !{!"short", !5, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"", !9, i64 0, !9, i64 8, !5, i64 16, !5, i64 24}
!40 = !{!39, !5, i64 16}
!41 = !{!"", !9, i64 0, !6, i64 8, !5, i64 12}
!42 = !{!41, !6, i64 8}
!43 = !{ptr @MixCoder_Free}
!44 = !{!"", !6, i64 0, !6, i64 4, !9, i64 8, !12, i64 16}
!45 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !37, i64 16, !6, i64 20, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !6, i64 80, !31, i64 88, !39, i64 360, !44, i64 512, !12, i64 536, !5, i64 544, !5, i64 576}
!46 = !{!45, !6, i64 0}
!47 = !{!45, !6, i64 4}
!48 = !{!45, !9, i64 40}
!49 = !{!45, !12, i64 536}
!50 = !{!45, !9, i64 64}
!51 = !{!16, !6, i64 40}
!52 = !{!16, !15, i64 0}
!53 = !{!16, !15, i64 8}
!54 = !{!16, !15, i64 16}
!55 = distinct !{null}
!56 = !{ptr @BraState_SetFromMethod}
!57 = distinct !{!57, !36}
!58 = distinct !{!58, !35}
!59 = distinct !{ptr @MixCoder_SetFromMethod, null}
!60 = distinct !{!60, !36}
!61 = !{!41, !9, i64 0}
!62 = !{!12, !12, i64 0}
!63 = !{ptr @MixCoder_SetFromMethod, ptr @BraState_SetFromMethod}
!64 = !{ptr @MixCoder_Init}
!65 = !{!45, !12, i64 528}
!66 = !{!45, !9, i64 24}
!67 = !{!45, !9, i64 32}
!68 = !{!45, !6, i64 20}
!69 = !{!45, !37, i64 16}
!70 = !{!45, !6, i64 8}
!71 = !{!45, !6, i64 12}
!72 = !{!45, !9, i64 56}
!73 = !{!45, !9, i64 48}
!74 = !{!45, !6, i64 80}
!75 = !{!45, !9, i64 72}
end_hunk_1
