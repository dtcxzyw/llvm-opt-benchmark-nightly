Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/encode4d?download=true
inline.NumInlined: 61
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 48
begin_hunk_0_@encode_ints_uint64:bb.a
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br i1 %cmp.n, label %.lr.ph106.i.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph86.i, %middle.block
  %indvars.iv123.i.ph = phi i64 [ %.pre-phi, %vector.scevcheck ], [ %.pre-phi, %.lr.ph86.i ], [ %i.dx, %middle.block ]
  %.085.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph86.i ], [ %i.ek, %middle.block ]
  br label %scalar.ph

bb.m:                                             ; preds = %stream_write_bit.exit.i30.1, %.lr.ph.i27.new
  %indvars.iv.i29 = phi i64 [ 0, %.lr.ph.i27.new ], [ %indvars.iv.next.i32.1, %stream_write_bit.exit.i30.1 ] ; 3 uses
  %.sroa.21.180.i = phi ptr [ %.sroa.21.0117.i, %.lr.ph.i27.new ], [ %.sroa.21.6.i.1, %stream_write_bit.exit.i30.1 ] ; 3 uses
  %.sroa.15.179.i = phi i64 [ %.sroa.15.0116.i, %.lr.ph.i27.new ], [ %.sroa.15.6.i.1, %stream_write_bit.exit.i30.1 ]
  %.sroa.0.178.i = phi i64 [ %.sroa.0.0115.i, %.lr.ph.i27.new ], [ %.sroa.0.6.i31.1, %stream_write_bit.exit.i30.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i27.new ], [ %niter.next.1, %stream_write_bit.exit.i30.1 ]
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i29
  %i.em = load i64, ptr %i.el, align 8, !tbaa !13, !alias.scope !54
  %i.en = lshr i64 %i.em, %indvars.iv131.i
  %i.eo = and i64 %i.en, 1
  %i.ep = shl nuw i64 %i.eo, %.sroa.0.178.i
  %i.eq = add i64 %i.ep, %.sroa.15.179.i          ; 2 uses
  %i.er = add i64 %.sroa.0.178.i, 1               ; 2 uses
  %i.es = icmp eq i64 %i.er, 64
  br i1 %i.es, label %bb.n, label %stream_write_bit.exit.i30

bb.n:                                             ; preds = %bb.m
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.21.180.i, i64 8
  store i64 %i.eq, ptr %.sroa.21.180.i, align 8, !tbaa !13, !noalias !55
  br label %stream_write_bit.exit.i30

stream_write_bit.exit.i30:                        ; preds = %bb.n, %bb.m
  %.sroa.0.6.i31 = phi i64 [ 0, %bb.n ], [ %i.er, %bb.m ] ; 2 uses
  %.sroa.15.6.i = phi i64 [ 0, %bb.n ], [ %i.eq, %bb.m ]
  %.sroa.21.6.i = phi ptr [ %i.et, %bb.n ], [ %.sroa.21.180.i, %bb.m ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i29
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !13, !alias.scope !54
  %i.ex = lshr i64 %i.ew, %indvars.iv131.i
  %i.ey = and i64 %i.ex, 1
  %i.ez = shl nuw i64 %i.ey, %.sroa.0.6.i31
  %i.fa = add i64 %i.ez, %.sroa.15.6.i            ; 2 uses
  %i.fb = add i64 %.sroa.0.6.i31, 1               ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 64
  br i1 %i.fc, label %bb.o, label %stream_write_bit.exit.i30.1

bb.o:                                             ; preds = %stream_write_bit.exit.i30
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.21.6.i, i64 8
  store i64 %i.fa, ptr %.sroa.21.6.i, align 8, !tbaa !13, !noalias !55
  br label %stream_write_bit.exit.i30.1

stream_write_bit.exit.i30.1:                      ; preds = %bb.o, %stream_write_bit.exit.i30
  %.sroa.0.6.i31.1 = phi i64 [ 0, %bb.o ], [ %i.fb, %stream_write_bit.exit.i30 ] ; 3 uses
  %.sroa.15.6.i.1 = phi i64 [ 0, %bb.o ], [ %i.fa, %stream_write_bit.exit.i30 ] ; 3 uses
  %.sroa.21.6.i.1 = phi ptr [ %i.fd, %bb.o ], [ %.sroa.21.6.i, %stream_write_bit.exit.i30 ] ; 3 uses
  %indvars.iv.next.i32.1 = add nuw nsw i64 %indvars.iv.i29, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader76.i.unr-lcssa, label %bb.m

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv123.i = phi i64 [ %indvars.iv.next124.i, %scalar.ph ], [ %indvars.iv123.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.085.i = phi i32 [ %i.fj, %scalar.ph ], [ %.085.i.ph, %scalar.ph.preheader ]
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv123.i
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !13, !alias.scope !54
  %i.fg = lshr i64 %i.ff, %indvars.iv131.i
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = and i32 %i.fh, 1
  %i.fj = add i32 %i.fi, %.085.i                  ; 2 uses
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %i.fk = and i64 %indvars.iv.next124.i, 4294967295
  %exitcond126.not.i = icmp eq i64 %i.fk, 256
  br i1 %exitcond126.not.i, label %.lr.ph106.i.preheader, label %scalar.ph, !llvm.loop !48

.lr.ph106.i.preheader:                            ; preds = %scalar.ph, %middle.block
  %.1105.i.ph = phi i32 [ %i.ek, %middle.block ], [ %i.fj, %scalar.ph ]
  br label %.lr.ph106.i

.lr.ph106.i:                                      ; preds = %.lr.ph106.i.preheader, %.critedge2.i
  %.1105.i = phi i32 [ %i.fs, %.critedge2.i ], [ %.1105.i.ph, %.lr.ph106.i.preheader ] ; 2 uses
  %.137104.i = phi i32 [ %i.gg, %.critedge2.i ], [ %.036118.i, %.lr.ph106.i.preheader ] ; 4 uses
  %.sroa.21.2103.i = phi ptr [ %.sroa.21.8.i, %.critedge2.i ], [ %.sroa.21.1.lcssa145.i, %.lr.ph106.i.preheader ] ; 3 uses
  %.sroa.15.2102.i = phi i64 [ %.sroa.15.8.i, %.critedge2.i ], [ %.sroa.15.1.lcssa143.i, %.lr.ph106.i.preheader ]
  %.sroa.0.2101.i = phi i64 [ %.sroa.0.8.i37, %.critedge2.i ], [ %.sroa.0.1.lcssa141.i, %.lr.ph106.i.preheader ] ; 2 uses
  %i.fl = icmp ne i32 %.1105.i, 0                 ; 2 uses
  %i.fm = zext i1 %i.fl to i64
  %i.fn = shl nuw i64 %i.fm, %.sroa.0.2101.i
  %i.fo = add i64 %i.fn, %.sroa.15.2102.i         ; 2 uses
  %i.fp = add i64 %.sroa.0.2101.i, 1              ; 2 uses
  %i.fq = icmp eq i64 %i.fp, 64
  br i1 %i.fq, label %bb.p, label %stream_write_bit.exit43.i

bb.p:                                             ; preds = %.lr.ph106.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.21.2103.i, i64 8
  store i64 %i.fo, ptr %.sroa.21.2103.i, align 8, !tbaa !13, !noalias !55
  br label %stream_write_bit.exit43.i

stream_write_bit.exit43.i:                        ; preds = %bb.p, %.lr.ph106.i
  %.sroa.0.7.i35 = phi i64 [ 0, %bb.p ], [ %i.fp, %.lr.ph106.i ] ; 3 uses
  %.sroa.15.7.i = phi i64 [ 0, %bb.p ], [ %i.fo, %.lr.ph106.i ] ; 3 uses
  %.sroa.21.7.i = phi ptr [ %i.fr, %bb.p ], [ %.sroa.21.2103.i, %.lr.ph106.i ] ; 3 uses
  br i1 %i.fl, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %stream_write_bit.exit43.i
  %i.fs = add i32 %.1105.i, -1
  %i.ft = icmp ult i32 %.137104.i, 255
  br i1 %i.ft, label %.lr.ph92.preheader.i, label %.critedge2.thread.i.loopexit53

.lr.ph92.preheader.i:                             ; preds = %bb.q
  %i.fu = zext nneg i32 %.137104.i to i64
  br label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %bb.s, %.lr.ph92.preheader.i
  %indvars.iv127.i = phi i64 [ %i.fu, %.lr.ph92.preheader.i ], [ %indvars.iv.next128.i, %bb.s ] ; 3 uses
  %.sroa.21.390.i = phi ptr [ %.sroa.21.7.i, %.lr.ph92.preheader.i ], [ %.sroa.21.8.i, %bb.s ] ; 3 uses
  %.sroa.15.389.i = phi i64 [ %.sroa.15.7.i, %.lr.ph92.preheader.i ], [ %.sroa.15.8.i, %bb.s ]
  %.sroa.0.388.i = phi i64 [ %.sroa.0.7.i35, %.lr.ph92.preheader.i ], [ %.sroa.0.8.i37, %bb.s ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv127.i
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !13, !alias.scope !54
  %i.fx = lshr i64 %i.fw, %indvars.iv131.i
  %i.fy = and i64 %i.fx, 1                        ; 2 uses
  %i.fz = shl nuw i64 %i.fy, %.sroa.0.388.i
  %i.ga = add i64 %i.fz, %.sroa.15.389.i          ; 2 uses
  %i.gb = add i64 %.sroa.0.388.i, 1               ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 64
  br i1 %i.gc, label %bb.r, label %stream_write_bit.exit44.i

bb.r:                                             ; preds = %.lr.ph92.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.21.390.i, i64 8
  store i64 %i.ga, ptr %.sroa.21.390.i, align 8, !tbaa !13, !noalias !55
  br label %stream_write_bit.exit44.i

stream_write_bit.exit44.i:                        ; preds = %bb.r, %.lr.ph92.i
  %.sroa.0.8.i37 = phi i64 [ 0, %bb.r ], [ %i.gb, %.lr.ph92.i ] ; 3 uses
  %.sroa.15.8.i = phi i64 [ 0, %bb.r ], [ %i.ga, %.lr.ph92.i ] ; 3 uses
  %.sroa.21.8.i = phi ptr [ %i.gd, %bb.r ], [ %.sroa.21.390.i, %.lr.ph92.i ] ; 3 uses
  %.not42.i = icmp eq i64 %i.fy, 0
  br i1 %.not42.i, label %bb.s, label %.critedge2.i

bb.s:                                             ; preds = %stream_write_bit.exit44.i
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1 ; 2 uses
  %exitcond130.not.i = icmp eq i64 %indvars.iv.next128.i, 255
  br i1 %exitcond130.not.i, label %.critedge.i, label %.lr.ph92.i

.critedge2.thread.i.loopexit53:                   ; preds = %bb.q
  %i.ge = add nuw nsw i32 %.137104.i, 1
  br label %.critedge.i

.critedge2.i:                                     ; preds = %stream_write_bit.exit44.i
  %i.gf = trunc nuw nsw i64 %indvars.iv127.i to i32
  %i.gg = add nuw nsw i32 %i.gf, 1
  br label %.lr.ph106.i

.critedge.i:                                      ; preds = %stream_write_bit.exit43.i, %bb.s, %.critedge2.thread.i.loopexit53, %.preheader76.i
  %.137.lcssa.i = phi i32 [ %.036118.i, %.preheader76.i ], [ 256, %bb.s ], [ %i.ge, %.critedge2.thread.i.loopexit53 ], [ %.137104.i, %stream_write_bit.exit43.i ]
  %.sroa.0.5.i34 = phi i64 [ %.sroa.0.6.i31.lcssa, %.preheader76.i ], [ %.sroa.0.8.i37, %bb.s ], [ %.sroa.0.7.i35, %.critedge2.thread.i.loopexit53 ], [ %.sroa.0.7.i35, %stream_write_bit.exit43.i ] ; 2 uses
  %.sroa.15.5.i = phi i64 [ %.sroa.15.6.i.lcssa, %.preheader76.i ], [ %.sroa.15.8.i, %bb.s ], [ %.sroa.15.7.i, %.critedge2.thread.i.loopexit53 ], [ %.sroa.15.7.i, %stream_write_bit.exit43.i ] ; 2 uses
  %.sroa.21.5.i = phi ptr [ %.sroa.21.6.i.lcssa, %.preheader76.i ], [ %.sroa.21.8.i, %bb.s ], [ %.sroa.21.7.i, %.critedge2.thread.i.loopexit53 ], [ %.sroa.21.7.i, %stream_write_bit.exit43.i ] ; 2 uses
  %indvars.iv.next132.i = add nsw i64 %indvars.iv131.i, -1
  %i.gh = icmp samesign ugt i64 %indvars.iv131.i, %i.da
  br i1 %i.gh, label %.preheader77.i, label %encode_many_ints_prec_uint64.exit

encode_many_ints_prec_uint64.exit:                ; preds = %.critedge.i, %bb.k
  %.sroa.0.0.lcssa.i25 = phi i64 [ %.sroa.0.0.copyload.i24, %bb.k ], [ %.sroa.0.5.i34, %.critedge.i ] ; 2 uses
  %.sroa.15.0.lcssa.i = phi i64 [ %.sroa.15.0.copyload.i, %bb.k ], [ %.sroa.15.5.i, %.critedge.i ]
  %.sroa.21.0.lcssa.i = phi ptr [ %.sroa.21.0.copyload.i, %bb.k ], [ %.sroa.21.5.i, %.critedge.i ] ; 2 uses
  %i.gi = ptrtoint ptr %.sroa.21.0.copyload.i to i64
  store i64 %.sroa.0.0.lcssa.i25, ptr %0, align 8, !tbaa !13, !alias.scope !53
  store i64 %.sroa.15.0.lcssa.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !tbaa !13, !alias.scope !53
  store ptr %.sroa.21.0.lcssa.i, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !51, !alias.scope !53
  %i.gj = ptrtoint ptr %.sroa.21.0.lcssa.i to i64
  %reass.add.i = sub i64 %i.gj, %i.gi
  %reass.mul.i = shl i64 %reass.add.i, 3
  %i.gk = sub i64 %.sroa.0.0.lcssa.i25, %.sroa.0.0.copyload.i24
  %i.gl = add i64 %i.gk, %reass.mul.i
  %i.gm = trunc i64 %i.gl to i32
  br label %bb.t

bb.t:                                             ; preds = %encode_many_ints_prec_uint64.exit, %encode_many_ints_uint64.exit
  %.0 = phi i32 [ %i.gm, %encode_many_ints_prec_uint64.exit ], [ %i.cx, %encode_many_ints_uint64.exit ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i64 0, 4294967296) i64 @zfp_encode_block_strided_double_4(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x double], align 256         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = shl nsw i64 %2, 2
  %i.c = sub nsw i64 %3, %i.b                     ; 16 uses
  %i.d = shl nsw i64 %3, 2
  %i.e = sub nsw i64 %4, %i.d                     ; 4 uses
  %i.f = shl nsw i64 %4, 2
  %i.g = sub nsw i64 %5, %i.f
  br label %.preheader29.i

.preheader29.i:                                   ; preds = %.preheader29.i, %bb.a
  %.041.i = phi i32 [ 0, %bb.a ], [ %i.hl, %.preheader29.i ]
  %.02340.i = phi ptr [ %i.a, %bb.a ], [ %i.hh, %.preheader29.i ] ; 65 uses
  %.02439.i = phi ptr [ %1, %bb.a ], [ %i.hm, %.preheader29.i ] ; 2 uses
  %i.h = load double, ptr %.02439.i, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %.02340.i, i64 8
  store double %i.h, ptr %.02340.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds [8 x i8], ptr %.02439.i, i64 %2 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %.02340.i, i64 16
  store double %i.k, ptr %i.i, align 8, !tbaa !11
  %i.m = getelementptr inbounds [8 x i8], ptr %i.j, i64 %2 ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %.02340.i, i64 24
  store double %i.n, ptr %i.l, align 8, !tbaa !11
  %i.p = getelementptr inbounds [8 x i8], ptr %i.m, i64 %2 ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %.02340.i, i64 32
  store double %i.q, ptr %i.o, align 8, !tbaa !11
  %i.s = getelementptr inbounds [8 x i8], ptr %i.p, i64 %2
  %i.t = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.c ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %.02340.i, i64 40
  store double %i.u, ptr %i.r, align 8, !tbaa !11
  %i.w = getelementptr inbounds [8 x i8], ptr %i.t, i64 %2 ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %.02340.i, i64 48
  store double %i.x, ptr %i.v, align 8, !tbaa !11
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %2 ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %.02340.i, i64 56
  store double %i.aa, ptr %i.y, align 8, !tbaa !11
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %2 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %.02340.i, i64 64
  store double %i.ad, ptr %i.ab, align 8, !tbaa !11
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %2
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.c ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %.02340.i, i64 72
  store double %i.ah, ptr %i.ae, align 8, !tbaa !11
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %2 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %.02340.i, i64 80
  store double %i.ak, ptr %i.ai, align 8, !tbaa !11
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %2 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %.02340.i, i64 88
  store double %i.an, ptr %i.al, align 8, !tbaa !11
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.am, i64 %2 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %.02340.i, i64 96
  store double %i.aq, ptr %i.ao, align 8, !tbaa !11
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %2
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.c ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %.02340.i, i64 104
  store double %i.au, ptr %i.ar, align 8, !tbaa !11
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.at, i64 %2 ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %.02340.i, i64 112
  store double %i.ax, ptr %i.av, align 8, !tbaa !11
  %i.az = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %2 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %.02340.i, i64 120
  store double %i.ba, ptr %i.ay, align 8, !tbaa !11
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.az, i64 %2 ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %.02340.i, i64 128
  store double %i.bd, ptr %i.bb, align 8, !tbaa !11
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %2
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.c
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.e ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %.02340.i, i64 136
  store double %i.bi, ptr %i.be, align 8, !tbaa !11
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %2 ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %.02340.i, i64 144
  store double %i.bl, ptr %i.bj, align 8, !tbaa !11
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %2 ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %.02340.i, i64 152
  store double %i.bo, ptr %i.bm, align 8, !tbaa !11
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %2 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %.02340.i, i64 160
  store double %i.br, ptr %i.bp, align 8, !tbaa !11
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %2
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.c ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %.02340.i, i64 168
  store double %i.bv, ptr %i.bs, align 8, !tbaa !11
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %2 ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %.02340.i, i64 176
  store double %i.by, ptr %i.bw, align 8, !tbaa !11
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %2 ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %.02340.i, i64 184
  store double %i.cb, ptr %i.bz, align 8, !tbaa !11
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %2 ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %.02340.i, i64 192
  store double %i.ce, ptr %i.cc, align 8, !tbaa !11
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %2
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.c ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !11
  %i.cj = getelementptr inbounds nuw i8, ptr %.02340.i, i64 200
  store double %i.ci, ptr %i.cf, align 8, !tbaa !11
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %2 ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !11
  %i.cm = getelementptr inbounds nuw i8, ptr %.02340.i, i64 208
  store double %i.cl, ptr %i.cj, align 8, !tbaa !11
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %2 ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !11
  %i.cp = getelementptr inbounds nuw i8, ptr %.02340.i, i64 216
  store double %i.co, ptr %i.cm, align 8, !tbaa !11
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %2 ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %.02340.i, i64 224
  store double %i.cr, ptr %i.cp, align 8, !tbaa !11
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %2
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.c ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !11
  %i.cw = getelementptr inbounds nuw i8, ptr %.02340.i, i64 232
  store double %i.cv, ptr %i.cs, align 8, !tbaa !11
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %2 ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !11
  %i.cz = getelementptr inbounds nuw i8, ptr %.02340.i, i64 240
  store double %i.cy, ptr %i.cw, align 8, !tbaa !11
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %2 ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %.02340.i, i64 248
  store double %i.db, ptr %i.cz, align 8, !tbaa !11
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.da, i64 %2 ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !11
  %i.df = getelementptr inbounds nuw i8, ptr %.02340.i, i64 256
  store double %i.de, ptr %i.dc, align 8, !tbaa !11
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %2
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.c
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.e ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !11
  %i.dk = getelementptr inbounds nuw i8, ptr %.02340.i, i64 264
  store double %i.dj, ptr %i.df, align 8, !tbaa !11
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.di, i64 %2 ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %.02340.i, i64 272
  store double %i.dm, ptr %i.dk, align 8, !tbaa !11
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %2 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !11
  %i.dq = getelementptr inbounds nuw i8, ptr %.02340.i, i64 280
  store double %i.dp, ptr %i.dn, align 8, !tbaa !11
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.do, i64 %2 ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !11
  %i.dt = getelementptr inbounds nuw i8, ptr %.02340.i, i64 288
  store double %i.ds, ptr %i.dq, align 8, !tbaa !11
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %2
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.c ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !11
  %i.dx = getelementptr inbounds nuw i8, ptr %.02340.i, i64 296
  store double %i.dw, ptr %i.dt, align 8, !tbaa !11
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %2 ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !11
  %i.ea = getelementptr inbounds nuw i8, ptr %.02340.i, i64 304
  store double %i.dz, ptr %i.dx, align 8, !tbaa !11
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %2 ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !11
  %i.ed = getelementptr inbounds nuw i8, ptr %.02340.i, i64 312
  store double %i.ec, ptr %i.ea, align 8, !tbaa !11
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %2 ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !11
  %i.eg = getelementptr inbounds nuw i8, ptr %.02340.i, i64 320
  store double %i.ef, ptr %i.ed, align 8, !tbaa !11
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %2
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.c ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !11
  %i.ek = getelementptr inbounds nuw i8, ptr %.02340.i, i64 328
  store double %i.ej, ptr %i.eg, align 8, !tbaa !11
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %2 ; 2 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !11
  %i.en = getelementptr inbounds nuw i8, ptr %.02340.i, i64 336
  store double %i.em, ptr %i.ek, align 8, !tbaa !11
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.el, i64 %2 ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !11
  %i.eq = getelementptr inbounds nuw i8, ptr %.02340.i, i64 344
  store double %i.ep, ptr %i.en, align 8, !tbaa !11
  %i.er = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %2 ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !11
  %i.et = getelementptr inbounds nuw i8, ptr %.02340.i, i64 352
  store double %i.es, ptr %i.eq, align 8, !tbaa !11
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.er, i64 %2
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.c ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !11
  %i.ex = getelementptr inbounds nuw i8, ptr %.02340.i, i64 360
  store double %i.ew, ptr %i.et, align 8, !tbaa !11
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %2 ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !11
  %i.fa = getelementptr inbounds nuw i8, ptr %.02340.i, i64 368
  store double %i.ez, ptr %i.ex, align 8, !tbaa !11
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %2 ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !11
  %i.fd = getelementptr inbounds nuw i8, ptr %.02340.i, i64 376
  store double %i.fc, ptr %i.fa, align 8, !tbaa !11
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %2 ; 2 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !11
  %i.fg = getelementptr inbounds nuw i8, ptr %.02340.i, i64 384
  store double %i.ff, ptr %i.fd, align 8, !tbaa !11
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %2
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.c
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.e ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !11
  %i.fl = getelementptr inbounds nuw i8, ptr %.02340.i, i64 392
  store double %i.fk, ptr %i.fg, align 8, !tbaa !11
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %2 ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !11
  %i.fo = getelementptr inbounds nuw i8, ptr %.02340.i, i64 400
  store double %i.fn, ptr %i.fl, align 8, !tbaa !11
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %2 ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !11
  %i.fr = getelementptr inbounds nuw i8, ptr %.02340.i, i64 408
  store double %i.fq, ptr %i.fo, align 8, !tbaa !11
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %2 ; 2 uses
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !11
  %i.fu = getelementptr inbounds nuw i8, ptr %.02340.i, i64 416
  store double %i.ft, ptr %i.fr, align 8, !tbaa !11
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %2
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %i.c ; 2 uses
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !11
  %i.fy = getelementptr inbounds nuw i8, ptr %.02340.i, i64 424
  store double %i.fx, ptr %i.fu, align 8, !tbaa !11
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %2 ; 2 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !11
  %i.gb = getelementptr inbounds nuw i8, ptr %.02340.i, i64 432
  store double %i.ga, ptr %i.fy, align 8, !tbaa !11
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %2 ; 2 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !11
  %i.ge = getelementptr inbounds nuw i8, ptr %.02340.i, i64 440
  store double %i.gd, ptr %i.gb, align 8, !tbaa !11
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %2 ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !11
  %i.gh = getelementptr inbounds nuw i8, ptr %.02340.i, i64 448
  store double %i.gg, ptr %i.ge, align 8, !tbaa !11
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %2
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.c ; 2 uses
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !11
  %i.gl = getelementptr inbounds nuw i8, ptr %.02340.i, i64 456
  store double %i.gk, ptr %i.gh, align 8, !tbaa !11
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %2 ; 2 uses
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !11
  %i.go = getelementptr inbounds nuw i8, ptr %.02340.i, i64 464
  store double %i.gn, ptr %i.gl, align 8, !tbaa !11
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %2 ; 2 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !11
  %i.gr = getelementptr inbounds nuw i8, ptr %.02340.i, i64 472
  store double %i.gq, ptr %i.go, align 8, !tbaa !11
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %2 ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !11
  %i.gu = getelementptr inbounds nuw i8, ptr %.02340.i, i64 480
  store double %i.gt, ptr %i.gr, align 8, !tbaa !11
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %2
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gv, i64 %i.c ; 2 uses
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !11
  %i.gy = getelementptr inbounds nuw i8, ptr %.02340.i, i64 488
  store double %i.gx, ptr %i.gu, align 8, !tbaa !11
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %2 ; 2 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !11
  %i.hb = getelementptr inbounds nuw i8, ptr %.02340.i, i64 496
  store double %i.ha, ptr %i.gy, align 8, !tbaa !11
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %2 ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !11
  %i.he = getelementptr inbounds nuw i8, ptr %.02340.i, i64 504
  store double %i.hd, ptr %i.hb, align 8, !tbaa !11
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %2 ; 2 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !11
  %i.hh = getelementptr inbounds nuw i8, ptr %.02340.i, i64 512
  store double %i.hg, ptr %i.he, align 8, !tbaa !11
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.hf, i64 %2
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.c
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.hj, i64 %i.e
  %i.hl = add nuw nsw i32 %.041.i, 1              ; 2 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.g
  %exitcond.not.i = icmp eq i32 %i.hl, 4
  br i1 %exitcond.not.i, label %gather_double_4.exit, label %.preheader29.i

gather_double_4.exit:                             ; preds = %.preheader29.i
  %i.hn = call i64 @zfp_encode_block_double_4(ptr noundef %0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.hn
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i64 0, 4294967296) i64 @zfp_encode_partial_block_strided_double_4(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x double], align 256         ; 334 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %.preheader106.us.preheader.i, label %.preheader113.lr.ph.i

.preheader113.lr.ph.i:                            ; preds = %bb.a
  %.not216.i = icmp eq i64 %4, 0
  %.not217.i = icmp eq i64 %3, 0
  %.not218.i = icmp eq i64 %2, 0
  %i.b = mul nsw i64 %6, %2
  %i.c = sub nsw i64 %7, %i.b                     ; 11 uses
  %i.d = mul i64 %7, %3                           ; 2 uses
  %i.e = sub nsw i64 %8, %i.d                     ; 2 uses
  %i.f = mul nsw i64 %8, %4
  %i.g = sub nsw i64 %9, %i.f
  br i1 %.not216.i, label %.preheader113.i.us.preheader, label %.preheader113.i.preheader

.preheader113.i.us.preheader:                     ; preds = %.preheader113.lr.ph.i
  %xtraiter41 = and i64 %5, 7                     ; 3 uses
  %i.h = icmp ult i64 %5, 8
  br i1 %i.h, label %.preheader113.i.us.epil.preheader, label %.preheader113.i.us.preheader.new

.preheader113.i.us.preheader.new:                 ; preds = %.preheader113.i.us.preheader
  %unroll_iter45 = and i64 %5, -8
  br label %.preheader113.i.us

.preheader113.i.preheader:                        ; preds = %.preheader113.lr.ph.i
  %i.i = shl nuw i64 %4, 7
  %i.j = sub i64 %8, %i.d
  %i.k = shl i64 %i.j, 3
  %i.l = add i64 %4, -1
  %i.m = mul i64 %i.k, %i.l
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.n = icmp ult i64 %2, 4
  %unroll_iter = and i64 %2, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod33 = icmp ne i64 %xtraiter, 0
  %xtraiter34 = and i64 %3, 7                     ; 3 uses
  %i.o = icmp ult i64 %3, 8
  %unroll_iter39 = and i64 %3, -8
  %lcmp.mod36.not = icmp eq i64 %xtraiter34, 0
  %lcmp.mod38 = icmp ne i64 %xtraiter34, 0
  br label %.preheader113.i

.preheader113.i.us:                               ; preds = %.preheader113.i.us, %.preheader113.i.us.preheader.new
  %.0149.i.us = phi i64 [ 0, %.preheader113.i.us.preheader.new ], [ %i.al, %.preheader113.i.us ] ; 9 uses
  %niter46 = phi i64 [ 0, %.preheader113.i.us.preheader.new ], [ %niter46.next.7, %.preheader113.i.us ]
  %.pre.i.us = shl i64 %.0149.i.us, 9
  %i.p = getelementptr i8, ptr %i.a, i64 %.pre.i.us
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(512) %i.p, i8 0, i64 512, i1 false)
  %i.q = shl i64 %.0149.i.us, 9
  %i.r = getelementptr i8, ptr %i.a, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(512) %i.s, i8 0, i64 512, i1 false)
  %i.t = shl i64 %.0149.i.us, 9
  %i.u = getelementptr i8, ptr %i.a, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 1024
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(512) %i.v, i8 0, i64 512, i1 false)
  %i.w = shl i64 %.0149.i.us, 9
  %i.x = getelementptr i8, ptr %i.a, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 1536
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(512) %i.y, i8 0, i64 512, i1 false)
  %i.z = shl i64 %.0149.i.us, 9
  %i.aa = getelementptr i8, ptr %i.a, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 2048
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(512) %i.ab, i8 0, i64 512, i1 false)
  %i.ac = shl i64 %.0149.i.us, 9
  %i.ad = getelementptr i8, ptr %i.a, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 2560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(512) %i.ae, i8 0, i64 512, i1 false)
  %i.af = shl i64 %.0149.i.us, 9
  %i.ag = getelementptr i8, ptr %i.a, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 3072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(512) %i.ah, i8 0, i64 512, i1 false)
  %i.ai = shl i64 %.0149.i.us, 9
  %i.aj = getelementptr i8, ptr %i.a, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 3584
  %i.al = add nuw i64 %.0149.i.us, 8              ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(512) %i.ak, i8 0, i64 512, i1 false)
  %niter46.next.7 = add nuw i64 %niter46, 8       ; 2 uses
  %niter46.ncmp.7 = icmp eq i64 %niter46.next.7, %unroll_iter45
  br i1 %niter46.ncmp.7, label %.preheader107.i.loopexit.unr-lcssa, label %.preheader113.i.us

.preheader113.i:                                  ; preds = %.preheader113.i.preheader, %.split.us.3.i
  %.0149.i = phi i64 [ %i.ye, %.split.us.3.i ], [ 0, %.preheader113.i.preheader ] ; 2 uses
  %.069148.i = phi ptr [ %i.yf, %.split.us.3.i ], [ %1, %.preheader113.i.preheader ] ; 2 uses
  %.pre.i = shl i64 %.0149.i, 9
  %i.am = getelementptr i8, ptr %i.a, i64 %.pre.i ; 85 uses
  br i1 %.not217.i, label %pad_block_double.exit93.3.i.preheader, label %.preheader111.us.i

pad_block_double.exit93.3.i.preheader:            ; preds = %.preheader113.i
  call void @llvm.memset.p0.i64(ptr align 256 %i.am, i8 0, i64 %i.i, i1 false), !tbaa !11
  %scevgep = getelementptr i8, ptr %.069148.i, i64 %i.m
  br label %.preheader112.i

.preheader111.us.i:                               ; preds = %.preheader113.i, %pad_block_double.exit93.us.3.i
  %.063121.us.i = phi i64 [ %i.dx, %pad_block_double.exit93.us.3.i ], [ 0, %.preheader113.i ] ; 2 uses
  %.170120.us.i = phi ptr [ %i.dy, %pad_block_double.exit93.us.3.i ], [ %.069148.i, %.preheader113.i ] ; 3 uses
  %.idx86.us.i = shl i64 %.063121.us.i, 7
  %i.an = getelementptr i8, ptr %i.am, i64 %.idx86.us.i ; 31 uses
  br i1 %.not218.i, label %pad_block_double.exit.us132.i.preheader, label %.preheader108.us.us.i

pad_block_double.exit.us132.i.preheader:          ; preds = %.preheader111.us.i
  br i1 %i.o, label %pad_block_double.exit.us132.i.epil.preheader, label %pad_block_double.exit.us132.i

pad_block_double.exit.us132.i:                    ; preds = %pad_block_double.exit.us132.i.preheader, %pad_block_double.exit.us132.i
  %.064117.us124.i = phi i64 [ %i.br, %pad_block_double.exit.us132.i ], [ 0, %pad_block_double.exit.us132.i.preheader ] ; 9 uses
  %.271116.us125.i = phi ptr [ %i.bs, %pad_block_double.exit.us132.i ], [ %.170120.us.i, %pad_block_double.exit.us132.i.preheader ]
  %niter40 = phi i64 [ %niter40.next.7, %pad_block_double.exit.us132.i ], [ 0, %pad_block_double.exit.us132.i.preheader ]
  %.idx84.us126.i = shl i64 %.064117.us124.i, 5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx84.us126.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %.271116.us125.i, i64 %i.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(32) %i.ao, i8 0, i64 32, i1 false)
  %i.aq = shl i64 %.064117.us124.i, 5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.as, i8 0, i64 32, i1 false)
  %i.au = shl i64 %.064117.us124.i, 5
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %i.aw, i8 0, i64 32, i1 false)
  %i.ay = shl i64 %.064117.us124.i, 5
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.ba, i8 0, i64 32, i1 false)
  %i.bc = shl i64 %.064117.us124.i, 5
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 128
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(32) %i.be, i8 0, i64 32, i1 false)
  %i.bg = shl i64 %.064117.us124.i, 5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 160
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.bi, i8 0, i64 32, i1 false)
  %i.bk = shl i64 %.064117.us124.i, 5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 192
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.c ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %i.bm, i8 0, i64 32, i1 false)
  %i.bo = shl i64 %.064117.us124.i, 5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 224
  %i.br = add nuw i64 %.064117.us124.i, 8         ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.c ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.bq, i8 0, i64 32, i1 false)
  %niter40.next.7 = add nuw i64 %niter40, 8       ; 2 uses
  %niter40.ncmp.7 = icmp eq i64 %niter40.next.7, %unroll_iter39
  br i1 %niter40.ncmp.7, label %..preheader110_crit_edge.us.i.loopexit.unr-lcssa, label %pad_block_double.exit.us132.i

.preheader108.us.us.i:                            ; preds = %.preheader111.us.i, %pad_block_double.exit.us.us.i
  %.064117.us.us.i = phi i64 [ %i.ct, %pad_block_double.exit.us.us.i ], [ 0, %.preheader111.us.i ] ; 2 uses
  %.271116.us.us.i = phi ptr [ %i.cu, %pad_block_double.exit.us.us.i ], [ %.170120.us.i, %.preheader111.us.i ] ; 2 uses
  %.idx87.us.us.i = shl i64 %.064117.us.us.i, 5
  %i.bt = getelementptr i8, ptr %i.an, i64 %.idx87.us.us.i ; 11 uses
  br i1 %i.n, label %.epil.preheader, label %.preheader108.us.us.i.new

.preheader108.us.us.i.new:                        ; preds = %.preheader108.us.us.i, %.preheader108.us.us.i.new
  %.066115.us.us.i = phi i64 [ %i.ci, %.preheader108.us.us.i.new ], [ 0, %.preheader108.us.us.i ] ; 5 uses
  %.372114.us.us.i = phi ptr [ %i.cj, %.preheader108.us.us.i.new ], [ %.271116.us.us.i, %.preheader108.us.us.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.preheader108.us.us.i.new ], [ 0, %.preheader108.us.us.i ]
  %i.bu = load double, ptr %.372114.us.us.i, align 8, !tbaa !11
  %i.bv = getelementptr [8 x i8], ptr %i.bt, i64 %.066115.us.us.i
  store double %i.bu, ptr %i.bv, align 32, !tbaa !11
  %i.bw = getelementptr inbounds [8 x i8], ptr %.372114.us.us.i, i64 %6 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !11
  %i.by = getelementptr [8 x i8], ptr %i.bt, i64 %.066115.us.us.i
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  store double %i.bx, ptr %i.bz, align 8, !tbaa !11
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %6 ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !11
  %i.cc = getelementptr [8 x i8], ptr %i.bt, i64 %.066115.us.us.i
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  store double %i.cb, ptr %i.cd, align 16, !tbaa !11
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %6 ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !11
end_hunk_0
