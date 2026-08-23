Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/psaux?download=true
inline.NumInlined: 440
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@cf2_glyphpath_pushPrevElem:bb.a
  %sext16.i89 = shl i64 %i.pq, 32
  %i.pr = ashr exact i64 %sext16.i89, 32
  %i.ps = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %i.pr, ptr %i.ps, align 8, !tbaa !158
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.m
  %.sink214 = phi i64 [ 24, %bb.m ], [ 8, %bb.l ]
  %.sink = phi ptr [ %i.ne, %bb.m ], [ %i.hq, %bb.l ]
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !574 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 %.sink214
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !24
  call void %i.pw(ptr noundef %i.pu, ptr noundef nonnull %6) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %.sink, i64 16, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.l, %cf2_glyphpath_computeIntersection.exit.thread
  %i.px = icmp ne i8 %5, 0
  %or.cond = or i1 %i.px, %i.ev
  br i1 %or.cond, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not72 = icmp eq i8 %5, 0
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 6200
  %.sink267 = select i1 %.not72, ptr %1, ptr %i.py
  %i.pz = load i64, ptr %2, align 8, !tbaa !157
  %i.qa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !158 ; 2 uses
  %i.qc = trunc i64 %i.qb to i32
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 18624
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !580
  %i.qf = sext i32 %i.qe to i64
  %sext123 = shl i64 %i.pz, 32
  %i.qg = ashr exact i64 %sext123, 32
  %i.qh = mul nsw i64 %i.qg, %i.qf                ; 2 uses
  %i.qi = ashr i64 %i.qh, 63
  %i.qj = add nsw i64 %i.qh, 32768
  %i.qk = add nsw i64 %i.qj, %i.qi
  %i.ql = lshr i64 %i.qk, 16
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 18628
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !695
  %i.qo = sext i32 %i.qn to i64
  %sext124 = shl i64 %i.qb, 32
  %i.qp = ashr exact i64 %sext124, 32
  %i.qq = mul nsw i64 %i.qp, %i.qo                ; 2 uses
  %i.qr = ashr i64 %i.qq, 63
  %i.qs = add nsw i64 %i.qq, 32768
  %i.qt = add nsw i64 %i.qs, %i.qr
  %i.qu = lshr i64 %i.qt, 16
  %i.qv = add nuw nsw i64 %i.qu, %i.ql
  %sext.i93 = shl i64 %i.qv, 32
  %i.qw = ashr exact i64 %sext.i93, 32            ; 2 uses
  %i.qx = call fastcc i32 @cf2_hintmap_map(ptr noundef nonnull %.sink267, i32 noundef %i.qc)
  %i.qy = sext i32 %i.qx to i64                   ; 2 uses
  %i.qz = load ptr, ptr %0, align 8, !tbaa !565   ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 68
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !696
  %i.rc = sext i32 %i.rb to i64
  %i.rd = mul nsw i64 %i.qw, %i.rc                ; 2 uses
  %i.re = ashr i64 %i.rd, 63
  %i.rf = add nsw i64 %i.rd, 32768
  %i.rg = add nsw i64 %i.rf, %i.re
  %i.rh = lshr i64 %i.rg, 16
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qz, i64 76
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !697
  %i.rk = sext i32 %i.rj to i64
  %i.rl = mul nsw i64 %i.rk, %i.qy                ; 2 uses
  %i.rm = ashr i64 %i.rl, 63
  %i.rn = add nsw i64 %i.rl, 32768
  %i.ro = add nsw i64 %i.rn, %i.rm
  %i.rp = lshr i64 %i.ro, 16
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 18640
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !698
  %i.rs = add i64 %i.rp, %i.rr
  %i.rt = add i64 %i.rs, %i.rh
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qz, i64 72
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !699
  %i.rw = sext i32 %i.rv to i64
  %i.rx = mul nsw i64 %i.qw, %i.rw                ; 2 uses
  %i.ry = ashr i64 %i.rx, 63
  %i.rz = add nsw i64 %i.rx, 32768
  %i.sa = add nsw i64 %i.rz, %i.ry
  %i.sb = lshr i64 %i.sa, 16
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qz, i64 80
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !700
  %i.se = sext i32 %i.sd to i64
  %i.sf = mul nsw i64 %i.se, %i.qy                ; 2 uses
  %i.sg = ashr i64 %i.sf, 63
  %i.sh = add nsw i64 %i.sf, 32768
  %i.si = add nsw i64 %i.sh, %i.sg
  %i.sj = lshr i64 %i.si, 16
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 18648
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !701
  %i.sm = add i64 %i.sb, %i.sl
  %i.sn = add i64 %i.sm, %i.sj
  %.in139 = shl i64 %i.sn, 32
  %i.so = ashr exact i64 %.in139, 32              ; 2 uses
  %.sink130.in = shl i64 %i.rt, 32
  %.sink130 = ashr exact i64 %.sink130.in, 32     ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 %.sink130, ptr %i.sp, align 8, !tbaa !157
  %i.sq = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.so, ptr %i.sq, align 8, !tbaa !158
  %i.sr = load i64, ptr %i.ew, align 8, !tbaa !746
  %.not73 = icmp eq i64 %.sink130, %i.sr
  br i1 %.not73, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 18776
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !747
  %.not74 = icmp eq i64 %i.so, %i.st
  br i1 %.not74, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.su = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 2, ptr %i.su, align 8, !tbaa !693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.ew, i64 16, i1 false), !tbaa.struct !582
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !574 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !748
  call void %i.sy(ptr noundef %i.sw, ptr noundef nonnull %6) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %i.sp, i64 16, i1 false), !tbaa.struct !582
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  br i1 %i.ev, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %.sroa.0.0, ptr %2, align 8, !tbaa !44
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !44
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @cf2_hintmap_map(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !718  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !575
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !581
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.i, %i.f                   ; 2 uses
  %i.k = ashr i64 %i.j, 63
  %i.l = add nsw i64 %i.j, 32768
  %i.m = add nsw i64 %i.l, %i.k
  %i.n = lshr i64 %i.m, 16
  %i.o = trunc i64 %i.n to i32
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !719  ; 3 uses
  %i.r = add i32 %i.b, -1                         ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.q, i32 %i.r) ; 3 uses
  %wide.trip.count = zext i32 %umax to i64
  %exitcond.not54.not = icmp ult i32 %i.q, %i.r
  br i1 %exitcond.not54.not, label %.lr.ph57, label %.critedge

.lr.ph57:                                         ; preds = %bb.d
  %i.s = zext i32 %i.q to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.f, !llvm.loop !749

bb.f:                                             ; preds = %.lr.ph57, %bb.e
  %indvars.iv55 = phi i64 [ %i.s, %.lr.ph57 ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv55, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv.next
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load i32, ptr %i.u, align 8, !tbaa !723
  %.not38 = icmp slt i32 %1, %i.v
  br i1 %.not38, label %.critedge.split.loop.exit50, label %bb.e, !llvm.loop !749

.critedge.split.loop.exit50:                      ; preds = %bb.f
  %i.w = trunc nuw i64 %indvars.iv55 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %.critedge.split.loop.exit50
  %.0.lcssa = phi i32 [ %i.w, %.critedge.split.loop.exit50 ], [ %umax, %bb.d ], [ %umax, %bb.e ] ; 2 uses
  %.not3942 = icmp eq i32 %.0.lcssa, 0
  br i1 %.not3942, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge
  %2 = zext i32 %.0.lcssa to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv46 = phi i64 [ %2, %.lr.ph.preheader ], [ %indvars.iv.next47, %bb.g ] ; 4 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv46
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i32, ptr %i.y, align 8, !tbaa !723
  %i.aa = icmp slt i32 %1, %i.z
  br i1 %i.aa, label %bb.g, label %.critedge2

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, -1 ; 2 uses
  %3 = and i64 %indvars.iv.next47, 4294967295
  %.not39 = icmp eq i64 %3, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph, !llvm.loop !750

.critedge2:                                       ; preds = %.lr.ph
  %4 = trunc nuw i64 %indvars.iv46 to i32
  store i32 %4, ptr %i.p, align 4, !tbaa !719
  br label %._crit_edge._crit_edge

._crit_edge:                                      ; preds = %bb.g, %.critedge
  store i32 0, ptr %i.p, align 4, !tbaa !719
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !723 ; 2 uses
  %i.ad = icmp slt i32 %1, %i.ac
  br i1 %i.ad, label %bb.h, label %._crit_edge._crit_edge

bb.h:                                             ; preds = %._crit_edge
  %i.ae = sub i32 %1, %i.ac
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !581
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul nsw i64 %i.ai, %i.af                ; 2 uses
  %i.ak = ashr i64 %i.aj, 63
  %i.al = add nsw i64 %i.aj, 32768
  %i.am = add nsw i64 %i.al, %i.ak
  %i.an = lshr i64 %i.am, 16
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !726
  %i.ar = add i32 %i.aq, %i.ao
  br label %bb.i

._crit_edge._crit_edge:                           ; preds = %.critedge2, %._crit_edge
  %.141 = phi i64 [ %indvars.iv46, %.critedge2 ], [ 0, %._crit_edge ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %.141 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !723
  %i.aw = sub i32 %1, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !724
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.ba, %i.ax                ; 2 uses
  %i.bc = ashr i64 %i.bb, 63
  %i.bd = add nsw i64 %i.bb, 32768
  %i.be = add nsw i64 %i.bd, %i.bc
  %i.bf = lshr i64 %i.be, 16
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !726
  %i.bj = add i32 %i.bi, %i.bg
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge._crit_edge, %bb.c
  %.135 = phi i32 [ %i.o, %bb.c ], [ %i.ar, %bb.h ], [ %i.bj, %._crit_edge._crit_edge ]
  ret i32 %.135
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @cf2_hintmap_insertHint(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #4 {
bb.a:
  %.val100 = load i32, ptr %1, align 8, !tbaa !722
  %.not107 = icmp eq i32 %.val100, 0
  br i1 %.not107, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val99 = load i32, ptr %2, align 8, !tbaa !722
  %.not = icmp eq i32 %.val99, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !723
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !723
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.v, label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %.not88105 = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.a ] ; 5 uses
  %.084104 = phi ptr [ %1, %bb.b ], [ %1, %bb.c ], [ %2, %bb.a ] ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !718  ; 3 uses
  %.not117 = icmp eq i32 %i.g, 0
  br i1 %.not117, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.h = getelementptr inbounds nuw i8, ptr %.084104, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !723  ; 2 uses
  %wide.trip.count = zext i32 %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !723  ; 3 uses
  %.not89 = icmp slt i32 %i.l, %i.i
  br i1 %.not89, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !751

bb.f:                                             ; preds = %bb.d
  %i.m = trunc nuw i64 %indvars.iv to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = icmp eq i32 %i.l, %i.i
  br i1 %i.p, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not88105, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !723
  %.not90 = icmp sgt i32 %i.l, %i.r
  br i1 %.not90, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h, %bb.g
  %.val101 = load i32, ptr %i.o, align 8, !tbaa !722
  %i.s = and i32 %.val101, 8
  %.not91 = icmp eq i32 %i.s, 0
  br i1 %.not91, label %.loopexit, label %bb.v

.loopexit:                                        ; preds = %bb.e, %.thread, %bb.i
  %.081110 = phi i32 [ %i.m, %bb.i ], [ 0, %.thread ], [ %i.g, %bb.e ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !577  ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %.val = load i8, ptr %i.v, align 8, !tbaa !688
  %.not92 = icmp eq i8 %.val, 0
  br i1 %.not92, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %.084.val = load i32, ptr %.084104, align 8, !tbaa !722
  %i.w = and i32 %.084.val, 16
  %.not93 = icmp eq i32 %i.w, 0
  br i1 %.not93, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %.084104, i64 16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !723  ; 3 uses
  br i1 %.not88105, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !723
  %i.ab = sub i32 %i.aa, %i.y
  %i.ac = sdiv i32 %i.ab, 2
  %i.ad = add i32 %i.ac, %i.y
  %i.ae = tail call fastcc i32 @cf2_hintmap_map(ptr noundef nonnull %i.u, i32 noundef %i.ad) ; 2 uses
  %i.af = load i32, ptr %i.z, align 8, !tbaa !723
  %i.ag = load i32, ptr %i.x, align 8, !tbaa !723
  %i.ah = sub i32 %i.af, %i.ag
  %i.ai = sdiv i32 %i.ah, 2
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !581
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.aj, %i.am                ; 2 uses
  %i.ao = ashr i64 %i.an, 63
  %i.ap = add nsw i64 %i.an, 32768
  %i.aq = add nsw i64 %i.ap, %i.ao
  %i.ar = lshr i64 %i.aq, 16
  %i.as = trunc i64 %i.ar to i32                  ; 2 uses
  %i.at = sub i32 %i.ae, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.084104, i64 20
  store i32 %i.at, ptr %i.au, align 4, !tbaa !726
  %i.av = add i32 %i.ae, %i.as
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  %i.aw = tail call fastcc i32 @cf2_hintmap_map(ptr noundef nonnull %i.u, i32 noundef %i.y)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.l
  %.sink127 = phi ptr [ %2, %bb.l ], [ %.084104, %bb.m ]
  %.sink = phi i32 [ %i.av, %bb.l ], [ %i.aw, %bb.m ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink127, i64 20
  store i32 %.sink, ptr %i.ax, align 4, !tbaa !726
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.j, %.loopexit
  %.not95 = icmp eq i32 %.081110, 0
  br i1 %.not95, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %.084104, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !726
  %i.ba = add i32 %.081110, -1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 60
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !726
  %i.bf = icmp slt i32 %i.az, %i.be
  br i1 %i.bf, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bg = load i32, ptr %i.f, align 8, !tbaa !718 ; 8 uses
  %i.bh = icmp ult i32 %.081110, %i.bg
  br i1 %i.bh, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bi = zext i32 %.081110 to i64
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 60
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !726 ; 2 uses
  br i1 %.not88105, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !726
  %i.bo = icmp sgt i32 %i.bn, %i.bl
  br i1 %i.bo, label %bb.v, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.084104, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !726
  %i.br = icmp sgt i32 %i.bq, %i.bl
  br i1 %i.br, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.p
  %i.bs = add i32 %i.bg, 1                        ; 2 uses
  %i.bt = select i1 %.not88105, i32 %i.bg, i32 %i.bs ; 4 uses
  %i.bu = sub i32 %i.bg, %.081110                 ; 4 uses
  %i.bv = icmp ugt i32 %i.bt, 191
  br i1 %i.bv, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.t
  %.not97112 = icmp eq i32 %i.bu, 0
end_hunk_0
