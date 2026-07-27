begin_hunk_0_@bn_mul_recursive:bb.a
  br i1 %or.cond11250, label %bb.m, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.at = zext nneg i32 %3 to i64                 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.t
  tail call void @bn_mul_comba8(ptr noundef nonnull %i.au, ptr noundef %6, ptr noundef nonnull %i.av) #4
  br label %bb.n

bb.m:                                             ; preds = %.thread247
  %i.aw = zext nneg i32 %3 to i64                 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.aw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ax, i8 0, i64 128, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi = phi i64 [ %i.aw, %bb.m ], [ %i.at, %bb.l ] ; 3 uses
  %.not232238253258 = phi i1 [ true, %bb.m ], [ %.not232, %bb.l ]
  tail call void @bn_mul_comba8(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi ; 2 uses
  tail call void @bn_mul_comba8(ptr noundef %i.ay, ptr noundef nonnull %i.u, ptr noundef nonnull %i.x) #4
  %i.az = tail call i64 @bn_add_words(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %i.ay, i32 noundef %3) #4
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %.not232238253258, label %bb.s, label %bb.r

bb.o:                                             ; preds = %bb.k
  %i.bb = shl nuw nsw i32 %3, 1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bc ; 2 uses
  %i.be = zext nneg i32 %3 to i64                 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.t
  tail call void @bn_mul_recursive(ptr noundef nonnull %i.bf, ptr noundef %6, ptr noundef %i.bg, i32 noundef %i.a, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.bd)
  br label %bb.q

bb.p:                                             ; preds = %.thread247
  %i.bh = shl nuw nsw i32 %3, 1
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bi
  %i.bk = zext nneg i32 %3 to i64                 ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bk
  %i.bm = shl nuw nsw i64 %i.bk, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bl, i8 0, i64 %i.bm, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.pre-phi265 = phi i64 [ %i.be, %bb.o ], [ %i.bk, %bb.p ] ; 3 uses
  %i.bn = phi ptr [ %i.bd, %bb.o ], [ %i.bj, %bb.p ] ; 2 uses
  %.not232238254263 = phi i1 [ %.not232, %bb.o ], [ true, %bb.p ]
  tail call void @bn_mul_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.a, i32 noundef 0, i32 noundef 0, ptr noundef %i.bn)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi265 ; 2 uses
  tail call void @bn_mul_recursive(ptr noundef %i.bo, ptr noundef %i.u, ptr noundef %i.x, i32 noundef %i.a, i32 noundef %4, i32 noundef %5, ptr noundef %i.bn)
  %i.bp = tail call i64 @bn_add_words(ptr noundef %6, ptr noundef %0, ptr noundef %i.bo, i32 noundef %3) #4
  %i.bq = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %.not232238254263, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q
  %i.br = phi i32 [ %i.ba, %bb.n ], [ %i.bq, %bb.q ]
  %i.bs = phi i64 [ %.pre-phi, %bb.n ], [ %.pre-phi265, %bb.q ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bs ; 2 uses
  %i.bu = tail call i64 @bn_sub_words(ptr noundef %i.bt, ptr noundef %6, ptr noundef %i.bt, i32 noundef %3) #4
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = sub nsw i32 %i.br, %i.bv
  br label %bb.t

bb.s:                                             ; preds = %bb.n, %bb.q
  %i.bx = phi i32 [ %i.ba, %bb.n ], [ %i.bq, %bb.q ]
  %i.by = phi i64 [ %.pre-phi, %bb.n ], [ %.pre-phi265, %bb.q ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.by ; 2 uses
  %i.ca = tail call i64 @bn_add_words(ptr noundef %i.bz, ptr noundef %i.bz, ptr noundef %6, i32 noundef %3) #4
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = add nsw i32 %i.bx, %i.cb
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cd = phi i64 [ %i.bs, %bb.r ], [ %i.by, %bb.s ]
  %.0226 = phi i32 [ %i.bw, %bb.r ], [ %i.cc, %bb.s ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.cd
  %i.cg = tail call i64 @bn_add_words(ptr noundef %i.ce, ptr noundef %i.ce, ptr noundef %i.cf, i32 noundef %3) #4
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = add nsw i32 %.0226, %i.ch               ; 2 uses
  %.not233 = icmp eq i32 %i.ci, 0
  br i1 %.not233, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = add nuw nsw i32 %i.a, %3
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ck ; 3 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !10
  %i.cn = sext i32 %i.ci to i64                   ; 2 uses
  %i.co = add i64 %i.cm, %i.cn                    ; 2 uses
  store i64 %i.co, ptr %i.cl, align 8, !tbaa !10
  %i.cp = icmp ult i64 %i.co, %i.cn
  br i1 %i.cp, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.u, %.preheader
  %.0 = phi ptr [ %i.cq, %.preheader ], [ %i.cl, %bb.u ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !10
  %i.cs = add i64 %i.cr, 1                        ; 2 uses
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !10
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.preheader, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %.preheader, %bb.t, %bb.u, %bb.d, %bb.e, %bb.b
  ret void
}

declare void @bn_mul_comba8(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @bn_mul_normal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %2, %4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.050 = phi i32 [ %4, %bb.b ], [ %2, %bb.a ]    ; 7 uses
  %.048 = phi ptr [ %1, %bb.b ], [ %3, %bb.a ]    ; 2 uses
  %.047 = phi i32 [ %2, %bb.b ], [ %4, %bb.a ]    ; 3 uses
  %.045 = phi ptr [ %3, %bb.b ], [ %1, %bb.a ]    ; 6 uses
  %i.b = icmp slt i32 %.047, 1
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i64 @bn_mul_words(ptr noundef %0, ptr noundef %.045, i32 noundef %.050, i64 noundef 0) #4 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.d = sext i32 %.050 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.f = load i64, ptr %.048, align 8, !tbaa !10
  %i.g = tail call i64 @bn_mul_words(ptr noundef %0, ptr noundef %.045, i32 noundef %.050, i64 noundef %i.f) #4
  store i64 %i.g, ptr %i.e, align 8, !tbaa !10
  %i.h = icmp eq i32 %.047, 1
  br i1 %i.h, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.062 = phi ptr [ %i.ab, %bb.h ], [ %0, %bb.e ] ; 4 uses
  %.04661 = phi ptr [ %i.af, %bb.h ], [ %i.e, %bb.e ] ; 4 uses
  %.160 = phi i32 [ %i.aa, %bb.h ], [ %.047, %bb.e ] ; 5 uses
  %.14959 = phi ptr [ %i.ac, %bb.h ], [ %.048, %bb.e ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.062, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.14959, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10
  %i.l = tail call i64 @bn_mul_add_words(ptr noundef nonnull %i.i, ptr noundef %.045, i32 noundef %.050, i64 noundef %i.k) #4
  %i.m = getelementptr inbounds nuw i8, ptr %.04661, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !10
  %i.n = icmp eq i32 %.160, 2
  br i1 %i.n, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.062, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.14959, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !10
  %i.r = tail call i64 @bn_mul_add_words(ptr noundef nonnull %i.o, ptr noundef %.045, i32 noundef %.050, i64 noundef %i.q) #4
  %i.s = getelementptr inbounds nuw i8, ptr %.04661, i64 16
  store i64 %i.r, ptr %i.s, align 8, !tbaa !10
  %i.t = icmp samesign ult i32 %.160, 4
  br i1 %i.t, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.062, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %.14959, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !10
  %i.x = tail call i64 @bn_mul_add_words(ptr noundef nonnull %i.u, ptr noundef %.045, i32 noundef %.050, i64 noundef %i.w) #4
  %i.y = getelementptr inbounds nuw i8, ptr %.04661, i64 24
  store i64 %i.x, ptr %i.y, align 8, !tbaa !10
  %i.z = icmp eq i32 %.160, 4
  br i1 %i.z, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %.160, -4
  %i.ab = getelementptr inbounds nuw i8, ptr %.062, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.14959, i64 32 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = tail call i64 @bn_mul_add_words(ptr noundef nonnull %i.ab, ptr noundef %.045, i32 noundef %.050, i64 noundef %i.ad) #4
  %i.af = getelementptr inbounds nuw i8, ptr %.04661, i64 32 ; 2 uses
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !10
  %i.ag = icmp samesign ult i32 %.160, 6
  br i1 %i.ag, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.h, %.lr.ph, %bb.f, %bb.g, %bb.e, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @bn_cmp_part_words(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @bn_add_words(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @bn_mul_part_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nsw i32 %3, 1                        ; 11 uses
  %i.b = icmp slt i32 %3, 8
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %4, %3
  %i.d = add nsw i32 %5, %3
  tail call void @bn_mul_normal(ptr noundef %0, ptr noundef %1, i32 noundef %i.c, ptr noundef %2, i32 noundef %i.d)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %3 to i64                  ; 9 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e ; 11 uses
  %i.g = sub nsw i32 %3, %4                       ; 3 uses
  %i.h = tail call i32 @bn_cmp_part_words(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef %4, i32 noundef %i.g) #4
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e ; 11 uses
  %i.j = sub nsw i32 %5, %3                       ; 3 uses
  %i.k = tail call i32 @bn_cmp_part_words(ptr noundef nonnull %i.i, ptr noundef %2, i32 noundef %5, i32 noundef %i.j) #4
  %i.l = mul nsw i32 %i.h, 3
  %i.m = add nsw i32 %i.l, %i.k
  switch i32 %i.m, label %bb.h [
    i32 -4, label %bb.d
    i32 -3, label %bb.e
    i32 -2, label %bb.e
    i32 -1, label %bb.f
    i32 0, label %bb.f
    i32 1, label %bb.f
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = sub nsw i32 %4, %3
  %i.o = tail call i64 @bn_sub_part_words(ptr noundef %6, ptr noundef nonnull %i.f, ptr noundef nonnull %1, i32 noundef %4, i32 noundef %i.n) ; 0 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.e
  %i.q = sub nsw i32 %3, %5
  %i.r = tail call i64 @bn_sub_part_words(ptr noundef nonnull %i.p, ptr noundef nonnull %2, ptr noundef nonnull %i.i, i32 noundef %5, i32 noundef %i.q) ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.s = sub nsw i32 %4, %3
  %i.t = tail call i64 @bn_sub_part_words(ptr noundef %6, ptr noundef nonnull %i.f, ptr noundef nonnull %1, i32 noundef %4, i32 noundef %i.s) ; 0 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.e
  %i.v = tail call i64 @bn_sub_part_words(ptr noundef nonnull %i.u, ptr noundef nonnull %i.i, ptr noundef nonnull %2, i32 noundef %5, i32 noundef %i.j) ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.w = tail call i64 @bn_sub_part_words(ptr noundef %6, ptr noundef nonnull %1, ptr noundef nonnull %i.f, i32 noundef %4, i32 noundef %i.g) ; 0 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.e
  %i.y = sub nsw i32 %3, %5
  %i.z = tail call i64 @bn_sub_part_words(ptr noundef nonnull %i.x, ptr noundef nonnull %2, ptr noundef nonnull %i.i, i32 noundef %5, i32 noundef %i.y) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.c
  %i.aa = tail call i64 @bn_sub_part_words(ptr noundef %6, ptr noundef nonnull %1, ptr noundef nonnull %i.f, i32 noundef %4, i32 noundef %i.g) ; 0 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.e
  %i.ac = tail call i64 @bn_sub_part_words(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.i, ptr noundef nonnull %2, i32 noundef %5, i32 noundef %i.j) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.not = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ true, %bb.g ]
  %i.ad = icmp eq i32 %3, 8
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %7 = zext nneg i32 %i.a to i64                  ; 2 uses
  %8 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %7
  %9 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.e
  tail call void @bn_mul_comba8(ptr noundef nonnull %8, ptr noundef %6, ptr noundef nonnull %9) #4
  tail call void @bn_mul_comba8(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #4
  %10 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %7
  tail call void @bn_mul_normal(ptr noundef nonnull %10, ptr noundef nonnull %i.f, i32 noundef %4, ptr noundef nonnull %i.i, i32 noundef %5)
  %i.ae = add i32 %5, %4                          ; 2 uses
  %i.af = add i32 %i.ae, %i.a
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.ai = sub i32 16, %i.ae
  %i.aj = sext i32 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %i.ak, i1 false)
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.al = shl nsw i32 %3, 2
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.am ; 6 uses
  %i.ao = zext nneg i32 %i.a to i64               ; 9 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.e
  tail call void @bn_mul_recursive(ptr noundef nonnull %i.ap, ptr noundef %6, ptr noundef nonnull %i.aq, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.an)
  tail call void @bn_mul_recursive(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.an)
  %i.ar = lshr i32 %3, 1                          ; 9 uses
  %. = tail call i32 @llvm.smax.i32(i32 %4, i32 %5) ; 3 uses
  %i.as = icmp eq i32 %., %i.ar
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao
  %i.au = sub nsw i32 %4, %i.ar
  %i.av = sub nsw i32 %5, %i.ar
  tail call void @bn_mul_recursive(ptr noundef nonnull %i.at, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i, i32 noundef %i.ar, i32 noundef %i.au, i32 noundef %i.av, ptr noundef nonnull %i.an)
  %i.aw = and i32 %3, 2147483646                  ; 2 uses
  %i.ax = add nuw nsw i32 %i.a, %i.aw
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ay
  %i.ba = sub nsw i32 %i.a, %i.aw
  %i.bb = sext i32 %i.ba to i64
  %i.bc = shl nsw i64 %i.bb, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.az, i8 0, i64 %i.bc, i1 false)
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  %i.bd = icmp sgt i32 %., %i.ar
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao ; 5 uses
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bf = sub nsw i32 %4, %i.ar
  %i.bg = sub nsw i32 %5, %i.ar
  tail call void @bn_mul_part_recursive(ptr noundef nonnull %i.be, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i, i32 noundef %i.ar, i32 noundef %i.bf, i32 noundef %i.bg, ptr noundef nonnull %i.an)
  %i.bh = add i32 %5, %4                          ; 2 uses
  %i.bi = add i32 %i.bh, %i.a
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bj
  %i.bl = sub i32 %i.a, %i.bh
  %i.bm = sext i32 %i.bl to i64
  %i.bn = shl nsw i64 %i.bm, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bk, i8 0, i64 %i.bn, i1 false)
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.bo = shl nuw nsw i64 %i.ao, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.be, i8 0, i64 %i.bo, i1 false)
  %i.bp = icmp slt i32 %4, 16
  %i.bq = icmp slt i32 %5, 16
  %or.cond = and i1 %i.bp, %i.bq
  br i1 %or.cond, label %bb.o, label %.preheader275

bb.o:                                             ; preds = %bb.n
  tail call void @bn_mul_normal(ptr noundef nonnull %i.be, ptr noundef nonnull %i.f, i32 noundef %4, ptr noundef nonnull %i.i, i32 noundef %5)
  br label %bb.s

.preheader275:                                    ; preds = %bb.n, %bb.q
  %.0258 = phi i32 [ %i.br, %bb.q ], [ %i.ar, %bb.n ]
  %i.br = sdiv i32 %.0258, 2                      ; 10 uses
  %or.cond270 = icmp slt i32 %i.br, %.
  br i1 %or.cond270, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader275
  %i.bs = sub nsw i32 %4, %i.br
  %i.bt = sub nsw i32 %5, %i.br
  tail call void @bn_mul_part_recursive(ptr noundef nonnull %i.be, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i, i32 noundef %i.br, i32 noundef %i.bs, i32 noundef %i.bt, ptr noundef nonnull %i.an)
  br label %bb.s

bb.q:                                             ; preds = %.preheader275
  %i.bu = icmp eq i32 %i.br, %4
  %i.bv = icmp eq i32 %i.br, %5
  %or.cond271 = or i1 %i.bu, %i.bv
  br i1 %or.cond271, label %bb.r, label %.preheader275

bb.r:                                             ; preds = %bb.q
  %i.bw = sub nsw i32 %4, %i.br
  %i.bx = sub nsw i32 %5, %i.br
  tail call void @bn_mul_recursive(ptr noundef nonnull %i.be, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i, i32 noundef %i.br, i32 noundef %i.bw, i32 noundef %i.bx, ptr noundef nonnull %i.an)
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %bb.o, %bb.r, %bb.p, %bb.m, %bb.i
  %.pre-phi = phi i64 [ %i.ao, %bb.k ], [ %i.ao, %bb.o ], [ %i.ao, %bb.r ], [ %i.ao, %bb.p ], [ %i.ao, %bb.m ], [ 16, %bb.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi
  %i.bz = tail call i64 @bn_add_words(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %i.by, i32 noundef %i.a) #4
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.pre-phi ; 4 uses
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = tail call i64 @bn_sub_words(ptr noundef nonnull %i.cb, ptr noundef nonnull %6, ptr noundef nonnull %i.cb, i32 noundef %i.a) #4
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = sub nsw i32 %i.ca, %i.cd
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cf = tail call i64 @bn_add_words(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cb, ptr noundef nonnull %6, i32 noundef %i.a) #4
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = add nsw i32 %i.cg, %i.ca
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0259 = phi i32 [ %i.ce, %bb.t ], [ %i.ch, %bb.u ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.pre-phi
  %i.ck = tail call i64 @bn_add_words(ptr noundef nonnull %i.ci, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.cj, i32 noundef %i.a) #4
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = add nsw i32 %.0259, %i.cl               ; 2 uses
  %.not269 = icmp eq i32 %i.cm, 0
  br i1 %.not269, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = mul nuw nsw i32 %3, 3
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.co ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !10
  %i.cr = sext i32 %i.cm to i64                   ; 2 uses
  %i.cs = add i64 %i.cq, %i.cr                    ; 2 uses
  store i64 %i.cs, ptr %i.cp, align 8, !tbaa !10
  %i.ct = icmp ult i64 %i.cs, %i.cr
  br i1 %i.ct, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.w, %.preheader
  %.0 = phi ptr [ %i.cu, %.preheader ], [ %i.cp, %bb.w ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !10
  %i.cw = add i64 %i.cv, 1                        ; 2 uses
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !10
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %.preheader, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %.preheader, %bb.v, %bb.w, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bn_mul_low_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %3, 2                           ; 11 uses
  tail call void @bn_mul_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.a, i32 noundef 0, i32 noundef 0, ptr noundef %4)
  %i.b = icmp sgt i32 %3, 63
  br i1 %i.b, label %bb.b, label %common.ret

common.ret56:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64                ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.e = zext nneg i32 %3 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.e ; 2 uses
  tail call void @bn_mul_low_recursive(ptr noundef %4, ptr noundef %1, ptr noundef %i.d, i32 noundef %i.a, ptr noundef nonnull %i.f)
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c ; 4 uses
  %i.h = tail call i64 @bn_add_words(ptr noundef %i.g, ptr noundef %i.g, ptr noundef %4, i32 noundef %i.a) #4 ; 0 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  tail call void @bn_mul_low_recursive(ptr noundef %4, ptr noundef %i.i, ptr noundef %2, i32 noundef %i.a, ptr noundef nonnull %i.f)
  %i.j = tail call i64 @bn_add_words(ptr noundef %i.g, ptr noundef %i.g, ptr noundef %4, i32 noundef %i.a) #4 ; 0 uses
  br label %common.ret56

common.ret:                                       ; preds = %bb.a
  %i.k = sext i32 %i.a to i64                     ; 4 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %2, i64 %i.k
  tail call void @bn_mul_low_normal(ptr noundef %4, ptr noundef %1, ptr noundef %i.l, i32 noundef %i.a)
  %i.m = getelementptr inbounds [8 x i8], ptr %4, i64 %i.k ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %1, i64 %i.k
  tail call void @bn_mul_low_normal(ptr noundef %i.m, ptr noundef %i.n, ptr noundef %2, i32 noundef %i.a)
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.k ; 4 uses
  %i.p = tail call i64 @bn_add_words(ptr noundef %i.o, ptr noundef %i.o, ptr noundef %4, i32 noundef %i.a) #4 ; 0 uses
  %i.q = tail call i64 @bn_add_words(ptr noundef %i.o, ptr noundef %i.o, ptr noundef %i.m, i32 noundef %i.a) #4 ; 0 uses
  br label %common.ret56
}

; Function Attrs: nounwind uwtable
define dso_local void @bn_mul_low_normal(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !10
  %i.b = tail call i64 @bn_mul_words(ptr noundef %0, ptr noundef %1, i32 noundef %3, i64 noundef %i.a) #4 ; 0 uses
  %i.c = icmp slt i32 %3, 2
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.033 = phi i32 [ %i.v, %bb.d ], [ %3, %bb.a ]  ; 8 uses
  %.02532 = phi ptr [ %i.x, %bb.d ], [ %2, %bb.a ] ; 4 uses
  %.02631 = phi ptr [ %i.w, %bb.d ], [ %0, %bb.a ] ; 4 uses
  %i.d = add nsw i32 %.033, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.02631, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.02532, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !10
  %i.h = tail call i64 @bn_mul_add_words(ptr noundef nonnull %i.e, ptr noundef %1, i32 noundef %i.d, i64 noundef %i.g) #4 ; 0 uses
end_hunk_0
