Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/decode4d?download=true
inline.NumInlined: 50
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 22
begin_hunk_0_@decode_ints_uint64:bb.a
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 2040 ; 2 uses
  br label %.preheader71.i

.preheader71.i:                                   ; preds = %.critedge.i, %.preheader71.preheader.i
  %indvars.iv120.i = phi i64 [ 63, %.preheader71.preheader.i ], [ %indvars.iv.next121.i, %.critedge.i ] ; 3 uses
  %.0109.i = phi i32 [ 0, %.preheader71.preheader.i ], [ %.1.lcssa.i35, %.critedge.i ] ; 5 uses
  %.sroa.0.0108.i = phi i64 [ %.sroa.0.0.copyload.i24, %.preheader71.preheader.i ], [ %.sroa.0.5.i36, %.critedge.i ] ; 2 uses
  %.sroa.18.0107.i = phi ptr [ %.sroa.18.0.copyload.i, %.preheader71.preheader.i ], [ %.sroa.18.5.i, %.critedge.i ] ; 2 uses
  %.sroa.12.0106.i = phi i64 [ %.sroa.12.0.copyload.i, %.preheader71.preheader.i ], [ %.sroa.12.5.i, %.critedge.i ] ; 2 uses
  %.not113.i = icmp eq i32 %.0109.i, 0
  %.pre = shl nuw i64 1, %indvars.iv120.i         ; 3 uses
  br i1 %.not113.i, label %.lr.ph97.i.preheader, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.preheader71.i
  %wide.trip.count.i27 = zext i32 %.0109.i to i64
  br label %bb.l

.preheader70.i:                                   ; preds = %bb.o
  %i.bb = icmp ult i32 %.0109.i, 256
  br i1 %i.bb, label %.lr.ph97.i.preheader, label %.critedge.i

.lr.ph97.i.preheader:                             ; preds = %.preheader71.i, %.preheader70.i
  %.sroa.0.295.i.ph = phi i64 [ %i.be, %.preheader70.i ], [ %.sroa.0.0108.i, %.preheader71.i ]
  %.sroa.18.294.i.ph = phi ptr [ %.sroa.18.6.i, %.preheader70.i ], [ %.sroa.18.0107.i, %.preheader71.i ]
  %.sroa.12.293.i.ph = phi i64 [ %i.bf, %.preheader70.i ], [ %.sroa.12.0106.i, %.preheader71.i ]
  br label %.lr.ph97.i

bb.l:                                             ; preds = %bb.o, %.lr.ph.i26
  %indvars.iv.i28 = phi i64 [ 0, %.lr.ph.i26 ], [ %indvars.iv.next.i33, %bb.o ] ; 2 uses
  %.sroa.0.176.i = phi i64 [ %.sroa.0.0108.i, %.lr.ph.i26 ], [ %i.be, %bb.o ] ; 2 uses
  %.sroa.18.175.i = phi ptr [ %.sroa.18.0107.i, %.lr.ph.i26 ], [ %.sroa.18.6.i, %bb.o ] ; 3 uses
  %.sroa.12.174.i = phi i64 [ %.sroa.12.0106.i, %.lr.ph.i26 ], [ %i.bf, %bb.o ]
  %.not.i.i29 = icmp eq i64 %.sroa.0.176.i, 0
  br i1 %.not.i.i29, label %bb.m, label %._crit_edge.i.i30

._crit_edge.i.i30:                                ; preds = %bb.l
  %i.bc = add i64 %.sroa.0.176.i, -1
  br label %stream_read_bit.exit.i31

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.18.175.i, i64 8
  %.in.i.sroa.speculate.load..i39 = load i64, ptr %.sroa.18.175.i, align 8, !tbaa !15, !noalias !46
  br label %stream_read_bit.exit.i31

stream_read_bit.exit.i31:                         ; preds = %bb.m, %._crit_edge.i.i30
  %.sroa.18.6.i = phi ptr [ %i.bd, %bb.m ], [ %.sroa.18.175.i, %._crit_edge.i.i30 ] ; 3 uses
  %.in.i.sroa.speculated.i32 = phi i64 [ %.in.i.sroa.speculate.load..i39, %bb.m ], [ %.sroa.12.174.i, %._crit_edge.i.i30 ] ; 2 uses
  %i.be = phi i64 [ 63, %bb.m ], [ %i.bc, %._crit_edge.i.i30 ] ; 3 uses
  %i.bf = lshr i64 %.in.i.sroa.speculated.i32, 1  ; 3 uses
  %i.bg = and i64 %.in.i.sroa.speculated.i32, 1
  %.not36.i = icmp eq i64 %i.bg, 0
  br i1 %.not36.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %stream_read_bit.exit.i31
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i28 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !15, !alias.scope !45
  %i.bj = add i64 %i.bi, %.pre
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !15, !alias.scope !45
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %stream_read_bit.exit.i31
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i28, 1 ; 2 uses
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, %wide.trip.count.i27
  br i1 %exitcond.not.i34, label %.preheader70.i, label %bb.l

.lr.ph97.i:                                       ; preds = %.lr.ph97.i.preheader, %.critedge2.i
  %.196.i = phi i32 [ %i.cc, %.critedge2.i ], [ %.0109.i, %.lr.ph97.i.preheader ] ; 3 uses
  %.sroa.0.295.i = phi i64 [ %i.bs, %.critedge2.i ], [ %.sroa.0.295.i.ph, %.lr.ph97.i.preheader ] ; 2 uses
  %.sroa.18.294.i = phi ptr [ %.sroa.18.8.i, %.critedge2.i ], [ %.sroa.18.294.i.ph, %.lr.ph97.i.preheader ] ; 3 uses
  %.sroa.12.293.i = phi i64 [ %i.bt, %.critedge2.i ], [ %.sroa.12.293.i.ph, %.lr.ph97.i.preheader ]
  %.not.i37.i = icmp eq i64 %.sroa.0.295.i, 0
  br i1 %.not.i37.i, label %bb.p, label %._crit_edge.i38.i

._crit_edge.i38.i:                                ; preds = %.lr.ph97.i
  %i.bk = add i64 %.sroa.0.295.i, -1
  br label %stream_read_bit.exit41.i

bb.p:                                             ; preds = %.lr.ph97.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.18.294.i, i64 8
  %.in.i40.sroa.speculate.load..i = load i64, ptr %.sroa.18.294.i, align 8, !tbaa !15, !noalias !46
  br label %stream_read_bit.exit41.i

stream_read_bit.exit41.i:                         ; preds = %bb.p, %._crit_edge.i38.i
  %.sroa.18.7.i = phi ptr [ %i.bl, %bb.p ], [ %.sroa.18.294.i, %._crit_edge.i38.i ] ; 3 uses
  %.in.i40.sroa.speculated.i = phi i64 [ %.in.i40.sroa.speculate.load..i, %bb.p ], [ %.sroa.12.293.i, %._crit_edge.i38.i ] ; 2 uses
  %i.bm = phi i64 [ 63, %bb.p ], [ %i.bk, %._crit_edge.i38.i ] ; 3 uses
  %i.bn = lshr i64 %.in.i40.sroa.speculated.i, 1  ; 3 uses
  %i.bo = and i64 %.in.i40.sroa.speculated.i, 1
  %.not.i37 = icmp eq i64 %i.bo, 0
  br i1 %.not.i37, label %.critedge.i, label %.preheader.i38

.preheader.i38:                                   ; preds = %stream_read_bit.exit41.i
  %i.bp = icmp samesign ult i32 %.196.i, 255
  br i1 %i.bp, label %.lr.ph84.i, label %.critedge2.thread.i

.lr.ph84.i:                                       ; preds = %.preheader.i38, %bb.r
  %.283.i = phi i32 [ %i.bv, %bb.r ], [ %.196.i, %.preheader.i38 ] ; 3 uses
  %.sroa.0.382.i = phi i64 [ %i.bs, %bb.r ], [ %i.bm, %.preheader.i38 ] ; 2 uses
  %.sroa.18.381.i = phi ptr [ %.sroa.18.8.i, %bb.r ], [ %.sroa.18.7.i, %.preheader.i38 ] ; 3 uses
  %.sroa.12.380.i = phi i64 [ %i.bt, %bb.r ], [ %i.bn, %.preheader.i38 ]
  %.not.i42.i = icmp eq i64 %.sroa.0.382.i, 0
  br i1 %.not.i42.i, label %bb.q, label %._crit_edge.i43.i

._crit_edge.i43.i:                                ; preds = %.lr.ph84.i
  %i.bq = add i64 %.sroa.0.382.i, -1
  br label %stream_read_bit.exit46.i

bb.q:                                             ; preds = %.lr.ph84.i
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.18.381.i, i64 8
  %.in.i45.sroa.speculate.load..i = load i64, ptr %.sroa.18.381.i, align 8, !tbaa !15, !noalias !46
  br label %stream_read_bit.exit46.i

stream_read_bit.exit46.i:                         ; preds = %bb.q, %._crit_edge.i43.i
  %.sroa.18.8.i = phi ptr [ %i.br, %bb.q ], [ %.sroa.18.381.i, %._crit_edge.i43.i ] ; 3 uses
  %.in.i45.sroa.speculated.i = phi i64 [ %.in.i45.sroa.speculate.load..i, %bb.q ], [ %.sroa.12.380.i, %._crit_edge.i43.i ] ; 2 uses
  %i.bs = phi i64 [ 63, %bb.q ], [ %i.bq, %._crit_edge.i43.i ] ; 3 uses
  %i.bt = lshr i64 %.in.i45.sroa.speculated.i, 1  ; 3 uses
  %i.bu = and i64 %.in.i45.sroa.speculated.i, 1
  %.not35.i = icmp eq i64 %i.bu, 0
  br i1 %.not35.i, label %bb.r, label %.critedge2.i

bb.r:                                             ; preds = %stream_read_bit.exit46.i
  %i.bv = add nuw nsw i32 %.283.i, 1              ; 2 uses
  %exitcond119.not.i = icmp eq i32 %i.bv, 255
  br i1 %exitcond119.not.i, label %.critedge2.thread.i, label %.lr.ph84.i

.critedge2.thread.i:                              ; preds = %.preheader.i38, %bb.r
  %.sroa.12.4.ph.i = phi i64 [ %i.bt, %bb.r ], [ %i.bn, %.preheader.i38 ]
  %.sroa.18.4.ph.i = phi ptr [ %.sroa.18.8.i, %bb.r ], [ %.sroa.18.7.i, %.preheader.i38 ]
  %.sroa.0.4.ph.i = phi i64 [ %i.bs, %bb.r ], [ %i.bm, %.preheader.i38 ]
  %i.bw = load i64, ptr %i.ba, align 8, !tbaa !15, !alias.scope !45
  %i.bx = add i64 %i.bw, %.pre
  store i64 %i.bx, ptr %i.ba, align 8, !tbaa !15, !alias.scope !45
  br label %.critedge.i

.critedge2.i:                                     ; preds = %stream_read_bit.exit46.i
  %i.by = zext nneg i32 %.283.i to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.by ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !15, !alias.scope !45
  %i.cb = add i64 %i.ca, %.pre
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !15, !alias.scope !45
  %i.cc = add nuw nsw i32 %.283.i, 1
  br label %.lr.ph97.i

.critedge.i:                                      ; preds = %stream_read_bit.exit41.i, %.critedge2.thread.i, %.preheader70.i
  %.1.lcssa.i35 = phi i32 [ %.0109.i, %.preheader70.i ], [ 256, %.critedge2.thread.i ], [ %.196.i, %stream_read_bit.exit41.i ]
  %.sroa.12.5.i = phi i64 [ %i.bf, %.preheader70.i ], [ %.sroa.12.4.ph.i, %.critedge2.thread.i ], [ %i.bn, %stream_read_bit.exit41.i ] ; 2 uses
  %.sroa.18.5.i = phi ptr [ %.sroa.18.6.i, %.preheader70.i ], [ %.sroa.18.4.ph.i, %.critedge2.thread.i ], [ %.sroa.18.7.i, %stream_read_bit.exit41.i ] ; 2 uses
  %.sroa.0.5.i36 = phi i64 [ %i.be, %.preheader70.i ], [ %.sroa.0.4.ph.i, %.critedge2.thread.i ], [ %i.bm, %stream_read_bit.exit41.i ] ; 2 uses
  %indvars.iv.next121.i = add nsw i64 %indvars.iv120.i, -1
  %i.cd = icmp samesign ugt i64 %indvars.iv120.i, %i.az
  br i1 %i.cd, label %.preheader71.i, label %decode_many_ints_prec_uint64.exit

decode_many_ints_prec_uint64.exit:                ; preds = %.critedge.i, %bb.k
  %.sroa.12.0.lcssa.i = phi i64 [ %.sroa.12.0.copyload.i, %bb.k ], [ %.sroa.12.5.i, %.critedge.i ]
  %.sroa.18.0.lcssa.i = phi ptr [ %.sroa.18.0.copyload.i, %bb.k ], [ %.sroa.18.5.i, %.critedge.i ] ; 2 uses
  %.sroa.0.0.lcssa.i25 = phi i64 [ %.sroa.0.0.copyload.i24, %bb.k ], [ %.sroa.0.5.i36, %.critedge.i ] ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.18.0.copyload.i to i64
  store i64 %.sroa.0.0.lcssa.i25, ptr %0, align 8, !tbaa !15, !alias.scope !44
  store i64 %.sroa.12.0.lcssa.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !15, !alias.scope !44
  store ptr %.sroa.18.0.lcssa.i, ptr %.sroa.16.0..sroa_idx.i, align 8, !tbaa !42, !alias.scope !44
  %i.cf = ptrtoint ptr %.sroa.18.0.lcssa.i to i64
  %reass.add = sub i64 %i.cf, %i.ce
  %reass.mul = shl i64 %reass.add, 3
  %.neg.i = sub i64 %.sroa.0.0.copyload.i24, %.sroa.0.0.lcssa.i25
  %i.cg = add i64 %.neg.i, %reass.mul
  %i.ch = trunc i64 %i.cg to i32
  br label %bb.s

bb.s:                                             ; preds = %decode_many_ints_prec_uint64.exit, %decode_many_ints_uint64.exit
  %.0 = phi i32 [ %i.ch, %decode_many_ints_prec_uint64.exit ], [ %i.aw, %decode_many_ints_uint64.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i64 0, 4294967296) i64 @zfp_decode_block_strided_double_4(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x double], align 256         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = call i64 @zfp_decode_block_double_4(ptr noundef %0, ptr noundef nonnull %i.a)
  %i.c = shl nsw i64 %2, 2
  %i.d = sub nsw i64 %3, %i.c                     ; 16 uses
  %i.e = shl nsw i64 %3, 2
  %i.f = sub nsw i64 %4, %i.e                     ; 4 uses
  %i.g = shl nsw i64 %4, 2
  %i.h = sub nsw i64 %5, %i.g
  br label %.preheader29.i

.preheader29.i:                                   ; preds = %.preheader29.i, %bb.a
  %.041.i = phi i32 [ 0, %bb.a ], [ %i.hm, %.preheader29.i ]
  %.02340.i = phi ptr [ %i.a, %bb.a ], [ %i.hh, %.preheader29.i ] ; 65 uses
  %.02439.i = phi ptr [ %1, %bb.a ], [ %i.hn, %.preheader29.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.02340.i, i64 8
  %i.j = load double, ptr %.02340.i, align 8, !tbaa !18
  store double %i.j, ptr %.02439.i, align 8, !tbaa !18
  %i.k = getelementptr inbounds [8 x i8], ptr %.02439.i, i64 %2 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.02340.i, i64 16
  %i.m = load double, ptr %i.i, align 8, !tbaa !18
  store double %i.m, ptr %i.k, align 8, !tbaa !18
  %i.n = getelementptr inbounds [8 x i8], ptr %i.k, i64 %2 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02340.i, i64 24
  %i.p = load double, ptr %i.l, align 8, !tbaa !18
  store double %i.p, ptr %i.n, align 8, !tbaa !18
  %i.q = getelementptr inbounds [8 x i8], ptr %i.n, i64 %2 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02340.i, i64 32
  %i.s = load double, ptr %i.o, align 8, !tbaa !18
  store double %i.s, ptr %i.q, align 8, !tbaa !18
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %2
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.d ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.02340.i, i64 40
  %i.w = load double, ptr %i.r, align 8, !tbaa !18
  store double %i.w, ptr %i.u, align 8, !tbaa !18
  %i.x = getelementptr inbounds [8 x i8], ptr %i.u, i64 %2 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02340.i, i64 48
  %i.z = load double, ptr %i.v, align 8, !tbaa !18
  store double %i.z, ptr %i.x, align 8, !tbaa !18
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %2 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02340.i, i64 56
  %i.ac = load double, ptr %i.y, align 8, !tbaa !18
  store double %i.ac, ptr %i.aa, align 8, !tbaa !18
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %2 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.02340.i, i64 64
  %i.af = load double, ptr %i.ab, align 8, !tbaa !18
  store double %i.af, ptr %i.ad, align 8, !tbaa !18
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %2
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.d ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.02340.i, i64 72
  %i.aj = load double, ptr %i.ae, align 8, !tbaa !18
  store double %i.aj, ptr %i.ah, align 8, !tbaa !18
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %2 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02340.i, i64 80
  %i.am = load double, ptr %i.ai, align 8, !tbaa !18
  store double %i.am, ptr %i.ak, align 8, !tbaa !18
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %2 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.02340.i, i64 88
  %i.ap = load double, ptr %i.al, align 8, !tbaa !18
  store double %i.ap, ptr %i.an, align 8, !tbaa !18
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.an, i64 %2 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02340.i, i64 96
  %i.as = load double, ptr %i.ao, align 8, !tbaa !18
  store double %i.as, ptr %i.aq, align 8, !tbaa !18
  %i.at = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %2
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.d ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.02340.i, i64 104
  %i.aw = load double, ptr %i.ar, align 8, !tbaa !18
  store double %i.aw, ptr %i.au, align 8, !tbaa !18
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.au, i64 %2 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02340.i, i64 112
  %i.az = load double, ptr %i.av, align 8, !tbaa !18
  store double %i.az, ptr %i.ax, align 8, !tbaa !18
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %2 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02340.i, i64 120
  %i.bc = load double, ptr %i.ay, align 8, !tbaa !18
  store double %i.bc, ptr %i.ba, align 8, !tbaa !18
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %2 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02340.i, i64 128
  %i.bf = load double, ptr %i.bb, align 8, !tbaa !18
  store double %i.bf, ptr %i.bd, align 8, !tbaa !18
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %2
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.d
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.f ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02340.i, i64 136
  %i.bk = load double, ptr %i.be, align 8, !tbaa !18
  store double %i.bk, ptr %i.bi, align 8, !tbaa !18
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %2 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.02340.i, i64 144
  %i.bn = load double, ptr %i.bj, align 8, !tbaa !18
  store double %i.bn, ptr %i.bl, align 8, !tbaa !18
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %2 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.02340.i, i64 152
  %i.bq = load double, ptr %i.bm, align 8, !tbaa !18
  store double %i.bq, ptr %i.bo, align 8, !tbaa !18
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %2 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02340.i, i64 160
  %i.bt = load double, ptr %i.bp, align 8, !tbaa !18
  store double %i.bt, ptr %i.br, align 8, !tbaa !18
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.br, i64 %2
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.d ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.02340.i, i64 168
  %i.bx = load double, ptr %i.bs, align 8, !tbaa !18
  store double %i.bx, ptr %i.bv, align 8, !tbaa !18
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %2 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.02340.i, i64 176
  %i.ca = load double, ptr %i.bw, align 8, !tbaa !18
  store double %i.ca, ptr %i.by, align 8, !tbaa !18
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.by, i64 %2 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.02340.i, i64 184
  %i.cd = load double, ptr %i.bz, align 8, !tbaa !18
  store double %i.cd, ptr %i.cb, align 8, !tbaa !18
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %2 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02340.i, i64 192
  %i.cg = load double, ptr %i.cc, align 8, !tbaa !18
  store double %i.cg, ptr %i.ce, align 8, !tbaa !18
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %2
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.d ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.02340.i, i64 200
  %i.ck = load double, ptr %i.cf, align 8, !tbaa !18
  store double %i.ck, ptr %i.ci, align 8, !tbaa !18
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %2 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02340.i, i64 208
  %i.cn = load double, ptr %i.cj, align 8, !tbaa !18
  store double %i.cn, ptr %i.cl, align 8, !tbaa !18
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %2 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.02340.i, i64 216
  %i.cq = load double, ptr %i.cm, align 8, !tbaa !18
  store double %i.cq, ptr %i.co, align 8, !tbaa !18
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.co, i64 %2 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.02340.i, i64 224
  %i.ct = load double, ptr %i.cp, align 8, !tbaa !18
  store double %i.ct, ptr %i.cr, align 8, !tbaa !18
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %2
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.d ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.02340.i, i64 232
  %i.cx = load double, ptr %i.cs, align 8, !tbaa !18
  store double %i.cx, ptr %i.cv, align 8, !tbaa !18
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %2 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.02340.i, i64 240
  %i.da = load double, ptr %i.cw, align 8, !tbaa !18
  store double %i.da, ptr %i.cy, align 8, !tbaa !18
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %2 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.02340.i, i64 248
  %i.dd = load double, ptr %i.cz, align 8, !tbaa !18
  store double %i.dd, ptr %i.db, align 8, !tbaa !18
  %i.de = getelementptr inbounds [8 x i8], ptr %i.db, i64 %2 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.02340.i, i64 256
  %i.dg = load double, ptr %i.dc, align 8, !tbaa !18
  store double %i.dg, ptr %i.de, align 8, !tbaa !18
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.de, i64 %2
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.d
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.f ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.02340.i, i64 264
  %i.dl = load double, ptr %i.df, align 8, !tbaa !18
  store double %i.dl, ptr %i.dj, align 8, !tbaa !18
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %2 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.02340.i, i64 272
  %i.do = load double, ptr %i.dk, align 8, !tbaa !18
  store double %i.do, ptr %i.dm, align 8, !tbaa !18
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %2 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.02340.i, i64 280
  %i.dr = load double, ptr %i.dn, align 8, !tbaa !18
  store double %i.dr, ptr %i.dp, align 8, !tbaa !18
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %2 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.02340.i, i64 288
  %i.du = load double, ptr %i.dq, align 8, !tbaa !18
  store double %i.du, ptr %i.ds, align 8, !tbaa !18
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %2
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.d ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.02340.i, i64 296
  %i.dy = load double, ptr %i.dt, align 8, !tbaa !18
  store double %i.dy, ptr %i.dw, align 8, !tbaa !18
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %2 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.02340.i, i64 304
  %i.eb = load double, ptr %i.dx, align 8, !tbaa !18
  store double %i.eb, ptr %i.dz, align 8, !tbaa !18
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %2 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.02340.i, i64 312
  %i.ee = load double, ptr %i.ea, align 8, !tbaa !18
  store double %i.ee, ptr %i.ec, align 8, !tbaa !18
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %2 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.02340.i, i64 320
  %i.eh = load double, ptr %i.ed, align 8, !tbaa !18
  store double %i.eh, ptr %i.ef, align 8, !tbaa !18
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %2
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.d ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.02340.i, i64 328
  %i.el = load double, ptr %i.eg, align 8, !tbaa !18
  store double %i.el, ptr %i.ej, align 8, !tbaa !18
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %2 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.02340.i, i64 336
  %i.eo = load double, ptr %i.ek, align 8, !tbaa !18
  store double %i.eo, ptr %i.em, align 8, !tbaa !18
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.em, i64 %2 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.02340.i, i64 344
  %i.er = load double, ptr %i.en, align 8, !tbaa !18
  store double %i.er, ptr %i.ep, align 8, !tbaa !18
  %i.es = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %2 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.02340.i, i64 352
  %i.eu = load double, ptr %i.eq, align 8, !tbaa !18
  store double %i.eu, ptr %i.es, align 8, !tbaa !18
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.es, i64 %2
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.d ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.02340.i, i64 360
  %i.ey = load double, ptr %i.et, align 8, !tbaa !18
  store double %i.ey, ptr %i.ew, align 8, !tbaa !18
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %2 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.02340.i, i64 368
  %i.fb = load double, ptr %i.ex, align 8, !tbaa !18
  store double %i.fb, ptr %i.ez, align 8, !tbaa !18
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %2 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.02340.i, i64 376
  %i.fe = load double, ptr %i.fa, align 8, !tbaa !18
  store double %i.fe, ptr %i.fc, align 8, !tbaa !18
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %2 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.02340.i, i64 384
  %i.fh = load double, ptr %i.fd, align 8, !tbaa !18
  store double %i.fh, ptr %i.ff, align 8, !tbaa !18
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %2
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.d
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.f ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.02340.i, i64 392
  %i.fm = load double, ptr %i.fg, align 8, !tbaa !18
  store double %i.fm, ptr %i.fk, align 8, !tbaa !18
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %2 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.02340.i, i64 400
  %i.fp = load double, ptr %i.fl, align 8, !tbaa !18
  store double %i.fp, ptr %i.fn, align 8, !tbaa !18
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %2 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.02340.i, i64 408
  %i.fs = load double, ptr %i.fo, align 8, !tbaa !18
  store double %i.fs, ptr %i.fq, align 8, !tbaa !18
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %2 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.02340.i, i64 416
  %i.fv = load double, ptr %i.fr, align 8, !tbaa !18
  store double %i.fv, ptr %i.ft, align 8, !tbaa !18
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %2
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.d ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.02340.i, i64 424
  %i.fz = load double, ptr %i.fu, align 8, !tbaa !18
  store double %i.fz, ptr %i.fx, align 8, !tbaa !18
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %2 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.02340.i, i64 432
  %i.gc = load double, ptr %i.fy, align 8, !tbaa !18
  store double %i.gc, ptr %i.ga, align 8, !tbaa !18
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %2 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.02340.i, i64 440
  %i.gf = load double, ptr %i.gb, align 8, !tbaa !18
  store double %i.gf, ptr %i.gd, align 8, !tbaa !18
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %2 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.02340.i, i64 448
  %i.gi = load double, ptr %i.ge, align 8, !tbaa !18
  store double %i.gi, ptr %i.gg, align 8, !tbaa !18
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %2
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.d ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.02340.i, i64 456
  %i.gm = load double, ptr %i.gh, align 8, !tbaa !18
  store double %i.gm, ptr %i.gk, align 8, !tbaa !18
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %2 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.02340.i, i64 464
  %i.gp = load double, ptr %i.gl, align 8, !tbaa !18
  store double %i.gp, ptr %i.gn, align 8, !tbaa !18
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %2 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.02340.i, i64 472
  %i.gs = load double, ptr %i.go, align 8, !tbaa !18
  store double %i.gs, ptr %i.gq, align 8, !tbaa !18
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %2 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.02340.i, i64 480
  %i.gv = load double, ptr %i.gr, align 8, !tbaa !18
  store double %i.gv, ptr %i.gt, align 8, !tbaa !18
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %2
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.d ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.02340.i, i64 488
  %i.gz = load double, ptr %i.gu, align 8, !tbaa !18
  store double %i.gz, ptr %i.gx, align 8, !tbaa !18
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %2 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.02340.i, i64 496
  %i.hc = load double, ptr %i.gy, align 8, !tbaa !18
  store double %i.hc, ptr %i.ha, align 8, !tbaa !18
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %2 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.02340.i, i64 504
  %i.hf = load double, ptr %i.hb, align 8, !tbaa !18
  store double %i.hf, ptr %i.hd, align 8, !tbaa !18
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.hd, i64 %2 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.02340.i, i64 512
  %i.hi = load double, ptr %i.he, align 8, !tbaa !18
  store double %i.hi, ptr %i.hg, align 8, !tbaa !18
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.hg, i64 %2
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.hj, i64 %i.d
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.f
  %i.hm = add nuw nsw i32 %.041.i, 1              ; 2 uses
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.h
  %exitcond.not.i = icmp eq i32 %i.hm, 4
  br i1 %exitcond.not.i, label %scatter_double_4.exit, label %.preheader29.i

scatter_double_4.exit:                            ; preds = %.preheader29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i64 0, 4294967296) i64 @zfp_decode_partial_block_strided_double_4(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x double], align 256         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = call i64 @zfp_decode_block_double_4(ptr noundef %0, ptr noundef nonnull %i.a)
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %scatter_partial_double_4.exit, label %.preheader46.lr.ph.i

.preheader46.lr.ph.i:                             ; preds = %bb.a
  %.not88.i = icmp eq i64 %4, 0
  %.not90.i = icmp eq i64 %2, 0
  %i.c = mul nsw i64 %6, %2
  %i.d = sub nsw i64 %7, %i.c
  %i.e = sub i64 4, %2
  %i.f = mul nsw i64 %7, %3
  %i.g = sub nsw i64 %8, %i.f
  %i.h = shl i64 %3, 2
  %i.i = sub i64 16, %i.h
  %i.j = mul nsw i64 %8, %4
  %i.k = sub nsw i64 %9, %i.j
  %i.l = shl i64 %4, 4
  %i.m = sub i64 64, %i.l
  %.not89.i = icmp eq i64 %3, 0
  %or.cond.i = or i1 %.not89.i, %.not88.i
  %brmerge.i = or i1 %.not90.i, %or.cond.i
  br i1 %brmerge.i, label %scatter_partial_double_4.exit, label %.preheader46.us.us.i.preheader

.preheader46.us.us.i.preheader:                   ; preds = %.preheader46.lr.ph.i
  %i.n = add i64 %2, -1
  %xtraiter = and i64 %2, 7                       ; 3 uses
  %i.o = icmp ult i64 %i.n, 7
  %unroll_iter = and i64 %2, -8
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod43 = icmp ne i64 %xtraiter, 0
  br label %.preheader46.us.us.i

.preheader46.us.us.i:                             ; preds = %.preheader46.us.us.i.preheader, %._crit_edge.split.us.split.us.us.us.i
  %.076.us.us.i = phi i64 [ %i.ay, %._crit_edge.split.us.split.us.us.us.i ], [ 0, %.preheader46.us.us.i.preheader ]
  %.03775.us.us.i = phi ptr [ %i.ba, %._crit_edge.split.us.split.us.us.us.i ], [ %i.a, %.preheader46.us.us.i.preheader ]
  %.03874.us.us.i = phi ptr [ %i.az, %._crit_edge.split.us.split.us.us.us.i ], [ %1, %.preheader46.us.us.i.preheader ]
  br label %.preheader45.us.us.us.us.i

.preheader45.us.us.us.us.i:                       ; preds = %._crit_edge54.split.us.us.us.us.us.i, %.preheader46.us.us.i
  %.03460.us.us.us.us.i = phi i64 [ 0, %.preheader46.us.us.i ], [ %i.av, %._crit_edge54.split.us.us.us.us.us.i ]
  %.159.us.us.us.us.i = phi ptr [ %.03775.us.us.i, %.preheader46.us.us.i ], [ %i.ax, %._crit_edge54.split.us.us.us.us.us.i ]
  %.13958.us.us.us.us.i = phi ptr [ %.03874.us.us.i, %.preheader46.us.us.i ], [ %i.aw, %._crit_edge54.split.us.us.us.us.us.i ]
  br label %.preheader.us.us.us.us.us.i

.preheader.us.us.us.us.us.i:                      ; preds = %._crit_edge.us.us.us.us.us.i, %.preheader45.us.us.us.us.i
  %.03553.us.us.us.us.us.i = phi i64 [ 0, %.preheader45.us.us.us.us.i ], [ %i.as, %._crit_edge.us.us.us.us.us.i ]
  %.252.us.us.us.us.us.i = phi ptr [ %.159.us.us.us.us.i, %.preheader45.us.us.us.us.i ], [ %i.au, %._crit_edge.us.us.us.us.us.i ] ; 2 uses
  %.24051.us.us.us.us.us.i = phi ptr [ %.13958.us.us.us.us.i, %.preheader45.us.us.us.us.i ], [ %i.at, %._crit_edge.us.us.us.us.us.i ] ; 2 uses
  br i1 %i.o, label %.epil.preheader, label %.preheader.us.us.us.us.us.i.new

.preheader.us.us.us.us.us.i.new:                  ; preds = %.preheader.us.us.us.us.us.i, %.preheader.us.us.us.us.us.i.new
  %.348.us.us.us.us.us.i = phi ptr [ %i.am, %.preheader.us.us.us.us.us.i.new ], [ %.252.us.us.us.us.us.i, %.preheader.us.us.us.us.us.i ] ; 9 uses
  %.34147.us.us.us.us.us.i = phi ptr [ %i.al, %.preheader.us.us.us.us.us.i.new ], [ %.24051.us.us.us.us.us.i, %.preheader.us.us.us.us.us.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.7, %.preheader.us.us.us.us.us.i.new ], [ 0, %.preheader.us.us.us.us.us.i ]
  %i.p = load double, ptr %.348.us.us.us.us.us.i, align 8, !tbaa !18
  store double %i.p, ptr %.34147.us.us.us.us.us.i, align 8, !tbaa !18
  %i.q = getelementptr inbounds [8 x i8], ptr %.34147.us.us.us.us.us.i, i64 %6 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.348.us.us.us.us.us.i, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !18
  store double %i.s, ptr %i.q, align 8, !tbaa !18
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %6 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.348.us.us.us.us.us.i, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !18
  store double %i.v, ptr %i.t, align 8, !tbaa !18
  %i.w = getelementptr inbounds [8 x i8], ptr %i.t, i64 %6 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.348.us.us.us.us.us.i, i64 24
  %i.y = load double, ptr %i.x, align 8, !tbaa !18
  store double %i.y, ptr %i.w, align 8, !tbaa !18
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %6 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.348.us.us.us.us.us.i, i64 32
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !18
  store double %i.ab, ptr %i.z, align 8, !tbaa !18
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %6 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.348.us.us.us.us.us.i, i64 40
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !18
  store double %i.ae, ptr %i.ac, align 8, !tbaa !18
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %6 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.348.us.us.us.us.us.i, i64 48
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !18
  store double %i.ah, ptr %i.af, align 8, !tbaa !18
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %6 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.348.us.us.us.us.us.i, i64 56
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !18
  store double %i.ak, ptr %i.ai, align 8, !tbaa !18
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %6 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.348.us.us.us.us.us.i, i64 64 ; 3 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.us.us.us.us.i.unr-lcssa, label %.preheader.us.us.us.us.us.i.new

._crit_edge.us.us.us.us.us.i.unr-lcssa:           ; preds = %.preheader.us.us.us.us.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.us.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.i.unr-lcssa, %.preheader.us.us.us.us.us.i
  %.348.us.us.us.us.us.i.epil.init = phi ptr [ %.252.us.us.us.us.us.i, %.preheader.us.us.us.us.us.i ], [ %i.am, %._crit_edge.us.us.us.us.us.i.unr-lcssa ]
  %.34147.us.us.us.us.us.i.epil.init = phi ptr [ %.24051.us.us.us.us.us.i, %.preheader.us.us.us.us.us.i ], [ %i.al, %._crit_edge.us.us.us.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.348.us.us.us.us.us.i.epil = phi ptr [ %.348.us.us.us.us.us.i.epil.init, %.epil.preheader ], [ %i.ap, %bb.b ] ; 2 uses
  %.34147.us.us.us.us.us.i.epil = phi ptr [ %.34147.us.us.us.us.us.i.epil.init, %.epil.preheader ], [ %i.ao, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.an = load double, ptr %.348.us.us.us.us.us.i.epil, align 8, !tbaa !18
  store double %i.an, ptr %.34147.us.us.us.us.us.i.epil, align 8, !tbaa !18
  %i.ao = getelementptr inbounds [8 x i8], ptr %.34147.us.us.us.us.us.i.epil, i64 %6
  %i.ap = getelementptr inbounds nuw i8, ptr %.348.us.us.us.us.us.i.epil, i64 8 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us.us.us.i, label %bb.b, !llvm.loop !47

._crit_edge.us.us.us.us.us.i:                     ; preds = %bb.b, %._crit_edge.us.us.us.us.us.i.unr-lcssa
  %i.aq = phi ptr [ %i.ai, %._crit_edge.us.us.us.us.us.i.unr-lcssa ], [ %.34147.us.us.us.us.us.i.epil, %bb.b ]
  %.lcssa = phi ptr [ %i.am, %._crit_edge.us.us.us.us.us.i.unr-lcssa ], [ %i.ap, %bb.b ]
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %6
  %i.as = add nuw i64 %.03553.us.us.us.us.us.i, 1 ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.d ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %i.e ; 2 uses
  %exitcond104.not.i = icmp eq i64 %i.as, %3
  br i1 %exitcond104.not.i, label %._crit_edge54.split.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.i

._crit_edge54.split.us.us.us.us.us.i:             ; preds = %._crit_edge.us.us.us.us.us.i
  %i.av = add nuw i64 %.03460.us.us.us.us.i, 1    ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.g ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.i ; 2 uses
  %exitcond105.not.i = icmp eq i64 %i.av, %4
  br i1 %exitcond105.not.i, label %._crit_edge.split.us.split.us.us.us.i, label %.preheader45.us.us.us.us.i

._crit_edge.split.us.split.us.us.us.i:            ; preds = %._crit_edge54.split.us.us.us.us.us.i
  %i.ay = add nuw i64 %.076.us.us.i, 1            ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.k
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.m
  %exitcond106.not.i = icmp eq i64 %i.ay, %5
  br i1 %exitcond106.not.i, label %scatter_partial_double_4.exit, label %.preheader46.us.us.i

scatter_partial_double_4.exit:                    ; preds = %._crit_edge.split.us.split.us.us.us.i, %bb.a, %.preheader46.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %i.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
end_hunk_0
