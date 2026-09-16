Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/utext?download=true
inline.NumInlined: 135
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL15ucstrTextAccessP5UTextla:bb.a
  %indvars.iv = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 7 uses
  %i.z = getelementptr inbounds [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !23
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.lr.ph
  %i.ac = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  store i64 %indvars.iv, ptr %i.q, align 8, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ac, ptr %i.ae, align 4, !tbaa !30
  %.not = icmp slt i64 %1, %indvars.iv
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %1 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !23
  %i.ah = and i16 %i.ag, -1024
  %i.ai = icmp eq i16 %i.ah, -9216
  %i.aj = icmp ne i64 %1, 0
  %or.cond3 = and i1 %i.aj, %i.ai
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %i.af, i64 -2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !23
  %i.am = and i16 %i.al, -1024
  %i.an = icmp eq i16 %i.am, -10240
  %i.ao = sext i1 %i.an to i64
  %spec.select92 = add nsw i64 %1, %i.ao
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.h
  %.084 = phi i64 [ %1, %bb.h ], [ %indvars.iv, %bb.g ], [ %spec.select92, %bb.i ]
  store i64 %indvars.iv, ptr %i.d, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !29
  %i.ar = and i32 %i.aq, -3
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !29
  br label %bb.p

bb.k:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.k, %bb.f
  %.081.lcssa = phi i32 [ %i.w, %bb.f ], [ %.082, %bb.k ] ; 3 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %1 ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !23
  %i.au = and i16 %i.at, -1024
  %i.av = icmp eq i16 %i.au, -9216
  %i.aw = icmp ne i64 %1, 0
  %or.cond5 = and i1 %i.aw, %i.av
  br i1 %or.cond5, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.ax = getelementptr i8, ptr %i.as, i64 -2
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !23
  %i.az = and i16 %i.ay, -1024
  %i.ba = icmp eq i16 %i.az, -10240
  %i.bb = sext i1 %i.ba to i64
  %spec.select93 = add nsw i64 %1, %i.bb
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %.185 = phi i64 [ %1, %._crit_edge ], [ %spec.select93, %bb.l ] ; 2 uses
  %i.bc = icmp eq i32 %.081.lcssa, 2147483647
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 2147483647, ptr %i.q, align 8, !tbaa !52
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 2147483647, ptr %i.bd, align 4, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 2147483647, ptr %i.be, align 4, !tbaa !30
  %spec.select94 = tail call i64 @llvm.smin.i64(i64 %.185, i64 2147483647)
  store i64 2147483647, ptr %i.d, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !29
  %i.bh = and i32 %i.bg, -3
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !29
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bi = sext i32 %.081.lcssa to i64
  %i.bj = getelementptr [2 x i8], ptr %i.b, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !23
  %i.bm = and i16 %i.bl, -1024
  %i.bn = icmp eq i16 %i.bm, -10240
  %i.bo = sext i1 %i.bn to i32
  %spec.select95 = add nsw i32 %.081.lcssa, %i.bo ; 3 uses
  %i.bp = sext i32 %spec.select95 to i64
  store i64 %i.bp, ptr %i.d, align 8, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %spec.select95, ptr %i.bq, align 4, !tbaa !30
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %spec.select95, ptr %i.br, align 4, !tbaa !16
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.j, %bb.o, %bb.n, %bb.e, %bb.a, %bb.c
  %.5 = phi i64 [ %i.r, %bb.e ], [ 0, %bb.a ], [ %.185, %bb.o ], [ %1, %bb.c ], [ %spec.select, %bb.d ], [ %.084, %bb.j ], [ %spec.select94, %bb.n ] ; 3 uses
  %i.bs = trunc i64 %.5 to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !15
  %.not91 = icmp eq i8 %2, 0                      ; 2 uses
  br i1 %.not91, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !17
  %i.bw = icmp slt i64 %.5, %i.bv
  br i1 %i.bw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bx = icmp sgt i64 %.5, 0
  %i.by = select i1 %.not91, i1 %i.bx, i1 false
  %i.bz = zext i1 %i.by to i8
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ca = phi i8 [ 1, %bb.q ], [ %i.bz, %bb.r ]
  ret i8 %i.ca
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL16ucstrTextExtractP5UTextllPDsiP10UErrorCode(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = load i32, ptr %5, align 4, !tbaa !38
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %4, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %3, null
  %i.f = icmp ne i32 %4, 0
  %or.cond = and i1 %i.e, %i.f
  %i.g = icmp sgt i64 %1, %2
  %or.cond83 = or i1 %i.g, %or.cond
  br i1 %or.cond83, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %5, align 4, !tbaa !38
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.h = tail call noundef signext i8 @_ZL15ucstrTextAccessP5UTextla(ptr noundef %0, i64 noundef %1, i8 noundef signext 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 5 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !15   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !52   ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 6 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %_ZL8pinIndexRll.exit, label %_ZL8pinIndexRll.exit87

_ZL8pinIndexRll.exit:                             ; preds = %bb.e
  %i.r = and i64 %i.o, 2147483647
  %i.s = icmp slt i64 %2, 0
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.r)
  %i.t = trunc nuw nsw i64 %spec.select to i32
  %i.u = select i1 %i.s, i32 0, i32 %i.t
  br label %bb.f

_ZL8pinIndexRll.exit87:                           ; preds = %bb.e
  %i.v = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 2147483647)
  %i.x = trunc nuw nsw i64 %i.w to i32
  br label %bb.f

bb.f:                                             ; preds = %_ZL8pinIndexRll.exit87, %_ZL8pinIndexRll.exit
  %.070 = phi i32 [ %i.u, %_ZL8pinIndexRll.exit ], [ %i.x, %_ZL8pinIndexRll.exit87 ] ; 3 uses
  %i.y = icmp slt i32 %i.m, %.070
  br i1 %i.y, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %i.z = icmp slt i32 %i.p, 0
  %i.aa = sub i32 %.070, %i.m
  %.fr = freeze i32 %i.aa                         ; 4 uses
  %wide.trip.count136 = zext i32 %.fr to i64      ; 3 uses
  br i1 %i.z, label %.lr.ph.split.us.split.preheader, label %.lr.ph.split.split.us.preheader

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph
  %i.ab = sext i32 %i.m to i64                    ; 5 uses
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %i.ac = add nsw i64 %wide.trip.count136, -1
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %wide.trip.count) ; 2 uses
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ad, 16
  br i1 %min.iters.check, label %.lr.ph.split.split.us.preheader157, label %vector.memcheck

.lr.ph.split.split.us.preheader157:               ; preds = %vector.body, %vector.memcheck, %.lr.ph.split.split.us.preheader
  %indvars.iv122.ph = phi i64 [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph.split.split.us.preheader ], [ %6, %vector.body ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.split.us.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph.split.split.us

vector.memcheck:                                  ; preds = %.lr.ph.split.split.us.preheader
  %i.af = shl nsw i64 %i.ab, 1
  %i.ag = add i64 %i.af, %i.k
  %i.ah = sub i64 %i.ag, %i.a
  %diff.check = icmp ugt i64 %i.ah, -32
  br i1 %diff.check, label %.lr.ph.split.split.us.preheader157, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ai = and i64 %i.ae, 15                       ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = select i1 %i.aj, i64 16, i64 %i.ai
  %n.vec = sub nsw i64 %i.ae, %i.ak               ; 3 uses
  %6 = add nsw i64 %n.vec, %i.ab
  %invariant.gep = getelementptr [2 x i8], ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <8 x i16>, ptr %gep, align 2, !tbaa !23
  %wide.load153 = load <8 x i16>, ptr %i.al, align 2, !tbaa !23
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <8 x i16> %wide.load, ptr %i.am, align 2, !tbaa !23
  store <8 x i16> %wide.load153, ptr %i.an, align 2, !tbaa !23
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %.lr.ph.split.split.us.preheader157, label %vector.body, !llvm.loop !101

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph
  %i.ap = zext nneg i32 %4 to i64
  %i.aq = sext i32 %i.m to i64
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader, %bb.i
  %indvars.iv131 = phi i64 [ %i.aq, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next132, %bb.i ] ; 5 uses
  %indvars.iv129 = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next130, %bb.i ] ; 4 uses
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.j, i64 %indvars.iv131
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !23 ; 2 uses
  %i.at = icmp eq i16 %i.as, 0
  br i1 %i.at, label %.split.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.split
  %i.au = icmp samesign ult i64 %indvars.iv129, %i.ap
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv129
  store i16 %i.as, ptr %i.av, align 2, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %indvars.iv.next132 = add nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count136
  br i1 %exitcond137.not, label %.loopexit.loopexit, label %.lr.ph.split.us.split, !llvm.loop !102

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader157, %bb.j
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %bb.j ], [ %indvars.iv122.ph, %.lr.ph.split.split.us.preheader157 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ %indvars.iv.ph, %.lr.ph.split.split.us.preheader157 ] ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.split.us
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.j, i64 %indvars.iv122
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !23
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  store i16 %i.ax, ptr %i.ay, align 2, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next, %wide.trip.count136
  br i1 %exitcond128.not, label %.loopexit.loopexit114, label %.lr.ph.split.split.us, !llvm.loop !103

.split.us:                                        ; preds = %.lr.ph.split.us.split
  %i.az = trunc nsw i64 %indvars.iv131 to i32     ; 4 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv129 to i32
  store i64 %indvars.iv131, ptr %i.n, align 8, !tbaa !52
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %indvars.iv131, ptr %i.bb, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.az, ptr %i.bc, align 4, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.az, ptr %i.bd, align 4, !tbaa !30
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.i
  %i.be = trunc nsw i64 %indvars.iv.next132 to i32
  br label %.loopexit

.loopexit.loopexit114:                            ; preds = %bb.j
  %i.bf = trunc nsw i64 %indvars.iv.next123 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split.split.us, %.loopexit.loopexit114, %.loopexit.loopexit, %bb.f, %.split.us
  %.173 = phi i32 [ %i.az, %.split.us ], [ %i.bf, %.loopexit.loopexit114 ], [ %i.m, %bb.f ], [ %i.be, %.loopexit.loopexit ], [ %.070, %.lr.ph.split.split.us ] ; 7 uses
  %.1 = phi i32 [ %i.ba, %.split.us ], [ %.fr, %.loopexit.loopexit114 ], [ 0, %bb.f ], [ %.fr, %.loopexit.loopexit ], [ %.fr, %.lr.ph.split.split.us ] ; 7 uses
  %.0 = phi i32 [ %i.az, %.split.us ], [ %i.p, %.loopexit.loopexit114 ], [ %i.p, %bb.f ], [ %i.p, %.loopexit.loopexit ], [ %i.p, %.lr.ph.split.split.us ]
  %i.bg = icmp sgt i32 %.173, 0
  br i1 %i.bg, label %bb.k, label %bb.p

bb.k:                                             ; preds = %.loopexit
  %i.bh = zext nneg i32 %.173 to i64
  %i.bi = getelementptr [2 x i8], ptr %i.j, i64 %i.bh ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !23
  %i.bl = and i16 %i.bk, -1024
  %i.bm = icmp eq i16 %i.bl, -10240
  %or.cond3 = icmp ugt i32 %.0, %.173
  %or.cond84 = and i1 %or.cond3, %i.bm
  br i1 %or.cond84, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bn = load i16, ptr %i.bi, align 2, !tbaa !23 ; 2 uses
  %i.bo = and i16 %i.bn, -1024
  %i.bp = icmp eq i16 %i.bo, -9216
  br i1 %i.bp, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bq = icmp slt i32 %.1, %4
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.br = add nsw i32 %.1, 1
  %i.bs = sext i32 %.1 to i64
  %i.bt = getelementptr inbounds [2 x i8], ptr %3, i64 %i.bs
  store i16 %i.bn, ptr %i.bt, align 2, !tbaa !23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2 = phi i32 [ %i.br, %bb.n ], [ %.1, %bb.m ]
  %i.bu = add nuw nsw i32 %.173, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.k, %.loopexit
  %.274 = phi i32 [ %i.bu, %bb.o ], [ %.173, %bb.l ], [ %.173, %.loopexit ], [ %.173, %bb.k ] ; 2 uses
  %.3 = phi i32 [ %.2, %bb.o ], [ %.1, %bb.l ], [ %.1, %.loopexit ], [ %.1, %bb.k ] ; 2 uses
  %i.bv = sext i32 %.274 to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !17
  %.not81 = icmp slt i64 %i.bx, %i.bv
  br i1 %.not81, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %.274, ptr %i.l, align 8, !tbaa !15
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.by = tail call noundef signext i8 @_ZL15ucstrTextAccessP5UTextla(ptr noundef nonnull %0, i64 noundef %i.bv, i8 noundef signext 1) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bz = tail call i32 @u_terminateUChars_78(ptr noundef %3, i32 noundef %4, i32 noundef %.3, ptr noundef nonnull %5) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %bb.s, %bb.d
  %.075 = phi i32 [ %.3, %bb.s ], [ 0, %bb.d ], [ 0, %bb.a ]
  ret i32 %.075
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL14ucstrTextCloseP5UText(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = and i32 %i.b, 32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  tail call void @uprv_free_78(ptr noundef %i.e)
  store ptr null, ptr %i.d, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL17charIterTextCloneP5UTextPKS_aP10UErrorCode(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !38
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.not18 = icmp eq i8 %2, 0
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 16, ptr %3, align 4, !tbaa !38
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(24) %i.d) ; 4 uses
  %i.i = load i32, ptr %3, align 4, !tbaa !38
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !56
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 16, ptr %3, align 4, !tbaa !38
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.n = tail call ptr @utext_setup_78(ptr noundef %0, i32 noundef 64, ptr noundef nonnull %3), !inline_history !104 ; 21 uses
  %i.o = load i32, ptr %3, align 4, !tbaa !38
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 4 uses
  store ptr @_ZL13charIterFuncs, ptr %i.q, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store ptr %i.h, ptr %i.r, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !29
end_hunk_0
