Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/refmvs?download=true
inline.NumInlined: 71
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@dav1d_refmvs_find:bb.a
.lr.ph648:                                        ; preds = %bb.bo, %bb.bp
  %.0540647 = phi i32 [ %i.pr, %bb.bp ], [ 0, %bb.bo ] ; 2 uses
  %i.ph = load i32, ptr %2, align 4, !tbaa !18
  %i.pi = icmp slt i32 %i.ph, 2
  br i1 %i.pi, label %bb.bp, label %.critedge

bb.bp:                                            ; preds = %.lr.ph648
  %i.pj = zext nneg i32 %.0540647 to i64
  %i.pk = getelementptr inbounds nuw [12 x i8], ptr %.0566, i64 %i.pj ; 2 uses
  call fastcc void @add_single_extended_candidate(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %i.pk, i32 noundef %i.pe, ptr noundef nonnull %i.oz)
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 10
  %i.pm = load i8, ptr %i.pl, align 2, !tbaa !54
  %i.pn = zext i8 %i.pm to i64
  %i.po = getelementptr inbounds nuw [4 x i8], ptr @dav1d_block_dimensions, i64 %i.pn
  %i.pp = load i8, ptr %i.po, align 4, !tbaa !16
  %i.pq = zext i8 %i.pp to i32
  %i.pr = add nuw nsw i32 %.0540647, %i.pq        ; 2 uses
  %i.ps = icmp slt i32 %i.pr, %i.pf
  br i1 %i.ps, label %.lr.ph648, label %.critedge

.critedge:                                        ; preds = %bb.bp, %.lr.ph648, %bb.bo
  %.not591 = icmp ne i32 %.2.1, -1
  %or.cond664 = and i1 %.not591, %i.pg
  br i1 %or.cond664, label %.lr.ph651, label %.critedge17thread-pre-split

.lr.ph651:                                        ; preds = %.critedge
  %i.pt = sext i32 %8 to i64
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph651, %bb.br
  %.0539650 = phi i32 [ 0, %.lr.ph651 ], [ %i.qj, %bb.br ] ; 2 uses
  %i.pu = load i32, ptr %2, align 4, !tbaa !18    ; 3 uses
  %i.pv = icmp slt i32 %i.pu, 2
  br i1 %i.pv, label %bb.br, label %.critedge17.thread

.critedge17.thread:                               ; preds = %bb.bq
  %i.pw = icmp samesign ult i32 %i.pu, 9
  call void @llvm.assume(i1 %i.pw)
  br label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.px = zext nneg i32 %.0539650 to i64
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %.0562, i64 %i.px
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !29
  %i.qa = getelementptr [12 x i8], ptr %i.pz, i64 %i.pt ; 2 uses
  %i.qb = getelementptr i8, ptr %i.qa, i64 -12
  call fastcc void @add_single_extended_candidate(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %i.qb, i32 noundef %i.pe, ptr noundef nonnull %i.oz)
  %i.qc = getelementptr i8, ptr %i.qa, i64 -2
  %i.qd = load i8, ptr %i.qc, align 2, !tbaa !54
  %i.qe = zext i8 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr @dav1d_block_dimensions, i64 %i.qe
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 1
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !16
  %i.qi = zext i8 %i.qh to i32
  %i.qj = add nuw nsw i32 %.0539650, %i.qi        ; 2 uses
  %i.qk = icmp slt i32 %i.qj, %i.pf
  br i1 %i.qk, label %bb.bq, label %.critedge17thread-pre-split

.critedge17thread-pre-split:                      ; preds = %bb.br, %.critedge
  %.pr = load i32, ptr %2, align 4, !tbaa !18
  br label %.critedge17

.critedge17:                                      ; preds = %.critedge17thread-pre-split, %bb.bn
  %i.ql = phi i32 [ %.pr, %.critedge17thread-pre-split ], [ %i.jt, %bb.bn ] ; 3 uses
  %i.qm = icmp slt i32 %i.ql, 9
  call void @llvm.assume(i1 %i.qm)
  %.not592 = icmp eq i32 %i.ql, 0
  br i1 %.not592, label %.lr.ph654.preheader, label %bb.bs

bb.bs:                                            ; preds = %.critedge17.thread, %.critedge17
  %i.qn = phi i32 [ %i.pu, %.critedge17.thread ], [ %i.ql, %.critedge17 ]
  %i.qo = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.qp = insertelement <2 x i32> %i.qo, i32 %7, i64 1 ; 2 uses
  %i.qq = add nsw <2 x i32> %i.qp, %i.p
  %i.qr = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.qs = shl <2 x i32> %i.qq, splat (i32 5)
  %i.qt = load <2 x i32>, ptr %i.qr, align 8, !tbaa !18
  %i.qu = sub nsw <2 x i32> %i.qt, %i.qp
  %i.qv = shl <2 x i32> %i.qu, splat (i32 5)
  %i.qw = sub <2 x i32> splat (i32 -128), %i.qs
  %i.qx = shufflevector <2 x i32> %i.qw, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.qy = add <2 x i32> %i.qv, splat (i32 128)
  %i.qz = shufflevector <2 x i32> %i.qy, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %smax = call i32 @llvm.smax.i32(i32 %i.qn, i32 1)
  %wide.trip.count684 = zext nneg i32 %smax to i64
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %bb.bs
  %indvars.iv681 = phi i64 [ %indvars.iv.next682, %bb.bt ], [ 0, %bb.bs ] ; 2 uses
  %i.ra = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv681 ; 2 uses
  %i.rb = load <2 x i16>, ptr %i.ra, align 8, !tbaa !16 ; 2 uses
  %i.rc = sext <2 x i16> %i.rb to <2 x i32>
  %i.rd = icmp sgt <2 x i32> %i.qx, %i.rc
  %i.re = sext <2 x i16> %i.rb to <2 x i32>
  %i.rf = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.re, <2 x i32> %i.qz)
  %i.rg = select <2 x i1> %i.rd, <2 x i32> %i.qx, <2 x i32> %i.rf
  %i.rh = trunc <2 x i32> %i.rg to <2 x i16>
  store <2 x i16> %i.rh, ptr %i.ra, align 8, !tbaa !16
  %indvars.iv.next682 = add nuw nsw i64 %indvars.iv681, 1 ; 2 uses
  %exitcond685.not = icmp eq i64 %indvars.iv.next682, %wide.trip.count684
  br i1 %exitcond685.not, label %.loopexit614, label %bb.bt

.loopexit614:                                     ; preds = %bb.bt
  %.pre712 = load i32, ptr %2, align 4, !tbaa !18 ; 2 uses
  %i.ri = icmp slt i32 %.pre712, 2
  br i1 %i.ri, label %.lr.ph654.preheader, label %._crit_edge655

.lr.ph654.preheader:                              ; preds = %.critedge17, %.loopexit614
  %i.rj = phi i32 [ %.pre712, %.loopexit614 ], [ 0, %.critedge17 ]
  %i.rk = sext i32 %i.rj to i64
  br label %.lr.ph654

._crit_edge655:                                   ; preds = %.lr.ph654, %.loopexit614
  %i.rl = shl i32 %.0556, 4
  %i.rm = load i32, ptr %i.d, align 4, !tbaa !18
  %i.rn = shl i32 %i.rm, 3
  %i.ro = or i32 %i.rl, %i.rn
  %i.rp = or i32 %i.ro, %.0555
  br label %.sink.split747

.lr.ph654:                                        ; preds = %.lr.ph654.preheader, %.lr.ph654
  %indvars.iv686 = phi i64 [ %i.rk, %.lr.ph654.preheader ], [ %indvars.iv.next687, %.lr.ph654 ] ; 2 uses
  %i.rq = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv686
  store i32 %i.ak, ptr %i.rq, align 8, !tbaa !16
  %indvars.iv.next687 = add nsw i64 %indvars.iv686, 1 ; 2 uses
  %i.rr = and i64 %indvars.iv.next687, 4294967295
  %exitcond690.not = icmp eq i64 %i.rr, 2
  br i1 %exitcond690.not, label %._crit_edge655, label %.lr.ph654

.sink.split747:                                   ; preds = %._crit_edge655, %bb.bm, %bb.bl, %bb.bk
  %.sink748 = phi i32 [ %i.ot, %bb.bk ], [ %i.ov, %bb.bl ], [ %i.oy, %bb.bm ], [ %i.rp, %._crit_edge655 ]
  store i32 %.sink748, ptr %3, align 4, !tbaa !18
  br label %bb.bu

bb.bu:                                            ; preds = %.sink.split747, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc i32 @get_gmv_2d(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 256) %3, i32 noundef range(i32 0, 256) %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !27
  switch i32 %i.a, label %._crit_edge [
    i32 2, label %bb.b
    i32 0, label %bb.g
    i32 1, label %bb.e
  ]

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !18
  %.phi.trans.insert42 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.phi.trans.insert44 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre45 = load i32, ptr %.phi.trans.insert44, align 4, !tbaa !18
  %.phi.trans.insert46 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre43 = load i32, ptr %.phi.trans.insert42, align 4, !tbaa !18
  %.pre47 = load i32, ptr %.phi.trans.insert46, align 4, !tbaa !18
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18
  %i.f = icmp eq i32 %i.c, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.g, align 4, !tbaa !18   ; 2 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !18   ; 2 uses
  %i.k = sub nsw i32 0, %i.j
  %i.l = icmp eq i32 %i.i, %i.k
  tail call void @llvm.assume(i1 %i.l)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.m = phi i32 [ %.pre47, %._crit_edge ], [ %i.i, %bb.b ]
  %i.n = phi i32 [ %.pre45, %._crit_edge ], [ %i.c, %bb.b ]
  %i.o = phi i32 [ %.pre43, %._crit_edge ], [ %i.j, %bb.b ]
  %i.p = phi i32 [ %.pre, %._crit_edge ], [ %i.c, %bb.b ]
  %i.q = shl nsw i32 %1, 2
  %i.r = shl nuw nsw i32 %3, 1
  %i.s = shl nsw i32 %2, 2
  %i.t = shl nuw nsw i32 %4, 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = add nsw i32 %i.p, -65536
  %i.w = add nsw i32 %i.n, -65536
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 428
  %i.z = load i8, ptr %i.y, align 4, !tbaa !55
  %.not34 = icmp eq i8 %i.z, 0                    ; 2 uses
  %i.aa = zext i1 %.not34 to i32                  ; 2 uses
  %i.ab = select i1 %.not34, i32 14, i32 13       ; 3 uses
  %6 = shl nuw nsw i32 1, %i.ab
  %7 = lshr exact i32 %6, 1                       ; 2 uses
  %i.ac = add i32 %i.q, -1
  %i.ad = add i32 %i.ac, %i.r                     ; 2 uses
  %i.ae = add i32 %i.s, -1
  %i.af = add i32 %i.ae, %i.t                     ; 2 uses
  %i.ag = mul nsw i32 %i.v, %i.ad
  %i.ah = mul nsw i32 %i.o, %i.af
  %i.ai = add nsw i32 %i.ag, %i.ah
  %i.aj = load i32, ptr %i.u, align 4, !tbaa !18
  %i.ak = add nsw i32 %i.ai, %i.aj                ; 2 uses
  %i.al = mul nsw i32 %i.w, %i.af
  %i.am = mul nsw i32 %i.m, %i.ad
  %i.an = add nsw i32 %i.al, %i.am
  %i.ao = load i32, ptr %i.x, align 4, !tbaa !18
  %i.ap = add nsw i32 %i.an, %i.ao                ; 2 uses
  %i.aq = tail call i32 @llvm.abs.i32(i32 %i.ap, i1 true)
  %i.ar = add nuw nsw i32 %7, %i.aq
  %i.as = lshr i32 %i.ar, %i.ab
  %i.at = shl nuw nsw i32 %i.as, %i.aa            ; 2 uses
  %i.au = icmp slt i32 %i.ap, 0
  %i.av = sub nsw i32 0, %i.at
  %i.aw = select i1 %i.au, i32 %i.av, i32 %i.at
  %i.ax = trunc i32 %i.aw to i16
  %i.ay = tail call i32 @llvm.abs.i32(i32 %i.ak, i1 true)
  %i.az = add nuw nsw i32 %7, %i.ay
  %i.ba = lshr i32 %i.az, %i.ab
  %i.bb = shl nuw nsw i32 %i.ba, %i.aa            ; 2 uses
  %i.bc = icmp slt i32 %i.ak, 0
  %i.bd = sub nsw i32 0, %i.bb
  %i.be = select i1 %i.bc, i32 %i.bd, i32 %i.bb
  %i.bf = trunc i32 %i.be to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 269
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !56
  %.not36 = icmp eq i8 %i.bh, 0
  %i.bi = insertelement <2 x i16> poison, i16 %i.bf, i64 0
  %i.bj = insertelement <2 x i16> %i.bi, i16 %i.ax, i64 1 ; 3 uses
  br i1 %.not36, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = lshr <2 x i16> %i.bj, splat (i16 15)
  %i.bl = add <2 x i16> %i.bj, splat (i16 3)
  %i.bm = add <2 x i16> %i.bl, %i.bk
  %i.bn = and <2 x i16> %i.bm, splat (i16 -8)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bp = load <2 x i32>, ptr %i.bo, align 4, !tbaa !18
  %i.bq = lshr <2 x i32> %i.bp, splat (i32 13)
  %i.br = shufflevector <2 x i32> %i.bq, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.bs = trunc <2 x i32> %i.br to <2 x i16>      ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 269
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !56
  %.not = icmp eq i8 %i.bu, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = lshr <2 x i16> %i.bs, splat (i16 15)
  %i.bw = add <2 x i16> %i.bs, splat (i16 3)
  %i.bx = add <2 x i16> %i.bw, %i.bv
  %i.by = and <2 x i16> %i.bx, splat (i16 -8)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f
  %i.bz = phi <2 x i16> [ %i.bj, %bb.c ], [ %i.bn, %bb.d ], [ %i.by, %bb.f ], [ %i.bs, %bb.e ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.ca = extractelement <2 x i16> %i.bz, i64 0
  %.sroa.8.0.insert.ext = zext i16 %i.ca to i32
  %.sroa.8.0.insert.shift = shl nuw i32 %.sroa.8.0.insert.ext, 16
  %i.cb = extractelement <2 x i16> %i.bz, i64 1
  %.sroa.0.0.insert.ext = zext i16 %i.cb to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.8.0.insert.shift, %.sroa.0.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc range(i32 1, 128) i32 @scan_row(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i16 %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 0, 256) %5, i32 noundef %6, i32 noundef %7, i32 noundef range(i32 1, 5) %8, ptr nofree noundef nonnull captures(none) %9, ptr nofree noundef nonnull writeonly captures(none) %10) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.b = load i8, ptr %i.a, align 2, !tbaa !54
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @dav1d_block_dimensions, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !16
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = tail call i32 @llvm.umin.i32(i32 %5, i32 %i.f)
  %i.h = tail call i32 @llvm.umax.i32(i32 %8, i32 %i.g) ; 4 uses
  %.not = icmp samesign ugt i32 %5, %i.f
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.i = shl nuw nsw i32 %i.h, 1
  tail call fastcc void @add_spatial_candidate(ptr noundef %0, ptr noundef %1, i32 noundef %i.i, ptr noundef nonnull %4, i16 %2, ptr noundef %3, ptr noundef %9, ptr noundef %10)
  %.not4546 = icmp slt i32 %i.h, %6
  br i1 %.not4546, label %.lr.ph, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %5, 1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = shl nsw i32 %7, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  %i.n = zext i8 %i.m to i32
  %i.o = tail call noundef i32 @llvm.smin.i32(i32 %i.k, i32 %i.n)
  %i.p = tail call noundef i32 @llvm.smax.i32(i32 %i.o, i32 2)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.q = phi i32 [ %i.p, %bb.c ], [ 2, %bb.b ]    ; 2 uses
  %i.r = mul nuw nsw i32 %i.q, %i.h
  tail call fastcc void @add_spatial_candidate(ptr noundef %0, ptr noundef %1, i32 noundef %i.r, ptr noundef nonnull %4, i16 %2, ptr noundef %3, ptr noundef %9, ptr noundef %10)
  %i.s = lshr i32 %i.q, 1
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.t = phi i32 [ %i.af, %.lr.ph ], [ %i.h, %.preheader ] ; 2 uses
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  %i.x = load i8, ptr %i.w, align 2, !tbaa !54
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @dav1d_block_dimensions, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !16
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %i.ac = icmp samesign ugt i32 %5, %i.ab
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = tail call i32 @llvm.umax.i32(i32 %8, i32 %i.ab) ; 2 uses
  %i.ae = shl nuw nsw i32 %i.ad, 1
  tail call fastcc void @add_spatial_candidate(ptr noundef %0, ptr noundef %1, i32 noundef %i.ae, ptr noundef nonnull %i.v, i16 %2, ptr noundef %3, ptr noundef %9, ptr noundef %10)
  %i.af = add nuw nsw i32 %i.t, %i.ad             ; 2 uses
  %.not45 = icmp slt i32 %i.af, %6
  br i1 %.not45, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.d
  %.042 = phi i32 [ %i.s, %bb.d ], [ 1, %.preheader ], [ 1, %.lr.ph ]
  ret i32 %.042
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc range(i32 1, 128) i32 @scan_col(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i16 %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 0, 256) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef range(i32 1, 5) %9, ptr nofree noundef nonnull captures(none) %10, ptr nofree noundef nonnull writeonly captures(none) %11) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !29
  %i.b = sext i32 %7 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.e = load i8, ptr %i.d, align 2, !tbaa !54
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @dav1d_block_dimensions, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = tail call i32 @llvm.umin.i32(i32 %5, i32 %i.j)
  %i.l = tail call i32 @llvm.umax.i32(i32 %9, i32 %i.k) ; 4 uses
  %.not = icmp samesign ugt i32 %5, %i.j
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.m = shl nuw nsw i32 %i.l, 1
  tail call fastcc void @add_spatial_candidate(ptr noundef %0, ptr noundef %1, i32 noundef %i.m, ptr noundef nonnull %i.c, i16 %2, ptr noundef %3, ptr noundef %10, ptr noundef %11)
  %.not4748 = icmp slt i32 %i.l, %6
  br i1 %.not4748, label %.lr.ph, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %5, 1
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = shl nsw i32 %8, 1
  %i.p = load i8, ptr %i.g, align 4, !tbaa !16
  %i.q = zext i8 %i.p to i32
  %i.r = tail call noundef i32 @llvm.smin.i32(i32 %i.o, i32 %i.q)
  %i.s = tail call noundef i32 @llvm.smax.i32(i32 %i.r, i32 2)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.t = phi i32 [ %i.s, %bb.c ], [ 2, %bb.b ]    ; 2 uses
  %i.u = mul nuw nsw i32 %i.t, %i.l
  tail call fastcc void @add_spatial_candidate(ptr noundef %0, ptr noundef %1, i32 noundef %i.u, ptr noundef nonnull %i.c, i16 %2, ptr noundef %3, ptr noundef %10, ptr noundef %11)
  %i.v = lshr i32 %i.t, 1
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.w = phi i32 [ %i.al, %.lr.ph ], [ %i.l, %.preheader ] ; 2 uses
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.aa = getelementptr inbounds [12 x i8], ptr %i.z, i64 %i.b ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 10
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !54
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @dav1d_block_dimensions, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %i.ai = icmp samesign ugt i32 %5, %i.ah
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call i32 @llvm.umax.i32(i32 %9, i32 %i.ah) ; 2 uses
  %i.ak = shl nuw nsw i32 %i.aj, 1
  tail call fastcc void @add_spatial_candidate(ptr noundef %0, ptr noundef %1, i32 noundef %i.ak, ptr noundef nonnull %i.aa, i16 %2, ptr noundef %3, ptr noundef %10, ptr noundef %11)
  %i.al = add nuw nsw i32 %i.w, %i.aj             ; 2 uses
  %.not47 = icmp slt i32 %i.al, %6
  br i1 %.not47, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.d
  %.044 = phi i32 [ %i.v, %bb.d ], [ 1, %.preheader ], [ 1, %.lr.ph ]
  ret i32 %.044
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @add_spatial_candidate(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i16 %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #4 {
bb.a:
  %.sroa.076.0.extract.trunc = zext i16 %4 to i32
  %i.a = load i32, ptr %3, align 4, !tbaa !16     ; 3 uses
  %i.b = icmp eq i32 %i.a, -2147450880
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i16 %4, -257
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
end_hunk_0
