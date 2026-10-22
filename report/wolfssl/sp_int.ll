Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sp_int?download=true
inline.NumInlined: 293
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_sp_invmod_div:bb.a
  %i.ph = zext i64 %i.pg to i128
  %i.pi = add nsw i128 %.173.i307, %i.ph          ; 2 uses
  %i.pj = trunc i128 %i.pi to i64
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %indvars.iv90.i306
  store i64 %i.pj, ptr %i.pk, align 8, !tbaa !36
  %i.pl = ashr i128 %i.pi, 64
  %indvars.iv.next91.i308 = add nuw nsw i64 %indvars.iv90.i306, 1 ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %indvars.iv.next91.i308
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !36
  %i.po = zext i64 %i.pn to i128
  %i.pp = add nsw i128 %i.pl, %i.po               ; 2 uses
  %i.pq = trunc i128 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %indvars.iv.next91.i308
  store i64 %i.pq, ptr %i.pr, align 8, !tbaa !36
  %i.ps = ashr i128 %i.pp, 64
  %indvars.iv.next91.i308.1 = add nuw nsw i64 %indvars.iv90.i306, 2 ; 2 uses
  %exitcond94.not.i309.1 = icmp eq i64 %indvars.iv.next91.i308.1, %zext424
  br i1 %exitcond94.not.i309.1, label %.preheader.i296, label %.lr.ph74.i304, !llvm.loop !18

._crit_edge.i294:                                 ; preds = %.critedge2.i291
  store i16 %.2.lcssa.ph.i323, ptr %.091401, align 8, !tbaa !40
  br label %.preheader.i296

.preheader.i296:                                  ; preds = %.lr.ph74.i304.prol.loopexit, %.lr.ph74.i304, %._crit_edge.i294
  %.pre-phi433 = phi i64 [ %.2.lcssa.ph.in.i321, %._crit_edge.i294 ], [ %zext424, %.lr.ph74.i304 ], [ %zext424, %.lr.ph74.i304.prol.loopexit ] ; 2 uses
  %i.pt = icmp sgt i64 %.pre-phi433, 0
  br i1 %i.pt, label %.lr.ph520, label %.sink.split

bb.ax:                                            ; preds = %.lr.ph520
  %indvars.iv.next96.i301 = add nsw i64 %indvars.iv95.i298519, -1
  %i.pu = icmp sgt i64 %indvars.iv95.i298519, 1
  br i1 %i.pu, label %.lr.ph520, label %.sink.split, !llvm.loop !19

.lr.ph520:                                        ; preds = %.preheader.i296, %bb.ax
  %indvars.iv95.i298519 = phi i64 [ %indvars.iv.next96.i301, %bb.ax ], [ %.pre-phi433, %.preheader.i296 ] ; 4 uses
  %i.pv = getelementptr [8 x i8], ptr %.091401, i64 %indvars.iv95.i298519
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !36
  %.not56.i302 = icmp eq i64 %i.pw, 0
  br i1 %.not56.i302, label %bb.ax, label %.split.loop.exit.i303, !llvm.loop !19

.split.loop.exit.i303:                            ; preds = %.lr.ph520
  %i.px = trunc i64 %indvars.iv95.i298519 to i16
  br label %.sink.split

_sp_sub_off.exit326:                              ; preds = %.critedge102
  br i1 %i.oe, label %bb.ay, label %sp_copy.exit

.sink.split:                                      ; preds = %bb.ax, %.preheader.i296, %.split.loop.exit.i303, %.critedge.i290
  %.0.in.lcssa.i300.sink = phi i16 [ 0, %.critedge.i290 ], [ %i.px, %.split.loop.exit.i303 ], [ 0, %.preheader.i296 ], [ 0, %bb.ax ]
  store i16 %.0.in.lcssa.i300.sink, ptr %.091401, align 8, !tbaa !40
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split, %_sp_sub_off.exit326
  %.not.i327 = icmp eq ptr %.091401, %6           ; 2 uses
  %spec.store.select.mux.i = select i1 %.not.i327, i32 0, i32 -98
  br i1 %.not.i327, label %sp_copy.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.py = load i16, ptr %.091401, align 8, !tbaa !40 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !39
  %i.qb = icmp ugt i16 %i.py, %i.qa
  br i1 %i.qb, label %sp_copy.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.az
  %i.qc = icmp eq i16 %i.py, 0
  br i1 %i.qc, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.thread.i
  %i.qd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.qd, align 8, !tbaa !36
  br label %_sp_copy.exit.i

bb.bb:                                            ; preds = %.thread.i
  %i.qe = zext i16 %i.py to i64
  %i.qf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.qg = getelementptr inbounds nuw i8, ptr %.091401, i64 8
  %i.qh = shl nuw nsw i64 %i.qe, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.qf, ptr nonnull readonly align 8 %i.qg, i64 %i.qh, i1 false)
  %.pre.i.i = load i16, ptr %.091401, align 8, !tbaa !40
  br label %_sp_copy.exit.i

_sp_copy.exit.i:                                  ; preds = %bb.bb, %bb.ba
  %i.qi = phi i16 [ %.pre.i.i, %bb.bb ], [ 0, %bb.ba ]
  store i16 %i.qi, ptr %6, align 8, !tbaa !40
  br label %sp_copy.exit

sp_copy.exit:                                     ; preds = %bb.ac, %.thread, %bb.a, %_sp_copy.exit.i, %bb.az, %bb.ay, %_sp_sub_off.exit326
  %.6 = phi i32 [ -98, %bb.az ], [ -98, %_sp_sub_off.exit326 ], [ %spec.store.select.mux.i, %bb.ay ], [ 0, %_sp_copy.exit.i ], [ -98, %bb.a ], [ %i.af, %.thread ], [ %i.hi, %bb.ac ]
  ret i32 %.6
}

declare ptr @wolfSSL_Malloc(i64 noundef) local_unnamed_addr #15

declare void @wolfSSL_Free(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc range(i32 -98, 1) i32 @sp_prime_miller_rabin(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef captures(none) initializes((0, 4)) %2, ptr nofree noundef captures(address) %3, ptr nofree noundef captures(address) %4) unnamed_addr #13 {
bb.a:
  store i32 0, ptr %2, align 4, !tbaa !50
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_sp_cmp.exit72, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.c = icmp ugt i16 %i.b, 1
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i16 %i.b, 0
  br i1 %i.d, label %_sp_cmp.exit72, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !36
  %i.g = icmp ugt i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_sp_cmp.exit72

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.h = icmp eq ptr %0, null                     ; 2 uses
  %i.i = icmp eq ptr %3, null                     ; 2 uses
  %.not.i = icmp eq ptr %0, %3
  %i.j = or i1 %i.h, %.not.i
  %brmerge.i = or i1 %i.i, %i.j
  br i1 %brmerge.i, label %thread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i16, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !39
  %i.n = icmp ugt i16 %i.k, %i.m
  br i1 %i.n, label %thread-pre-split, label %.thread.i

.thread.i:                                        ; preds = %bb.f
  %i.o = icmp eq i16 %i.k, 0
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !36
  br label %_sp_copy.exit.i

bb.h:                                             ; preds = %.thread.i
  %i.q = zext i16 %i.k to i64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull readonly align 8 %i.s, i64 %i.t, i1 false)
  %.pre.i.i = load i16, ptr %0, align 8, !tbaa !40
  br label %_sp_copy.exit.i

_sp_copy.exit.i:                                  ; preds = %bb.h, %bb.g
  %i.u = phi i16 [ %.pre.i.i, %bb.h ], [ 0, %bb.g ] ; 2 uses
  store i16 %i.u, ptr %3, align 8, !tbaa !40
  br label %bb.i

thread-pre-split:                                 ; preds = %bb.e, %bb.f
  %.pr = load i16, ptr %3, align 8, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split, %_sp_copy.exit.i
  %i.v = phi i16 [ %.pr, %thread-pre-split ], [ %i.u, %_sp_copy.exit.i ] ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !36
  %i.y = add i64 %i.x, -1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !36
  %i.z = icmp eq i16 %i.v, 0
  br i1 %i.z, label %sp_cnt_lsb.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %i.aa = zext i16 %i.v to i32
  %i.ab = shl nuw nsw i32 %i.aa, 6
  %wide.trip.count.i = zext i16 %i.v to i64       ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %.02024.i = phi i32 [ 0, %.preheader.i ], [ %i.af, %bb.k ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !36 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.af = add nuw nsw i32 %.02024.i, 64
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %..critedge_crit_edge.i, label %bb.j, !llvm.loop !194

..critedge_crit_edge.i:                           ; preds = %bb.k
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %wide.trip.count.i
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !36
  br label %.critedge.i, !llvm.loop !194

.critedge.i:                                      ; preds = %bb.j, %..critedge_crit_edge.i
  %i.ag = phi i64 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.ad, %bb.j ] ; 16 uses
  %.020.lcssa.i = phi i32 [ %i.ab, %..critedge_crit_edge.i ], [ %.02024.i, %bb.j ] ; 2 uses
  %i.ah = and i64 %i.ag, 15
  %5 = getelementptr inbounds nuw [4 x i8], ptr @sp_lnz, i64 %i.ah
  %6 = load i32, ptr %5, align 4, !tbaa !50       ; 2 uses
  %.not23.i = icmp eq i32 %6, 4
  br i1 %.not23.i, label %bb.l, label %.loopexit.split.loop.exit26.i

bb.l:                                             ; preds = %.critedge.i
  %7 = lshr i64 %i.ag, 4
  %8 = and i64 %7, 15
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @sp_lnz, i64 %8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !50 ; 2 uses
  %.not23.1.i = icmp eq i32 %i.aj, 4
  br i1 %.not23.1.i, label %bb.m, label %.loopexit.split.loop.exit26.i

bb.m:                                             ; preds = %bb.l
  %i.ak = lshr i64 %i.ag, 8
  %i.al = and i64 %i.ak, 15
  %9 = getelementptr inbounds nuw [4 x i8], ptr @sp_lnz, i64 %i.al
  %10 = load i32, ptr %9, align 4, !tbaa !50      ; 2 uses
  %.not23.2.i.a = icmp eq i32 %10, 4
  br i1 %.not23.2.i.a, label %bb.n, label %.loopexit.split.loop.exit26.i

bb.n:                                             ; preds = %bb.m
  %i.am = lshr i64 %i.ag, 12
  %i.an = and i64 %i.am, 15
  %11 = getelementptr inbounds nuw [4 x i8], ptr @sp_lnz, i64 %i.an
  %12 = load i32, ptr %11, align 4, !tbaa !50     ; 2 uses
  %.not23.3.i.a = icmp eq i32 %12, 4
  br i1 %.not23.3.i.a, label %bb.o, label %.loopexit.split.loop.exit26.i

bb.o:                                             ; preds = %bb.n
  %i.ao = lshr i64 %i.ag, 16
  %i.ap = and i64 %i.ao, 15
  %13 = getelementptr inbounds nuw [4 x i8], ptr @sp_lnz, i64 %i.ap
  %14 = load i32, ptr %13, align 4, !tbaa !50     ; 2 uses
  %.not23.4.i.a = icmp eq i32 %14, 4
  br i1 %.not23.4.i.a, label %bb.p, label %.loopexit.split.loop.exit26.i

bb.p:                                             ; preds = %bb.o
  %i.aq = lshr i64 %i.ag, 20
  %i.ar = and i64 %i.aq, 15
  %15 = getelementptr inbounds nuw [4 x i8], ptr @sp_lnz, i64 %i.ar
  %16 = load i32, ptr %15, align 4, !tbaa !50     ; 2 uses
  %.not23.5.i.a = icmp eq i32 %16, 4
  br i1 %.not23.5.i.a, label %bb.q, label %.loopexit.split.loop.exit26.i

bb.q:                                             ; preds = %bb.p
  %i.as = lshr i64 %i.ag, 24
  %i.at = and i64 %i.as, 15
  %17 = getelementptr inbounds nuw [4 x i8], ptr @sp_lnz, i64 %i.at
  %18 = load i32, ptr %17, align 4, !tbaa !50     ; 2 uses
  %.not23.6.i.a = icmp eq i32 %18, 4
  br i1 %.not23.6.i.a, label %bb.r, label %.loopexit.split.loop.exit26.i

bb.r:                                             ; preds = %bb.q
  %i.au = lshr i64 %i.ag, 28
  %i.av = and i64 %i.au, 15
  %19 = getelementptr inbounds nuw [4 x i8], ptr @sp_lnz, i64 %i.av
  %20 = load i32, ptr %19, align 4, !tbaa !50     ; 2 uses
  %.not23.7.i.a = icmp eq i32 %20, 4
  br i1 %.not23.7.i.a, label %bb.s, label %.loopexit.split.loop.exit26.i

bb.s:                                             ; preds = %bb.r
  %i.aw = lshr i64 %i.ag, 32
  %i.ax = and i64 %i.aw, 15
  %21 = getelementptr inbounds nuw [4 x i8], ptr @sp_lnz, i64 %i.ax
  %22 = load i32, ptr %21, align 4, !tbaa !50     ; 2 uses
  %.not23.8.i.a = icmp eq i32 %22, 4
  br i1 %.not23.8.i.a, label %bb.t, label %.loopexit.split.loop.exit26.i

bb.t:                                             ; preds = %bb.s
  %i.ay = lshr i64 %i.ag, 36
  %i.az = and i64 %i.ay, 15
  %23 = getelementptr inbounds nuw [4 x i8], ptr @sp_lnz, i64 %i.az
  %24 = load i32, ptr %23, align 4, !tbaa !50     ; 2 uses
  %.not23.9.i.a = icmp eq i32 %24, 4
  br i1 %.not23.9.i.a, label %bb.u, label %.loopexit.split.loop.exit26.i

bb.u:                                             ; preds = %bb.t
  %i.ba = lshr i64 %i.ag, 40
  %i.bb = and i64 %i.ba, 15
  %25 = getelementptr inbounds nuw [4 x i8], ptr @sp_lnz, i64 %i.bb
  %26 = load i32, ptr %25, align 4, !tbaa !50     ; 2 uses
  %.not23.10.i.a = icmp eq i32 %26, 4
  br i1 %.not23.10.i.a, label %bb.v, label %.loopexit.split.loop.exit26.i

bb.v:                                             ; preds = %bb.u
  %i.bc = lshr i64 %i.ag, 44
  %i.bd = and i64 %i.bc, 15
  %27 = getelementptr inbounds nuw [4 x i8], ptr @sp_lnz, i64 %i.bd
  %28 = load i32, ptr %27, align 4, !tbaa !50     ; 2 uses
  %.not23.11.i.a = icmp eq i32 %28, 4
  br i1 %.not23.11.i.a, label %bb.w, label %.loopexit.split.loop.exit26.i

bb.w:                                             ; preds = %bb.v
  %i.be = lshr i64 %i.ag, 48
  %i.bf = and i64 %i.be, 15
  %29 = getelementptr inbounds nuw [4 x i8], ptr @sp_lnz, i64 %i.bf
  %30 = load i32, ptr %29, align 4, !tbaa !50     ; 2 uses
  %.not23.12.i.a = icmp eq i32 %30, 4
  br i1 %.not23.12.i.a, label %bb.x, label %.loopexit.split.loop.exit26.i

bb.x:                                             ; preds = %bb.w
  %i.bg = lshr i64 %i.ag, 52
  %i.bh = and i64 %i.bg, 15
  %31 = getelementptr inbounds nuw [4 x i8], ptr @sp_lnz, i64 %i.bh
  %32 = load i32, ptr %31, align 4, !tbaa !50     ; 2 uses
  %.not23.13.i.a = icmp eq i32 %32, 4
  br i1 %.not23.13.i.a, label %bb.y, label %.loopexit.split.loop.exit26.i

bb.y:                                             ; preds = %bb.x
  %i.bi = lshr i64 %i.ag, 56
  %i.bj = and i64 %i.bi, 15
  %33 = getelementptr inbounds nuw [4 x i8], ptr @sp_lnz, i64 %i.bj
  %34 = load i32, ptr %33, align 4, !tbaa !50     ; 2 uses
  %.not23.14.i.a = icmp eq i32 %34, 4
  br i1 %.not23.14.i.a, label %bb.z, label %.loopexit.split.loop.exit26.i

bb.z:                                             ; preds = %bb.y
  %i.bk = lshr i64 %i.ag, 60
  %35 = getelementptr inbounds nuw [4 x i8], ptr @sp_lnz, i64 %i.bk
  %36 = load i32, ptr %35, align 4, !tbaa !50     ; 2 uses
  %.not23.15.i.a = icmp eq i32 %36, 4
  br i1 %.not23.15.i.a, label %sp_cnt_lsb.exit, label %.loopexit.split.loop.exit26.i

.loopexit.split.loop.exit26.i:                    ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %.critedge.i
  %.01829.lcssa.wide.i = phi i32 [ 0, %.critedge.i ], [ 4, %bb.l ], [ 8, %bb.m ], [ 12, %bb.n ], [ 16, %bb.o ], [ 20, %bb.p ], [ 24, %bb.q ], [ 28, %bb.r ], [ 32, %bb.s ], [ 36, %bb.t ], [ 40, %bb.u ], [ 44, %bb.v ], [ 48, %bb.w ], [ 52, %bb.x ], [ 56, %bb.y ], [ 60, %bb.z ]
  %.lcssa.i = phi i32 [ %6, %.critedge.i ], [ %i.aj, %bb.l ], [ %10, %bb.m ], [ %12, %bb.n ], [ %14, %bb.o ], [ %16, %bb.p ], [ %18, %bb.q ], [ %20, %bb.r ], [ %22, %bb.s ], [ %24, %bb.t ], [ %26, %bb.u ], [ %28, %bb.v ], [ %30, %bb.w ], [ %32, %bb.x ], [ %34, %bb.y ], [ %36, %bb.z ]
  %37 = or disjoint i32 %.01829.lcssa.wide.i, %.020.lcssa.i
  %38 = add i32 %37, %.lcssa.i
  br label %sp_cnt_lsb.exit

sp_cnt_lsb.exit:                                  ; preds = %bb.i, %bb.z, %.loopexit.split.loop.exit26.i
  %.4.i = phi i32 [ 0, %bb.i ], [ %.020.lcssa.i, %bb.z ], [ %38, %.loopexit.split.loop.exit26.i ] ; 5 uses
  %i.bl = icmp slt i32 %.4.i, 0
  %i.bm = tail call i32 @llvm.smax.i32(i32 %.4.i, i32 0)
  %i.bn = lshr i32 %i.bm, 6                       ; 6 uses
  %or.cond.i = or i1 %i.i, %i.bl
  br i1 %or.cond.i, label %sp_rshb.exit, label %bb.aa

bb.aa:                                            ; preds = %sp_cnt_lsb.exit
  %i.bo = zext i16 %i.v to i32                    ; 2 uses
  %.not.i46 = icmp samesign ult i32 %i.bn, %i.bo
  br i1 %.not.i46, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store volatile i16 0, ptr %4, align 8, !tbaa !34
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store volatile i64 0, ptr %i.bp, align 8, !tbaa !36
  br label %sp_rshb.exit

bb.ac:                                            ; preds = %bb.aa
  %i.bq = sub nuw nsw i32 %i.bo, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !39
  %i.bt = zext i16 %i.bs to i32
  %i.bu = icmp samesign ugt i32 %i.bq, %i.bt
  br i1 %i.bu, label %sp_rshb.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = and i32 %.4.i, 63                       ; 3 uses
  %i.bw = icmp eq i32 %i.bv, 0
  %i.bx = trunc nuw i32 %i.bn to i16              ; 2 uses
  br i1 %i.bw, label %bb.ae, label %.preheader.i47

.preheader.i47:                                   ; preds = %bb.ad
  %i.by = xor i16 %i.bx, -1
  %i.bz = add i16 %i.v, %i.by                     ; 5 uses
  %.not66.i = icmp eq i16 %i.bz, 0
  %.pre.i52 = zext nneg i32 %i.bv to i64          ; 5 uses
  br i1 %.not66.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i47
  %i.ca = sub nuw nsw i32 64, %i.bv
  %i.cb = zext nneg i32 %i.ca to i64              ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.cd = zext nneg i32 %i.bn to i64              ; 2 uses
  %wide.trip.count.i48 = zext i16 %i.bz to i64    ; 8 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cd ; 5 uses
  %min.iters.check = icmp ult i16 %i.bz, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ce = shl nuw nsw i64 %wide.trip.count.i48, 3
  %i.cf = getelementptr i8, ptr %4, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %i.ch = add nuw nsw i64 %i.cd, %wide.trip.count.i48
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %i.cj = getelementptr i8, ptr %3, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  %bound0 = icmp ult ptr %i.cc, %i.ck
  %bound1 = icmp ult ptr %invariant.gep.i, %i.cg
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i48, 65532    ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cb, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert177 = insertelement <2 x i64> poison, i64 %.pre.i52, i64 0
  %broadcast.splat178 = shufflevector <2 x i64> %broadcast.splatinsert177, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load = load <2 x i64>, ptr %i.cl, align 8, !tbaa !36, !alias.scope !201
  %wide.load179 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !36, !alias.scope !201
  %i.cn = lshr <2 x i64> %wide.load, %broadcast.splat178
  %i.co = lshr <2 x i64> %wide.load179, %broadcast.splat178
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %wide.load180 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !36, !alias.scope !201
  %wide.load181 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !36, !alias.scope !201
  %i.cr = shl <2 x i64> %wide.load180, %broadcast.splat
  %i.cs = shl <2 x i64> %wide.load181, %broadcast.splat
  %i.ct = or <2 x i64> %i.cr, %i.cn
  %i.cu = or <2 x i64> %i.cs, %i.co
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %index ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <2 x i64> %i.ct, ptr %i.cv, align 8, !tbaa !36, !alias.scope !202, !noalias !201
  store <2 x i64> %i.cu, ptr %i.cw, align 8, !tbaa !36, !alias.scope !202, !noalias !201
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i48
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i49.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i48, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i49.ph ; 2 uses
  %i.cy = load i64, ptr %gep.i.prol, align 8, !tbaa !36
  %i.cz = lshr i64 %i.cy, %.pre.i52
  %i.da = getelementptr inbounds nuw i8, ptr %gep.i.prol, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !36
  %i.dc = shl i64 %i.db, %i.cb
  %i.dd = or i64 %i.dc, %i.cz
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.i49.ph
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !36
  %indvars.iv.next.i50.prol = or disjoint i64 %indvars.iv.i49.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i49.unr = phi i64 [ %indvars.iv.i49.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i50.prol, %scalar.ph.prol ]
  %i.df = add nsw i64 %wide.trip.count.i48, -1
  %i.dg = icmp eq i64 %indvars.iv.i49.ph, %i.df
  br i1 %i.dg, label %._crit_edge.loopexit.i, label %scalar.ph

bb.ae:                                            ; preds = %bb.ad
  %i.dh = sub nuw i16 %i.v, %i.bx                 ; 2 uses
  store i16 %i.dh, ptr %4, align 8, !tbaa !40
  %i.di = icmp eq ptr %4, %3
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.dk = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.dl = zext i16 %i.dh to i64
  %i.dm = shl nuw nsw i64 %i.dl, 3                ; 2 uses
  br i1 %i.di, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dk
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dj, ptr nonnull align 8 %i.dn, i64 %i.dm, i1 false)
  br label %sp_rshb.exit

bb.ag:                                            ; preds = %bb.ae
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.dk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dj, ptr nonnull readonly align 8 %i.do, i64 %i.dm, i1 false)
  br label %sp_rshb.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i49 = phi i64 [ %indvars.iv.next.i50.1, %scalar.ph ], [ %indvars.iv.i49.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i49 ; 2 uses
  %i.dp = load i64, ptr %gep.i, align 8, !tbaa !36
  %i.dq = lshr i64 %i.dp, %.pre.i52
  %i.dr = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !36
  %i.dt = shl i64 %i.ds, %i.cb
  %i.du = or i64 %i.dt, %i.dq
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.i49
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !36
  %indvars.iv.next.i50 = add nuw nsw i64 %indvars.iv.i49, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i50 ; 2 uses
  %i.dw = load i64, ptr %gep.i.1, align 8, !tbaa !36
  %i.dx = lshr i64 %i.dw, %.pre.i52
  %i.dy = getelementptr inbounds nuw i8, ptr %gep.i.1, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !36
  %i.ea = shl i64 %i.dz, %i.cb
  %i.eb = or i64 %i.ea, %i.dx
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.next.i50
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !36
  %indvars.iv.next.i50.1 = add nuw nsw i64 %indvars.iv.i49, 2 ; 2 uses
  %exitcond.not.i51.1 = icmp eq i64 %indvars.iv.next.i50.1, %wide.trip.count.i48
  br i1 %exitcond.not.i51.1, label %._crit_edge.loopexit.i, label %scalar.ph, !llvm.loop !199

._crit_edge.loopexit.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ed = zext i16 %i.bz to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.preheader.i47, %._crit_edge.loopexit.i
  %.pre-phi = phi i64 [ %wide.trip.count.i48, %._crit_edge.loopexit.i ], [ 0, %.preheader.i47 ]
  %.lcssa62.i = phi i32 [ %i.ed, %._crit_edge.loopexit.i ], [ 0, %.preheader.i47 ]
  %i.ee = add nuw nsw i32 %.lcssa62.i, %i.bn
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !36
  %i.ei = lshr i64 %i.eh, %.pre.i52               ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.pre-phi
  store i64 %i.ei, ptr %i.ek, align 8, !tbaa !36
  %i.el = icmp ne i64 %i.ei, 0
  %i.em = zext i1 %i.el to i16
  %i.en = add i16 %i.bz, %i.em
  store i16 %i.en, ptr %4, align 8, !tbaa !40
  br label %sp_rshb.exit

sp_rshb.exit:                                     ; preds = %sp_cnt_lsb.exit, %bb.ab, %bb.ac, %bb.af, %bb.ag, %._crit_edge.i
  %i.eo = icmp eq ptr %4, null
  %or.cond3.not16.i.not = or i1 %i.eo, %i.h
  br i1 %or.cond3.not16.i.not, label %_sp_cmp.exit72, label %bb.ah

bb.ah:                                            ; preds = %sp_rshb.exit
  %i.ep = load i16, ptr %4, align 8, !tbaa !40
  %i.eq = zext i16 %i.ep to i32
  %i.er = tail call i32 @sp_exptmod_ex(ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %4, i32 noundef %i.eq, ptr noundef nonnull readonly %0, ptr noundef nonnull %1) ; 2 uses
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.ai, label %_sp_cmp.exit72

end_hunk_0
