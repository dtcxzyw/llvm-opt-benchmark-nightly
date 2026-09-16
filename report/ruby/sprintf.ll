Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/sprintf?download=true
inline.NumInlined: 279
inline.NumDeleted: 61
begin_hunk_0_@BSD__sfvwrite:bb.a
  br i1 %.not38, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.135.lcssa, i64 %i.t) ; 3 uses
  %.not.i = icmp eq i64 %i.t, 0
  %.pre45 = load ptr, ptr %0, align 8, !tbaa !32  ; 2 uses
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.pre45, ptr noundef nonnull readonly align 1 %.133.lcssa, i64 noundef range(i64 1, 0) %spec.select, i1 noundef false) #20
  %.pre = load i64, ptr %i.l, align 8, !tbaa !34
  %.pre44 = load ptr, ptr %0, align 8, !tbaa !32
  %.pre46.pre = load i64, ptr %i.a, align 8, !tbaa !43
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.e, %bb.f
  %.pre46 = phi i64 [ %i.m, %bb.e ], [ %.pre46.pre, %bb.f ]
  %i.w = phi ptr [ %.pre45, %bb.e ], [ %.pre44, %bb.f ]
  %i.x = phi i64 [ 0, %bb.e ], [ %.pre, %bb.f ]
  %i.y = sub i64 %i.x, %spec.select
  store i64 %i.y, ptr %i.l, align 8, !tbaa !34
  %i.z = getelementptr i8, ptr %i.w, i64 %spec.select
  store ptr %i.z, ptr %0, align 8, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %ruby_nonempty_memcpy.exit
  %i.aa = phi i64 [ %.pre46, %ruby_nonempty_memcpy.exit ], [ %i.m, %bb.d ] ; 2 uses
  %.1 = phi i64 [ %.135.lcssa, %ruby_nonempty_memcpy.exit ], [ %i.t, %bb.d ] ; 4 uses
  %i.ab = getelementptr i8, ptr %.133.lcssa, i64 %.1
  %i.ac = sub i64 %.135.lcssa, %.1
  %i.ad = sub i64 %i.aa, %.1                      ; 2 uses
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !43
  %.not39 = icmp eq i64 %i.aa, %.1
  br i1 %.not39, label %.loopexit, label %bb.c, !llvm.loop !91

.loopexit:                                        ; preds = %bb.g, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc i64 @BSD_vfprintf(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef %2) unnamed_addr #14 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 3 uses
  %i.b = alloca [5 x i8], align 1                 ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %i.e = alloca i8, align 1                       ; 20 uses
  %i.f = alloca i32, align 4                      ; 19 uses
  %i.g = alloca [7 x i8], align 1                 ; 11 uses
  %i.h = alloca i64, align 8                      ; 11 uses
  %i.i = alloca i64, align 8                      ; 7 uses
  %3 = alloca %struct.__suio, align 8             ; 54 uses
  %4 = alloca [8 x %struct.__siov], align 16      ; 88 uses
  %i.j = alloca [1335 x i8], align 16             ; 16 uses
  %i.k = alloca [4 x i8], align 1                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  store i64 0, ptr %i.h, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1335 ; 7 uses
  %i.m = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !31
  %i.o = and i16 %i.n, 26
  %i.p = icmp eq i16 %i.o, 10
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %0, i64 18
  %i.r = load i16, ptr %i.q, align 2, !tbaa !115
  %i.s = icmp sgt i16 %i.r, -1
  br i1 %i.s, label %bb.kd, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %4, ptr %3, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 101 uses
  store i64 0, ptr %i.t, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 122 uses
  store i32 0, ptr %i.u, align 8, !tbaa !116
  %i.v = getelementptr i8, ptr %0, i64 40         ; 49 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 44 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 22 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.z = ptrtoint ptr %i.j to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %.021.i768 = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 2 uses
  %scevgep.i773 = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.ad = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 1334 ; 4 uses
  %i.ah = ptrtoint ptr %i.l to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  br label %.outer2298

.outer2298:                                       ; preds = %bb.kc, %bb.c
  %.0903.ph = phi i32 [ %.2905, %bb.kc ], [ 0, %bb.c ] ; 10 uses
  %.0575.ph = phi ptr [ %.7582, %bb.kc ], [ %1, %bb.c ]
  %.0526.ph = phi i64 [ %i.asa, %bb.kc ], [ 0, %bb.c ]
  %.0514.ph = phi double [ %.2516, %bb.kc ], [ 0.000000e+00, %bb.c ] ; 7 uses
  %.0509.ph = phi i32 [ %.3512, %bb.kc ], [ 0, %bb.c ] ; 16 uses
  %.0502.ph = phi i32 [ %.5507, %bb.kc ], [ 0, %bb.c ] ; 10 uses
  br label %bb.d

bb.d:                                             ; preds = %.backedge2299, %.outer2298
  %.0575 = phi ptr [ %.0575.ph, %.outer2298 ], [ %.3578, %.backedge2299 ] ; 4 uses
  %.0536 = phi ptr [ %4, %.outer2298 ], [ %.2538, %.backedge2299 ] ; 4 uses
  %.0526 = phi i64 [ %.0526.ph, %.outer2298 ], [ %.1527, %.backedge2299 ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.1576 = phi ptr [ %.0575, %bb.d ], [ %i.am, %bb.f ] ; 5 uses
  %i.al = load i8, ptr %.1576, align 1, !tbaa !16 ; 2 uses
  switch i8 %i.al, label %bb.f [
    i8 37, label %bb.g
    i8 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr i8, ptr %.1576, i64 1
  br label %bb.e, !llvm.loop !92

bb.g:                                             ; preds = %bb.e, %bb.e
  %i.an = ptrtoint ptr %.1576 to i64
  %i.ao = ptrtoint ptr %.0575 to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %.not = icmp eq ptr %.1576, %.0575
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %.0575, ptr %.0536, align 8, !tbaa !46
  %i.aq = getelementptr i8, ptr %.0536, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !47
  %i.ar = load i64, ptr %i.t, align 8, !tbaa !43
  %i.as = add i64 %i.ar, %i.ap                    ; 2 uses
  store i64 %i.as, ptr %i.t, align 8, !tbaa !43
  %i.at = getelementptr i8, ptr %.0536, i64 16
  %i.au = load i32, ptr %i.u, align 8, !tbaa !116
  %i.av = add i32 %i.au, 1                        ; 2 uses
  store i32 %i.av, ptr %i.u, align 8, !tbaa !116
  %i.aw = icmp sgt i32 %i.av, 7
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = icmp eq i64 %i.as, 0
  br i1 %i.ax, label %BSD__sprint.exit.thread, label %BSD__sprint.exit

BSD__sprint.exit.thread:                          ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !116
  br label %bb.j

BSD__sprint.exit:                                 ; preds = %bb.i
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.az = call i32 %i.ay(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !93
  store i64 0, ptr %i.t, align 8, !tbaa !43
  store i32 0, ptr %i.u, align 8, !tbaa !116
  %.not639 = icmp eq i32 %i.az, 0
  br i1 %.not639, label %bb.j, label %.thread1011

bb.j:                                             ; preds = %BSD__sprint.exit.thread, %BSD__sprint.exit, %bb.h
  %.1537 = phi ptr [ %i.at, %bb.h ], [ %4, %BSD__sprint.exit ], [ %4, %BSD__sprint.exit.thread ]
  %i.ba = add i64 %i.ap, %.0526
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.2538 = phi ptr [ %.1537, %bb.j ], [ %.0536, %bb.g ] ; 11 uses
  %.1527 = phi i64 [ %i.ba, %bb.j ], [ %.0526, %bb.g ] ; 57 uses
  %i.bb = icmp eq i8 %i.al, 0
  br i1 %i.bb, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr i8, ptr %.1576, i64 1
  store i8 0, ptr %i.e, align 1, !tbaa !16
  br label %.backedge

.backedge.loopexit:                               ; preds = %._crit_edge
  %.1519.fr.le2970 = freeze i32 %.1519
  br label %.backedge.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.l
  %i.bd = phi i8 [ 0, %bb.l ], [ %.be, %.backedge.backedge ] ; 14 uses
  %.2577 = phi ptr [ %i.bc, %bb.l ], [ %.2577.be, %.backedge.backedge ] ; 2 uses
  %.0529 = phi i32 [ 0, %bb.l ], [ %.0529.be, %.backedge.backedge ] ; 39 uses
  %.0523 = phi i32 [ 0, %bb.l ], [ %.0523.be, %.backedge.backedge ]
  %.0518 = phi i32 [ -1, %bb.l ], [ %.0518.be, %.backedge.backedge ]
  %i.be = getelementptr i8, ptr %.2577, i64 1
  %i.bf = load i8, ptr %.2577, align 1, !tbaa !16
  %i.bg = sext i8 %i.bf to i32
  br label %.outer

.outer.loopexit:                                  ; preds = %bb.ab
  %.1519.fr.le2972 = freeze i32 %.1519
  br label %.outer, !llvm.loop !94

.outer:                                           ; preds = %.outer.loopexit, %.backedge
  %.3578.ph = phi ptr [ %i.be, %.backedge ], [ %i.cx, %.outer.loopexit ]
  %.0566.ph = phi i32 [ %i.bg, %.backedge ], [ %i.cz, %.outer.loopexit ]
  %.1524.ph = phi i32 [ %.0523, %.backedge ], [ %i.cw, %.outer.loopexit ] ; 13 uses
  %.1519.ph = phi i32 [ %.0518, %.backedge ], [ %.1519.fr.le2972, %.outer.loopexit ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.backedge, %.outer
  %.3578 = phi ptr [ %.3578.ph, %.outer ], [ %.3578.be, %._crit_edge.backedge ] ; 26 uses
  %.0566 = phi i32 [ %.0566.ph, %.outer ], [ %.0566.be, %._crit_edge.backedge ] ; 21 uses
  %.1519 = phi i32 [ %.1519.ph, %.outer ], [ %.1519.be, %._crit_edge.backedge ] ; 24 uses
  switch i32 %.0566, label %bb.fz [
    i32 32, label %bb.m
    i32 35, label %bb.o
    i32 42, label %bb.p
    i32 45, label %.loopexit1039.loopexit
    i32 43, label %bb.u
    i32 46, label %bb.v
    i32 48, label %bb.aa
    i32 49, label %.preheader2283
    i32 50, label %.preheader2283
    i32 51, label %.preheader2283
    i32 52, label %.preheader2283
    i32 53, label %.preheader2283
    i32 54, label %.preheader2283
    i32 55, label %.preheader2283
    i32 56, label %.preheader2283
    i32 57, label %.preheader2283
    i32 76, label %.backedge.loopexit
    i32 104, label %bb.ac
    i32 116, label %bb.ad
    i32 122, label %bb.ad
    i32 108, label %bb.ad
    i32 99, label %bb.ae
    i32 105, label %bb.ai
    i32 68, label %bb.ar
    i32 100, label %.loopexit1040.loopexit
    i32 97, label %bb.bg
    i32 65, label %bb.bg
    i32 101, label %bb.bi
    i32 69, label %bb.bi
    i32 102, label %bb.bj
    i32 103, label %.loopexit1041.loopexit
    i32 71, label %.loopexit1041.loopexit
    i32 110, label %bb.dd
    i32 79, label %bb.dr
    i32 111, label %.loopexit1042.loopexit
    i32 112, label %bb.ef
    i32 115, label %bb.ei
    i32 85, label %bb.eo
    i32 117, label %.loopexit1043.loopexit
    i32 88, label %.loopexit1044.loopexit
    i32 120, label %.loopexit1044.loopexit2025
    i32 0, label %.loopexit
  ]

.preheader2283:                                   ; preds = %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge
  br label %bb.ab

bb.m:                                             ; preds = %._crit_edge
  %.1519.fr.le2984 = freeze i32 %.1519            ; 2 uses
  %.not668 = icmp eq i8 %i.bd, 0
  br i1 %.not668, label %bb.n, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.m, %bb.n, %bb.o, %.loopexit1039, %bb.u, %bb.z, %bb.aa, %bb.ac, %bb.ad, %bb.s, %.backedge.loopexit
  %.be = phi i8 [ %i.bd, %bb.ad ], [ %i.bd, %bb.o ], [ %i.bd, %bb.s ], [ %i.bd, %.loopexit1039 ], [ 43, %bb.u ], [ %i.bd, %bb.z ], [ %i.bd, %bb.aa ], [ %i.bd, %bb.m ], [ %i.bd, %bb.ac ], [ 32, %bb.n ], [ %i.bd, %.backedge.loopexit ]
  %.2577.be = phi ptr [ %.3578, %bb.ad ], [ %.3578, %bb.o ], [ %.3578, %bb.s ], [ %.3578, %.loopexit1039 ], [ %.3578, %bb.u ], [ %i.bv, %bb.z ], [ %.3578, %bb.aa ], [ %.3578, %bb.m ], [ %.3578, %bb.ac ], [ %.3578, %bb.n ], [ %.3578, %.backedge.loopexit ]
  %.0529.be = phi i32 [ %i.dd, %bb.ad ], [ %i.bh, %bb.o ], [ %.0529, %bb.s ], [ %i.bu, %.loopexit1039 ], [ %.0529, %bb.u ], [ %.0529, %bb.z ], [ %i.ct, %bb.aa ], [ %.0529, %bb.m ], [ %i.dc, %bb.ac ], [ %.0529, %bb.n ], [ %.0529, %.backedge.loopexit ]
  %.0523.be = phi i32 [ %.1524.ph, %bb.ad ], [ %.1524.ph, %bb.o ], [ %i.br, %bb.s ], [ %.2525, %.loopexit1039 ], [ %.1524.ph, %bb.u ], [ %.1524.ph, %bb.z ], [ %.1524.ph, %bb.aa ], [ %.1524.ph, %bb.m ], [ %.1524.ph, %bb.ac ], [ %.1524.ph, %bb.n ], [ %.1524.ph, %.backedge.loopexit ]
  %.0518.be = phi i32 [ %.1519.fr.le2966, %bb.ad ], [ %.1519.fr.le2982, %bb.o ], [ %.1519.fr.le2980, %bb.s ], [ %.1519.fr2652, %.loopexit1039 ], [ %.1519.fr.le2976, %bb.u ], [ %i.ck, %bb.z ], [ %.1519.fr.le2974, %bb.aa ], [ %.1519.fr.le2984, %bb.m ], [ %.1519.fr.le2968, %bb.ac ], [ %.1519.fr.le2984, %bb.n ], [ %.1519.fr.le2970, %.backedge.loopexit ]
  br label %.backedge

bb.n:                                             ; preds = %bb.m
  store i8 32, ptr %i.e, align 1, !tbaa !16
  br label %.backedge.backedge

bb.o:                                             ; preds = %._crit_edge
  %.1519.fr.le2982 = freeze i32 %.1519
  %i.bh = or i32 %.0529, 1
  br label %.backedge.backedge

bb.p:                                             ; preds = %._crit_edge
  %.1519.fr.le2980 = freeze i32 %.1519            ; 2 uses
  %i.bi = load i32, ptr %2, align 8               ; 3 uses
  %i.bj = icmp ult i32 %i.bi, 41
  br i1 %i.bj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr %i.x, align 8
  %i.bl = zext nneg i32 %i.bi to i64
  %i.bm = getelementptr i8, ptr %i.bk, i64 %i.bl
  %i.bn = add nuw nsw i32 %i.bi, 8
  store i32 %i.bn, ptr %2, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  store ptr %i.bp, ptr %i.w, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bq = phi ptr [ %i.bm, %bb.q ], [ %i.bo, %bb.r ]
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !11 ; 3 uses
  %i.bs = icmp sgt i32 %i.br, -1
  br i1 %i.bs, label %.backedge.backedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = sub i32 0, %i.br
  br label %.loopexit1039

.loopexit1039.loopexit:                           ; preds = %._crit_edge
  %.1519.fr.le2978 = freeze i32 %.1519
  br label %.loopexit1039

.loopexit1039:                                    ; preds = %.loopexit1039.loopexit, %bb.t
  %.1519.fr2652 = phi i32 [ %.1519.fr.le2980, %bb.t ], [ %.1519.fr.le2978, %.loopexit1039.loopexit ]
  %.2525 = phi i32 [ %i.bt, %bb.t ], [ %.1524.ph, %.loopexit1039.loopexit ]
  %i.bu = or i32 %.0529, 4
  br label %.backedge.backedge

bb.u:                                             ; preds = %._crit_edge
  %.1519.fr.le2976 = freeze i32 %.1519
  store i8 43, ptr %i.e, align 1, !tbaa !16
  br label %.backedge.backedge

bb.v:                                             ; preds = %._crit_edge
  %i.bv = getelementptr i8, ptr %.3578, i64 1     ; 3 uses
  %i.bw = load i8, ptr %.3578, align 1, !tbaa !16 ; 2 uses
  %i.bx = icmp eq i8 %i.bw, 42
  br i1 %i.bx, label %bb.w, label %.preheader

.preheader:                                       ; preds = %bb.v
  %.15671283 = sext i8 %i.bw to i32               ; 2 uses
  %i.by = add nsw i32 %.15671283, -48             ; 2 uses
  %i.bz = icmp ult i32 %i.by, 10
  br i1 %i.bz, label %.lr.ph, label %._crit_edge.backedge

bb.w:                                             ; preds = %bb.v
  %i.ca = load i32, ptr %2, align 8               ; 3 uses
  %i.cb = icmp ult i32 %i.ca, 41
  br i1 %i.cb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cc = load ptr, ptr %i.x, align 8
  %i.cd = zext nneg i32 %i.ca to i64
  %i.ce = getelementptr i8, ptr %i.cc, i64 %i.cd
  %i.cf = add nuw nsw i32 %i.ca, 8
  store i32 %i.cf, ptr %2, align 8
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cg = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  store ptr %i.ch, ptr %i.w, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ci = phi ptr [ %i.ce, %bb.x ], [ %i.cg, %bb.y ]
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !11
  %i.ck = call i32 @llvm.smax.i32(i32 %i.cj, i32 -1)
  br label %.backedge.backedge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.cl = phi i32 [ %i.cq, %.lr.ph ], [ %i.by, %.preheader ]
  %.05521285 = phi i32 [ %i.cn, %.lr.ph ], [ 0, %.preheader ]
  %.45791284 = phi ptr [ %i.co, %.lr.ph ], [ %i.bv, %.preheader ] ; 2 uses
  %i.cm = mul i32 %.05521285, 10
  %i.cn = add i32 %i.cm, %i.cl                    ; 2 uses
  %i.co = getelementptr i8, ptr %.45791284, i64 1 ; 2 uses
  %i.cp = load i8, ptr %.45791284, align 1, !tbaa !16
  %.1567 = sext i8 %i.cp to i32                   ; 2 uses
  %i.cq = add nsw i32 %.1567, -48                 ; 2 uses
  %i.cr = icmp ult i32 %i.cq, 10
  br i1 %i.cr, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !95

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cs = call i32 @llvm.smax.i32(i32 %i.cn, i32 -1)
  br label %._crit_edge.backedge

._crit_edge.backedge:                             ; preds = %._crit_edge.loopexit, %.preheader
  %.3578.be = phi ptr [ %i.bv, %.preheader ], [ %i.co, %._crit_edge.loopexit ]
  %.0566.be = phi i32 [ %.15671283, %.preheader ], [ %.1567, %._crit_edge.loopexit ]
  %.1519.be = phi i32 [ 0, %.preheader ], [ %i.cs, %._crit_edge.loopexit ]
  br label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %.1519.fr.le2974 = freeze i32 %.1519
  %i.ct = or i32 %.0529, 128
  br label %.backedge.backedge

bb.ab:                                            ; preds = %.preheader2283, %bb.ab
  %.5580 = phi ptr [ %i.cx, %bb.ab ], [ %.3578, %.preheader2283 ] ; 2 uses
  %.2568 = phi i32 [ %i.cz, %bb.ab ], [ %.0566, %.preheader2283 ]
  %.1553 = phi i32 [ %i.cw, %bb.ab ], [ 0, %.preheader2283 ]
  %i.cu = mul i32 %.1553, 10
  %i.cv = add nsw i32 %.2568, -48
  %i.cw = add i32 %i.cv, %i.cu                    ; 2 uses
  %i.cx = getelementptr i8, ptr %.5580, i64 1     ; 2 uses
  %i.cy = load i8, ptr %.5580, align 1, !tbaa !16
  %i.cz = sext i8 %i.cy to i32                    ; 3 uses
  %i.da = add nsw i32 %i.cz, -48
  %i.db = icmp ult i32 %i.da, 10
  br i1 %i.db, label %bb.ab, label %.outer.loopexit, !llvm.loop !94

bb.ac:                                            ; preds = %._crit_edge
  %.1519.fr.le2968 = freeze i32 %.1519
  %i.dc = or i32 %.0529, 64
  br label %.backedge.backedge

bb.ad:                                            ; preds = %._crit_edge, %._crit_edge, %._crit_edge
  %.1519.fr.le2966 = freeze i32 %.1519
  %i.dd = or i32 %.0529, 16
  br label %.backedge.backedge

bb.ae:                                            ; preds = %._crit_edge
  %i.de = load i32, ptr %2, align 8               ; 3 uses
  %i.df = icmp ult i32 %i.de, 41
  br i1 %i.df, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dg = load ptr, ptr %i.x, align 8
  %i.dh = zext nneg i32 %i.de to i64
  %i.di = getelementptr i8, ptr %i.dg, i64 %i.dh
  %i.dj = add nuw nsw i32 %i.de, 8
  store i32 %i.dj, ptr %2, align 8
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dk = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  store ptr %i.dl, ptr %i.w, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dm = phi ptr [ %i.di, %bb.af ], [ %i.dk, %bb.ag ]
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !11
  %i.do = trunc i32 %i.dn to i8
  store i8 %i.do, ptr %i.j, align 16, !tbaa !16
  store i8 0, ptr %i.e, align 1, !tbaa !16
  br label %bb.ga

bb.ai:                                            ; preds = %._crit_edge
  %.1519.fr.le2964 = freeze i32 %.1519            ; 4 uses
  %i.dp = load ptr, ptr %i.af, align 8, !tbaa !37
  %.not660 = icmp ne ptr %i.dp, null
  %i.dq = and i32 %.0529, 80
  %i.dr = icmp eq i32 %i.dq, 16
  %or.cond740 = select i1 %.not660, i1 %i.dr, i1 false
  br i1 %or.cond740, label %bb.aj, label %.loopexit1040

bb.aj:                                            ; preds = %bb.ai
  %i.ds = load i8, ptr %.3578, align 1, !tbaa !16
  %i.dt = icmp eq i8 %i.ds, 11
  br i1 %i.dt, label %bb.ak, label %.loopexit1040

bb.ak:                                            ; preds = %bb.aj
end_hunk_0
begin_hunk_1_@BSD_vfprintf:bb.a
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.pj = phi ptr [ %i.pf, %bb.eq ], [ %i.ph, %bb.er ]
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !13
  br label %bb.fp

bb.et:                                            ; preds = %.loopexit1043
  %i.pl = and i32 %.7, 64
  %.not643 = icmp eq i32 %i.pl, 0
  %i.pm = load i32, ptr %2, align 8               ; 5 uses
  %i.pn = icmp ult i32 %i.pm, 41                  ; 2 uses
  br i1 %.not643, label %bb.ey, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  br i1 %i.pn, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.po = load ptr, ptr %i.x, align 8
  %i.pp = zext nneg i32 %i.pm to i64
  %i.pq = getelementptr i8, ptr %i.po, i64 %i.pp
  %i.pr = add nuw nsw i32 %i.pm, 8
  store i32 %i.pr, ptr %2, align 8
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  %i.ps = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.pt = getelementptr i8, ptr %i.ps, i64 8
  store ptr %i.pt, ptr %i.w, align 8
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.pu = phi ptr [ %i.pq, %bb.ev ], [ %i.ps, %bb.ew ]
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !11
  %i.pw = and i32 %i.pv, 65535
  %i.px = zext nneg i32 %i.pw to i64
  br label %bb.fp

bb.ey:                                            ; preds = %bb.et
  br i1 %i.pn, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.py = load ptr, ptr %i.x, align 8
  %i.pz = zext nneg i32 %i.pm to i64
  %i.qa = getelementptr i8, ptr %i.py, i64 %i.pz
  %i.qb = add nuw nsw i32 %i.pm, 8
  store i32 %i.qb, ptr %2, align 8
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ey
  %i.qc = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.qd = getelementptr i8, ptr %i.qc, i64 8
  store ptr %i.qd, ptr %i.w, align 8
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %i.qe = phi ptr [ %i.qa, %bb.ez ], [ %i.qc, %bb.fa ]
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !11
  %i.qg = zext i32 %i.qf to i64
  br label %bb.fp

.loopexit1044.loopexit2025:                       ; preds = %._crit_edge
  %.1519.fr.le = freeze i32 %.1519
  br label %.loopexit1044

.loopexit1044.loopexit:                           ; preds = %._crit_edge
  %.1519.fr.le2940 = freeze i32 %.1519
  br label %.loopexit1044

.loopexit1044:                                    ; preds = %.loopexit1044.loopexit, %.loopexit1044.loopexit2025
  %.1519.fr2659 = phi i32 [ %.1519.fr.le, %.loopexit1044.loopexit2025 ], [ %.1519.fr.le2940, %.loopexit1044.loopexit ] ; 3 uses
  %.1 = phi ptr [ @ruby_hexdigits, %.loopexit1044.loopexit2025 ], [ getelementptr (i8, ptr @ruby_hexdigits, i64 16), %.loopexit1044.loopexit ]
  %i.qh = and i32 %.0529, 16
  %.not640 = icmp eq i32 %i.qh, 0
  br i1 %.not640, label %bb.fg, label %bb.fc

bb.fc:                                            ; preds = %.loopexit1044
  %i.qi = load i32, ptr %2, align 8               ; 3 uses
  %i.qj = icmp ult i32 %i.qi, 41
  br i1 %i.qj, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.qk = load ptr, ptr %i.x, align 8
  %i.ql = zext nneg i32 %i.qi to i64
  %i.qm = getelementptr i8, ptr %i.qk, i64 %i.ql
  %i.qn = add nuw nsw i32 %i.qi, 8
  store i32 %i.qn, ptr %2, align 8
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fc
  %i.qo = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.qp = getelementptr i8, ptr %i.qo, i64 8
  store ptr %i.qp, ptr %i.w, align 8
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.qq = phi ptr [ %i.qm, %bb.fd ], [ %i.qo, %bb.fe ]
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !13
  br label %bb.fr

bb.fg:                                            ; preds = %.loopexit1044
  %i.qs = and i32 %.0529, 64
  %.not641 = icmp eq i32 %i.qs, 0
  %i.qt = load i32, ptr %2, align 8               ; 5 uses
  %i.qu = icmp ult i32 %i.qt, 41                  ; 2 uses
  br i1 %.not641, label %bb.fl, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  br i1 %i.qu, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.qv = load ptr, ptr %i.x, align 8
  %i.qw = zext nneg i32 %i.qt to i64
  %i.qx = getelementptr i8, ptr %i.qv, i64 %i.qw
  %i.qy = add nuw nsw i32 %i.qt, 8
  store i32 %i.qy, ptr %2, align 8
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fh
  %i.qz = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ra = getelementptr i8, ptr %i.qz, i64 8
  store ptr %i.ra, ptr %i.w, align 8
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.rb = phi ptr [ %i.qx, %bb.fi ], [ %i.qz, %bb.fj ]
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !11
  %i.rd = and i32 %i.rc, 65535
  %i.re = zext nneg i32 %i.rd to i64
  br label %bb.fr

bb.fl:                                            ; preds = %bb.fg
  br i1 %i.qu, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.rf = load ptr, ptr %i.x, align 8
  %i.rg = zext nneg i32 %i.qt to i64
  %i.rh = getelementptr i8, ptr %i.rf, i64 %i.rg
  %i.ri = add nuw nsw i32 %i.qt, 8
  store i32 %i.ri, ptr %2, align 8
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fl
  %i.rj = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.rk = getelementptr i8, ptr %i.rj, i64 8
  store ptr %i.rk, ptr %i.w, align 8
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %i.rl = phi ptr [ %i.rh, %bb.fm ], [ %i.rj, %bb.fn ]
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !11
  %i.rn = zext i32 %i.rm to i64
  br label %bb.fr

bb.fp:                                            ; preds = %bb.es, %bb.fb, %bb.ex
  %i.ro = phi i64 [ %i.pk, %bb.es ], [ %i.px, %bb.ex ], [ %i.qg, %bb.fb ] ; 2 uses
  store i64 %i.ro, ptr %i.h, align 8, !tbaa !13
  store i8 0, ptr %i.e, align 1, !tbaa !16
  br label %bb.fq

bb.fq:                                            ; preds = %bb.bf, %bb.fp
  %.1519.fr2654 = phi i32 [ %.1519.fr2656, %bb.fp ], [ %.1519.fr2655, %bb.bf ] ; 3 uses
  %.pre15781604.jt10 = phi i8 [ 0, %bb.fp ], [ %i.bd, %bb.bf ] ; 2 uses
  %i.rp = phi i64 [ %i.ro, %bb.fp ], [ %i.fy, %bb.bf ] ; 2 uses
  %.9.jt10 = phi i32 [ %.7, %bb.fp ], [ %.1530, %bb.bf ] ; 2 uses
  %i.rq = and i32 %.9.jt10, -129
  %i.rr = icmp slt i32 %.1519.fr2654, 0
  %spec.select747.jt10 = select i1 %i.rr, i32 %.9.jt10, i32 %i.rq ; 2 uses
  %i.rs = icmp ne i64 %i.rp, 0
  %i.rt = icmp ne i32 %.1519.fr2654, 0
  %or.cond9.jt10 = or i1 %i.rt, %i.rs
  br i1 %or.cond9.jt10, label %bb.ft, label %BSD__ultoa.exit

bb.fr:                                            ; preds = %bb.ff, %bb.fo, %bb.fk
  %i.ru = phi i64 [ %i.qr, %bb.ff ], [ %i.re, %bb.fk ], [ %i.rn, %bb.fo ] ; 4 uses
  store i64 %i.ru, ptr %i.h, align 8, !tbaa !13
  %i.rv = trunc i32 %.0529 to i1
  %i.rw = icmp ne i64 %i.ru, 0
  %or.cond7 = and i1 %i.rw, %i.rv
  %i.rx = or i32 %.0529, 2
  %spec.select746 = select i1 %or.cond7, i32 %i.rx, i32 %.0529 ; 2 uses
  store i8 0, ptr %i.e, align 1, !tbaa !16
  %i.ry = and i32 %spec.select746, -129
  %i.rz = icmp slt i32 %.1519.fr2659, 0
  %spec.select2021 = select i1 %i.rz, i32 %spec.select746, i32 %i.ry ; 2 uses
  %i.sa = icmp ne i64 %i.ru, 0
  %i.sb = icmp ne i32 %.1519.fr2659, 0
  %or.cond9.jt16 = or i1 %i.sb, %i.sa
  br i1 %or.cond9.jt16, label %.preheader39.i.preheader, label %BSD__ultoa.exit

bb.fs:                                            ; preds = %bb.ea, %bb.ee, %bb.dv
  %i.sc = phi i64 [ %i.mx, %bb.dv ], [ %i.nk, %bb.ea ], [ %i.nt, %bb.ee ] ; 3 uses
  store i64 %i.sc, ptr %i.h, align 8, !tbaa !13
  store i8 0, ptr %i.e, align 1, !tbaa !16
  %i.sd = and i32 %.6535, -129
  %i.se = icmp slt i32 %.1519.fr2658, 0
  %spec.select747.jt8 = select i1 %i.se, i32 %.6535, i32 %i.sd ; 4 uses
  %i.sf = icmp ne i64 %i.sc, 0
  %i.sg = icmp ne i32 %.1519.fr2658, 0
  %or.cond9.jt8 = or i1 %i.sg, %i.sf
  br i1 %or.cond9.jt8, label %.preheader.i785, label %BSD__ultoa.exit

.preheader39.i.preheader:                         ; preds = %bb.fr, %.thread1743
  %i.sh = phi i32 [ %i.og, %.thread1743 ], [ %spec.select2021, %bb.fr ]
  %i.si = phi i64 [ %i.oe, %.thread1743 ], [ %i.ru, %bb.fr ]
  %.5571.jt1617381750 = phi i32 [ 120, %.thread1743 ], [ %.0566, %bb.fr ]
  %.3521.jt1617401749 = phi i32 [ 16, %.thread1743 ], [ %.1519.fr2659, %bb.fr ]
  %.2.jt1617421748 = phi ptr [ @ruby_hexdigits, %.thread1743 ], [ %.1, %bb.fr ]
  br label %.preheader39.i

bb.ft:                                            ; preds = %bb.fq, %.thread
  %.1519.fr2653 = phi i32 [ %.1519.fr2655, %.thread ], [ %.1519.fr2654, %bb.fq ] ; 2 uses
  %spec.select747.jt101729 = phi i32 [ %spec.select747.jt101718, %.thread ], [ %spec.select747.jt10, %bb.fq ] ; 2 uses
  %i.sj = phi i64 [ %i.ga, %.thread ], [ %i.rp, %bb.fq ] ; 6 uses
  %.pre15781604.jt101721 = phi i8 [ 45, %.thread ], [ %.pre15781604.jt10, %bb.fq ] ; 2 uses
  %i.sk = icmp ult i64 %i.sj, 10
  br i1 %i.sk, label %.thread1751, label %bb.fu

.thread1751:                                      ; preds = %bb.ft
  %i.sl = trunc nuw nsw i64 %i.sj to i8
  %i.sm = or disjoint i8 %i.sl, 48
  store i8 %i.sm, ptr %i.ag, align 2, !tbaa !16
  br label %BSD__ultoa.exit

bb.fu:                                            ; preds = %bb.ft
  %i.sn = icmp slt i64 %i.sj, 0
  br i1 %i.sn, label %bb.fv, label %.preheader2295

bb.fv:                                            ; preds = %bb.fu
  %i.so = urem i64 %i.sj, 10
  %i.sp = trunc nuw nsw i64 %i.so to i8
  %i.sq = or disjoint i8 %i.sp, 48
  store i8 %i.sq, ptr %i.ag, align 2, !tbaa !16
  %i.sr = udiv i64 %i.sj, 10
  br label %.preheader2295

.preheader2295:                                   ; preds = %bb.fv, %bb.fu
  %.129.i.ph = phi ptr [ %i.l, %bb.fu ], [ %i.ag, %bb.fv ]
  %.1.i.ph = phi i64 [ %i.sj, %bb.fu ], [ %i.sr, %bb.fv ]
  br label %bb.fw

bb.fw:                                            ; preds = %.preheader2295, %bb.fw
  %.129.i = phi ptr [ %i.sv, %bb.fw ], [ %.129.i.ph, %.preheader2295 ]
  %.1.i = phi i64 [ %i.sw, %bb.fw ], [ %.1.i.ph, %.preheader2295 ] ; 3 uses
  %i.ss = urem i64 %.1.i, 10
  %i.st = trunc nuw nsw i64 %i.ss to i8
  %i.su = or disjoint i8 %i.st, 48
  %i.sv = getelementptr i8, ptr %.129.i, i64 -1   ; 3 uses
  store i8 %i.su, ptr %i.sv, align 1, !tbaa !16
  %i.sw = udiv i64 %.1.i, 10
  %.not38.i = icmp samesign ult i64 %.1.i, 10
  br i1 %.not38.i, label %BSD__ultoa.exit, label %bb.fw, !llvm.loop !0

.preheader.i785:                                  ; preds = %bb.fs, %.preheader.i785
  %.031.i = phi i64 [ %i.tb, %.preheader.i785 ], [ %i.sc, %bb.fs ] ; 2 uses
  %.2.i786 = phi ptr [ %i.ta, %.preheader.i785 ], [ %i.l, %bb.fs ] ; 2 uses
  %i.sx = trunc i64 %.031.i to i8
  %i.sy = and i8 %i.sx, 7                         ; 2 uses
  %i.sz = or disjoint i8 %i.sy, 48
  %i.ta = getelementptr i8, ptr %.2.i786, i64 -1  ; 3 uses
  store i8 %i.sz, ptr %i.ta, align 1, !tbaa !16
  %i.tb = lshr i64 %.031.i, 3                     ; 2 uses
  %.not35.i = icmp eq i64 %i.tb, 0
  br i1 %.not35.i, label %bb.fx, label %.preheader.i785, !llvm.loop !101

bb.fx:                                            ; preds = %.preheader.i785
  %5 = and i32 %spec.select747.jt8, 1
  %.not36.i = icmp eq i32 %5, 0
  %.not37.i = icmp eq i8 %i.sy, 0
  %or.cond.i = or i1 %.not36.i, %.not37.i
  br i1 %or.cond.i, label %BSD__ultoa.exit, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.tc = getelementptr i8, ptr %.2.i786, i64 -2  ; 2 uses
  store i8 48, ptr %i.tc, align 1, !tbaa !16
  br label %BSD__ultoa.exit

.preheader39.i:                                   ; preds = %.preheader39.i.preheader, %.preheader39.i
  %.132.i = phi i64 [ %i.th, %.preheader39.i ], [ %i.si, %.preheader39.i.preheader ] ; 2 uses
  %.3.i783 = phi ptr [ %i.tg, %.preheader39.i ], [ %i.l, %.preheader39.i.preheader ]
  %i.td = and i64 %.132.i, 15
  %i.te = getelementptr i8, ptr %.2.jt1617421748, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !16
  %i.tg = getelementptr i8, ptr %.3.i783, i64 -1  ; 3 uses
  store i8 %i.tf, ptr %i.tg, align 1, !tbaa !16
  %i.th = lshr i64 %.132.i, 4                     ; 2 uses
  %.not.i784 = icmp eq i64 %i.th, 0
  br i1 %.not.i784, label %BSD__ultoa.exit, label %.preheader39.i, !llvm.loop !102

BSD__ultoa.exit:                                  ; preds = %.preheader39.i, %bb.fw, %bb.fq, %bb.fr, %bb.fs, %bb.fy, %bb.fx, %.thread1751
  %spec.select7471711 = phi i32 [ %spec.select747.jt10, %bb.fq ], [ %spec.select2021, %bb.fr ], [ %spec.select747.jt8, %bb.fs ], [ %spec.select747.jt101729, %.thread1751 ], [ %spec.select747.jt101729, %bb.fw ], [ %spec.select747.jt8, %bb.fy ], [ %spec.select747.jt8, %bb.fx ], [ %i.sh, %.preheader39.i ]
  %.45221709 = phi i32 [ 0, %bb.fq ], [ 0, %bb.fr ], [ 0, %bb.fs ], [ %.1519.fr2653, %.thread1751 ], [ %.1519.fr2653, %bb.fw ], [ %.1519.fr2658, %bb.fy ], [ %.1519.fr2658, %bb.fx ], [ %.3521.jt1617401749, %.preheader39.i ]
  %.65721708 = phi i32 [ %.0566, %bb.fq ], [ %.0566, %bb.fr ], [ %.0566, %bb.fs ], [ %.0566, %.thread1751 ], [ %.0566, %bb.fw ], [ %.0566, %bb.fy ], [ %.0566, %bb.fx ], [ %.5571.jt1617381750, %.preheader39.i ]
  %.pre157816041707 = phi i8 [ %.pre15781604.jt10, %bb.fq ], [ 0, %bb.fr ], [ 0, %bb.fs ], [ %.pre15781604.jt101721, %.thread1751 ], [ %.pre15781604.jt101721, %bb.fw ], [ 0, %bb.fy ], [ 0, %bb.fx ], [ 0, %.preheader39.i ]
  %.0549 = phi ptr [ %i.l, %bb.fq ], [ %i.l, %bb.fr ], [ %i.l, %bb.fs ], [ %i.ag, %.thread1751 ], [ %i.sv, %bb.fw ], [ %i.tc, %bb.fy ], [ %i.ta, %bb.fx ], [ %i.tg, %.preheader39.i ] ; 2 uses
  %i.ti = ptrtoint ptr %.0549 to i64
  %i.tj = sub i64 %i.ah, %i.ti
  %i.tk = trunc i64 %i.tj to i32
  %i.tl = sext i32 %.45221709 to i64
  br label %bb.ga

bb.fz:                                            ; preds = %._crit_edge
  %i.tm = trunc nsw i32 %.0566 to i8
  store i8 %i.tm, ptr %i.j, align 16, !tbaa !16
  store i8 0, ptr %i.e, align 1, !tbaa !16
  br label %bb.ga

bb.ga:                                            ; preds = %._crit_edge1602, %bb.bq, %bb.bo, %bb.bp, %bb.dc, %bb.fz, %BSD__ultoa.exit, %bb.em, %bb.aq, %bb.ah
  %.pre1578 = phi i8 [ 0, %bb.fz ], [ 0, %bb.ah ], [ 0, %bb.aq ], [ %.pre157816041707, %BSD__ultoa.exit ], [ 45, %bb.bp ], [ %i.bd, %bb.bo ], [ %i.bd, %bb.bq ], [ %.pre1578.pre, %._crit_edge1602 ], [ 45, %bb.dc ], [ 0, %bb.em ]
  %.1904 = phi i32 [ %.0903.ph, %bb.fz ], [ %.0903.ph, %bb.ah ], [ %.0903.ph, %bb.aq ], [ %.0903.ph, %BSD__ultoa.exit ], [ %.0903.ph, %bb.bp ], [ %.0903.ph, %bb.bo ], [ %.0903.ph, %bb.bq ], [ %i.il, %._crit_edge1602 ], [ %i.il, %bb.dc ], [ %.0903.ph, %bb.em ]
  %.6581 = phi ptr [ %.3578, %bb.fz ], [ %.3578, %bb.ah ], [ %i.du, %bb.aq ], [ %.3578, %BSD__ultoa.exit ], [ %.3578, %bb.bp ], [ %.3578, %bb.bo ], [ %.3578, %bb.bq ], [ %.3578, %._crit_edge1602 ], [ %.3578, %bb.dc ], [ %.3578, %bb.em ]
  %.7573 = phi i32 [ %.0566, %bb.fz ], [ 99, %bb.ah ], [ 105, %bb.aq ], [ %.65721708, %BSD__ultoa.exit ], [ %.0566, %bb.bp ], [ %.0566, %bb.bo ], [ %.0566, %bb.bq ], [ %.4570, %._crit_edge1602 ], [ %.4570, %bb.dc ], [ 115, %bb.em ]
  %.1550 = phi ptr [ %i.j, %bb.fz ], [ %i.j, %bb.ah ], [ %i.el, %bb.aq ], [ %.0549, %BSD__ultoa.exit ], [ @.str.30, %bb.bp ], [ @.str.30, %bb.bo ], [ @.str.29, %bb.bq ], [ %i.j, %._crit_edge1602 ], [ %i.j, %bb.dc ], [ %spec.store.select, %bb.em ]
  %.3539 = phi ptr [ %.2538, %bb.fz ], [ %.2538, %bb.ah ], [ %4, %bb.aq ], [ %.2538, %BSD__ultoa.exit ], [ %.2538, %bb.bp ], [ %.2538, %bb.bo ], [ %.2538, %bb.bq ], [ %.2538, %._crit_edge1602 ], [ %.2538, %bb.dc ], [ %.2538, %bb.em ]
  %.11 = phi i32 [ %.0529, %bb.fz ], [ %.0529, %bb.ah ], [ %.0529, %bb.aq ], [ %spec.select7471711, %BSD__ultoa.exit ], [ %.4533, %bb.bp ], [ %.4533, %bb.bo ], [ %.4533, %bb.bq ], [ %.5534, %._crit_edge1602 ], [ %.5534, %bb.dc ], [ %.0529, %bb.em ]
  %.1515 = phi double [ %.0514.ph, %bb.fz ], [ %.0514.ph, %bb.ah ], [ %.0514.ph, %bb.aq ], [ %.0514.ph, %BSD__ultoa.exit ], [ %i.gv, %bb.bp ], [ %i.gv, %bb.bo ], [ %i.gv, %bb.bq ], [ %i.gv, %._crit_edge1602 ], [ %i.gv, %bb.dc ], [ %.0514.ph, %bb.em ]
  %.2511 = phi i32 [ %.0509.ph, %bb.fz ], [ %.0509.ph, %bb.ah ], [ %.0509.ph, %bb.aq ], [ %.0509.ph, %BSD__ultoa.exit ], [ %.0509.ph, %bb.bp ], [ %.0509.ph, %bb.bo ], [ %.0509.ph, %bb.bq ], [ %.1510, %._crit_edge1602 ], [ %.1510, %bb.dc ], [ %.0509.ph, %bb.em ]
  %.4506 = phi i32 [ %.0502.ph, %bb.fz ], [ %.0502.ph, %bb.ah ], [ %.0502.ph, %bb.aq ], [ %.0502.ph, %BSD__ultoa.exit ], [ %.2504, %bb.bp ], [ %.2504, %bb.bo ], [ %.2504, %bb.bq ], [ %.3505, %._crit_edge1602 ], [ %.3505, %bb.dc ], [ %.0502.ph, %bb.em ]
  %.0498 = phi i64 [ 0, %bb.fz ], [ 0, %bb.ah ], [ 0, %bb.aq ], [ %i.tl, %BSD__ultoa.exit ], [ 0, %bb.bp ], [ 0, %bb.bo ], [ 0, %bb.bq ], [ 0, %._crit_edge1602 ], [ 0, %bb.dc ], [ 0, %bb.em ]
  %.2495 = phi i32 [ 1, %bb.fz ], [ 1, %bb.ah ], [ %i.ep, %bb.aq ], [ %i.tk, %BSD__ultoa.exit ], [ 3, %bb.bp ], [ 3, %bb.bo ], [ 3, %bb.bq ], [ %.0493, %._crit_edge1602 ], [ %.0493, %bb.dc ], [ %.1494, %bb.em ]
  %i.tn = sext i32 %.2495 to i64
  br label %.sink.split

.sink.split:                                      ; preds = %bb.en, %bb.ga
  %.sink = phi i64 [ %i.tn, %bb.ga ], [ %i.oy, %bb.en ] ; 2 uses
  %.ph = phi i8 [ %.pre1578, %bb.ga ], [ %i.bd, %bb.en ]
  %.2905.ph = phi i32 [ %.1904, %bb.ga ], [ %.0903.ph, %bb.en ]
  %.7582.ph = phi ptr [ %.6581, %bb.ga ], [ %.3578, %bb.en ]
  %.8574.ph = phi i32 [ %.7573, %bb.ga ], [ 115, %bb.en ]
  %.2551.ph = phi ptr [ %.1550, %bb.ga ], [ %spec.store.select, %bb.en ]
  %.4540.ph = phi ptr [ %.3539, %bb.ga ], [ %.2538, %bb.en ]
  %.12.ph = phi i32 [ %.11, %bb.ga ], [ %.0529, %bb.en ]
  %.2516.ph = phi double [ %.1515, %bb.ga ], [ %.0514.ph, %bb.en ]
  %.3512.ph = phi i32 [ %.2511, %bb.ga ], [ %.0509.ph, %bb.en ]
  %.5507.ph = phi i32 [ %.4506, %bb.ga ], [ %.0502.ph, %bb.en ]
  %.1499.ph = phi i64 [ %.0498, %bb.ga ], [ 0, %bb.en ]
  store i64 %.sink, ptr %i.i, align 8, !tbaa !13
  %i.to = icmp ne i8 %.ph, 0
  %i.tp = zext i1 %i.to to i64
  br label %bb.gb

bb.gb:                                            ; preds = %.sink.split, %bb.ap
  %.not669 = phi i64 [ 0, %bb.ap ], [ %i.tp, %.sink.split ]
  %i.tq = phi i64 [ %.pre1577, %bb.ap ], [ %.sink, %.sink.split ]
  %.2905 = phi i32 [ %.0903.ph, %bb.ap ], [ %.2905.ph, %.sink.split ] ; 20 uses
  %.7582 = phi ptr [ %i.du, %bb.ap ], [ %.7582.ph, %.sink.split ]
  %.8574 = phi i32 [ 105, %bb.ap ], [ %.8574.ph, %.sink.split ] ; 5 uses
  %.2551 = phi ptr [ %i.el, %bb.ap ], [ %.2551.ph, %.sink.split ] ; 10 uses
  %.4540 = phi ptr [ %4, %bb.ap ], [ %.4540.ph, %.sink.split ] ; 4 uses
  %.12 = phi i32 [ %.0529, %bb.ap ], [ %.12.ph, %.sink.split ] ; 8 uses
  %.2516 = phi double [ %.0514.ph, %bb.ap ], [ %.2516.ph, %.sink.split ] ; 3 uses
  %.3512 = phi i32 [ %.0509.ph, %bb.ap ], [ %.3512.ph, %.sink.split ] ; 3 uses
  %.5507 = phi i32 [ %.0502.ph, %bb.ap ], [ %.5507.ph, %.sink.split ] ; 7 uses
  %.1499 = phi i64 [ 0, %bb.ap ], [ %.1499.ph, %.sink.split ] ; 2 uses
  %i.tr = call i64 @llvm.smax.i64(i64 %.1499, i64 %i.tq)
  %i.ts = and i32 %.12, 2                         ; 2 uses
  %.not670 = icmp eq i32 %i.ts, 0                 ; 2 uses
  %i.tt = zext nneg i32 %i.ts to i64
  %spec.select748 = add i64 %i.tr, %i.tt
  %.1497 = add i64 %spec.select748, %.not669      ; 6 uses
  %i.tu = and i32 %.12, 132                       ; 2 uses
  %i.tv = icmp eq i32 %i.tu, 0
  br i1 %i.tv, label %bb.gc, label %bb.gh

bb.gc:                                            ; preds = %bb.gb
  %i.tw = sext i32 %.1524.ph to i64
  %i.tx = sub i64 %i.tw, %.1497                   ; 4 uses
  %i.ty = add i64 %i.tx, 2147483648
  %.not672 = icmp ult i64 %i.ty, 4294967296
  br i1 %.not672, label %bb.gd, label %.thread1011.sink.split

bb.gd:                                            ; preds = %bb.gc
  %i.tz = icmp sgt i64 %i.tx, 0
  br i1 %i.tz, label %.preheader1066, label %bb.gh

.preheader1066:                                   ; preds = %bb.gd
  %i.ua = trunc nsw i64 %i.tx to i32              ; 2 uses
  %i.ub = icmp ugt i64 %i.tx, 16
  %.pre1582 = load i64, ptr %i.t, align 8, !tbaa !43 ; 2 uses
  %.pre1584 = load i32, ptr %i.u, align 8, !tbaa !116 ; 2 uses
  br i1 %i.ub, label %.lr.ph1290, label %._crit_edge1291

.lr.ph1290:                                       ; preds = %.preheader1066, %bb.gf
  %i.uc = phi i32 [ %.pre1583, %bb.gf ], [ %.pre1584, %.preheader1066 ]
  %i.ud = phi i64 [ %.pre1581, %bb.gf ], [ %.pre1582, %.preheader1066 ]
  %.55411289 = phi ptr [ %.6542, %bb.gf ], [ %.4540, %.preheader1066 ] ; 3 uses
  %.25541288 = phi i32 [ %i.um, %bb.gf ], [ %i.ua, %.preheader1066 ] ; 2 uses
  store ptr @BSD_vfprintf.blanks, ptr %.55411289, align 8, !tbaa !46
  %i.ue = getelementptr i8, ptr %.55411289, i64 8
  store i64 16, ptr %i.ue, align 8, !tbaa !47
  %i.uf = add i64 %i.ud, 16                       ; 3 uses
  store i64 %i.uf, ptr %i.t, align 8, !tbaa !43
  %i.ug = getelementptr i8, ptr %.55411289, i64 16
  %i.uh = add i32 %i.uc, 1                        ; 3 uses
  store i32 %i.uh, ptr %i.u, align 8, !tbaa !116
  %i.ui = icmp sgt i32 %i.uh, 7
  br i1 %i.ui, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %.lr.ph1290
  %i.uj = icmp eq i64 %i.uf, 0
  br i1 %i.uj, label %BSD__sprint.exit789.thread, label %BSD__sprint.exit789

BSD__sprint.exit789.thread:                       ; preds = %bb.ge
  store i32 0, ptr %i.u, align 8, !tbaa !116
  br label %bb.gf

BSD__sprint.exit789:                              ; preds = %bb.ge
  %i.uk = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.ul = call i32 %i.uk(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !93
  store i64 0, ptr %i.t, align 8, !tbaa !43
  store i32 0, ptr %i.u, align 8, !tbaa !116
  %.not735 = icmp eq i32 %i.ul, 0
  br i1 %.not735, label %bb.gf, label %.thread1011

bb.gf:                                            ; preds = %BSD__sprint.exit789.thread, %BSD__sprint.exit789, %.lr.ph1290
  %.pre1581 = phi i64 [ %i.uf, %.lr.ph1290 ], [ 0, %BSD__sprint.exit789 ], [ 0, %BSD__sprint.exit789.thread ] ; 2 uses
  %.pre1583 = phi i32 [ %i.uh, %.lr.ph1290 ], [ 0, %BSD__sprint.exit789 ], [ 0, %BSD__sprint.exit789.thread ] ; 2 uses
  %.6542 = phi ptr [ %i.ug, %.lr.ph1290 ], [ %4, %BSD__sprint.exit789 ], [ %4, %BSD__sprint.exit789.thread ] ; 2 uses
  %i.um = add nsw i32 %.25541288, -16             ; 2 uses
  %i.un = icmp sgt i32 %.25541288, 32
  br i1 %i.un, label %.lr.ph1290, label %._crit_edge1291, !llvm.loop !103

._crit_edge1291:                                  ; preds = %bb.gf, %.preheader1066
  %i.uo = phi i32 [ %.pre1584, %.preheader1066 ], [ %.pre1583, %bb.gf ]
  %i.up = phi i64 [ %.pre1582, %.preheader1066 ], [ %.pre1581, %bb.gf ]
  %.2554.lcssa = phi i32 [ %i.ua, %.preheader1066 ], [ %i.um, %bb.gf ]
  %.5541.lcssa = phi ptr [ %.4540, %.preheader1066 ], [ %.6542, %bb.gf ] ; 3 uses
  store ptr @BSD_vfprintf.blanks, ptr %.5541.lcssa, align 8, !tbaa !46
  %i.uq = zext nneg i32 %.2554.lcssa to i64       ; 2 uses
  %i.ur = getelementptr i8, ptr %.5541.lcssa, i64 8
  store i64 %i.uq, ptr %i.ur, align 8, !tbaa !47
  %i.us = add i64 %i.up, %i.uq                    ; 2 uses
  store i64 %i.us, ptr %i.t, align 8, !tbaa !43
  %i.ut = getelementptr i8, ptr %.5541.lcssa, i64 16
  %i.uu = add i32 %i.uo, 1                        ; 2 uses
  store i32 %i.uu, ptr %i.u, align 8, !tbaa !116
  %i.uv = icmp sgt i32 %i.uu, 7
  br i1 %i.uv, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %._crit_edge1291
  %i.uw = icmp eq i64 %i.us, 0
  br i1 %i.uw, label %BSD__sprint.exit791.thread, label %BSD__sprint.exit791

BSD__sprint.exit791.thread:                       ; preds = %bb.gg
  store i32 0, ptr %i.u, align 8, !tbaa !116
  br label %bb.gh

BSD__sprint.exit791:                              ; preds = %bb.gg
  %i.ux = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.uy = call i32 %i.ux(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !93
  store i64 0, ptr %i.t, align 8, !tbaa !43
  store i32 0, ptr %i.u, align 8, !tbaa !116
  %.not673 = icmp eq i32 %i.uy, 0
  br i1 %.not673, label %bb.gh, label %.thread1011

bb.gh:                                            ; preds = %BSD__sprint.exit791.thread, %BSD__sprint.exit791, %bb.gd, %._crit_edge1291, %bb.gb
  %.7543 = phi ptr [ %.4540, %bb.gd ], [ %i.ut, %._crit_edge1291 ], [ %.4540, %bb.gb ], [ %4, %BSD__sprint.exit791 ], [ %4, %BSD__sprint.exit791.thread ] ; 4 uses
  %i.uz = load i8, ptr %i.e, align 1, !tbaa !16
  %.not674 = icmp eq i8 %i.uz, 0
  br i1 %.not674, label %bb.gk, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  store ptr %i.e, ptr %.7543, align 8, !tbaa !46
  %i.va = getelementptr i8, ptr %.7543, i64 8
  store i64 1, ptr %i.va, align 8, !tbaa !47
  %i.vb = load i64, ptr %i.t, align 8, !tbaa !43
  %i.vc = add i64 %i.vb, 1                        ; 2 uses
end_hunk_1
