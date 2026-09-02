Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/raster?download=true
inline.NumInlined: 19
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Horizontal_Sweep_Drop:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load i32, ptr %i.h, align 8, !tbaa !32   ; 4 uses
  %i.j = icmp slt i32 %i.i, %i.d
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %i.f, 0
  %.not = icmp slt i32 %i.i, %i.f
  %or.cond = or i1 %i.k, %.not
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = ashr i32 %1, 3
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load i32, ptr %i.q, align 8, !tbaa !35
  %i.s = mul nsw i32 %i.r, %i.f
  %i.t = sext i32 %i.s to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.p, i64 %i.u
  %i.w = and i32 %1, 7
  %i.x = lshr exact i32 128, %i.w
  %i.y = load i8, ptr %i.v, align 1, !tbaa !76
  %i.z = zext i8 %i.y to i32
  %i.aa = and i32 %i.x, %i.z
  %.not30 = icmp eq i32 %i.aa, 0
  br i1 %.not30, label %.thread, label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.b
  %i.ab = icmp sgt i32 %i.f, -1
  br i1 %i.ab, label %..thread_crit_edge, label %bb.g

..thread_crit_edge:                               ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.d, %bb.c
  %i.ac = phi i32 [ %.pre, %..thread_crit_edge ], [ %i.i, %bb.c ], [ %i.i, %bb.d ]
  %.033 = phi i32 [ %i.f, %..thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %.not31 = icmp sgt i32 %.033, %i.ac
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !36
  %i.af = ashr i32 %1, 3
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !35
  %i.ak = mul nsw i32 %i.aj, %.033
  %i.al = sext i32 %i.ak to i64
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds i8, ptr %i.ah, i64 %i.am ; 2 uses
  %i.ao = and i32 %1, 7
  %i.ap = lshr exact i32 128, %i.ao
  %i.aq = load i8, ptr %i.an, align 1, !tbaa !76
  %i.ar = trunc nuw i32 %i.ap to i8
  %i.as = or i8 %i.aq, %i.ar
  store i8 %i.as, ptr %i.an, align 1, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.thread, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Horizontal_Sweep_Step(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc signext range(i8 0, 2) i8 @End_Profile(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 3
  %i.j = trunc i64 %i.i to i32                    ; 6 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 99, ptr %i.l, align 8, !tbaa !79
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.j, ptr %i.m, align 4, !tbaa !98
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 3 uses
  %i.o = load i16, ptr %i.n, align 4, !tbaa !91   ; 3 uses
  %i.p = and i16 %i.o, 8
  %.not50 = icmp eq i16 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i64, ptr %i.q, align 8, !tbaa !88   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !68   ; 3 uses
  br i1 %.not50, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add i32 %i.t, -1
  %.not52 = sext i32 %i.u to i64
  %i.v = and i64 %i.r, %.not52
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !69
  %i.y = sext i32 %i.x to i64
  %.not53 = icmp slt i64 %i.v, %i.y
  br i1 %.not53, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = or i16 %i.o, 16
  store i16 %i.z, ptr %i.n, align 4, !tbaa !91
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !96 ; 2 uses
  %i.ac = add nsw i32 %i.ab, %i.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.ad, align 8, !tbaa !99
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.ae = sext i32 %i.t to i64
  %i.af = add i64 %i.r, -1
  %i.ag = add i64 %i.af, %i.ae
  %i.ah = sub nsw i32 0, %i.t
  %i.ai = sext i32 %i.ah to i64
  %i.aj = and i64 %i.ag, %i.ai
  %i.ak = sub nsw i64 %i.aj, %i.r
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !69
  %i.an = sext i32 %i.am to i64
  %.not51 = icmp slt i64 %i.ak, %i.an
  br i1 %.not51, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = or i16 %i.o, 32
  store i16 %i.ao, ptr %i.n, align 4, !tbaa !91
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !96
  %i.ar = add nsw i32 %i.aq, 1                    ; 2 uses
  %i.as = sub nsw i32 %i.ar, %i.j                 ; 2 uses
  store i32 %i.as, ptr %i.ap, align 8, !tbaa !96
  %i.at = add nsw i32 %i.j, -1                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.at, ptr %i.au, align 8, !tbaa !99
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.av
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.sink.in = phi ptr [ %i.aw, %bb.j ], [ %i.e, %bb.g ]
  %.047 = phi i32 [ %i.as, %bb.j ], [ %i.ab, %bb.g ] ; 2 uses
  %.0 = phi i32 [ %i.ar, %bb.j ], [ %i.ac, %bb.g ]
  %.sink = load i64, ptr %.sink.in, align 8, !tbaa !95
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink, ptr %i.ax, align 8, !tbaa !97
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !82 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !81 ; 6 uses
  %i.bc = icmp eq i32 %i.az, 0
  %.pre.i = sext i32 %.0 to i64                   ; 2 uses
  br i1 %i.bc, label %._crit_edge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = sext i32 %i.az to i64                   ; 3 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !95
  %i.bg = icmp slt i64 %i.bf, %.pre.i
  br i1 %i.bg, label %._crit_edge.i, label %bb.m

._crit_edge.i:                                    ; preds = %bb.l, %bb.k
  %.pre-phi44.i = phi i64 [ %i.bd, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %.pre-phi44.i
  store i64 %.pre.i, ptr %i.bh, align 8, !tbaa !95
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i, %bb.l
  %.pre-phi.i = phi i64 [ %.pre-phi44.i, %._crit_edge.i ], [ %i.bd, %bb.l ] ; 3 uses
  %i.bi = sext i32 %.047 to i64                   ; 2 uses
  %1 = zext i32 %i.az to i64
  %2 = xor i64 %1, -1
  %3 = add nsw i64 %.pre-phi.i, %2                ; 2 uses
  %i.bj = icmp eq i64 %.pre-phi.i, 0
  br i1 %i.bj, label %.critedge.thread.i.a, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %i.bk = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %i.bk, label %.critedge.thread.i.a, label %.lr.ph, !llvm.loop !144

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %indvars.iv.i67 = phi i64 [ %indvars.iv.next.i, %bb.n ], [ %.pre-phi.i, %bb.m ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i67, -1 ; 6 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !95
  %i.bn = icmp sgt i64 %i.bm, %i.bi
  br i1 %i.bn, label %bb.n, label %.critedge.i, !llvm.loop !144

.critedge.i:                                      ; preds = %.lr.ph
  %i.bo = icmp slt i64 %indvars.iv.i67, 1
  br i1 %i.bo, label %.critedge.thread.i.a, label %bb.o

bb.o:                                             ; preds = %.critedge.i
  %i.bp = and i64 %indvars.iv.next.i, 4294967295
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !95
  %i.bs = icmp slt i64 %i.br, %i.bi
  br i1 %i.bs, label %.critedge.thread.i.a, label %bb.q

.critedge.thread.i.a:                             ; preds = %bb.n, %bb.m, %bb.o, %.critedge.i
  %.in.i = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ %indvars.iv.next.i, %bb.o ], [ %3, %bb.m ], [ %3, %bb.n ]
  %4 = getelementptr inbounds i8, ptr %i.bb, i64 -8 ; 2 uses
  store ptr %4, ptr %i.ba, align 8, !tbaa !81
  %.not33.i = icmp ugt ptr %4, %i.d
  br i1 %.not33.i, label %.preheader.preheader.i, label %Insert_Y_Turns.exit

.preheader.preheader.i:                           ; preds = %.critedge.thread.i.a
  %sext.i = shl i64 %.in.i, 32
  %5 = ashr exact i64 %sext.i, 32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv39.i = phi i64 [ %5, %.preheader.preheader.i ], [ %indvars.iv.next40.i, %.preheader.i ] ; 3 uses
  %.030.i = phi i32 [ %.047, %.preheader.preheader.i ], [ %i.bv, %.preheader.i ]
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %indvars.iv39.i ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !95
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = sext i32 %.030.i to i64
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !95
  %indvars.iv.next40.i = add nsw i64 %indvars.iv39.i, -1
  %i.bx = icmp sgt i64 %indvars.iv39.i, -1
  br i1 %i.bx, label %.preheader.i, label %bb.p, !llvm.loop !145

bb.p:                                             ; preds = %.preheader.i
  %i.by = add nsw i32 %i.az, 1
  store i32 %i.by, ptr %i.ay, align 4, !tbaa !82
  br label %bb.q

Insert_Y_Turns.exit:                              ; preds = %.critedge.thread.i.a
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 98, ptr %i.bz, align 8, !tbaa !79
  br label %bb.t

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !85 ; 2 uses
  %.not55 = icmp eq ptr %i.cb, null
  br i1 %.not55, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.b, ptr %i.ca, align 8, !tbaa !85
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cc = phi ptr [ %i.b, %bb.r ], [ %i.cb, %bb.q ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !94
  store ptr %i.d, ptr %i.b, align 8, !tbaa !93
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 8, !tbaa !83
  %i.cg = add i16 %i.cf, 1
  store i16 %i.cg, ptr %i.ce, align 8, !tbaa !83
  br label %bb.t

bb.t:                                             ; preds = %Insert_Y_Turns.exit, %bb.c, %bb.s, %bb.b
  %.048 = phi i8 [ 1, %bb.b ], [ 1, %Insert_Y_Turns.exit ], [ 0, %bb.s ], [ 0, %bb.c ]
  ret i8 %.048
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc signext range(i8 0, 2) i8 @Line_To(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = icmp eq i64 %2, %i.b
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.b, %2                    ; 2 uses
  %i.e = select i1 %i.d, i32 1, i32 2             ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load i32, ptr %i.f, align 8, !tbaa !84   ; 2 uses
  %.not = icmp eq i32 %i.g, %i.e
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not33 = icmp eq i32 %i.g, 0
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call fastcc signext i8 @End_Profile(ptr noundef %0)
  %.not34 = icmp eq i8 %i.h, 0
  br i1 %.not34, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = tail call fastcc signext i8 @New_Profile(ptr noundef %0, i32 noundef %i.e)
  %.not35 = icmp eq i8 %i.i, 0
  br i1 %.not35, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !tbaa !87   ; 2 uses
  %i.l = load i64, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i64, ptr %i.m, align 8, !tbaa !77   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load i64, ptr %i.o, align 8, !tbaa !78   ; 2 uses
  br i1 %i.d, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = tail call fastcc signext i8 @Line_Up(ptr noundef %0, i64 noundef %i.k, i64 noundef %i.l, i64 noundef %1, i64 noundef %2, i64 noundef %i.n, i64 noundef %i.p)
  %.not37 = icmp eq i8 %i.q, 0
  br i1 %.not37, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.r = sub nsw i64 0, %i.l
  %i.s = sub nsw i64 0, %2
  %i.t = sub nsw i64 0, %i.p
  %i.u = sub nsw i64 0, %i.n
  %i.v = tail call fastcc signext range(i8 0, 2) i8 @Line_Up(ptr noundef nonnull %0, i64 noundef %i.k, i64 noundef %i.r, i64 noundef %1, i64 noundef %i.s, i64 noundef %i.t, i64 noundef %i.u)
  %.not36 = icmp eq i8 %i.v, 0
  br i1 %.not36, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %1, ptr %i.w, align 8, !tbaa !87
  store i64 %2, ptr %i.a, align 8, !tbaa !88
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  %.0 = phi i8 [ 0, %bb.i ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %bb.e ], [ 1, %bb.d ]
  ret i8 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc signext range(i8 0, 2) i8 @Conic_To(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #6 {
bb.a:
  %5 = alloca [65 x %struct.TPoint_], align 16    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !88
  %i.e = load <2 x i64>, ptr %i.a, align 8, !tbaa !95
  store <2 x i64> %i.e, ptr %i.b, align 16, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %1, ptr %i.f, align 16, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %2, ptr %i.g, align 8, !tbaa !102
  store i64 %3, ptr %5, align 16, !tbaa !101
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %i.h, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.at, %bb.a
  %i.p = phi i64 [ %3, %bb.a ], [ %.pre104, %bb.at ] ; 2 uses
  %i.q = phi i64 [ %4, %bb.a ], [ %.pre103, %bb.at ] ; 6 uses
  %i.r = phi i64 [ %2, %bb.a ], [ %.pre101, %bb.at ] ; 4 uses
  %i.s = phi i64 [ %i.d, %bb.a ], [ %.pre, %bb.at ] ; 6 uses
  %.0 = phi ptr [ %5, %bb.a ], [ %.1, %bb.at ]    ; 13 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 40 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 6 uses
  %. = call i64 @llvm.smin.i64(i64 %i.s, i64 %i.q)
  %i.x = load i32, ptr %i.i, align 4, !tbaa !68   ; 2 uses
  %i.y = sub nsw i32 0, %i.x
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = and i64 %., %i.z
  %i.ab = icmp slt i64 %i.r, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.74 = call i64 @llvm.smax.i64(i64 %i.s, i64 %i.q)
  %i.ac = sext i32 %i.x to i64
  %i.ad = add i64 %.74, -1
  %i.ae = add i64 %i.ad, %i.ac
  %i.af = and i64 %i.ae, %i.z
  %i.ag = icmp sgt i64 %i.r, %i.af
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ah = load i64, ptr %i.t, align 8, !tbaa !101 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 64
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !101
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %i.al = add nsw i64 %i.ak, %i.p                 ; 2 uses
  %i.am = add nsw i64 %i.ak, %i.ah                ; 2 uses
  %i.an = ashr i64 %i.am, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.0, i64 48
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !101
  %i.ap = add nsw i64 %i.al, %i.am
  %i.aq = ashr i64 %i.ap, 2                       ; 2 uses
  store i64 %i.aq, ptr %i.t, align 8, !tbaa !101
  %i.ar = ashr i64 %i.al, 1
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !101
  %i.as = getelementptr inbounds nuw i8, ptr %.0, i64 72
  store i64 %i.s, ptr %i.as, align 8, !tbaa !102
  %i.at = add nsw i64 %i.q, %i.r                  ; 2 uses
  %i.au = add nsw i64 %i.r, %i.s                  ; 2 uses
  %i.av = ashr i64 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.0, i64 56
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !102
  %i.ax = add nsw i64 %i.at, %i.au
  %i.ay = ashr i64 %i.ax, 2
  store i64 %i.ay, ptr %i.u, align 8, !tbaa !102
  %i.az = ashr i64 %i.at, 1
  store i64 %i.az, ptr %i.v, align 8, !tbaa !102
  br label %bb.at

bb.e:                                             ; preds = %bb.c
  %.not67 = icmp eq i64 %i.s, %i.q
  br i1 %.not67, label %Bezier_Up.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = icmp slt i64 %i.s, %i.q                 ; 2 uses
  %i.bb = select i1 %i.ba, i32 1, i32 2           ; 2 uses
  %i.bc = load i32, ptr %i.j, align 8, !tbaa !84  ; 2 uses
  %.not68 = icmp eq i32 %i.bc, %i.bb
  br i1 %.not68, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not69 = icmp eq i32 %i.bc, 0
  br i1 %.not69, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = call fastcc signext i8 @End_Profile(ptr noundef %0)
  %.not70 = icmp eq i8 %i.bd, 0
  br i1 %.not70, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h, %bb.g
end_hunk_0
