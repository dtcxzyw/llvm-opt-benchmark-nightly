Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/jmemmgr?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@alloc_small:bb.a
}

; Function Attrs: nounwind uwtable
define internal nonnull ptr @alloc_large(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp ugt i64 %2, 999999976
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 53, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 3, ptr %i.f, align 4, !tbaa !23
  %i.g = load ptr, ptr %0, align 8, !tbaa !18
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  tail call void %i.h(ptr noundef nonnull %0) #7, !inline_history !0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.biased = add i64 %2, 7
  %.0 = and i64 %.biased, -8                      ; 2 uses
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i32 12, ptr %i.j, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  store i32 %1, ptr %i.k, align 4, !tbaa !23
  %i.l = load ptr, ptr %0, align 8, !tbaa !18
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  tail call void %i.m(ptr noundef nonnull %0) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.n = add i64 %.0, 24                          ; 2 uses
  %i.o = tail call ptr @jpeg_get_large(ptr noundef nonnull %0, i64 noundef %i.n) #7 ; 6 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i32 53, ptr %i.r, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  store i32 4, ptr %i.s, align 4, !tbaa !23
  %i.t = load ptr, ptr %0, align 8, !tbaa !18
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24
  tail call void %i.u(ptr noundef nonnull %0) #7, !inline_history !0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !29
  %i.x = add i64 %i.w, %i.n
  store i64 %i.x, ptr %i.v, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.z = sext i32 %1 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  store ptr %i.ab, ptr %i.o, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.0, ptr %i.ac, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.ad, align 8, !tbaa !23
  store ptr %i.o, ptr %i.aa, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  ret ptr %i.ae
}

; Function Attrs: nounwind uwtable
define internal nonnull ptr @alloc_sarray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = zext i32 %2 to i64                       ; 6 uses
  %i.d = udiv i32 999999976, %2
  %i.e = icmp ugt i32 %2, 999999976
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 69, ptr %i.g, align 8, !tbaa !22
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !24
  tail call void %i.h(ptr noundef nonnull %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = zext i32 %3 to i64
  %.036 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %3) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i32 %.036, ptr %i.j, align 8, !tbaa !35
  %i.k = shl nuw nsw i64 %i.i, 3
  %i.l = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.k) ; 6 uses
  %.not48 = icmp eq i32 %3, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.c
  %or.cond.i = icmp ugt i32 %1, 1
  %i.m = sext i32 %1 to i64
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %alloc_large.exit
  %.1.lcssa = phi i32 [ %.03546, %alloc_large.exit ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bn, %.lr.ph ] ; 2 uses
  %i.n = icmp ult i32 %.1.lcssa, %3
  br i1 %i.n, label %bb.d, label %._crit_edge, !llvm.loop !86

bb.d:                                             ; preds = %.lr.ph47, %.loopexit
  %.03546 = phi i32 [ 0, %.lr.ph47 ], [ %.1.lcssa, %.loopexit ] ; 4 uses
  %.13745 = phi i32 [ %.036, %.lr.ph47 ], [ %i.p, %.loopexit ]
  %i.o = sub nuw i32 %3, %.03546
  %i.p = tail call i32 @llvm.umin.i32(i32 %.13745, i32 %i.o) ; 7 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.q, %i.c               ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.t = icmp samesign ugt i64 %i.r, 999999976
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i32 53, ptr %i.v, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  store i32 3, ptr %i.w, align 4, !tbaa !23
  %i.x = load ptr, ptr %0, align 8, !tbaa !18
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24
  tail call void %i.y(ptr noundef nonnull %0) #7, !inline_history !1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.biased.i = add nuw nsw i64 %i.r, 7
  %.0.i = and i64 %.biased.i, 9223372036854775800 ; 2 uses
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i32 12, ptr %i.aa, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 44
  store i32 %1, ptr %i.ab, align 4, !tbaa !23
  %i.ac = load ptr, ptr %0, align 8, !tbaa !18
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !24
  tail call void %i.ad(ptr noundef nonnull %0) #7, !inline_history !36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = add nuw nsw i64 %.0.i, 24               ; 2 uses
  %i.af = tail call ptr @jpeg_get_large(ptr noundef nonnull %0, i64 noundef %i.ae) #7 ; 6 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.i, label %alloc_large.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i32 53, ptr %i.ai, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 44
  store i32 4, ptr %i.aj, align 4, !tbaa !23
  %i.ak = load ptr, ptr %0, align 8, !tbaa !18
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24
  tail call void %i.al(ptr noundef nonnull %0) #7, !inline_history !1
  br label %alloc_large.exit

alloc_large.exit:                                 ; preds = %bb.h, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 144 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !29
  %i.ao = add i64 %i.an, %i.ae
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.m ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !34
  store ptr %i.ar, ptr %i.af, align 8, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.0.i, ptr %i.as, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 0, ptr %i.at, align 8, !tbaa !23
  store ptr %i.af, ptr %i.aq, align 8, !tbaa !34
  %.not41 = icmp eq i32 %i.p, 0
  br i1 %.not41, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %alloc_large.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %xtraiter = and i32 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.044.prol = phi i32 [ %i.az, %.lr.ph.prol ], [ %i.p, %.lr.ph.preheader ]
  %.143.prol = phi i32 [ %i.av, %.lr.ph.prol ], [ %.03546, %.lr.ph.preheader ] ; 2 uses
  %.03842.prol = phi ptr [ %i.ay, %.lr.ph.prol ], [ %i.au, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.av = add i32 %.143.prol, 1                   ; 3 uses
  %i.aw = zext i32 %.143.prol to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aw
  store ptr %.03842.prol, ptr %i.ax, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw i8, ptr %.03842.prol, i64 %i.c ; 2 uses
  %i.az = add nsw i32 %.044.prol, -1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !87

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.av, %.lr.ph.prol ]
  %.044.unr = phi i32 [ %i.p, %.lr.ph.preheader ], [ %i.az, %.lr.ph.prol ]
  %.143.unr = phi i32 [ %.03546, %.lr.ph.preheader ], [ %i.av, %.lr.ph.prol ]
  %.03842.unr = phi ptr [ %i.au, %.lr.ph.preheader ], [ %i.ay, %.lr.ph.prol ]
  %i.ba = icmp samesign ult i32 %i.p, 4
  br i1 %i.ba, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.044 = phi i32 [ %i.br, %.lr.ph ], [ %.044.unr, %.lr.ph.prol.loopexit ]
  %.143 = phi i32 [ %i.bn, %.lr.ph ], [ %.143.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03842 = phi ptr [ %i.bq, %.lr.ph ], [ %.03842.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.bb = add i32 %.143, 1
  %i.bc = zext i32 %.143 to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bc
  store ptr %.03842, ptr %i.bd, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %.03842, i64 %i.c ; 2 uses
  %i.bf = add i32 %.143, 2
  %i.bg = zext i32 %i.bb to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bg
  store ptr %i.be, ptr %i.bh, align 8, !tbaa !38
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.c ; 2 uses
  %i.bj = add i32 %.143, 3
  %i.bk = zext i32 %i.bf to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bk
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !38
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.c ; 2 uses
  %i.bn = add i32 %.143, 4                        ; 2 uses
  %i.bo = zext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bo
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !38
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.c
  %i.br = add nsw i32 %.044, -4                   ; 2 uses
  %.not.3 = icmp eq i32 %i.br, 0
  br i1 %.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !88

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define internal nonnull ptr @alloc_barray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = zext i32 %2 to i64                       ; 6 uses
  %i.d = shl nuw nsw i64 %i.c, 7                  ; 2 uses
  %i.e = udiv i64 999999976, %i.d
  %i.f = icmp ugt i32 %2, 7812499
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 69, ptr %i.h, align 8, !tbaa !22
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !24
  tail call void %i.i(ptr noundef nonnull %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = zext i32 %3 to i64                       ; 2 uses
  %.03641 = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.j)
  %.036 = trunc nuw nsw i64 %.03641 to i32        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i32 %.036, ptr %i.k, align 8, !tbaa !35
  %i.l = shl nuw nsw i64 %i.j, 3
  %i.m = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.l) ; 6 uses
  %.not49 = icmp eq i32 %3, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.c
  %or.cond.i = icmp ugt i32 %1, 1
  %i.n = sext i32 %1 to i64
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %alloc_large.exit
  %.1.lcssa = phi i32 [ %.03547, %alloc_large.exit ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bo, %.lr.ph ] ; 2 uses
  %i.o = icmp ult i32 %.1.lcssa, %3
  br i1 %i.o, label %bb.d, label %._crit_edge, !llvm.loop !89

bb.d:                                             ; preds = %.lr.ph48, %.loopexit
  %.03547 = phi i32 [ 0, %.lr.ph48 ], [ %.1.lcssa, %.loopexit ] ; 4 uses
  %.13746 = phi i32 [ %.036, %.lr.ph48 ], [ %i.q, %.loopexit ]
  %i.p = sub nuw i32 %3, %.03547
  %i.q = tail call i32 @llvm.umin.i32(i32 %.13746, i32 %i.p) ; 7 uses
  %i.r = zext nneg i32 %i.q to i64
  %i.s = mul i64 %i.d, %i.r                       ; 3 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.u = icmp ugt i64 %i.s, 999999976
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i32 53, ptr %i.w, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  store i32 3, ptr %i.x, align 4, !tbaa !23
  %i.y = load ptr, ptr %0, align 8, !tbaa !18
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24
  tail call void %i.z(ptr noundef nonnull %0) #7, !inline_history !1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 12, ptr %i.ab, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  store i32 %1, ptr %i.ac, align 4, !tbaa !23
  %i.ad = load ptr, ptr %0, align 8, !tbaa !18
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !24
  tail call void %i.ae(ptr noundef nonnull %0) #7, !inline_history !36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = or disjoint i64 %i.s, 24                ; 2 uses
  %i.ag = tail call ptr @jpeg_get_large(ptr noundef nonnull %0, i64 noundef %i.af) #7 ; 6 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %alloc_large.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i32 53, ptr %i.aj, align 8, !tbaa !22
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  store i32 4, ptr %i.ak, align 4, !tbaa !23
  %i.al = load ptr, ptr %0, align 8, !tbaa !18
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !24
  tail call void %i.am(ptr noundef nonnull %0) #7, !inline_history !1
  br label %alloc_large.exit

alloc_large.exit:                                 ; preds = %bb.h, %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 144 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !29
  %i.ap = add i64 %i.ao, %i.af
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.n ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !34
  store ptr %i.as, ptr %i.ag, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.s, ptr %i.at, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %i.au, align 8, !tbaa !23
  store ptr %i.ag, ptr %i.ar, align 8, !tbaa !34
  %.not42 = icmp eq i32 %i.q, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %alloc_large.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %xtraiter = and i32 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.045.prol = phi i32 [ %i.ba, %.lr.ph.prol ], [ %i.q, %.lr.ph.preheader ]
  %.144.prol = phi i32 [ %i.aw, %.lr.ph.prol ], [ %.03547, %.lr.ph.preheader ] ; 2 uses
  %.03843.prol = phi ptr [ %i.az, %.lr.ph.prol ], [ %i.av, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.aw = add i32 %.144.prol, 1                   ; 3 uses
  %i.ax = zext i32 %.144.prol to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ax
  store ptr %.03843.prol, ptr %i.ay, align 8, !tbaa !41
  %i.az = getelementptr inbounds nuw [128 x i8], ptr %.03843.prol, i64 %i.c ; 2 uses
  %i.ba = add nsw i32 %.045.prol, -1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !90

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.aw, %.lr.ph.prol ]
  %.045.unr = phi i32 [ %i.q, %.lr.ph.preheader ], [ %i.ba, %.lr.ph.prol ]
  %.144.unr = phi i32 [ %.03547, %.lr.ph.preheader ], [ %i.aw, %.lr.ph.prol ]
  %.03843.unr = phi ptr [ %i.av, %.lr.ph.preheader ], [ %i.az, %.lr.ph.prol ]
  %i.bb = icmp samesign ult i32 %i.q, 4
  br i1 %i.bb, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.045 = phi i32 [ %i.bs, %.lr.ph ], [ %.045.unr, %.lr.ph.prol.loopexit ]
  %.144 = phi i32 [ %i.bo, %.lr.ph ], [ %.144.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03843 = phi ptr [ %i.br, %.lr.ph ], [ %.03843.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.bc = add i32 %.144, 1
  %i.bd = zext i32 %.144 to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bd
  store ptr %.03843, ptr %i.be, align 8, !tbaa !41
  %i.bf = getelementptr inbounds nuw [128 x i8], ptr %.03843, i64 %i.c ; 2 uses
  %i.bg = add i32 %.144, 2
  %i.bh = zext i32 %i.bc to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !41
  %i.bj = getelementptr inbounds nuw [128 x i8], ptr %i.bf, i64 %i.c ; 2 uses
  %i.bk = add i32 %.144, 3
  %i.bl = zext i32 %i.bg to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bl
  store ptr %i.bj, ptr %i.bm, align 8, !tbaa !41
  %i.bn = getelementptr inbounds nuw [128 x i8], ptr %i.bj, i64 %i.c ; 2 uses
  %i.bo = add i32 %.144, 4                        ; 2 uses
  %i.bp = zext i32 %i.bk to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bp
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !41
  %i.br = getelementptr inbounds nuw [128 x i8], ptr %i.bn, i64 %i.c
  %i.bs = add nsw i32 %.045, -4                   ; 2 uses
  %.not.3 = icmp eq i32 %i.bs, 0
  br i1 %.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !91

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  ret ptr %i.m
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @request_virt_sarray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %.split, label %.split24

.split24:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 12, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %1, ptr %i.e, align 4, !tbaa !23
  %i.f = load ptr, ptr %0, align 8, !tbaa !18
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  tail call void %i.g(ptr noundef nonnull %0) #7
  br label %.split

.split:                                           ; preds = %bb.a, %.split24
  %.sink = phi i32 [ %1, %.split24 ], [ 1, %bb.a ]
  %i.h = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef %.sink, i64 noundef 152) ; 9 uses
  store ptr null, ptr %i.h, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %4, ptr %i.i, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %3, ptr %i.j, align 4, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 %5, ptr %i.k, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 %2, ptr %i.l, align 4, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 0, ptr %i.m, align 4, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.o, ptr %i.p, align 8, !tbaa !92
  store ptr %i.h, ptr %i.n, align 8, !tbaa !51
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @request_virt_barray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %.split, label %.split24

.split24:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 12, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %1, ptr %i.e, align 4, !tbaa !23
  %i.f = load ptr, ptr %0, align 8, !tbaa !18
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  tail call void %i.g(ptr noundef nonnull %0) #7
  br label %.split

.split:                                           ; preds = %bb.a, %.split24
  %.sink = phi i32 [ %1, %.split24 ], [ 1, %bb.a ]
  %i.h = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef %.sink, i64 noundef 152) ; 9 uses
  store ptr null, ptr %i.h, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %4, ptr %i.i, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %3, ptr %i.j, align 4, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 %5, ptr %i.k, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 %2, ptr %i.l, align 4, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 0, ptr %i.m, align 4, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.o, ptr %i.p, align 8, !tbaa !93
  store ptr %i.h, ptr %i.n, align 8, !tbaa !60
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define internal void @realize_virt_arrays(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %.084100 = load ptr, ptr %i.c, align 8, !tbaa !61 ; 2 uses
  %.not101 = icmp eq ptr %.084100, null
  br i1 %.not101, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.084104 = phi ptr [ %.084, %bb.c ], [ %.084100, %bb.a ] ; 5 uses
  %.087103 = phi i64 [ %.188, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.089102 = phi i64 [ %.190, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.084104, align 8, !tbaa !45
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.084104, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !48
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.084104, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !47
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = mul nuw nsw i64 %i.k, %i.h
  %i.m = add i64 %i.l, %.089102
  %i.n = getelementptr inbounds nuw i8, ptr %.084104, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !46
  %i.p = zext i32 %i.o to i64
  %i.q = mul nuw nsw i64 %i.p, %i.k
  %i.r = add i64 %i.q, %.087103
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.190 = phi i64 [ %i.m, %bb.b ], [ %.089102, %.lr.ph ] ; 2 uses
  %.188 = phi i64 [ %i.r, %bb.b ], [ %.087103, %.lr.ph ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.084104, i64 48
  %.084 = load ptr, ptr %i.s, align 8, !tbaa !61  ; 2 uses
  %.not = icmp eq ptr %.084, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !94

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.089.lcssa = phi i64 [ 0, %bb.a ], [ %.190, %bb.c ] ; 2 uses
  %.087.lcssa = phi i64 [ 0, %bb.a ], [ %.188, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %.0106 = load ptr, ptr %i.t, align 8, !tbaa !62 ; 2 uses
  %.not94107 = icmp eq ptr %.0106, null
  br i1 %.not94107, label %._crit_edge113, label %.lr.ph112

.lr.ph112:                                        ; preds = %._crit_edge, %bb.e
  %.0110 = phi ptr [ %.0, %bb.e ], [ %.0106, %._crit_edge ] ; 5 uses
  %.2109 = phi i64 [ %.3, %bb.e ], [ %.087.lcssa, %._crit_edge ] ; 2 uses
  %.291108 = phi i64 [ %.392, %bb.e ], [ %.089.lcssa, %._crit_edge ] ; 2 uses
  %i.u = load ptr, ptr %.0110, align 8, !tbaa !54
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph112
  %i.w = getelementptr inbounds nuw i8, ptr %.0110, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !57
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.0110, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !56
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = shl nuw nsw i64 %i.y, 7
  %i.ad = mul i64 %i.ac, %i.ab
  %i.ae = add i64 %i.ad, %.291108
  %i.af = getelementptr inbounds nuw i8, ptr %.0110, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !55
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ab, 7
  %i.aj = mul i64 %i.ai, %i.ah
  %i.ak = add i64 %i.aj, %.2109
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph112, %bb.d
  %.392 = phi i64 [ %i.ae, %bb.d ], [ %.291108, %.lr.ph112 ] ; 2 uses
  %.3 = phi i64 [ %i.ak, %bb.d ], [ %.2109, %.lr.ph112 ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0110, i64 48
  %.0 = load ptr, ptr %i.al, align 8, !tbaa !62   ; 2 uses
  %.not94 = icmp eq ptr %.0, null
  br i1 %.not94, label %._crit_edge113, label %.lr.ph112, !llvm.loop !95

._crit_edge113:                                   ; preds = %bb.e, %._crit_edge
  %.291.lcssa = phi i64 [ %.089.lcssa, %._crit_edge ], [ %.392, %bb.e ] ; 3 uses
  %.2.lcssa = phi i64 [ %.087.lcssa, %._crit_edge ], [ %.3, %bb.e ] ; 2 uses
  %i.am = icmp slt i64 %.291.lcssa, 1
  br i1 %i.am, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %._crit_edge113
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !29
  %i.ap = tail call i64 @jpeg_mem_available(ptr noundef %0, i64 noundef %.291.lcssa, i64 noundef %.2.lcssa, i64 noundef %i.ao) #7 ; 2 uses
  %.not95 = icmp slt i64 %i.ap, %.2.lcssa
  br i1 %.not95, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = sdiv i64 %i.ap, %.291.lcssa
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 1)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.086 = phi i64 [ %spec.store.select, %bb.g ], [ 1000000000, %bb.f ] ; 4 uses
  %.185116 = load ptr, ptr %i.c, align 8, !tbaa !61 ; 2 uses
  %.not96117 = icmp eq ptr %.185116, null
  br i1 %.not96117, label %.preheader, label %.lr.ph120

.lr.ph120:                                        ; preds = %bb.h
  %i.ar = trunc nuw i64 %.086 to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 152
end_hunk_0
