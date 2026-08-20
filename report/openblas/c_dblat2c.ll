inline.NumInlined: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 37
begin_hunk_0_@dchk5_:bb.a
  br i1 %i.og, label %.loopexit169, label %.loopexit

.loopexit:                                        ; preds = %bb.aj, %.loopexit167.thread, %bb.ak
  %i.oh = load i32, ptr @dchk5_.ia, align 4, !tbaa !13 ; 2 uses
  %i.oi = add nsw i32 %i.oh, 1                    ; 2 uses
  store i32 %i.oi, ptr @dchk5_.ia, align 4, !tbaa !13
  %.not125.not = icmp slt i32 %i.oh, %i.bv
  br i1 %.not125.not, label %.lr.ph207, label %._crit_edge208.loopexit, !llvm.loop !172

._crit_edge208.loopexit:                          ; preds = %.loopexit
  %.pre250 = load i32, ptr @dchk5_.ix, align 4, !tbaa !13
  br label %._crit_edge208

._crit_edge208:                                   ; preds = %._crit_edge208.loopexit, %bb.l
  %i.oj = phi i32 [ %.pre250, %._crit_edge208.loopexit ], [ %storemerge122210, %bb.l ] ; 2 uses
  %i.ok = add nsw i32 %i.oj, 1                    ; 2 uses
  store i32 %i.ok, ptr @dchk5_.ix, align 4, !tbaa !13
  %.not123.not = icmp slt i32 %i.oj, %i.ba
  br i1 %.not123.not, label %.lr.ph211, label %._crit_edge212.loopexit, !llvm.loop !173

._crit_edge212.loopexit:                          ; preds = %._crit_edge208
  %.pre251 = load i32, ptr @dchk5_.ic, align 4, !tbaa !13
  br label %._crit_edge212

._crit_edge212:                                   ; preds = %._crit_edge212.loopexit, %.critedge
  %i.ol = phi i32 [ %.pre251, %._crit_edge212.loopexit ], [ %storemerge119213, %.critedge ] ; 2 uses
  %i.om = add nsw i32 %i.ol, 1                    ; 2 uses
  store i32 %i.om, ptr @dchk5_.ic, align 4, !tbaa !13
  %i.on = icmp slt i32 %i.ol, 2
  br i1 %i.on, label %bb.j, label %.loopexit169, !llvm.loop !174

.loopexit169:                                     ; preds = %._crit_edge212, %bb.ak, %bb.e
  %i.oo = load i32, ptr @dchk5_.in, align 4, !tbaa !13 ; 2 uses
  %i.op = add nsw i32 %i.oo, 1                    ; 2 uses
  store i32 %i.op, ptr @dchk5_.in, align 4, !tbaa !13
  %.not.not = icmp slt i32 %i.oo, %i.ab
  br i1 %.not.not, label %bb.c, label %._crit_edge218.loopexit, !llvm.loop !175

._crit_edge218.loopexit:                          ; preds = %.loopexit169
  %.pre252 = load double, ptr @dchk5_.errmax, align 8, !tbaa !22
  br label %._crit_edge218

._crit_edge218:                                   ; preds = %._crit_edge218.loopexit, %bb.b
  %i.oq = phi double [ %.pre252, %._crit_edge218.loopexit ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.or = load double, ptr %2, align 8, !tbaa !22
  %i.os = fcmp olt double %i.oq, %i.or
  %i.ot = load i32, ptr %28, align 4, !tbaa !13   ; 3 uses
  %i.ou = icmp eq i32 %i.ot, 0                    ; 2 uses
  br i1 %i.os, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %._crit_edge218
  br i1 %i.ou, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ov = load i32, ptr @dchk5_.nc, align 4, !tbaa !13
  %i.ow = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, ptr noundef %0, i32 noundef %i.ov) ; 0 uses
  %.pr = load i32, ptr %28, align 4, !tbaa !13
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ox = phi i32 [ %.pr, %bb.am ], [ %i.ot, %bb.al ]
  %i.oy = icmp eq i32 %i.ox, 1
  br i1 %i.oy, label %bb.ao, label %bb.ay

bb.ao:                                            ; preds = %bb.an
  %i.oz = load i32, ptr @dchk5_.nc, align 4, !tbaa !13
  %i.pa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef %0, i32 noundef %i.oz) ; 0 uses
  br label %bb.ay

bb.ap:                                            ; preds = %._crit_edge218
  br i1 %i.ou, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.pb = load i32, ptr @dchk5_.nc, align 4, !tbaa !13
  %i.pc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, ptr noundef %0, i32 noundef %i.pb, double noundef %i.oq) ; 0 uses
  %.pr166 = load i32, ptr %28, align 4, !tbaa !13
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.pd = phi i32 [ %.pr166, %bb.aq ], [ %i.ot, %bb.ap ]
  %i.pe = icmp eq i32 %i.pd, 1
  br i1 %i.pe, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %bb.ar
  %i.pf = load i32, ptr @dchk5_.nc, align 4, !tbaa !13
  %i.pg = load double, ptr @dchk5_.errmax, align 8, !tbaa !22
  %i.ph = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef %0, i32 noundef %i.pf, double noundef %i.pg) ; 0 uses
  br label %bb.ay

bb.at:                                            ; preds = %bb.ai
  %i.pi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %i.od) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.aa, %bb.q
  %i.pj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, ptr noundef %0) ; 0 uses
  %i.pk = load i32, ptr @dchk5_.full, align 4, !tbaa !13
  %.not151 = icmp eq i32 %i.pk, 0
  br i1 %.not151, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.pl = load i32, ptr @dchk5_.nc, align 4, !tbaa !13
  %i.pm = load i32, ptr @dchk5_.n, align 4, !tbaa !13
  %i.pn = load double, ptr @dchk5_.alpha, align 8, !tbaa !22
  %i.po = load i32, ptr @dchk5_.incx, align 4, !tbaa !13
  %i.pp = load i32, ptr @dchk5_.lda, align 4, !tbaa !13
  %i.pq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, i32 noundef %i.pl, ptr noundef %0, ptr noundef nonnull @dchk5_.cuplo, i32 noundef %i.pm, double noundef %i.pn, i32 noundef %i.po, i32 noundef %i.pp) ; 0 uses
  br label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.pr = load i32, ptr @dchk5_.packed, align 4, !tbaa !13
  %.not152 = icmp eq i32 %i.pr, 0
  br i1 %.not152, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ps = load i32, ptr @dchk5_.nc, align 4, !tbaa !13
  %i.pt = load i32, ptr @dchk5_.n, align 4, !tbaa !13
  %i.pu = load double, ptr @dchk5_.alpha, align 8, !tbaa !22
  %i.pv = load i32, ptr @dchk5_.incx, align 4, !tbaa !13
  %i.pw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef %i.ps, ptr noundef %0, ptr noundef nonnull @dchk5_.cuplo, i32 noundef %i.pt, double noundef %i.pu, i32 noundef %i.pv) ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.ax, %bb.aw, %bb.ao, %bb.an, %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @dchk6_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11, ptr nofree noundef readonly captures(none) %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef readonly captures(none) %14, ptr nofree readnone captures(none) %15, ptr nofree noundef captures(none) %16, ptr noundef %17, ptr nofree noundef captures(none) %18, ptr nofree noundef captures(none) %19, ptr noundef %20, ptr nofree noundef captures(none) %21, ptr nofree noundef captures(none) %22, ptr noundef %23, ptr nofree noundef captures(none) %24, ptr nofree noundef captures(none) %25, ptr nofree noundef captures(none) %26, ptr nofree noundef captures(none) %27, ptr noundef %28, i32 %29) local_unnamed_addr #9 {
bb.a:
  %i.a = ptrtoaddr ptr %17 to i64
  %i.b = ptrtoaddr ptr %18 to i64
  %i.c = ptrtoaddr ptr %20 to i64
  %i.d = ptrtoaddr ptr %21 to i64
  %i.e = ptrtoaddr ptr %23 to i64
  %i.f = ptrtoaddr ptr %24 to i64
  %i.g = ptrtoaddr ptr %19 to i64
  %i.h = ptrtoaddr ptr %22 to i64
  %i.i = ptrtoaddr ptr %27 to i64                 ; 2 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %i.l = alloca i32, align 4                      ; 10 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #20
  %i.n = getelementptr inbounds i8, ptr %9, i64 -4
  %i.o = getelementptr inbounds i8, ptr %11, i64 -8
  %i.p = getelementptr inbounds i8, ptr %13, i64 -4 ; 2 uses
  %i.q = load i32, ptr %14, align 4, !tbaa !13    ; 6 uses
  %narrow = xor i32 %i.q, -1
  %i.r = sext i32 %narrow to i64                  ; 4 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %27, i64 %i.r ; 7 uses
  %i.t = getelementptr inbounds i8, ptr %22, i64 -8 ; 20 uses
  %i.u = getelementptr inbounds i8, ptr %19, i64 -8 ; 20 uses
  %i.v = getelementptr inbounds i8, ptr %18, i64 -8 ; 9 uses
  %i.w = getelementptr inbounds i8, ptr %17, i64 -8 ; 10 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %16, i64 %i.r
  %i.y = getelementptr inbounds i8, ptr %24, i64 -8 ; 9 uses
  %i.z = getelementptr inbounds i8, ptr %23, i64 -8 ; 10 uses
  %i.aa = getelementptr inbounds i8, ptr %21, i64 -8 ; 9 uses
  %i.ab = getelementptr inbounds i8, ptr %20, i64 -8 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14  ; 3 uses
  %i.ae = icmp eq i8 %i.ad, 121                   ; 2 uses
  %i.af = zext i1 %i.ae to i32
  store i32 %i.af, ptr @dchk6_.full, align 4, !tbaa !13
  %i.ag = icmp eq i8 %i.ad, 112
  %i.ah = zext i1 %i.ag to i32
  store i32 %i.ah, ptr @dchk6_.packed, align 4, !tbaa !13
  switch i8 %i.ad, label %bb.b [
    i8 121, label %.sink.split
    i8 112, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.a, %bb.a
  %.mux = select i1 %i.ae, i32 9, i32 8
  store i32 %.mux, ptr @dchk6_.nargs, align 4, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.sink.split
  store i32 0, ptr @dchk6_.nc, align 4, !tbaa !13
  store i32 1, ptr @dchk6_.reset, align 4, !tbaa !13
  store double 0.000000e+00, ptr @dchk6_.errmax, align 8, !tbaa !22
  %i.ai = load i32, ptr %8, align 4, !tbaa !13    ; 2 uses
  store i32 1, ptr @dchk6_.in, align 4, !tbaa !13
  %.not290 = icmp slt i32 %i.ai, 1
  br i1 %.not290, label %._crit_edge294, label %.lr.ph293

.lr.ph293:                                        ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 2 uses
  %i.ak = shl i32 %i.q, 1                         ; 2 uses
  %i.al = sext i32 %i.q to i64                    ; 3 uses
  %i.am = sext i32 %i.ak to i64                   ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.s, i64 %i.al ; 11 uses
  %invariant.gep380 = getelementptr [8 x i8], ptr %i.s, i64 %i.al ; 11 uses
  %invariant.gep382 = getelementptr [8 x i8], ptr %i.s, i64 %i.am ; 11 uses
  %invariant.gep384 = getelementptr [8 x i8], ptr %i.s, i64 %i.am ; 11 uses
  %i.an = shl nsw i64 %i.am, 3                    ; 3 uses
  %i.ao = add i64 %i.an, %i.i
  %i.ap = shl nsw i64 %i.r, 3                     ; 3 uses
  %i.aq = add i64 %i.ao, %i.ap
  %30 = getelementptr i8, ptr %27, i64 %i.an
  %31 = getelementptr i8, ptr %30, i64 %i.ap
  %i.ar = getelementptr i8, ptr %31, i64 8
  %scevgep = getelementptr i8, ptr %27, i64 %i.an
  %scevgep405 = getelementptr i8, ptr %scevgep, i64 %i.ap
  %scevgep407 = getelementptr i8, ptr %22, i64 8
  %i.as = shl nsw i64 %i.al, 3                    ; 3 uses
  %i.at = add i64 %i.as, %i.i
  %i.au = shl nsw i64 %i.r, 3                     ; 3 uses
  %i.av = add i64 %i.at, %i.au
  %32 = getelementptr i8, ptr %27, i64 %i.as
  %33 = getelementptr i8, ptr %32, i64 %i.au
  %i.aw = getelementptr i8, ptr %33, i64 8
  %scevgep473 = getelementptr i8, ptr %27, i64 %i.as
  %scevgep474 = getelementptr i8, ptr %scevgep473, i64 %i.au
  %scevgep476 = getelementptr i8, ptr %19, i64 8
  %i.ax = sub i64 %i.a, %i.b
  %diff.check576 = icmp ugt i64 %i.ax, -128
  %i.ay = sub i64 %i.c, %i.d
  %diff.check546 = icmp ugt i64 %i.ay, -128
  %i.az = sub i64 %i.e, %i.f
  %diff.check516 = icmp ugt i64 %i.az, -128
  %i.ba = sub i64 %i.av, %i.g
  %i.bb = add i64 %i.ba, 7
  %diff.check443 = icmp ult i64 %i.bb, 127
  %i.bc = sub i64 %i.aq, %i.h
  %i.bd = add i64 %i.bc, 7
  %diff.check = icmp ult i64 %i.bd, 127
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph293, %.loopexit223
  %storemerge291 = phi i32 [ 1, %.lr.ph293 ], [ %i.wz, %.loopexit223 ]
  %i.be = sext i32 %storemerge291 to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !13 ; 8 uses
  store i32 %i.bg, ptr @dchk6_.n, align 4, !tbaa !13
  store i32 %i.bg, ptr @dchk6_.lda, align 4, !tbaa !13
  %i.bh = load i32, ptr %14, align 4, !tbaa !13   ; 2 uses
  %i.bi = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bj = add nsw i32 %i.bg, 1                    ; 2 uses
  store i32 %i.bj, ptr @dchk6_.lda, align 4, !tbaa !13
  %.pre = load i32, ptr %14, align 4, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bk = phi i32 [ %.pre, %bb.d ], [ %i.bh, %bb.c ]
  %i.bl = phi i32 [ %i.bj, %bb.d ], [ %i.bg, %bb.c ] ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, %i.bk
  br i1 %i.bm, label %.loopexit223, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = load i32, ptr @dchk6_.packed, align 4, !tbaa !13
  %.not150 = icmp eq i32 %i.bn, 0
  br i1 %.not150, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = add nsw i32 %i.bg, 1
  %i.bp = mul nsw i32 %i.bo, %i.bg
  %i.bq = sdiv i32 %i.bp, 2
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.br = mul nsw i32 %i.bl, %i.bg
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge151 = phi i32 [ %i.br, %bb.h ], [ %i.bq, %bb.g ]
  store i32 %storemerge151, ptr @dchk6_.laa, align 4, !tbaa !13
  store i32 1, ptr @dchk6_.ic, align 4, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge288
  %storemerge152289 = phi i32 [ 1, %bb.i ], [ %i.ww, %._crit_edge288 ] ; 2 uses
  %i.bs = sext i32 %storemerge152289 to i64
  %i.bt = getelementptr i8, ptr @dchk6_.ich, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 -1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !14  ; 2 uses
  store i8 %i.bv, ptr @dchk6_.uplo, align 1, !tbaa !14
  %i.bw = icmp eq i8 %i.bv, 85                    ; 2 uses
  br i1 %i.bw, label %.preheader.preheader, label %.preheader224.preheader

.preheader224.preheader:                          ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dchk6_.cuplo, ptr noundef nonnull align 1 dereferenceable(14) @.str.56, i64 14, i1 false), !tbaa !14
  br label %.critedge

.preheader.preheader:                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dchk6_.cuplo, ptr noundef nonnull align 1 dereferenceable(14) @.str.55, i64 14, i1 false), !tbaa !14
  br label %.critedge

.critedge:                                        ; preds = %.preheader224.preheader, %.preheader.preheader
  %i.bx = zext i1 %i.bw to i32
  store i32 %i.bx, ptr @dchk6_.upper, align 4, !tbaa !13
  %i.by = load i32, ptr %12, align 4, !tbaa !13   ; 2 uses
  store i32 1, ptr @dchk6_.ix, align 4, !tbaa !13
  %.not156285 = icmp slt i32 %i.by, 1
  br i1 %.not156285, label %._crit_edge288, label %.lr.ph287

.lr.ph287:                                        ; preds = %.critedge, %._crit_edge284
  %storemerge155286 = phi i32 [ %i.wu, %._crit_edge284 ], [ 1, %.critedge ] ; 2 uses
  %i.bz = sext i32 %storemerge155286 to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !13 ; 2 uses
  store i32 %i.cb, ptr @dchk6_.incx, align 4, !tbaa !13
  %i.cc = tail call i32 @llvm.abs.i32(i32 %i.cb, i1 true) ; 2 uses
  %i.cd = load i32, ptr @dchk6_.n, align 4, !tbaa !13 ; 2 uses
  %i.ce = mul nsw i32 %i.cd, %i.cc
  store i32 %i.ce, ptr @dchk6_.lx, align 4, !tbaa !13
  store double 5.000000e-01, ptr @dchk6_.transl, align 8, !tbaa !22
  store i32 %i.cc, ptr %i.j, align 4, !tbaa !13
  %i.cf = add nsw i32 %i.cd, -1
  store i32 %i.cf, ptr %i.k, align 4, !tbaa !13
  %i.cg = call i32 @dmake_(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.41, ptr noundef nonnull @c__1, ptr noundef nonnull @dchk6_.n, ptr noundef %19, ptr noundef nonnull @c__1, ptr noundef %20, ptr noundef nonnull %i.j, ptr noundef nonnull @c__0, ptr noundef nonnull %i.k, ptr noundef nonnull @dchk6_.reset, ptr noundef nonnull @dchk6_.transl, i32 poison, i32 poison, i32 poison) ; 0 uses
  %i.ch = load i32, ptr @dchk6_.n, align 4, !tbaa !13 ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 1
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph287
  %i.cj = lshr i32 %i.ch, 1                       ; 2 uses
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ck
  store double 0.000000e+00, ptr %i.cl, align 8, !tbaa !22
  %i.cm = load i32, ptr @dchk6_.incx, align 4, !tbaa !13
  %i.cn = tail call i32 @llvm.abs.i32(i32 %i.cm, i1 true)
  %i.co = add nsw i32 %i.cj, -1
  %i.cp = mul nsw i32 %i.cn, %i.co
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr [8 x i8], ptr %i.ab, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  store double 0.000000e+00, ptr %i.cs, align 8, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph287
  %i.ct = load i32, ptr %12, align 4, !tbaa !13   ; 3 uses
  store i32 %i.ct, ptr %i.j, align 4, !tbaa !13
  store i32 1, ptr @dchk6_.iy, align 4, !tbaa !13
  %.not158280 = icmp slt i32 %i.ct, 1
  br i1 %.not158280, label %._crit_edge284, label %.lr.ph283

.lr.ph283:                                        ; preds = %bb.l, %._crit_edge279
  %storemerge157281 = phi i32 [ %i.ws, %._crit_edge279 ], [ 1, %bb.l ] ; 2 uses
  %i.cu = sext i32 %storemerge157281 to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !13 ; 2 uses
  store i32 %i.cw, ptr @dchk6_.incy, align 4, !tbaa !13
  %i.cx = tail call i32 @llvm.abs.i32(i32 %i.cw, i1 true) ; 2 uses
  %i.cy = load i32, ptr @dchk6_.n, align 4, !tbaa !13 ; 2 uses
  %i.cz = mul nsw i32 %i.cy, %i.cx
  store i32 %i.cz, ptr @dchk6_.ly, align 4, !tbaa !13
  store double 0.000000e+00, ptr @dchk6_.transl, align 8, !tbaa !22
  store i32 %i.cx, ptr %i.k, align 4, !tbaa !13
  %i.da = add nsw i32 %i.cy, -1
  store i32 %i.da, ptr %i.l, align 4, !tbaa !13
  %i.db = call i32 @dmake_(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.41, ptr noundef nonnull @c__1, ptr noundef nonnull @dchk6_.n, ptr noundef %22, ptr noundef nonnull @c__1, ptr noundef %23, ptr noundef nonnull %i.k, ptr noundef nonnull @c__0, ptr noundef nonnull %i.l, ptr noundef nonnull @dchk6_.reset, ptr noundef nonnull @dchk6_.transl, i32 poison, i32 poison, i32 poison) ; 0 uses
  %i.dc = load i32, ptr @dchk6_.n, align 4, !tbaa !13 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, 1
  br i1 %i.dd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph283
  %i.de = lshr i32 %i.dc, 1                       ; 2 uses
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.df
  store double 0.000000e+00, ptr %i.dg, align 8, !tbaa !22
  %i.dh = load i32, ptr @dchk6_.incy, align 4, !tbaa !13
  %i.di = tail call i32 @llvm.abs.i32(i32 %i.dh, i1 true)
  %i.dj = add nsw i32 %i.de, -1
  %i.dk = mul nsw i32 %i.di, %i.dj
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr [8 x i8], ptr %i.z, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  store double 0.000000e+00, ptr %i.dn, align 8, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph283
  %i.do = load i32, ptr %10, align 4, !tbaa !13   ; 3 uses
  store i32 %i.do, ptr %i.k, align 4, !tbaa !13
  store i32 1, ptr @dchk6_.ia, align 4, !tbaa !13
  %.not160275 = icmp slt i32 %i.do, 1
  br i1 %.not160275, label %._crit_edge279, label %.lr.ph278

.lr.ph278:                                        ; preds = %bb.n, %.loopexit
  %storemerge159276 = phi i32 [ %i.wq, %.loopexit ], [ 1, %bb.n ]
  %i.dp = sext i32 %storemerge159276 to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !22 ; 2 uses
  store double %i.dr, ptr @dchk6_.alpha, align 8, !tbaa !22
  %i.ds = load i32, ptr @dchk6_.n, align 4, !tbaa !13 ; 2 uses
  %i.dt = icmp slt i32 %i.ds, 1
  %i.du = fcmp oeq double %i.dr, 0.000000e+00
  %i.dv = select i1 %i.dt, i1 true, i1 %i.du
  %i.dw = zext i1 %i.dv to i32
  store i32 %i.dw, ptr @dchk6_.null, align 4, !tbaa !13
  store double 0.000000e+00, ptr @dchk6_.transl, align 8, !tbaa !22
  %i.dx = add nsw i32 %i.ds, -1                   ; 2 uses
  store i32 %i.dx, ptr %i.l, align 4, !tbaa !13
  store i32 %i.dx, ptr %i.m, align 4, !tbaa !13
  %i.dy = call i32 @dmake_(ptr noundef nonnull %i.aj, ptr noundef nonnull @dchk6_.uplo, ptr noundef nonnull @.str.41, ptr noundef nonnull @dchk6_.n, ptr noundef nonnull @dchk6_.n, ptr noundef %16, ptr noundef nonnull %14, ptr noundef %17, ptr noundef nonnull @dchk6_.lda, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull @dchk6_.reset, ptr noundef nonnull @dchk6_.transl, i32 poison, i32 poison, i32 poison) ; 0 uses
  %i.dz = load i32, ptr @dchk6_.nc, align 4, !tbaa !13
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr @dchk6_.nc, align 4, !tbaa !13
  %i.eb = load i8, ptr @dchk6_.uplo, align 1, !tbaa !14
  store i8 %i.eb, ptr @dchk6_.uplos.0, align 1, !tbaa !14
  %i.ec = load i32, ptr @dchk6_.n, align 4, !tbaa !13
  store i32 %i.ec, ptr @dchk6_.ns, align 4, !tbaa !13
  %i.ed = load double, ptr @dchk6_.alpha, align 8, !tbaa !22
  store double %i.ed, ptr @dchk6_.als, align 8, !tbaa !22
  %i.ee = load i32, ptr @dchk6_.laa, align 4, !tbaa !13 ; 6 uses
  %.not162232 = icmp slt i32 %i.ee, 1
  br i1 %.not162232, label %._crit_edge, label %iter.check592

iter.check592:                                    ; preds = %.lr.ph278
  %i.ef = add nuw i32 %i.ee, 1
  %wide.trip.count = zext i32 %i.ef to i64        ; 2 uses
end_hunk_0
begin_hunk_1_@dchk6_:bb.a
  store i32 %i.mc, ptr @dchk6_.same, align 4, !tbaa !13
  %.not195 = icmp eq i32 %.pre344, 0
  br i1 %.not195, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph249
  %i.md = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef %storemerge173247) ; 0 uses
  %.pre340 = load i32, ptr @dchk6_.same, align 4, !tbaa !13
  %.pre345 = load i32, ptr @dchk6_.i__, align 4, !tbaa !13
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph249, %bb.ab
  %i.me = phi i32 [ %storemerge173247, %.lr.ph249 ], [ %.pre345, %bb.ab ] ; 2 uses
  %i.mf = phi i32 [ %i.mc, %.lr.ph249 ], [ %.pre340, %bb.ab ] ; 2 uses
  %i.mg = add nsw i32 %i.me, 1                    ; 2 uses
  store i32 %i.mg, ptr @dchk6_.i__, align 4, !tbaa !13
  %.not174.not = icmp slt i32 %i.me, %i.lz
  br i1 %.not174.not, label %.lr.ph249, label %._crit_edge250, !llvm.loop !188

._crit_edge250:                                   ; preds = %bb.ac
  %i.mh = icmp eq i32 %i.mf, 0
  br i1 %i.mh, label %bb.ad, label %._crit_edge250.thread

bb.ad:                                            ; preds = %._crit_edge250
  store i32 1, ptr %7, align 4, !tbaa !13
  br label %bb.az

._crit_edge250.thread:                            ; preds = %bb.aa, %._crit_edge250
  %i.mi = load i32, ptr @dchk6_.null, align 4, !tbaa !13
  %.not176 = icmp eq i32 %i.mi, 0
  br i1 %.not176, label %bb.ae, label %bb.ap

bb.ae:                                            ; preds = %._crit_edge250.thread
  %i.mj = load i32, ptr @dchk6_.incx, align 4, !tbaa !13
  %i.mk = icmp sgt i32 %i.mj, 0
  %i.ml = load i32, ptr @dchk6_.n, align 4, !tbaa !13 ; 27 uses
  %.not180256 = icmp slt i32 %i.ml, 1             ; 2 uses
  br i1 %i.mk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br i1 %.not180256, label %.loopexit221, label %iter.check459

iter.check459:                                    ; preds = %bb.af
  %i.mm = add nuw i32 %i.ml, 1                    ; 5 uses
  %wide.trip.count328 = zext i32 %i.mm to i64     ; 2 uses
  %i.mn = zext nneg i32 %i.ml to i64              ; 5 uses
  %min.iters.check444 = icmp ult i32 %i.ml, 4
  %brmerge = select i1 %min.iters.check444, i1 true, i1 %diff.check443
  br i1 %brmerge, label %.lr.ph259.preheader, label %vector.main.loop.iter.check445

vector.main.loop.iter.check445:                   ; preds = %iter.check459
  %min.iters.check446 = icmp ult i32 %i.ml, 16
  br i1 %min.iters.check446, label %vec.epilog.ph463, label %vector.ph447

vector.ph447:                                     ; preds = %vector.main.loop.iter.check445
  %i.mo = and i64 %i.mn, 12
  %n.vec448 = and i64 %i.mn, 2147483632           ; 4 uses
  %i.mp = or disjoint i64 %n.vec448, 1
  br label %vector.body449

vector.body449:                                   ; preds = %vector.body449, %vector.ph447
  %index450 = phi i64 [ 0, %vector.ph447 ], [ %index.next455, %vector.body449 ] ; 3 uses
  %i.mq = getelementptr [8 x i8], ptr %19, i64 %index450 ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 32
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 96
  %wide.load451 = load <4 x double>, ptr %i.mq, align 8, !tbaa !22
  %wide.load452 = load <4 x double>, ptr %i.mr, align 8, !tbaa !22
  %wide.load453 = load <4 x double>, ptr %i.ms, align 8, !tbaa !22
  %wide.load454 = load <4 x double>, ptr %i.mt, align 8, !tbaa !22
  %i.mu = getelementptr [8 x i8], ptr %invariant.gep380, i64 %index450 ; 4 uses
  %i.mv = getelementptr i8, ptr %i.mu, i64 8
  %i.mw = getelementptr i8, ptr %i.mu, i64 40
  %i.mx = getelementptr i8, ptr %i.mu, i64 72
  %i.my = getelementptr i8, ptr %i.mu, i64 104
  store <4 x double> %wide.load451, ptr %i.mv, align 8, !tbaa !22
  store <4 x double> %wide.load452, ptr %i.mw, align 8, !tbaa !22
  store <4 x double> %wide.load453, ptr %i.mx, align 8, !tbaa !22
  store <4 x double> %wide.load454, ptr %i.my, align 8, !tbaa !22
  %index.next455 = add nuw i64 %index450, 16      ; 2 uses
  %i.mz = icmp eq i64 %index.next455, %n.vec448
  br i1 %i.mz, label %middle.block456, label %vector.body449, !llvm.loop !189

middle.block456:                                  ; preds = %vector.body449
  %cmp.n457 = icmp eq i64 %n.vec448, %i.mn
  br i1 %cmp.n457, label %.loopexit221, label %vec.epilog.iter.check461

vec.epilog.iter.check461:                         ; preds = %middle.block456
  %min.epilog.iters.check462 = icmp eq i64 %i.mo, 0
  br i1 %min.epilog.iters.check462, label %.lr.ph259.preheader, label %vec.epilog.ph463, !prof !44

vec.epilog.ph463:                                 ; preds = %vector.main.loop.iter.check445, %vec.epilog.iter.check461
  %vec.epilog.resume.val458 = phi i64 [ %n.vec448, %vec.epilog.iter.check461 ], [ 0, %vector.main.loop.iter.check445 ]
  %n.vec464 = and i64 %i.mn, 2147483644           ; 3 uses
  %i.na = or disjoint i64 %n.vec464, 1
  br label %vec.epilog.vector.body465

vec.epilog.vector.body465:                        ; preds = %vec.epilog.vector.body465, %vec.epilog.ph463
  %index466 = phi i64 [ %vec.epilog.resume.val458, %vec.epilog.ph463 ], [ %index.next468, %vec.epilog.vector.body465 ] ; 3 uses
  %i.nb = getelementptr [8 x i8], ptr %19, i64 %index466
  %wide.load467 = load <4 x double>, ptr %i.nb, align 8, !tbaa !22
  %i.nc = getelementptr [8 x i8], ptr %invariant.gep380, i64 %index466
  %i.nd = getelementptr i8, ptr %i.nc, i64 8
  store <4 x double> %wide.load467, ptr %i.nd, align 8, !tbaa !22
  %index.next468 = add nuw i64 %index466, 4       ; 2 uses
  %i.ne = icmp eq i64 %index.next468, %n.vec464
  br i1 %i.ne, label %vec.epilog.middle.block469, label %vec.epilog.vector.body465, !llvm.loop !190

vec.epilog.middle.block469:                       ; preds = %vec.epilog.vector.body465
  %cmp.n470 = icmp eq i64 %n.vec464, %i.mn
  br i1 %cmp.n470, label %.loopexit221, label %.lr.ph259.preheader

.lr.ph259.preheader:                              ; preds = %iter.check459, %vec.epilog.iter.check461, %vec.epilog.middle.block469
  %indvars.iv325.ph = phi i64 [ 1, %iter.check459 ], [ %i.na, %vec.epilog.middle.block469 ], [ %i.mp, %vec.epilog.iter.check461 ] ; 4 uses
  %i.nf = sub nsw i64 %wide.trip.count328, %indvars.iv325.ph
  %i.ng = zext nneg i32 %i.ml to i64
  %i.nh = sub nsw i64 %i.ng, %indvars.iv325.ph
  %xtraiter621 = and i64 %i.nf, 7                 ; 2 uses
  %lcmp.mod622.not = icmp eq i64 %xtraiter621, 0
  br i1 %lcmp.mod622.not, label %.lr.ph259.prol.loopexit, label %.lr.ph259.prol

.lr.ph259.prol:                                   ; preds = %.lr.ph259.preheader, %.lr.ph259.prol
  %indvars.iv325.prol = phi i64 [ %indvars.iv.next326.prol, %.lr.ph259.prol ], [ %indvars.iv325.ph, %.lr.ph259.preheader ] ; 3 uses
  %prol.iter623 = phi i64 [ %prol.iter623.next, %.lr.ph259.prol ], [ 0, %.lr.ph259.preheader ]
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv325.prol
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !22
  %gep381.prol = getelementptr [8 x i8], ptr %invariant.gep380, i64 %indvars.iv325.prol
  store double %i.nj, ptr %gep381.prol, align 8, !tbaa !22
  %indvars.iv.next326.prol = add nuw nsw i64 %indvars.iv325.prol, 1 ; 2 uses
  %prol.iter623.next = add i64 %prol.iter623, 1   ; 2 uses
  %prol.iter623.cmp.not = icmp eq i64 %prol.iter623.next, %xtraiter621
  br i1 %prol.iter623.cmp.not, label %.lr.ph259.prol.loopexit, label %.lr.ph259.prol, !llvm.loop !191

.lr.ph259.prol.loopexit:                          ; preds = %.lr.ph259.prol, %.lr.ph259.preheader
  %indvars.iv325.unr = phi i64 [ %indvars.iv325.ph, %.lr.ph259.preheader ], [ %indvars.iv.next326.prol, %.lr.ph259.prol ]
  %i.nk = icmp ult i64 %i.nh, 7
  br i1 %i.nk, label %.loopexit221, label %.lr.ph259

.lr.ph259:                                        ; preds = %.lr.ph259.prol.loopexit, %.lr.ph259
  %indvars.iv325 = phi i64 [ %indvars.iv.next326.7, %.lr.ph259 ], [ %indvars.iv325.unr, %.lr.ph259.prol.loopexit ] ; 11 uses
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv325
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !22
  %gep381 = getelementptr [8 x i8], ptr %invariant.gep380, i64 %indvars.iv325
  store double %i.nm, ptr %gep381, align 8, !tbaa !22
  %i.nn = getelementptr [8 x i8], ptr %19, i64 %indvars.iv325
  %i.no = load double, ptr %i.nn, align 8, !tbaa !22
  %i.np = getelementptr [8 x i8], ptr %invariant.gep380, i64 %indvars.iv325
  %gep381.1 = getelementptr i8, ptr %i.np, i64 8
  store double %i.no, ptr %gep381.1, align 8, !tbaa !22
  %indvars.iv.next326.1 = add nuw nsw i64 %indvars.iv325, 2 ; 2 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next326.1
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !22
  %gep381.2 = getelementptr [8 x i8], ptr %invariant.gep380, i64 %indvars.iv.next326.1
  store double %i.nr, ptr %gep381.2, align 8, !tbaa !22
  %indvars.iv.next326.2 = add nuw nsw i64 %indvars.iv325, 3 ; 2 uses
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next326.2
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !22
  %gep381.3 = getelementptr [8 x i8], ptr %invariant.gep380, i64 %indvars.iv.next326.2
  store double %i.nt, ptr %gep381.3, align 8, !tbaa !22
  %indvars.iv.next326.3 = add nuw nsw i64 %indvars.iv325, 4 ; 2 uses
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next326.3
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !22
  %gep381.4 = getelementptr [8 x i8], ptr %invariant.gep380, i64 %indvars.iv.next326.3
  store double %i.nv, ptr %gep381.4, align 8, !tbaa !22
  %indvars.iv.next326.4 = add nuw nsw i64 %indvars.iv325, 5 ; 2 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next326.4
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !22
  %gep381.5 = getelementptr [8 x i8], ptr %invariant.gep380, i64 %indvars.iv.next326.4
  store double %i.nx, ptr %gep381.5, align 8, !tbaa !22
  %indvars.iv.next326.5 = add nuw nsw i64 %indvars.iv325, 6 ; 2 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next326.5
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !22
  %gep381.6 = getelementptr [8 x i8], ptr %invariant.gep380, i64 %indvars.iv.next326.5
  store double %i.nz, ptr %gep381.6, align 8, !tbaa !22
  %indvars.iv.next326.6 = add nuw nsw i64 %indvars.iv325, 7 ; 2 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next326.6
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !22
  %gep381.7 = getelementptr [8 x i8], ptr %invariant.gep380, i64 %indvars.iv.next326.6
  store double %i.ob, ptr %gep381.7, align 8, !tbaa !22
  %indvars.iv.next326.7 = add nuw nsw i64 %indvars.iv325, 8 ; 2 uses
  %exitcond329.not.7 = icmp eq i64 %indvars.iv.next326.7, %wide.trip.count328
  br i1 %exitcond329.not.7, label %.loopexit221, label %.lr.ph259, !llvm.loop !192

bb.ag:                                            ; preds = %bb.ae
  br i1 %.not180256, label %.loopexit221, label %iter.check501

iter.check501:                                    ; preds = %bb.ag
  %i.oc = zext nneg i32 %i.ml to i64              ; 12 uses
  %i.od = add nuw i32 %i.ml, 1                    ; 5 uses
  %wide.trip.count323 = zext i32 %i.od to i64     ; 3 uses
  %i.oe = zext nneg i32 %i.ml to i64              ; 5 uses
  %min.iters.check482 = icmp ult i32 %i.ml, 4
  br i1 %min.iters.check482, label %.lr.ph254.preheader, label %vector.memcheck472

vector.memcheck472:                               ; preds = %iter.check501
  %i.of = shl nuw nsw i64 %wide.trip.count323, 3  ; 2 uses
  %scevgep475 = getelementptr i8, ptr %scevgep474, i64 %i.of
  %i.og = shl nuw nsw i64 %i.oc, 3                ; 2 uses
  %i.oh = sub nsw i64 %i.og, %i.of
  %scevgep477 = getelementptr i8, ptr %scevgep476, i64 %i.oh
  %scevgep478 = getelementptr i8, ptr %19, i64 %i.og
  %bound0479 = icmp ult ptr %i.aw, %scevgep478
  %bound1480 = icmp ult ptr %scevgep477, %scevgep475
  %found.conflict481 = and i1 %bound0479, %bound1480
  br i1 %found.conflict481, label %.lr.ph254.preheader, label %vector.main.loop.iter.check483

vector.main.loop.iter.check483:                   ; preds = %vector.memcheck472
  %min.iters.check484 = icmp ult i32 %i.ml, 16
  br i1 %min.iters.check484, label %vec.epilog.ph505, label %vector.ph485

vector.ph485:                                     ; preds = %vector.main.loop.iter.check483
  %i.oi = and i64 %i.oe, 12
  %n.vec486 = and i64 %i.oe, 2147483632           ; 4 uses
  %i.oj = or disjoint i64 %n.vec486, 1
  br label %vector.body487

vector.body487:                                   ; preds = %vector.body487, %vector.ph485
  %index488 = phi i64 [ 0, %vector.ph485 ], [ %index.next497, %vector.body487 ] ; 2 uses
  %i.ok = or disjoint i64 %index488, 1            ; 2 uses
  %i.ol = sub nsw i64 %i.oc, %i.ok
  %i.om = getelementptr [8 x i8], ptr %i.u, i64 %i.ol ; 4 uses
  %i.on = getelementptr i8, ptr %i.om, i64 -16
  %i.oo = getelementptr i8, ptr %i.om, i64 -48
  %i.op = getelementptr i8, ptr %i.om, i64 -80
  %i.oq = getelementptr i8, ptr %i.om, i64 -112
  %wide.load489 = load <4 x double>, ptr %i.on, align 8, !tbaa !22, !alias.scope !193
  %wide.load490 = load <4 x double>, ptr %i.oo, align 8, !tbaa !22, !alias.scope !193
  %wide.load491 = load <4 x double>, ptr %i.op, align 8, !tbaa !22, !alias.scope !193
  %wide.load492 = load <4 x double>, ptr %i.oq, align 8, !tbaa !22, !alias.scope !193
  %reverse493 = shufflevector <4 x double> %wide.load489, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse494 = shufflevector <4 x double> %wide.load490, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse495 = shufflevector <4 x double> %wide.load491, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse496 = shufflevector <4 x double> %wide.load492, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.or = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ok ; 4 uses
  %i.os = getelementptr i8, ptr %i.or, i64 32
  %i.ot = getelementptr i8, ptr %i.or, i64 64
  %i.ou = getelementptr i8, ptr %i.or, i64 96
  store <4 x double> %reverse493, ptr %i.or, align 8, !tbaa !22, !alias.scope !196, !noalias !193
  store <4 x double> %reverse494, ptr %i.os, align 8, !tbaa !22, !alias.scope !196, !noalias !193
  store <4 x double> %reverse495, ptr %i.ot, align 8, !tbaa !22, !alias.scope !196, !noalias !193
  store <4 x double> %reverse496, ptr %i.ou, align 8, !tbaa !22, !alias.scope !196, !noalias !193
  %index.next497 = add nuw i64 %index488, 16      ; 2 uses
  %i.ov = icmp eq i64 %index.next497, %n.vec486
  br i1 %i.ov, label %middle.block498, label %vector.body487, !llvm.loop !198

middle.block498:                                  ; preds = %vector.body487
  %cmp.n499 = icmp eq i64 %n.vec486, %i.oe
  br i1 %cmp.n499, label %.loopexit221, label %vec.epilog.iter.check503

vec.epilog.iter.check503:                         ; preds = %middle.block498
  %min.epilog.iters.check504 = icmp eq i64 %i.oi, 0
  br i1 %min.epilog.iters.check504, label %.lr.ph254.preheader, label %vec.epilog.ph505, !prof !44

vec.epilog.ph505:                                 ; preds = %vector.main.loop.iter.check483, %vec.epilog.iter.check503
  %vec.epilog.resume.val500 = phi i64 [ %n.vec486, %vec.epilog.iter.check503 ], [ 0, %vector.main.loop.iter.check483 ]
  %n.vec506 = and i64 %i.oe, 2147483644           ; 3 uses
  %i.ow = or disjoint i64 %n.vec506, 1
  br label %vec.epilog.vector.body507

vec.epilog.vector.body507:                        ; preds = %vec.epilog.vector.body507, %vec.epilog.ph505
  %index508 = phi i64 [ %vec.epilog.resume.val500, %vec.epilog.ph505 ], [ %index.next511, %vec.epilog.vector.body507 ] ; 2 uses
  %i.ox = or disjoint i64 %index508, 1            ; 2 uses
  %i.oy = sub nsw i64 %i.oc, %i.ox
  %i.oz = getelementptr [8 x i8], ptr %i.u, i64 %i.oy
  %i.pa = getelementptr i8, ptr %i.oz, i64 -16
  %wide.load509 = load <4 x double>, ptr %i.pa, align 8, !tbaa !22, !alias.scope !193
  %reverse510 = shufflevector <4 x double> %wide.load509, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.pb = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ox
  store <4 x double> %reverse510, ptr %i.pb, align 8, !tbaa !22, !alias.scope !196, !noalias !193
  %index.next511 = add nuw i64 %index508, 4       ; 2 uses
  %i.pc = icmp eq i64 %index.next511, %n.vec506
  br i1 %i.pc, label %vec.epilog.middle.block512, label %vec.epilog.vector.body507, !llvm.loop !199

vec.epilog.middle.block512:                       ; preds = %vec.epilog.vector.body507
  %cmp.n513 = icmp eq i64 %n.vec506, %i.oe
  br i1 %cmp.n513, label %.loopexit221, label %.lr.ph254.preheader

.lr.ph254.preheader:                              ; preds = %vector.memcheck472, %iter.check501, %vec.epilog.iter.check503, %vec.epilog.middle.block512
  %indvars.iv320.ph = phi i64 [ 1, %iter.check501 ], [ 1, %vector.memcheck472 ], [ %i.oj, %vec.epilog.iter.check503 ], [ %i.ow, %vec.epilog.middle.block512 ] ; 4 uses
  %i.pd = sub nsw i64 %wide.trip.count323, %indvars.iv320.ph
  %i.pe = zext nneg i32 %i.ml to i64
  %i.pf = sub nsw i64 %i.pe, %indvars.iv320.ph
  %xtraiter618 = and i64 %i.pd, 7                 ; 2 uses
  %lcmp.mod619.not = icmp eq i64 %xtraiter618, 0
  br i1 %lcmp.mod619.not, label %.lr.ph254.prol.loopexit, label %.lr.ph254.prol

.lr.ph254.prol:                                   ; preds = %.lr.ph254.preheader, %.lr.ph254.prol
  %indvars.iv320.prol = phi i64 [ %indvars.iv.next321.prol, %.lr.ph254.prol ], [ %indvars.iv320.ph, %.lr.ph254.preheader ] ; 3 uses
  %prol.iter620 = phi i64 [ %prol.iter620.next, %.lr.ph254.prol ], [ 0, %.lr.ph254.preheader ]
  %i.pg = sub nsw i64 %i.oc, %indvars.iv320.prol
  %i.ph = getelementptr [8 x i8], ptr %i.u, i64 %i.pg
  %i.pi = getelementptr i8, ptr %i.ph, i64 8
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !22
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv320.prol
  store double %i.pj, ptr %gep.prol, align 8, !tbaa !22
  %indvars.iv.next321.prol = add nuw nsw i64 %indvars.iv320.prol, 1 ; 2 uses
  %prol.iter620.next = add i64 %prol.iter620, 1   ; 2 uses
  %prol.iter620.cmp.not = icmp eq i64 %prol.iter620.next, %xtraiter618
  br i1 %prol.iter620.cmp.not, label %.lr.ph254.prol.loopexit, label %.lr.ph254.prol, !llvm.loop !200

.lr.ph254.prol.loopexit:                          ; preds = %.lr.ph254.prol, %.lr.ph254.preheader
  %indvars.iv320.unr = phi i64 [ %indvars.iv320.ph, %.lr.ph254.preheader ], [ %indvars.iv.next321.prol, %.lr.ph254.prol ]
  %i.pk = icmp ult i64 %i.pf, 7
  br i1 %i.pk, label %.loopexit221, label %.lr.ph254

.lr.ph254:                                        ; preds = %.lr.ph254.prol.loopexit, %.lr.ph254
  %indvars.iv320 = phi i64 [ %indvars.iv.next321.7, %.lr.ph254 ], [ %indvars.iv320.unr, %.lr.ph254.prol.loopexit ] ; 10 uses
  %i.pl = sub nsw i64 %i.oc, %indvars.iv320
  %i.pm = getelementptr [8 x i8], ptr %i.u, i64 %i.pl
  %i.pn = getelementptr i8, ptr %i.pm, i64 8
  %i.po = load double, ptr %i.pn, align 8, !tbaa !22
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv320
  store double %i.po, ptr %gep, align 8, !tbaa !22
  %indvars.iv.next321 = add nuw nsw i64 %indvars.iv320, 1 ; 2 uses
  %i.pp = sub nsw i64 %i.oc, %indvars.iv.next321
  %i.pq = getelementptr [8 x i8], ptr %i.u, i64 %i.pp
  %i.pr = getelementptr i8, ptr %i.pq, i64 8
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !22
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next321
  store double %i.ps, ptr %gep.1, align 8, !tbaa !22
  %indvars.iv.next321.1 = add nuw nsw i64 %indvars.iv320, 2 ; 2 uses
  %i.pt = sub nsw i64 %i.oc, %indvars.iv.next321.1
  %i.pu = getelementptr [8 x i8], ptr %i.u, i64 %i.pt
  %i.pv = getelementptr i8, ptr %i.pu, i64 8
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !22
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next321.1
  store double %i.pw, ptr %gep.2, align 8, !tbaa !22
  %indvars.iv.next321.2 = add nuw nsw i64 %indvars.iv320, 3 ; 2 uses
  %i.px = sub nsw i64 %i.oc, %indvars.iv.next321.2
  %i.py = getelementptr [8 x i8], ptr %i.u, i64 %i.px
  %i.pz = getelementptr i8, ptr %i.py, i64 8
  %i.qa = load double, ptr %i.pz, align 8, !tbaa !22
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next321.2
  store double %i.qa, ptr %gep.3, align 8, !tbaa !22
  %indvars.iv.next321.3 = add nuw nsw i64 %indvars.iv320, 4 ; 2 uses
  %i.qb = sub nsw i64 %i.oc, %indvars.iv.next321.3
  %i.qc = getelementptr [8 x i8], ptr %i.u, i64 %i.qb
  %i.qd = getelementptr i8, ptr %i.qc, i64 8
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !22
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next321.3
  store double %i.qe, ptr %gep.4, align 8, !tbaa !22
  %indvars.iv.next321.4 = add nuw nsw i64 %indvars.iv320, 5 ; 2 uses
  %i.qf = sub nsw i64 %i.oc, %indvars.iv.next321.4
  %i.qg = getelementptr [8 x i8], ptr %i.u, i64 %i.qf
  %i.qh = getelementptr i8, ptr %i.qg, i64 8
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !22
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next321.4
  store double %i.qi, ptr %gep.5, align 8, !tbaa !22
  %indvars.iv.next321.5 = add nuw nsw i64 %indvars.iv320, 6 ; 2 uses
  %i.qj = sub nsw i64 %i.oc, %indvars.iv.next321.5
  %i.qk = getelementptr [8 x i8], ptr %i.u, i64 %i.qj
  %i.ql = getelementptr i8, ptr %i.qk, i64 8
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !22
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next321.5
  store double %i.qm, ptr %gep.6, align 8, !tbaa !22
  %indvars.iv.next321.6 = add nuw nsw i64 %indvars.iv320, 7 ; 2 uses
  %i.qn = sub nsw i64 %i.oc, %indvars.iv.next321.6
  %i.qo = getelementptr [8 x i8], ptr %i.u, i64 %i.qn
  %i.qp = getelementptr i8, ptr %i.qo, i64 8
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !22
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next321.6
  store double %i.qq, ptr %gep.7, align 8, !tbaa !22
  %indvars.iv.next321.7 = add nuw nsw i64 %indvars.iv320, 8 ; 2 uses
  %exitcond324.not.7 = icmp eq i64 %indvars.iv.next321.7, %wide.trip.count323
  br i1 %exitcond324.not.7, label %.loopexit221, label %.lr.ph254, !llvm.loop !201

.loopexit221:                                     ; preds = %.lr.ph254.prol.loopexit, %.lr.ph254, %.lr.ph259.prol.loopexit, %.lr.ph259, %middle.block498, %vec.epilog.middle.block512, %middle.block456, %vec.epilog.middle.block469, %bb.ag, %bb.af
  %storemerge = phi i32 [ %i.mm, %middle.block456 ], [ 1, %bb.af ], [ 1, %bb.ag ], [ %i.od, %middle.block498 ], [ %i.mm, %vec.epilog.middle.block469 ], [ %i.mm, %.lr.ph259.prol.loopexit ], [ %i.od, %vec.epilog.middle.block512 ], [ %i.mm, %.lr.ph259 ], [ %i.od, %.lr.ph254 ], [ %i.od, %.lr.ph254.prol.loopexit ]
  store i32 %storemerge, ptr @dchk6_.i__, align 4, !tbaa !13
  %i.qr = load i32, ptr @dchk6_.incy, align 4, !tbaa !13
  %i.qs = icmp sgt i32 %i.qr, 0
  %.not184266 = icmp slt i32 %i.ml, 1             ; 2 uses
  br i1 %i.qs, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.loopexit221
  br i1 %.not184266, label %.loopexit219.thread, label %iter.check

iter.check:                                       ; preds = %bb.ah
  %i.qt = add nuw i32 %i.ml, 1                    ; 5 uses
  %wide.trip.count338 = zext i32 %i.qt to i64     ; 2 uses
  %i.qu = zext nneg i32 %i.ml to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.ml, 4
  %brmerge632 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %brmerge632, label %.lr.ph269.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check394 = icmp ult i32 %i.ml, 16
  br i1 %min.iters.check394, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.qv = and i64 %i.qu, 12
  %n.vec = and i64 %i.qu, 2147483632              ; 4 uses
  %i.qw = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.qx = getelementptr [8 x i8], ptr %22, i64 %index ; 4 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 32
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qx, i64 64
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 96
  %wide.load = load <4 x double>, ptr %i.qx, align 8, !tbaa !22
  %wide.load395 = load <4 x double>, ptr %i.qy, align 8, !tbaa !22
  %wide.load396 = load <4 x double>, ptr %i.qz, align 8, !tbaa !22
  %wide.load397 = load <4 x double>, ptr %i.ra, align 8, !tbaa !22
  %i.rb = getelementptr [8 x i8], ptr %invariant.gep384, i64 %index ; 4 uses
  %i.rc = getelementptr i8, ptr %i.rb, i64 8
  %i.rd = getelementptr i8, ptr %i.rb, i64 40
  %i.re = getelementptr i8, ptr %i.rb, i64 72
  %i.rf = getelementptr i8, ptr %i.rb, i64 104
  store <4 x double> %wide.load, ptr %i.rc, align 8, !tbaa !22
  store <4 x double> %wide.load395, ptr %i.rd, align 8, !tbaa !22
  store <4 x double> %wide.load396, ptr %i.re, align 8, !tbaa !22
  store <4 x double> %wide.load397, ptr %i.rf, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.rg = icmp eq i64 %index.next, %n.vec
  br i1 %i.rg, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.qu
  br i1 %cmp.n, label %.lr.ph274.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.qv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph269.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec398 = and i64 %i.qu, 2147483644           ; 3 uses
  %i.rh = or disjoint i64 %n.vec398, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index399 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next401, %vec.epilog.vector.body ] ; 3 uses
  %i.ri = getelementptr [8 x i8], ptr %22, i64 %index399
  %wide.load400 = load <4 x double>, ptr %i.ri, align 8, !tbaa !22
  %i.rj = getelementptr [8 x i8], ptr %invariant.gep384, i64 %index399
  %i.rk = getelementptr i8, ptr %i.rj, i64 8
  store <4 x double> %wide.load400, ptr %i.rk, align 8, !tbaa !22
  %index.next401 = add nuw i64 %index399, 4       ; 2 uses
  %i.rl = icmp eq i64 %index.next401, %n.vec398
  br i1 %i.rl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !203

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n402 = icmp eq i64 %n.vec398, %i.qu
  br i1 %cmp.n402, label %.lr.ph274.preheader, label %.lr.ph269.preheader

.lr.ph269.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv335.ph = phi i64 [ 1, %iter.check ], [ %i.rh, %vec.epilog.middle.block ], [ %i.qw, %vec.epilog.iter.check ] ; 4 uses
  %i.rm = sub nsw i64 %wide.trip.count338, %indvars.iv335.ph
  %i.rn = zext nneg i32 %i.ml to i64
  %i.ro = sub nsw i64 %i.rn, %indvars.iv335.ph
  %xtraiter627 = and i64 %i.rm, 7                 ; 2 uses
  %lcmp.mod628.not = icmp eq i64 %xtraiter627, 0
  br i1 %lcmp.mod628.not, label %.lr.ph269.prol.loopexit, label %.lr.ph269.prol

.lr.ph269.prol:                                   ; preds = %.lr.ph269.preheader, %.lr.ph269.prol
  %indvars.iv335.prol = phi i64 [ %indvars.iv.next336.prol, %.lr.ph269.prol ], [ %indvars.iv335.ph, %.lr.ph269.preheader ] ; 3 uses
  %prol.iter629 = phi i64 [ %prol.iter629.next, %.lr.ph269.prol ], [ 0, %.lr.ph269.preheader ]
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv335.prol
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !22
  %gep385.prol = getelementptr [8 x i8], ptr %invariant.gep384, i64 %indvars.iv335.prol
  store double %i.rq, ptr %gep385.prol, align 8, !tbaa !22
  %indvars.iv.next336.prol = add nuw nsw i64 %indvars.iv335.prol, 1 ; 2 uses
  %prol.iter629.next = add i64 %prol.iter629, 1   ; 2 uses
  %prol.iter629.cmp.not = icmp eq i64 %prol.iter629.next, %xtraiter627
  br i1 %prol.iter629.cmp.not, label %.lr.ph269.prol.loopexit, label %.lr.ph269.prol, !llvm.loop !204

.lr.ph269.prol.loopexit:                          ; preds = %.lr.ph269.prol, %.lr.ph269.preheader
  %indvars.iv335.unr = phi i64 [ %indvars.iv335.ph, %.lr.ph269.preheader ], [ %indvars.iv.next336.prol, %.lr.ph269.prol ]
  %i.rr = icmp ult i64 %i.ro, 7
  br i1 %i.rr, label %.lr.ph274.preheader, label %.lr.ph269

.lr.ph269:                                        ; preds = %.lr.ph269.prol.loopexit, %.lr.ph269
  %indvars.iv335 = phi i64 [ %indvars.iv.next336.7, %.lr.ph269 ], [ %indvars.iv335.unr, %.lr.ph269.prol.loopexit ] ; 11 uses
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv335
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !22
  %gep385 = getelementptr [8 x i8], ptr %invariant.gep384, i64 %indvars.iv335
  store double %i.rt, ptr %gep385, align 8, !tbaa !22
  %i.ru = getelementptr [8 x i8], ptr %22, i64 %indvars.iv335
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !22
  %i.rw = getelementptr [8 x i8], ptr %invariant.gep384, i64 %indvars.iv335
  %gep385.1 = getelementptr i8, ptr %i.rw, i64 8
  store double %i.rv, ptr %gep385.1, align 8, !tbaa !22
  %indvars.iv.next336.1 = add nuw nsw i64 %indvars.iv335, 2 ; 2 uses
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next336.1
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !22
  %gep385.2 = getelementptr [8 x i8], ptr %invariant.gep384, i64 %indvars.iv.next336.1
  store double %i.ry, ptr %gep385.2, align 8, !tbaa !22
  %indvars.iv.next336.2 = add nuw nsw i64 %indvars.iv335, 3 ; 2 uses
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next336.2
  %i.sa = load double, ptr %i.rz, align 8, !tbaa !22
  %gep385.3 = getelementptr [8 x i8], ptr %invariant.gep384, i64 %indvars.iv.next336.2
  store double %i.sa, ptr %gep385.3, align 8, !tbaa !22
  %indvars.iv.next336.3 = add nuw nsw i64 %indvars.iv335, 4 ; 2 uses
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next336.3
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !22
  %gep385.4 = getelementptr [8 x i8], ptr %invariant.gep384, i64 %indvars.iv.next336.3
  store double %i.sc, ptr %gep385.4, align 8, !tbaa !22
  %indvars.iv.next336.4 = add nuw nsw i64 %indvars.iv335, 5 ; 2 uses
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next336.4
  %i.se = load double, ptr %i.sd, align 8, !tbaa !22
  %gep385.5 = getelementptr [8 x i8], ptr %invariant.gep384, i64 %indvars.iv.next336.4
  store double %i.se, ptr %gep385.5, align 8, !tbaa !22
  %indvars.iv.next336.5 = add nuw nsw i64 %indvars.iv335, 6 ; 2 uses
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next336.5
  %i.sg = load double, ptr %i.sf, align 8, !tbaa !22
  %gep385.6 = getelementptr [8 x i8], ptr %invariant.gep384, i64 %indvars.iv.next336.5
  store double %i.sg, ptr %gep385.6, align 8, !tbaa !22
  %indvars.iv.next336.6 = add nuw nsw i64 %indvars.iv335, 7 ; 2 uses
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next336.6
  %i.si = load double, ptr %i.sh, align 8, !tbaa !22
  %gep385.7 = getelementptr [8 x i8], ptr %invariant.gep384, i64 %indvars.iv.next336.6
  store double %i.si, ptr %gep385.7, align 8, !tbaa !22
  %indvars.iv.next336.7 = add nuw nsw i64 %indvars.iv335, 8 ; 2 uses
  %exitcond339.not.7 = icmp eq i64 %indvars.iv.next336.7, %wide.trip.count338
  br i1 %exitcond339.not.7, label %.lr.ph274.preheader, label %.lr.ph269, !llvm.loop !205

bb.ai:                                            ; preds = %.loopexit221
  br i1 %.not184266, label %.loopexit219.thread, label %iter.check428

iter.check428:                                    ; preds = %bb.ai
  %i.sj = zext nneg i32 %i.ml to i64              ; 12 uses
  %i.sk = add nuw i32 %i.ml, 1                    ; 5 uses
  %wide.trip.count333 = zext i32 %i.sk to i64     ; 3 uses
  %i.sl = zext nneg i32 %i.ml to i64              ; 5 uses
  %min.iters.check410 = icmp ult i32 %i.ml, 4
  br i1 %min.iters.check410, label %.lr.ph264.preheader, label %vector.memcheck404

vector.memcheck404:                               ; preds = %iter.check428
  %i.sm = shl nuw nsw i64 %wide.trip.count333, 3  ; 2 uses
  %scevgep406 = getelementptr i8, ptr %scevgep405, i64 %i.sm
  %i.sn = shl nuw nsw i64 %i.sj, 3                ; 2 uses
  %i.so = sub nsw i64 %i.sn, %i.sm
  %scevgep408 = getelementptr i8, ptr %scevgep407, i64 %i.so
  %scevgep409 = getelementptr i8, ptr %22, i64 %i.sn
  %bound0 = icmp ult ptr %i.ar, %scevgep409
  %bound1 = icmp ult ptr %scevgep408, %scevgep406
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph264.preheader, label %vector.main.loop.iter.check411

vector.main.loop.iter.check411:                   ; preds = %vector.memcheck404
  %min.iters.check412 = icmp ult i32 %i.ml, 16
  br i1 %min.iters.check412, label %vec.epilog.ph432, label %vector.ph413

vector.ph413:                                     ; preds = %vector.main.loop.iter.check411
  %i.sp = and i64 %i.sl, 12
  %n.vec414 = and i64 %i.sl, 2147483632           ; 4 uses
  %i.sq = or disjoint i64 %n.vec414, 1
  br label %vector.body415

vector.body415:                                   ; preds = %vector.body415, %vector.ph413
  %index416 = phi i64 [ 0, %vector.ph413 ], [ %index.next424, %vector.body415 ] ; 2 uses
  %i.sr = or disjoint i64 %index416, 1            ; 2 uses
  %i.ss = sub nsw i64 %i.sj, %i.sr
  %i.st = getelementptr [8 x i8], ptr %i.t, i64 %i.ss ; 4 uses
  %i.su = getelementptr i8, ptr %i.st, i64 -16
  %i.sv = getelementptr i8, ptr %i.st, i64 -48
  %i.sw = getelementptr i8, ptr %i.st, i64 -80
  %i.sx = getelementptr i8, ptr %i.st, i64 -112
  %wide.load417 = load <4 x double>, ptr %i.su, align 8, !tbaa !22, !alias.scope !206
  %wide.load418 = load <4 x double>, ptr %i.sv, align 8, !tbaa !22, !alias.scope !206
  %wide.load419 = load <4 x double>, ptr %i.sw, align 8, !tbaa !22, !alias.scope !206
  %wide.load420 = load <4 x double>, ptr %i.sx, align 8, !tbaa !22, !alias.scope !206
  %reverse = shufflevector <4 x double> %wide.load417, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse421 = shufflevector <4 x double> %wide.load418, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse422 = shufflevector <4 x double> %wide.load419, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse423 = shufflevector <4 x double> %wide.load420, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.sy = getelementptr [8 x i8], ptr %invariant.gep382, i64 %i.sr ; 4 uses
  %i.sz = getelementptr i8, ptr %i.sy, i64 32
  %i.ta = getelementptr i8, ptr %i.sy, i64 64
  %i.tb = getelementptr i8, ptr %i.sy, i64 96
  store <4 x double> %reverse, ptr %i.sy, align 8, !tbaa !22, !alias.scope !209, !noalias !206
  store <4 x double> %reverse421, ptr %i.sz, align 8, !tbaa !22, !alias.scope !209, !noalias !206
  store <4 x double> %reverse422, ptr %i.ta, align 8, !tbaa !22, !alias.scope !209, !noalias !206
  store <4 x double> %reverse423, ptr %i.tb, align 8, !tbaa !22, !alias.scope !209, !noalias !206
  %index.next424 = add nuw i64 %index416, 16      ; 2 uses
  %i.tc = icmp eq i64 %index.next424, %n.vec414
  br i1 %i.tc, label %middle.block425, label %vector.body415, !llvm.loop !211

middle.block425:                                  ; preds = %vector.body415
  %cmp.n426 = icmp eq i64 %n.vec414, %i.sl
  br i1 %cmp.n426, label %.lr.ph274.preheader, label %vec.epilog.iter.check430

vec.epilog.iter.check430:                         ; preds = %middle.block425
  %min.epilog.iters.check431 = icmp eq i64 %i.sp, 0
  br i1 %min.epilog.iters.check431, label %.lr.ph264.preheader, label %vec.epilog.ph432, !prof !44

vec.epilog.ph432:                                 ; preds = %vector.main.loop.iter.check411, %vec.epilog.iter.check430
  %vec.epilog.resume.val427 = phi i64 [ %n.vec414, %vec.epilog.iter.check430 ], [ 0, %vector.main.loop.iter.check411 ]
  %n.vec433 = and i64 %i.sl, 2147483644           ; 3 uses
  %i.td = or disjoint i64 %n.vec433, 1
  br label %vec.epilog.vector.body434

vec.epilog.vector.body434:                        ; preds = %vec.epilog.vector.body434, %vec.epilog.ph432
  %index435 = phi i64 [ %vec.epilog.resume.val427, %vec.epilog.ph432 ], [ %index.next438, %vec.epilog.vector.body434 ] ; 2 uses
  %i.te = or disjoint i64 %index435, 1            ; 2 uses
  %i.tf = sub nsw i64 %i.sj, %i.te
  %i.tg = getelementptr [8 x i8], ptr %i.t, i64 %i.tf
  %i.th = getelementptr i8, ptr %i.tg, i64 -16
  %wide.load436 = load <4 x double>, ptr %i.th, align 8, !tbaa !22, !alias.scope !206
  %reverse437 = shufflevector <4 x double> %wide.load436, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ti = getelementptr [8 x i8], ptr %invariant.gep382, i64 %i.te
  store <4 x double> %reverse437, ptr %i.ti, align 8, !tbaa !22, !alias.scope !209, !noalias !206
  %index.next438 = add nuw i64 %index435, 4       ; 2 uses
  %i.tj = icmp eq i64 %index.next438, %n.vec433
  br i1 %i.tj, label %vec.epilog.middle.block439, label %vec.epilog.vector.body434, !llvm.loop !212

vec.epilog.middle.block439:                       ; preds = %vec.epilog.vector.body434
  %cmp.n440 = icmp eq i64 %n.vec433, %i.sl
  br i1 %cmp.n440, label %.lr.ph274.preheader, label %.lr.ph264.preheader

.lr.ph264.preheader:                              ; preds = %vector.memcheck404, %iter.check428, %vec.epilog.iter.check430, %vec.epilog.middle.block439
  %indvars.iv330.ph = phi i64 [ 1, %iter.check428 ], [ 1, %vector.memcheck404 ], [ %i.sq, %vec.epilog.iter.check430 ], [ %i.td, %vec.epilog.middle.block439 ] ; 4 uses
  %i.tk = sub nsw i64 %wide.trip.count333, %indvars.iv330.ph
  %i.tl = zext nneg i32 %i.ml to i64
  %i.tm = sub nsw i64 %i.tl, %indvars.iv330.ph
  %xtraiter624 = and i64 %i.tk, 7                 ; 2 uses
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  br i1 %lcmp.mod625.not, label %.lr.ph264.prol.loopexit, label %.lr.ph264.prol

.lr.ph264.prol:                                   ; preds = %.lr.ph264.preheader, %.lr.ph264.prol
  %indvars.iv330.prol = phi i64 [ %indvars.iv.next331.prol, %.lr.ph264.prol ], [ %indvars.iv330.ph, %.lr.ph264.preheader ] ; 3 uses
  %prol.iter626 = phi i64 [ %prol.iter626.next, %.lr.ph264.prol ], [ 0, %.lr.ph264.preheader ]
  %i.tn = sub nsw i64 %i.sj, %indvars.iv330.prol
  %i.to = getelementptr [8 x i8], ptr %i.t, i64 %i.tn
  %i.tp = getelementptr i8, ptr %i.to, i64 8
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !22
  %gep383.prol = getelementptr [8 x i8], ptr %invariant.gep382, i64 %indvars.iv330.prol
  store double %i.tq, ptr %gep383.prol, align 8, !tbaa !22
  %indvars.iv.next331.prol = add nuw nsw i64 %indvars.iv330.prol, 1 ; 2 uses
  %prol.iter626.next = add i64 %prol.iter626, 1   ; 2 uses
  %prol.iter626.cmp.not = icmp eq i64 %prol.iter626.next, %xtraiter624
  br i1 %prol.iter626.cmp.not, label %.lr.ph264.prol.loopexit, label %.lr.ph264.prol, !llvm.loop !213

.lr.ph264.prol.loopexit:                          ; preds = %.lr.ph264.prol, %.lr.ph264.preheader
  %indvars.iv330.unr = phi i64 [ %indvars.iv330.ph, %.lr.ph264.preheader ], [ %indvars.iv.next331.prol, %.lr.ph264.prol ]
  %i.tr = icmp ult i64 %i.tm, 7
  br i1 %i.tr, label %.lr.ph274.preheader, label %.lr.ph264

.lr.ph264:                                        ; preds = %.lr.ph264.prol.loopexit, %.lr.ph264
  %indvars.iv330 = phi i64 [ %indvars.iv.next331.7, %.lr.ph264 ], [ %indvars.iv330.unr, %.lr.ph264.prol.loopexit ] ; 10 uses
  %i.ts = sub nsw i64 %i.sj, %indvars.iv330
  %i.tt = getelementptr [8 x i8], ptr %i.t, i64 %i.ts
  %i.tu = getelementptr i8, ptr %i.tt, i64 8
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !22
  %gep383 = getelementptr [8 x i8], ptr %invariant.gep382, i64 %indvars.iv330
  store double %i.tv, ptr %gep383, align 8, !tbaa !22
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1 ; 2 uses
  %i.tw = sub nsw i64 %i.sj, %indvars.iv.next331
  %i.tx = getelementptr [8 x i8], ptr %i.t, i64 %i.tw
  %i.ty = getelementptr i8, ptr %i.tx, i64 8
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !22
  %gep383.1 = getelementptr [8 x i8], ptr %invariant.gep382, i64 %indvars.iv.next331
  store double %i.tz, ptr %gep383.1, align 8, !tbaa !22
  %indvars.iv.next331.1 = add nuw nsw i64 %indvars.iv330, 2 ; 2 uses
  %i.ua = sub nsw i64 %i.sj, %indvars.iv.next331.1
  %i.ub = getelementptr [8 x i8], ptr %i.t, i64 %i.ua
  %i.uc = getelementptr i8, ptr %i.ub, i64 8
  %i.ud = load double, ptr %i.uc, align 8, !tbaa !22
  %gep383.2 = getelementptr [8 x i8], ptr %invariant.gep382, i64 %indvars.iv.next331.1
  store double %i.ud, ptr %gep383.2, align 8, !tbaa !22
  %indvars.iv.next331.2 = add nuw nsw i64 %indvars.iv330, 3 ; 2 uses
  %i.ue = sub nsw i64 %i.sj, %indvars.iv.next331.2
  %i.uf = getelementptr [8 x i8], ptr %i.t, i64 %i.ue
  %i.ug = getelementptr i8, ptr %i.uf, i64 8
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !22
  %gep383.3 = getelementptr [8 x i8], ptr %invariant.gep382, i64 %indvars.iv.next331.2
  store double %i.uh, ptr %gep383.3, align 8, !tbaa !22
  %indvars.iv.next331.3 = add nuw nsw i64 %indvars.iv330, 4 ; 2 uses
  %i.ui = sub nsw i64 %i.sj, %indvars.iv.next331.3
  %i.uj = getelementptr [8 x i8], ptr %i.t, i64 %i.ui
  %i.uk = getelementptr i8, ptr %i.uj, i64 8
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !22
  %gep383.4 = getelementptr [8 x i8], ptr %invariant.gep382, i64 %indvars.iv.next331.3
  store double %i.ul, ptr %gep383.4, align 8, !tbaa !22
  %indvars.iv.next331.4 = add nuw nsw i64 %indvars.iv330, 5 ; 2 uses
  %i.um = sub nsw i64 %i.sj, %indvars.iv.next331.4
  %i.un = getelementptr [8 x i8], ptr %i.t, i64 %i.um
  %i.uo = getelementptr i8, ptr %i.un, i64 8
  %i.up = load double, ptr %i.uo, align 8, !tbaa !22
  %gep383.5 = getelementptr [8 x i8], ptr %invariant.gep382, i64 %indvars.iv.next331.4
  store double %i.up, ptr %gep383.5, align 8, !tbaa !22
  %indvars.iv.next331.5 = add nuw nsw i64 %indvars.iv330, 6 ; 2 uses
  %i.uq = sub nsw i64 %i.sj, %indvars.iv.next331.5
  %i.ur = getelementptr [8 x i8], ptr %i.t, i64 %i.uq
  %i.us = getelementptr i8, ptr %i.ur, i64 8
  %i.ut = load double, ptr %i.us, align 8, !tbaa !22
  %gep383.6 = getelementptr [8 x i8], ptr %invariant.gep382, i64 %indvars.iv.next331.5
  store double %i.ut, ptr %gep383.6, align 8, !tbaa !22
  %indvars.iv.next331.6 = add nuw nsw i64 %indvars.iv330, 7 ; 2 uses
  %i.uu = sub nsw i64 %i.sj, %indvars.iv.next331.6
  %i.uv = getelementptr [8 x i8], ptr %i.t, i64 %i.uu
  %i.uw = getelementptr i8, ptr %i.uv, i64 8
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !22
  %gep383.7 = getelementptr [8 x i8], ptr %invariant.gep382, i64 %indvars.iv.next331.6
  store double %i.ux, ptr %gep383.7, align 8, !tbaa !22
  %indvars.iv.next331.7 = add nuw nsw i64 %indvars.iv330, 8 ; 2 uses
  %exitcond334.not.7 = icmp eq i64 %indvars.iv.next331.7, %wide.trip.count333
  br i1 %exitcond334.not.7, label %.lr.ph274.preheader, label %.lr.ph264, !llvm.loop !214

.loopexit219.thread:                              ; preds = %bb.ai, %bb.ah
  store i32 1, ptr @dchk6_.i__, align 4, !tbaa !13
  store i32 1, ptr @dchk6_.ja, align 4, !tbaa !13
  store i32 %i.ml, ptr %i.l, align 4, !tbaa !13
  store i32 1, ptr @dchk6_.j, align 4, !tbaa !13
  br label %.loopexit

.lr.ph274.preheader:                              ; preds = %.lr.ph264.prol.loopexit, %.lr.ph264, %.lr.ph269.prol.loopexit, %.lr.ph269, %middle.block425, %vec.epilog.middle.block439, %middle.block, %vec.epilog.middle.block
  %storemerge295 = phi i32 [ %i.qt, %middle.block ], [ %i.sk, %middle.block425 ], [ %i.qt, %vec.epilog.middle.block ], [ %i.qt, %.lr.ph269.prol.loopexit ], [ %i.sk, %vec.epilog.middle.block439 ], [ %i.qt, %.lr.ph269 ], [ %i.sk, %.lr.ph264 ], [ %i.sk, %.lr.ph264.prol.loopexit ]
  store i32 %storemerge295, ptr @dchk6_.i__, align 4, !tbaa !13
  store i32 1, ptr @dchk6_.ja, align 4, !tbaa !13
  store i32 %i.ml, ptr %i.l, align 4, !tbaa !13
  store i32 1, ptr @dchk6_.j, align 4, !tbaa !13
  br label %.lr.ph274

.lr.ph274:                                        ; preds = %.lr.ph274.preheader, %bb.ao
  %i.uy = phi i32 [ %.sink387, %bb.ao ], [ 1, %.lr.ph274.preheader ]
  %storemerge185272 = phi i32 [ %i.wm, %bb.ao ], [ 1, %.lr.ph274.preheader ] ; 6 uses
  %i.uz = add nsw i32 %storemerge185272, %i.ak
  %i.va = sext i32 %i.uz to i64
  %i.vb = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.va
  %i.vc = load double, ptr %i.vb, align 8, !tbaa !22
  store double %i.vc, ptr @dchk6_.w, align 16, !tbaa !22
  %i.vd = add nsw i32 %storemerge185272, %i.q
  %i.ve = sext i32 %i.vd to i64
  %i.vf = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ve
  %i.vg = load double, ptr %i.vf, align 8, !tbaa !22
  store double %i.vg, ptr getelementptr inbounds nuw (i8, ptr @dchk6_.w, i64 8), align 8, !tbaa !22
  %i.vh = load i32, ptr @dchk6_.upper, align 4, !tbaa !13
  %.not187 = icmp eq i32 %i.vh, 0                 ; 2 uses
  %i.vi = load i32, ptr @dchk6_.n, align 4
  %reass.sub = sub i32 %i.vi, %storemerge185272
  %i.vj = add i32 %reass.sub, 1
  %.sink = select i1 %.not187, i32 %storemerge185272, i32 1 ; 2 uses
  %storemerge188 = select i1 %.not187, i32 %i.vj, i32 %storemerge185272
  store i32 %storemerge188, ptr @dchk6_.lj, align 4, !tbaa !13
end_hunk_1
begin_hunk_2_@dmake_:bb.a
  br label %vector.body876

vector.body876:                                   ; preds = %vector.body876, %vector.ph874
  %index877 = phi i64 [ 0, %vector.ph874 ], [ %index.next882, %vector.body876 ] ; 2 uses
  %i.gv = add nuw i64 %index877, %i.fw            ; 2 uses
  %i.gw = trunc nsw i64 %i.gv to i32
  %i.gx = add i32 %i.ft, %i.gw
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.gy ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 96
  %wide.load878 = load <4 x double>, ptr %i.gz, align 8, !tbaa !22
  %wide.load879 = load <4 x double>, ptr %i.ha, align 8, !tbaa !22
  %wide.load880 = load <4 x double>, ptr %i.hb, align 8, !tbaa !22
  %wide.load881 = load <4 x double>, ptr %i.hc, align 8, !tbaa !22
  %i.hd = getelementptr [8 x i8], ptr %invariant.gep587, i64 %i.gv ; 4 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 32
  %i.hf = getelementptr i8, ptr %i.hd, i64 64
  %i.hg = getelementptr i8, ptr %i.hd, i64 96
  store <4 x double> %wide.load878, ptr %i.hd, align 8, !tbaa !22
  store <4 x double> %wide.load879, ptr %i.he, align 8, !tbaa !22
  store <4 x double> %wide.load880, ptr %i.hf, align 8, !tbaa !22
  store <4 x double> %wide.load881, ptr %i.hg, align 8, !tbaa !22
  %index.next882 = add nuw i64 %index877, 16      ; 2 uses
  %i.hh = icmp eq i64 %index.next882, %n.vec875
  br i1 %i.hh, label %middle.block883, label %vector.body876, !llvm.loop !232

middle.block883:                                  ; preds = %vector.body876
  %cmp.n884 = icmp eq i64 %i.ga, %n.vec875
  br i1 %cmp.n884, label %._crit_edge370.loopexit, label %vec.epilog.iter.check889

vec.epilog.iter.check889:                         ; preds = %middle.block883
  %min.epilog.iters.check890 = icmp eq i64 %i.gt, 0
  br i1 %min.epilog.iters.check890, label %vec.epilog.scalar.ph888.preheader, label %vec.epilog.ph891, !prof !44

vec.epilog.ph891:                                 ; preds = %vector.main.loop.iter.check872, %vec.epilog.iter.check889
  %vec.epilog.resume.val885 = phi i64 [ %n.vec875, %vec.epilog.iter.check889 ], [ 0, %vector.main.loop.iter.check872 ]
  %n.vec892 = and i64 %i.ga, -4                   ; 3 uses
  %i.hi = add nsw i64 %n.vec892, %i.fw            ; 2 uses
  br label %vec.epilog.vector.body893

vec.epilog.vector.body893:                        ; preds = %vec.epilog.vector.body893, %vec.epilog.ph891
  %index894 = phi i64 [ %vec.epilog.resume.val885, %vec.epilog.ph891 ], [ %index.next896, %vec.epilog.vector.body893 ] ; 2 uses
  %i.hj = add nuw i64 %index894, %i.fw            ; 2 uses
  %i.hk = trunc nsw i64 %i.hj to i32
  %i.hl = add i32 %i.ft, %i.hk
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.hm
  %wide.load895 = load <4 x double>, ptr %i.hn, align 8, !tbaa !22
  %i.ho = getelementptr [8 x i8], ptr %invariant.gep587, i64 %i.hj
  store <4 x double> %wide.load895, ptr %i.ho, align 8, !tbaa !22
  %index.next896 = add nuw i64 %index894, 4       ; 2 uses
  %i.hp = icmp eq i64 %index.next896, %n.vec892
  br i1 %i.hp, label %vec.epilog.middle.block897, label %vec.epilog.vector.body893, !llvm.loop !233

vec.epilog.middle.block897:                       ; preds = %vec.epilog.vector.body893
  %cmp.n898 = icmp eq i64 %i.ga, %n.vec892
  br i1 %cmp.n898, label %._crit_edge370.loopexit, label %vec.epilog.scalar.ph888.preheader

vec.epilog.scalar.ph888.preheader:                ; preds = %vector.memcheck868, %vector.scevcheck, %iter.check887, %vec.epilog.iter.check889, %vec.epilog.middle.block897
  %indvars.iv475.ph = phi i64 [ %i.fw, %iter.check887 ], [ %i.fw, %vector.scevcheck ], [ %i.fw, %vector.memcheck868 ], [ %i.gu, %vec.epilog.iter.check889 ], [ %i.hi, %vec.epilog.middle.block897 ]
  br label %vec.epilog.scalar.ph888

vec.epilog.scalar.ph888:                          ; preds = %vec.epilog.scalar.ph888.preheader, %vec.epilog.scalar.ph888
  %indvars.iv475 = phi i64 [ %indvars.iv.next476, %vec.epilog.scalar.ph888 ], [ %indvars.iv475.ph, %vec.epilog.scalar.ph888.preheader ] ; 4 uses
  %i.hq = trunc nsw i64 %indvars.iv475 to i32
  %i.hr = add i32 %i.ft, %i.hq
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.hs
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !22
  %gep588 = getelementptr [8 x i8], ptr %invariant.gep587, i64 %indvars.iv475
  store double %i.hu, ptr %gep588, align 8, !tbaa !22
  %indvars.iv.next476 = add nuw nsw i64 %indvars.iv475, 1 ; 2 uses
  %.not193.not = icmp slt i64 %indvars.iv475, %i.fy
  br i1 %.not193.not, label %vec.epilog.scalar.ph888, label %._crit_edge370.loopexit, !llvm.loop !234

._crit_edge370.loopexit:                          ; preds = %vec.epilog.scalar.ph888, %vec.epilog.middle.block897, %middle.block883
  %indvars.iv.next476.lcssa = phi i64 [ %i.hi, %vec.epilog.middle.block897 ], [ %i.gu, %middle.block883 ], [ %indvars.iv.next476, %vec.epilog.scalar.ph888 ]
  %i.hv = trunc nsw i64 %indvars.iv.next476.lcssa to i32
  br label %._crit_edge370

._crit_edge370:                                   ; preds = %._crit_edge370.loopexit, %._crit_edge363
  %storemerge192.lcssa365 = phi i32 [ %storemerge189.lcssa358, %._crit_edge363 ], [ %i.hv, %._crit_edge370.loopexit ] ; 3 uses
  %.not195373 = icmp sgt i32 %storemerge192.lcssa365, %.pre495.pre
  br i1 %.not195373, label %._crit_edge377, label %iter.check854

iter.check854:                                    ; preds = %._crit_edge370
  %i.hw = add nsw i32 %storemerge187380, -1
  %i.hx = mul nsw i32 %.pre495.pre, %i.hw
  %i.hy = sext i32 %storemerge192.lcssa365 to i64 ; 5 uses
  %i.hz = sext i32 %i.hx to i64
  %i.ia = add i32 %.pre495.pre, 1
  %invariant.gep589 = getelementptr [8 x i8], ptr %i.f, i64 %i.hz ; 3 uses
  %i.ib = sub i32 %.pre495.pre, %storemerge192.lcssa365 ; 3 uses
  %i.ic = zext i32 %i.ib to i64
  %i.id = add nuw nsw i64 %i.ic, 1                ; 5 uses
  %min.iters.check842 = icmp ult i32 %i.ib, 3
  br i1 %min.iters.check842, label %vec.epilog.scalar.ph855.preheader, label %vector.main.loop.iter.check843

vector.main.loop.iter.check843:                   ; preds = %iter.check854
  %min.iters.check844 = icmp ult i32 %i.ib, 15
  br i1 %min.iters.check844, label %vec.epilog.ph858, label %vector.ph845

vector.ph845:                                     ; preds = %vector.main.loop.iter.check843
  %i.ie = and i64 %i.id, 12
  %n.vec846 = and i64 %i.id, 8589934576           ; 4 uses
  %i.if = add nsw i64 %n.vec846, %i.hy
  %invariant.gep1047 = getelementptr [8 x i8], ptr %invariant.gep589, i64 %i.hy
  br label %vector.body847

vector.body847:                                   ; preds = %vector.body847, %vector.ph845
  %index848 = phi i64 [ 0, %vector.ph845 ], [ %index.next849, %vector.body847 ] ; 2 uses
  %gep1048 = getelementptr [8 x i8], ptr %invariant.gep1047, i64 %index848 ; 4 uses
  %i.ig = getelementptr i8, ptr %gep1048, i64 32
  %i.ih = getelementptr i8, ptr %gep1048, i64 64
  %i.ii = getelementptr i8, ptr %gep1048, i64 96
  store <4 x double> splat (double -1.000000e+10), ptr %gep1048, align 8, !tbaa !22
  store <4 x double> splat (double -1.000000e+10), ptr %i.ig, align 8, !tbaa !22
  store <4 x double> splat (double -1.000000e+10), ptr %i.ih, align 8, !tbaa !22
  store <4 x double> splat (double -1.000000e+10), ptr %i.ii, align 8, !tbaa !22
  %index.next849 = add nuw i64 %index848, 16      ; 2 uses
  %i.ij = icmp eq i64 %index.next849, %n.vec846
  br i1 %i.ij, label %middle.block850, label %vector.body847, !llvm.loop !235

middle.block850:                                  ; preds = %vector.body847
  %cmp.n851 = icmp eq i64 %i.id, %n.vec846
  br i1 %cmp.n851, label %._crit_edge377, label %vec.epilog.iter.check856

vec.epilog.iter.check856:                         ; preds = %middle.block850
  %min.epilog.iters.check857 = icmp eq i64 %i.ie, 0
  br i1 %min.epilog.iters.check857, label %vec.epilog.scalar.ph855.preheader, label %vec.epilog.ph858, !prof !44

vec.epilog.ph858:                                 ; preds = %vector.main.loop.iter.check843, %vec.epilog.iter.check856
  %vec.epilog.resume.val852 = phi i64 [ %n.vec846, %vec.epilog.iter.check856 ], [ 0, %vector.main.loop.iter.check843 ]
  %n.vec859 = and i64 %i.id, 8589934588           ; 3 uses
  %i.ik = add nsw i64 %n.vec859, %i.hy
  %invariant.gep1049 = getelementptr [8 x i8], ptr %invariant.gep589, i64 %i.hy
  br label %vec.epilog.vector.body860

vec.epilog.vector.body860:                        ; preds = %vec.epilog.vector.body860, %vec.epilog.ph858
  %index861 = phi i64 [ %vec.epilog.resume.val852, %vec.epilog.ph858 ], [ %index.next862, %vec.epilog.vector.body860 ] ; 2 uses
  %gep1050 = getelementptr [8 x i8], ptr %invariant.gep1049, i64 %index861
  store <4 x double> splat (double -1.000000e+10), ptr %gep1050, align 8, !tbaa !22
  %index.next862 = add nuw i64 %index861, 4       ; 2 uses
  %i.il = icmp eq i64 %index.next862, %n.vec859
  br i1 %i.il, label %vec.epilog.middle.block863, label %vec.epilog.vector.body860, !llvm.loop !236

vec.epilog.middle.block863:                       ; preds = %vec.epilog.vector.body860
  %cmp.n864 = icmp eq i64 %i.id, %n.vec859
  br i1 %cmp.n864, label %._crit_edge377, label %vec.epilog.scalar.ph855.preheader

vec.epilog.scalar.ph855.preheader:                ; preds = %iter.check854, %vec.epilog.iter.check856, %vec.epilog.middle.block863
  %indvars.iv478.ph = phi i64 [ %i.hy, %iter.check854 ], [ %i.if, %vec.epilog.iter.check856 ], [ %i.ik, %vec.epilog.middle.block863 ]
  br label %vec.epilog.scalar.ph855

vec.epilog.scalar.ph855:                          ; preds = %vec.epilog.scalar.ph855.preheader, %vec.epilog.scalar.ph855
  %indvars.iv478 = phi i64 [ %indvars.iv.next479, %vec.epilog.scalar.ph855 ], [ %indvars.iv478.ph, %vec.epilog.scalar.ph855.preheader ] ; 2 uses
  %gep590 = getelementptr [8 x i8], ptr %invariant.gep589, i64 %indvars.iv478
  store double -1.000000e+10, ptr %gep590, align 8, !tbaa !22
  %indvars.iv.next479 = add nsw i64 %indvars.iv478, 1 ; 2 uses
  %lftr.wideiv481 = trunc i64 %indvars.iv.next479 to i32
  %exitcond482.not = icmp eq i32 %i.ia, %lftr.wideiv481
  br i1 %exitcond482.not, label %._crit_edge377, label %vec.epilog.scalar.ph855, !llvm.loop !237

._crit_edge377:                                   ; preds = %vec.epilog.scalar.ph855, %middle.block850, %vec.epilog.middle.block863, %._crit_edge370
  %i.im = add nuw i32 %storemerge187380, 1        ; 2 uses
  store i32 %i.im, ptr @dmake_.j, align 4, !tbaa !13
  %indvars.iv.next472 = add nsw i32 %indvars.iv471, -1
  %exitcond483.not = icmp eq i32 %storemerge187380, %i.em
  %indvar.next867 = add i32 %indvar866, 1
  br i1 %exitcond483.not, label %.loopexit, label %.lr.ph382, !llvm.loop !238

.tail223:                                         ; preds = %sub_0
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.io = load i8, ptr %i.in, align 1
  %i.ip = icmp eq i8 %i.io, 121
  br i1 %i.ip, label %bb.x, label %.tail231

.tail227:                                         ; preds = %sub_0
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ir = load i8, ptr %i.iq, align 1
  %i.is = icmp eq i8 %i.ir, 114
  br i1 %i.is, label %bb.x, label %.tail235

bb.x:                                             ; preds = %.tail227, %.tail223
  %i.it = load i32, ptr %4, align 4, !tbaa !13    ; 2 uses
  store i32 1, ptr @dmake_.j, align 4, !tbaa !13
  %.not176354 = icmp slt i32 %i.it, 1
  br i1 %.not176354, label %.loopexit, label %.lr.ph357

.lr.ph357:                                        ; preds = %bb.x
  %i.iu = sext i32 %i.c to i64
  %i.iv = add nuw i32 %i.it, 1
  %wide.trip.count466 = zext i32 %i.iv to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph357, %._crit_edge352
  %indvar797 = phi i32 [ 0, %.lr.ph357 ], [ %indvar.next798, %._crit_edge352 ] ; 2 uses
  %indvars.iv462 = phi i64 [ 1, %.lr.ph357 ], [ %indvars.iv.next463, %._crit_edge352 ] ; 6 uses
  %i.iw = add nuw nsw i32 %.fr407, %indvar797     ; 7 uses
  %i.ix = trunc i64 %indvars.iv462 to i32         ; 2 uses
  br i1 %.not157520, label %bb.z, label %.thread536

.thread536:                                       ; preds = %bb.y
  %.sink603 = sub i32 %i.ix, %.fr407
  br label %._crit_edge340

bb.z:                                             ; preds = %bb.y
  %i.iy = add i32 %.fr407, %i.ix                  ; 6 uses
  %i.iz = load i32, ptr %4, align 4, !tbaa !13    ; 4 uses
  %.not182.not336 = icmp sgt i32 %i.iy, 1
  br i1 %.not182.not336, label %iter.check822, label %._crit_edge340

iter.check822:                                    ; preds = %bb.z
  %i.ja = trunc i64 %indvars.iv462 to i32
  %i.jb = add i32 %i.ja, -1                       ; 3 uses
  %min.iters.check799 = icmp ult i32 %i.iw, 4
  br i1 %min.iters.check799, label %vec.epilog.scalar.ph823.preheader, label %vector.main.loop.iter.check800

vector.main.loop.iter.check800:                   ; preds = %iter.check822
  %min.iters.check801 = icmp ult i32 %i.iw, 16
  br i1 %min.iters.check801, label %vec.epilog.ph826, label %vector.ph802

vector.ph802:                                     ; preds = %vector.main.loop.iter.check800
  %i.jc = and i32 %i.iw, 12
  %n.vec803 = and i32 %i.iw, -16                  ; 4 uses
  %i.jd = or disjoint i32 %n.vec803, 1            ; 2 uses
  %i.je = load i32, ptr %8, align 4, !tbaa !13
  %i.jf = mul nsw i32 %i.je, %i.jb
  %broadcast.splatinsert810 = insertelement <4 x i32> poison, i32 %i.jf, i64 0
  %broadcast.splat811 = shufflevector <4 x i32> %broadcast.splatinsert810, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op1035 = add <4 x i32> splat (i32 4), %broadcast.splat811
  %invariant.op1037 = add <4 x i32> splat (i32 8), %broadcast.splat811
  %invariant.op1039 = add <4 x i32> splat (i32 12), %broadcast.splat811
  br label %vector.body804

vector.body804:                                   ; preds = %vector.body804, %vector.ph802
  %index805 = phi i32 [ 0, %vector.ph802 ], [ %index.next816, %vector.body804 ]
  %vec.ind806 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph802 ], [ %vec.ind.next817, %vector.body804 ] ; 5 uses
  %i.jg = add nsw <4 x i32> %broadcast.splat811, %vec.ind806
  %.reass1036 = add <4 x i32> %vec.ind806, %invariant.op1035
  %.reass1038 = add <4 x i32> %vec.ind806, %invariant.op1037
  %.reass1040 = add <4 x i32> %vec.ind806, %invariant.op1039
  %i.jh = sext <4 x i32> %i.jg to <4 x i64>
  %i.ji = sext <4 x i32> %.reass1036 to <4 x i64>
  %i.jj = sext <4 x i32> %.reass1038 to <4 x i64>
  %i.jk = sext <4 x i32> %.reass1040 to <4 x i64>
  %wide.gep812 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.jh
  %wide.gep813 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.ji
  %wide.gep814 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.jj
  %wide.gep815 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.jk
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep812, <4 x i1> splat (i1 true)), !tbaa !22
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep813, <4 x i1> splat (i1 true)), !tbaa !22
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep814, <4 x i1> splat (i1 true)), !tbaa !22
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep815, <4 x i1> splat (i1 true)), !tbaa !22
  %index.next816 = add nuw i32 %index805, 16      ; 2 uses
  %vec.ind.next817 = add nuw nsw <4 x i32> %vec.ind806, splat (i32 16)
  %i.jl = icmp eq i32 %index.next816, %n.vec803
  br i1 %i.jl, label %middle.block818, label %vector.body804, !llvm.loop !239

middle.block818:                                  ; preds = %vector.body804
  %cmp.n819 = icmp eq i32 %i.iw, %n.vec803
  br i1 %cmp.n819, label %._crit_edge340, label %vec.epilog.iter.check824

vec.epilog.iter.check824:                         ; preds = %middle.block818
  %min.epilog.iters.check825 = icmp eq i32 %i.jc, 0
  br i1 %min.epilog.iters.check825, label %vec.epilog.scalar.ph823.preheader, label %vec.epilog.ph826, !prof !44

vec.epilog.ph826:                                 ; preds = %vector.main.loop.iter.check800, %vec.epilog.iter.check824
  %vec.epilog.resume.val820 = phi i32 [ %n.vec803, %vec.epilog.iter.check824 ], [ 0, %vector.main.loop.iter.check800 ]
  %bc.resume.val821 = phi i32 [ %i.jd, %vec.epilog.iter.check824 ], [ 1, %vector.main.loop.iter.check800 ]
  %n.vec827 = and i32 %i.iw, -4                   ; 3 uses
  %i.jm = or disjoint i32 %n.vec827, 1
  %broadcast.splatinsert828 = insertelement <4 x i32> poison, i32 %bc.resume.val821, i64 0
  %broadcast.splat829 = shufflevector <4 x i32> %broadcast.splatinsert828, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction830 = add nuw nsw <4 x i32> %broadcast.splat829, <i32 0, i32 1, i32 2, i32 3>
  %i.jn = load i32, ptr %8, align 4, !tbaa !13
  %i.jo = mul nsw i32 %i.jn, %i.jb
  %broadcast.splatinsert834 = insertelement <4 x i32> poison, i32 %i.jo, i64 0
  %broadcast.splat835 = shufflevector <4 x i32> %broadcast.splatinsert834, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body831

vec.epilog.vector.body831:                        ; preds = %vec.epilog.vector.body831, %vec.epilog.ph826
  %index832 = phi i32 [ %vec.epilog.resume.val820, %vec.epilog.ph826 ], [ %index.next837, %vec.epilog.vector.body831 ]
  %vec.ind833 = phi <4 x i32> [ %induction830, %vec.epilog.ph826 ], [ %vec.ind.next838, %vec.epilog.vector.body831 ] ; 2 uses
  %i.jp = add nsw <4 x i32> %broadcast.splat835, %vec.ind833
  %i.jq = sext <4 x i32> %i.jp to <4 x i64>
  %wide.gep836 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.jq
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep836, <4 x i1> splat (i1 true)), !tbaa !22
  %index.next837 = add nuw i32 %index832, 4       ; 2 uses
  %vec.ind.next838 = add nuw nsw <4 x i32> %vec.ind833, splat (i32 4)
  %i.jr = icmp eq i32 %index.next837, %n.vec827
  br i1 %i.jr, label %vec.epilog.middle.block839, label %vec.epilog.vector.body831, !llvm.loop !240

vec.epilog.middle.block839:                       ; preds = %vec.epilog.vector.body831
  %cmp.n840 = icmp eq i32 %i.iw, %n.vec827
  br i1 %cmp.n840, label %._crit_edge340, label %vec.epilog.scalar.ph823.preheader

vec.epilog.scalar.ph823.preheader:                ; preds = %iter.check822, %vec.epilog.iter.check824, %vec.epilog.middle.block839
  %storemerge181337.ph = phi i32 [ 1, %iter.check822 ], [ %i.jd, %vec.epilog.iter.check824 ], [ %i.jm, %vec.epilog.middle.block839 ]
  %i.js = load i32, ptr %8, align 4, !tbaa !13
  %i.jt = mul nsw i32 %i.js, %i.jb
  br label %vec.epilog.scalar.ph823

vec.epilog.scalar.ph823:                          ; preds = %vec.epilog.scalar.ph823.preheader, %vec.epilog.scalar.ph823
  %storemerge181337 = phi i32 [ %i.jx, %vec.epilog.scalar.ph823 ], [ %storemerge181337.ph, %vec.epilog.scalar.ph823.preheader ] ; 2 uses
  %i.ju = add nsw i32 %i.jt, %storemerge181337
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jv
  store double -1.000000e+10, ptr %i.jw, align 8, !tbaa !22
  %i.jx = add nuw nsw i32 %storemerge181337, 1    ; 2 uses
  %exitcond456.not = icmp eq i32 %i.jx, %i.iy
  br i1 %exitcond456.not, label %._crit_edge340, label %vec.epilog.scalar.ph823, !llvm.loop !241

._crit_edge340:                                   ; preds = %vec.epilog.scalar.ph823, %middle.block818, %vec.epilog.middle.block839, %.thread536, %bb.z
  %storemerge179353541 = phi i32 [ 1, %.thread536 ], [ %i.iy, %bb.z ], [ %i.iy, %middle.block818 ], [ %i.iy, %vec.epilog.middle.block839 ], [ %i.iy, %vec.epilog.scalar.ph823 ] ; 4 uses
  %storemerge185.in346540 = phi i32 [ %.sink603, %.thread536 ], [ %i.iz, %bb.z ], [ %i.iz, %middle.block818 ], [ %i.iz, %vec.epilog.middle.block839 ], [ %i.iz, %vec.epilog.scalar.ph823 ] ; 6 uses
  %.not184341 = icmp sgt i32 %storemerge179353541, %storemerge185.in346540
  br i1 %.not184341, label %._crit_edge340.._crit_edge345_crit_edge, label %.lr.ph344

._crit_edge340.._crit_edge345_crit_edge:          ; preds = %._crit_edge340
  %.pre496 = add nsw i32 %storemerge185.in346540, 1
  br label %._crit_edge345

.lr.ph344:                                        ; preds = %._crit_edge340
  %i.jy = mul nsw i64 %indvars.iv462, %i.iu
  %i.jz = add nsw i64 %indvars.iv462, -1          ; 5 uses
  %i.ka = sext i32 %storemerge179353541 to i64    ; 2 uses
  %i.kb = add i32 %storemerge185.in346540, 1      ; 4 uses
  %invariant.gep583 = getelementptr [8 x i8], ptr %i.e, i64 %i.jy ; 5 uses
  %i.kc = sub i32 %i.kb, %storemerge179353541
  %i.kd = sub i32 %storemerge185.in346540, %storemerge179353541
  %xtraiter989 = and i32 %i.kc, 3                 ; 2 uses
  %lcmp.mod990.not = icmp eq i32 %xtraiter989, 0
  br i1 %lcmp.mod990.not, label %.prol.loopexit988, label %.prol.preheader987

.prol.preheader987:                               ; preds = %.lr.ph344
  %i.ke = load i32, ptr %8, align 4, !tbaa !13
  %i.kf = sext i32 %i.ke to i64
  %i.kg = mul nsw i64 %i.jz, %i.kf
  %i.kh = getelementptr [8 x i8], ptr %i.f, i64 %i.kg
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.prol.preheader987
  %indvars.iv457.prol = phi i64 [ %i.ka, %.prol.preheader987 ], [ %indvars.iv.next458.prol, %bb.aa ] ; 3 uses
  %prol.iter991 = phi i32 [ 0, %.prol.preheader987 ], [ %prol.iter991.next, %bb.aa ]
  %gep584.prol = getelementptr [8 x i8], ptr %invariant.gep583, i64 %indvars.iv457.prol
  %i.ki = load double, ptr %gep584.prol, align 8, !tbaa !22
  %i.kj = getelementptr [8 x i8], ptr %i.kh, i64 %indvars.iv457.prol
  store double %i.ki, ptr %i.kj, align 8, !tbaa !22
  %indvars.iv.next458.prol = add nsw i64 %indvars.iv457.prol, 1 ; 2 uses
  %prol.iter991.next = add i32 %prol.iter991, 1   ; 2 uses
  %prol.iter991.cmp.not = icmp eq i32 %prol.iter991.next, %xtraiter989
  br i1 %prol.iter991.cmp.not, label %.prol.loopexit988, label %bb.aa, !llvm.loop !242

.prol.loopexit988:                                ; preds = %bb.aa, %.lr.ph344
  %indvars.iv457.unr = phi i64 [ %i.ka, %.lr.ph344 ], [ %indvars.iv.next458.prol, %bb.aa ]
  %i.kk = icmp ult i32 %i.kd, 3
  br i1 %i.kk, label %._crit_edge345, label %.lr.ph344.new

.lr.ph344.new:                                    ; preds = %.prol.loopexit988
  %i.kl = load i32, ptr %8, align 4, !tbaa !13    ; 4 uses
  %i.km = sext i32 %i.kl to i64
  %i.kn = mul nsw i64 %i.jz, %i.km
  %i.ko = getelementptr [8 x i8], ptr %i.f, i64 %i.kn
  %i.kp = sext i32 %i.kl to i64
  %i.kq = mul nsw i64 %i.jz, %i.kp
  %i.kr = getelementptr [8 x i8], ptr %i.f, i64 %i.kq
  %i.ks = sext i32 %i.kl to i64
  %i.kt = mul nsw i64 %i.jz, %i.ks
  %i.ku = getelementptr [8 x i8], ptr %i.f, i64 %i.kt
  %i.kv = sext i32 %i.kl to i64
  %i.kw = mul nsw i64 %i.jz, %i.kv
  %i.kx = getelementptr [8 x i8], ptr %i.f, i64 %i.kw
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph344.new
  %indvars.iv457 = phi i64 [ %indvars.iv457.unr, %.lr.ph344.new ], [ %indvars.iv.next458.3, %bb.ab ] ; 6 uses
  %gep584 = getelementptr [8 x i8], ptr %invariant.gep583, i64 %indvars.iv457
  %i.ky = load double, ptr %gep584, align 8, !tbaa !22
  %i.kz = getelementptr [8 x i8], ptr %i.ko, i64 %indvars.iv457
  store double %i.ky, ptr %i.kz, align 8, !tbaa !22
  %indvars.iv.next458 = add nsw i64 %indvars.iv457, 1 ; 2 uses
  %gep584.1 = getelementptr [8 x i8], ptr %invariant.gep583, i64 %indvars.iv.next458
  %i.la = load double, ptr %gep584.1, align 8, !tbaa !22
  %i.lb = getelementptr [8 x i8], ptr %i.kr, i64 %indvars.iv.next458
  store double %i.la, ptr %i.lb, align 8, !tbaa !22
  %indvars.iv.next458.1 = add nsw i64 %indvars.iv457, 2 ; 2 uses
  %gep584.2 = getelementptr [8 x i8], ptr %invariant.gep583, i64 %indvars.iv.next458.1
  %i.lc = load double, ptr %gep584.2, align 8, !tbaa !22
  %i.ld = getelementptr [8 x i8], ptr %i.ku, i64 %indvars.iv.next458.1
  store double %i.lc, ptr %i.ld, align 8, !tbaa !22
  %indvars.iv.next458.2 = add nsw i64 %indvars.iv457, 3 ; 2 uses
  %gep584.3 = getelementptr [8 x i8], ptr %invariant.gep583, i64 %indvars.iv.next458.2
  %i.le = load double, ptr %gep584.3, align 8, !tbaa !22
  %i.lf = getelementptr [8 x i8], ptr %i.kx, i64 %indvars.iv.next458.2
  store double %i.le, ptr %i.lf, align 8, !tbaa !22
  %indvars.iv.next458.3 = add nsw i64 %indvars.iv457, 4 ; 2 uses
  %i.lg = trunc i64 %indvars.iv.next458.3 to i32
  %exitcond461.not.3 = icmp eq i32 %i.kb, %i.lg
end_hunk_2
