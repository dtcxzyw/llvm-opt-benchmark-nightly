begin_hunk_0_@ff_sws_op_list_is_noop:bb.a
  %i.e = icmp ne i32 %i.d, 1
  %i.f = sext i32 %i.b to i64
  %i.g = getelementptr [480 x i8], ptr %i.c, i64 %i.f ; 6 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -480
  %i.i = load i32, ptr %i.h, align 8, !tbaa !14
  %i.j = icmp ne i32 %i.i, 2
  %or.cond.not44 = select i1 %i.e, i1 true, i1 %i.j
  %i.k = icmp sgt i32 %i.b, 2
  %or.cond41 = or i1 %i.k, %or.cond.not44
  br i1 %or.cond41, label %.critedge, label %bb.b

bb.b:                                             ; preds = %ff_sws_op_list_output.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19
  %i.n = getelementptr i8, ptr %i.g, i64 -476
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19
  %.not30 = icmp eq i32 %i.m, %i.o
  br i1 %.not30, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !12   ; 3 uses
  %i.r = getelementptr i8, ptr %i.g, i64 -472
  %i.s = load i32, ptr %i.r, align 8, !tbaa !12
  %.not31 = icmp eq i32 %i.q, %i.s
  br i1 %.not31, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.u = load i8, ptr %i.t, align 4, !tbaa !12    ; 3 uses
  %i.v = getelementptr i8, ptr %i.g, i64 -468
  %i.w = load i8, ptr %i.v, align 4, !tbaa !12
  %.not32 = icmp eq i8 %i.u, %i.w
  br i1 %.not32, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.y = load i8, ptr %i.x, align 1, !tbaa !12
  %i.z = getelementptr i8, ptr %i.g, i64 -467
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !12
  %.not33 = icmp eq i8 %i.y, %i.aa
  br i1 %.not33, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !12
  %.not34 = icmp eq i32 %i.ac, 0
  br i1 %.not34, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %i.g, i64 -464
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !12
  %.not35 = icmp eq i32 %i.ae, 0
  br i1 %.not35, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.af = icmp eq i32 %i.q, 0
  br i1 %i.af, label %ff_sws_rw_op_planes.exit, label %.lr.ph

ff_sws_rw_op_planes.exit:                         ; preds = %bb.h
  %i.ag = zext i8 %i.u to i32
  %.not37.not45.not = icmp eq i8 %i.u, 0
  br i1 %.not37.not45.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %ff_sws_rw_op_planes.exit
  %.0.i4054 = phi i32 [ %i.ag, %ff_sws_rw_op_planes.exit ], [ %i.q, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 292
  %wide.trip.count = zext nneg i32 %.0.i4054 to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv
  %i.am = load i8, ptr %i.al, align 1, !tbaa !12
  %.not36 = icmp eq i8 %i.ak, %i.am               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %.not36, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.i, label %.critedge, !llvm.loop !62

.critedge:                                        ; preds = %bb.i, %ff_sws_rw_op_planes.exit, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %ff_sws_op_list_output.exit, %bb.a
  %.3 = phi i1 [ true, %bb.a ], [ false, %ff_sws_op_list_output.exit ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ true, %ff_sws_rw_op_planes.exit ], [ %.not36, %bb.i ]
  ret i1 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 5) i32 @ff_sws_op_list_max_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !37     ; 5 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %i.b, 4
  br i1 %i.e, label %switch.lookup.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %switch.lookup

._crit_edge.loopexit.unr-lcssa:                   ; preds = %switch.lookup
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %switch.lookup.epil.preheader

switch.lookup.epil.preheader:                     ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.012.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %switch.lookup.epil

switch.lookup.epil:                               ; preds = %switch.lookup.epil, %switch.lookup.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %switch.lookup.epil.preheader ], [ %indvars.iv.next.epil, %switch.lookup.epil ] ; 2 uses
  %.012.epil = phi i32 [ %.012.epil.init, %switch.lookup.epil.preheader ], [ %i.k, %switch.lookup.epil ]
  %epil.iter = phi i64 [ 0, %switch.lookup.epil.preheader ], [ %epil.iter.next, %switch.lookup.epil ]
  %i.f = getelementptr inbounds nuw [480 x i8], ptr %i.d, i64 %indvars.iv.epil
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr i8, ptr @switch.table.ff_sws_op_list_max_size, i64 %i.i
  %switch.gep.epil = getelementptr i8, ptr %i.j, i64 -1
  %switch.load.epil = load i8, ptr %switch.gep.epil, align 1
  %switch.ext.epil = zext i8 %switch.load.epil to i32
  %i.k = tail call i32 @llvm.umax.i32(i32 %.012.epil, i32 %switch.ext.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %switch.lookup.epil, !llvm.loop !63

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %switch.lookup.epil, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ], [ %i.k, %switch.lookup.epil ]
  ret i32 %.0.lcssa

switch.lookup:                                    ; preds = %switch.lookup, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %switch.lookup ] ; 5 uses
  %.012 = phi i32 [ 0, %.lr.ph.new ], [ %i.ai, %switch.lookup ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %switch.lookup ]
  %i.l = getelementptr inbounds nuw [480 x i8], ptr %i.d, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr i8, ptr @switch.table.ff_sws_op_list_max_size, i64 %i.o
  %switch.gep = getelementptr i8, ptr %i.p, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.q = tail call i32 @llvm.umax.i32(i32 %.012, i32 %switch.ext)
  %i.r = getelementptr inbounds nuw [480 x i8], ptr %i.d, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 484
  %i.t = load i32, ptr %i.s, align 4, !tbaa !19
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr i8, ptr @switch.table.ff_sws_op_list_max_size, i64 %i.u
  %switch.gep.1 = getelementptr i8, ptr %i.v, i64 -1
  %switch.load.1 = load i8, ptr %switch.gep.1, align 1
  %switch.ext.1 = zext i8 %switch.load.1 to i32
  %i.w = tail call i32 @llvm.umax.i32(i32 %i.q, i32 %switch.ext.1)
  %i.x = getelementptr inbounds nuw [480 x i8], ptr %i.d, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 964
  %i.z = load i32, ptr %i.y, align 4, !tbaa !19
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr i8, ptr @switch.table.ff_sws_op_list_max_size, i64 %i.aa
  %switch.gep.2 = getelementptr i8, ptr %i.ab, i64 -1
  %switch.load.2 = load i8, ptr %switch.gep.2, align 1
  %switch.ext.2 = zext i8 %switch.load.2 to i32
  %i.ac = tail call i32 @llvm.umax.i32(i32 %i.w, i32 %switch.ext.2)
  %i.ad = getelementptr inbounds nuw [480 x i8], ptr %i.d, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1444
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !19
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr i8, ptr @switch.table.ff_sws_op_list_max_size, i64 %i.ag
  %switch.gep.3 = getelementptr i8, ptr %i.ah, i64 -1
  %switch.load.3 = load i8, ptr %switch.gep.3, align 1
  %switch.ext.3 = zext i8 %switch.load.3 to i32
  %i.ai = tail call i32 @llvm.umax.i32(i32 %i.ac, i32 %switch.ext.3) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %switch.lookup, !llvm.loop !64
}

; Function Attrs: nounwind uwtable
define range(i32 0, 1048576) i32 @ff_sws_linear_mask(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
.preheader:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call i32 @av_cmp_q64(i64 %i.a, i64 %i.c, i64 1, i64 1) #15
  %.not = icmp ne i32 %i.d, 0
  %i.e = zext i1 %.not to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call i32 @av_cmp_q64(i64 %i.g, i64 %i.i, i64 0, i64 1) #15
  %.not.1 = icmp eq i32 %i.j, 0
  %1 = select i1 %.not.1, i32 0, i32 2
  %.2.1 = or disjoint i32 %1, %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8
  %i.o = tail call i32 @av_cmp_q64(i64 %i.l, i64 %i.n, i64 0, i64 1) #15
  %.not.2 = icmp eq i32 %i.o, 0
  %2 = select i1 %.not.2, i32 0, i32 4
  %.2.2 = or disjoint i32 %2, %.2.1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load i64, ptr %i.r, align 8
  %i.t = tail call i32 @av_cmp_q64(i64 %i.q, i64 %i.s, i64 0, i64 1) #15
  %.not.3 = icmp eq i32 %i.t, 0
  %3 = select i1 %.not.3, i32 0, i32 8
  %.2.3 = or disjoint i32 %3, %.2.2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load i64, ptr %i.w, align 8
  %i.y = tail call i32 @av_cmp_q64(i64 %i.v, i64 %i.x, i64 0, i64 1) #15
  %.not.4 = icmp eq i32 %i.y, 0
  %4 = select i1 %.not.4, i32 0, i32 16
  %.2.4 = or disjoint i32 %4, %.2.3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = tail call i32 @av_cmp_q64(i64 %i.aa, i64 %i.ac, i64 0, i64 1) #15
  %.not.120 = icmp eq i32 %i.ad, 0
  %5 = select i1 %.not.120, i32 0, i32 32
  %.2.121 = or disjoint i32 %5, %.2.4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = tail call i32 @av_cmp_q64(i64 %i.af, i64 %i.ah, i64 1, i64 1) #15
  %.not.1.1 = icmp eq i32 %i.ai, 0
  %6 = select i1 %.not.1.1, i32 0, i32 64
  %.2.1.1 = or i32 %6, %.2.121
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load i64, ptr %i.al, align 8
  %i.an = tail call i32 @av_cmp_q64(i64 %i.ak, i64 %i.am, i64 0, i64 1) #15
  %.not.2.1 = icmp eq i32 %i.an, 0
  %7 = select i1 %.not.2.1, i32 0, i32 128
  %.2.2.1 = or i32 %7, %.2.1.1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = tail call i32 @av_cmp_q64(i64 %i.ap, i64 %i.ar, i64 0, i64 1) #15
  %.not.3.1 = icmp eq i32 %i.as, 0
  %8 = select i1 %.not.3.1, i32 0, i32 256
  %.2.3.1 = or i32 %8, %.2.2.1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = tail call i32 @av_cmp_q64(i64 %i.au, i64 %i.aw, i64 0, i64 1) #15
  %.not.4.1 = icmp eq i32 %i.ax, 0
  %9 = select i1 %.not.4.1, i32 0, i32 512
  %.2.4.1 = or i32 %9, %.2.3.1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = tail call i32 @av_cmp_q64(i64 %i.az, i64 %i.bb, i64 0, i64 1) #15
  %.not.222 = icmp eq i32 %i.bc, 0
  %10 = select i1 %.not.222, i32 0, i32 1024
  %.2.223 = or i32 %10, %.2.4.1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = tail call i32 @av_cmp_q64(i64 %i.be, i64 %i.bg, i64 0, i64 1) #15
  %.not.1.2 = icmp eq i32 %i.bh, 0
  %11 = select i1 %.not.1.2, i32 0, i32 2048
  %.2.1.2 = or i32 %11, %.2.223
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = tail call i32 @av_cmp_q64(i64 %i.bj, i64 %i.bl, i64 1, i64 1) #15
  %.not.2.2 = icmp eq i32 %i.bm, 0
  %12 = select i1 %.not.2.2, i32 0, i32 4096
  %.2.2.2 = or i32 %12, %.2.1.2
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = tail call i32 @av_cmp_q64(i64 %i.bo, i64 %i.bq, i64 0, i64 1) #15
  %.not.3.2 = icmp eq i32 %i.br, 0
  %13 = select i1 %.not.3.2, i32 0, i32 8192
  %.2.3.2 = or i32 %13, %.2.2.2
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = tail call i32 @av_cmp_q64(i64 %i.bt, i64 %i.bv, i64 0, i64 1) #15
  %.not.4.2 = icmp eq i32 %i.bw, 0
  %14 = select i1 %.not.4.2, i32 0, i32 16384
  %.2.4.2 = or i32 %14, %.2.3.2
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %18 = load i64, ptr %17, align 8
  %19 = tail call i32 @av_cmp_q64(i64 %16, i64 %18, i64 0, i64 1) #15
  %.not.324 = icmp eq i32 %19, 0
  %20 = select i1 %.not.324, i32 0, i32 32768
  %.2.325 = or i32 %20, %.2.4.2
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %24 = load i64, ptr %23, align 8
  %25 = tail call i32 @av_cmp_q64(i64 %22, i64 %24, i64 0, i64 1) #15
  %.not.1.3 = icmp eq i32 %25, 0
  %26 = select i1 %.not.1.3, i32 0, i32 65536
  %.2.1.3 = or i32 %26, %.2.325
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = tail call i32 @av_cmp_q64(i64 %i.by, i64 %i.ca, i64 0, i64 1) #15
  %.not.2.3 = icmp eq i32 %i.cb, 0
  %i.cc = select i1 %.not.2.3, i32 0, i32 131072
  %.2.2.3 = or i32 %i.cc, %.2.1.3
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = tail call i32 @av_cmp_q64(i64 %i.ce, i64 %i.cg, i64 1, i64 1) #15
  %.not.3.3 = icmp eq i32 %i.ch, 0
  %i.ci = select i1 %.not.3.3, i32 0, i32 262144
  %.2.3.3 = or i32 %i.ci, %.2.2.3
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = tail call i32 @av_cmp_q64(i64 %i.ck, i64 %i.cm, i64 0, i64 1) #15
  %.not.4.3 = icmp eq i32 %i.cn, 0
  %i.co = select i1 %.not.4.3, i32 0, i32 524288
  %.2.4.3 = or i32 %i.co, %.2.3.3
  ret i32 %.2.4.3
}

; Function Attrs: nounwind uwtable
define void @ff_sws_op_desc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
switch.lookup:
  %i.a = load i32, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.b = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ff_sws_op_desc, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13
  %i.e = trunc i32 %i.d to i8
  %i.f = and i8 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 340
  %i.h = load <2 x i32>, ptr %i.g, align 4, !tbaa !13
  %i.i = and <2 x i32> %i.h, splat (i32 1)
  %i.j = icmp eq <2 x i32> %i.i, zeroinitializer  ; 2 uses
  %i.k = extractelement <2 x i1> %i.j, i64 0
  %i.l = select i1 %i.k, i8 2, i8 0
  %i.m = or disjoint i8 %i.l, %i.f
  %i.n = extractelement <2 x i1> %i.j, i64 1
  %i.o = select i1 %i.n, i8 4, i8 0
  %i.p = or disjoint i8 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 348
  %i.r = load i32, ptr %i.q, align 4, !tbaa !13
  %i.s = and i32 %i.r, 1
  %.not.3.i = icmp eq i32 %i.s, 0
  %i.t = select i1 %.not.3.i, i8 8, i8 0
  %i.u = or disjoint i8 %i.p, %i.t
  %.1.3.i = xor i8 %i.u, 1                        ; 3 uses
  switch i32 %i.a, label %default.unreachable [
    i32 0, label %bb.a
    i32 3, label %bb.a
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 7, label %bb.d
    i32 8, label %bb.e
    i32 6, label %bb.f
    i32 5, label %bb.f
    i32 9, label %bb.g
    i32 4, label %bb.h
    i32 10, label %switch.lookup119
    i32 15, label %bb.i
    i32 11, label %bb.j
    i32 12, label %bb.k
    i32 14, label %bb.l
    i32 13, label %bb.an
    i32 16, label %bb.ap
    i32 17, label %bb.ap
  ]

bb.a:                                             ; preds = %switch.lookup, %switch.lookup
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull %switch.load) #15
  br label %bb.aq

bb.b:                                             ; preds = %switch.lookup, %switch.lookup
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.x = load i8, ptr %i.w, align 4, !tbaa !12
  %i.y = zext i8 %i.x to i32
  %i.z = load i32, ptr %i.v, align 8, !tbaa !12
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @rw_mode_names, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !12
  %i.af = zext i8 %i.ae to i32
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull %switch.load, i32 noundef %i.y, ptr noundef %i.ac, i32 noundef %i.af) #15
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !12 ; 2 uses
  %.not99 = icmp eq i32 %i.ah, 0
  br i1 %.not99, label %bb.aq, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !12 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !50
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.am = icmp eq i32 %i.ah, 16
  %i.an = select i1 %i.am, i32 72, i32 86
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %i.ak, ptr noundef nonnull %i.al, i32 noundef %i.an) #15
  br label %bb.aq

bb.d:                                             ; preds = %switch.lookup
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !12
  %i.aq = zext i8 %i.ap to i32
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull %switch.load, i32 noundef %i.aq) #15
  br label %bb.aq

bb.e:                                             ; preds = %switch.lookup
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !12
  %i.at = zext i8 %i.as to i32
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull %switch.load, i32 noundef %i.at) #15
  br label %bb.aq

bb.f:                                             ; preds = %switch.lookup, %switch.lookup
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i8, ptr %i.au, align 8, !tbaa !12
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !12
  %i.az = zext i8 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !12
  %i.bc = zext i8 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !12
  %i.bf = zext i8 %i.be to i32
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull %switch.load, i32 noundef %i.aw, i32 noundef %i.az, i32 noundef %i.bc, i32 noundef %i.bf) #15
  br label %bb.aq

bb.g:                                             ; preds = %switch.lookup
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull %switch.load) #15
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i8, ptr %i.bg, align 8, !tbaa !12
  %i.bj = and i8 %i.bi, %.1.3.i
  tail call fastcc void @print_q4(ptr noundef %0, ptr noundef nonnull %i.bh, i8 noundef zeroext %i.bj)
  br label %bb.aq

bb.h:                                             ; preds = %switch.lookup
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !12
  %i.bm = zext i8 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !12
  %i.bp = zext i8 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.br = load i8, ptr %i.bq, align 2, !tbaa !12
  %i.bs = zext i8 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !12
  %i.bv = zext i8 %i.bu to i32
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull %switch.load, i32 noundef %i.bm, i32 noundef %i.bp, i32 noundef %i.bs, i32 noundef %i.bv) #15
  br label %bb.aq

switch.lookup119:                                 ; preds = %switch.lookup
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !19
  %i.by = zext nneg i32 %i.bx to i64
  %switch.gep120 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ff_sws_op_list_print, i64 %i.by
  %switch.load121 = load ptr, ptr %switch.gep120, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !12
  %i.cb = zext nneg i32 %i.ca to i64
  %switch.gep123 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ff_sws_op_list_print, i64 %i.cb
  %switch.load124 = load ptr, ptr %switch.gep123, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cd = load i8, ptr %i.cc, align 4, !tbaa !12, !range !25, !noundef !26
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = select i1 %i.ce, ptr @.str.35, ptr @.str.36
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef nonnull %switch.load, ptr noundef nonnull %switch.load121, ptr noundef nonnull %switch.load124, ptr noundef nonnull %i.cf) #15
  br label %bb.aq

bb.i:                                             ; preds = %switch.lookup
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !12
  %i.ci = shl nuw i32 1, %i.ch                    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !12
  %i.cl = sext i8 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 53
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !12
  %i.co = sext i8 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !12
  %i.cr = sext i8 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 55
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !12
  %i.cu = sext i8 %i.ct to i32
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull %switch.load, i32 noundef %i.ci, i32 noundef %i.ci, i32 noundef %i.cl, i32 noundef %i.co, i32 noundef %i.cr, i32 noundef %i.cu) #15
  br label %bb.aq

bb.j:                                             ; preds = %switch.lookup
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef nonnull %switch.load) #15
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !9
  %.not.i = icmp ne i64 %i.cx, 0
  %i.cy = zext i1 %.not.i to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !9
  %.not.1.i103 = icmp eq i64 %i.da, 0
  %i.db = select i1 %.not.1.i103, i8 0, i8 2
  %.1.1.i = or disjoint i8 %i.db, %i.cy
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !9
  %.not.2.i104 = icmp eq i64 %i.dd, 0
  %i.de = select i1 %.not.2.i104, i8 0, i8 4
  %.1.2.i = or disjoint i8 %.1.1.i, %i.de
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !9
  %.not.3.i105 = icmp eq i64 %i.dg, 0
  %i.dh = select i1 %.not.3.i105, i8 0, i8 8
  %.1.3.i106 = or disjoint i8 %.1.2.i, %i.dh
  %i.di = and i8 %.1.3.i106, %.1.3.i
  tail call fastcc void @print_q4(ptr noundef %0, ptr noundef nonnull %i.cv, i8 noundef zeroext %i.di)
end_hunk_0
begin_hunk_1_@ff_sws_enum_op_lists:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %switch.ext108
  call void @av_refstruct_unref(ptr noundef nonnull %i.bu) #15
  br label %op_uninit.exit.i.2.i

op_uninit.exit.i.2.i:                             ; preds = %.lr.ph.i.2.i, %switch.lookup103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %i.bq, i8 0, i64 480, i1 false)
  %indvars.iv.next.i.2.i = add nuw nsw i64 %indvars.iv.i.2.i, 1 ; 2 uses
  %i.bv = load i32, ptr %i.bm, align 8, !tbaa !27
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp slt i64 %indvars.iv.next.i.2.i, %i.bw
  br i1 %i.bx, label %.lr.ph.i.2.i, label %._crit_edge.i.2.i, !llvm.loop !53

._crit_edge.i.2.i:                                ; preds = %op_uninit.exit.i.2.i, %.preheader.i.2.i
  call void @av_freep(ptr noundef nonnull %.pre44.i) #15
  call void @av_free(ptr noundef nonnull %.pre44.i) #15
  store ptr null, ptr %i.a, align 8, !tbaa !51
  br label %ff_sws_op_list_free.exit.2.i

ff_sws_op_list_free.exit.2.i:                     ; preds = %._crit_edge.i.2.i, %bb.r
  store i32 32, ptr %6, align 8, !tbaa !81
  store i32 32, ptr %i.i, align 4, !tbaa !80
  %i.by = call i32 @ff_sws_op_list_generate(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15 ; 3 uses
  %i.bz = icmp eq i32 %i.by, -95
  br i1 %i.bz, label %enum_ops_fmt.exit, label %bb.s

bb.s:                                             ; preds = %ff_sws_op_list_free.exit.2.i
  %i.ca = icmp slt i32 %i.by, 0
  br i1 %i.ca, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.cc = call i32 @ff_sws_op_list_optimize(ptr noundef %i.cb) #15 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 0
  %.pre43.i = load ptr, ptr %i.a, align 8, !tbaa !51 ; 2 uses
  br i1 %i.cd, label %ff_sws_op_list_free.exit.3.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = call i32 %4(ptr noundef %0, ptr noundef %1, ptr noundef %.pre43.i) #15, !inline_history !82 ; 5 uses
  %i.cf = icmp slt i32 %i.ce, 0
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !51 ; 6 uses
  br i1 %i.cf, label %ff_sws_op_list_free.exit.3.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i.3.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.3.i, label %enum_ops_fmt.exit, label %.preheader.i.3.i

.preheader.i.3.i:                                 ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !27
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph.i.3.i, label %ff_sws_op_list_free.exit36.sink.split.i

.lr.ph.i.3.i:                                     ; preds = %.preheader.i.3.i, %op_uninit.exit.i.3.i
  %indvars.iv.i.3.i = phi i64 [ %indvars.iv.next.i.3.i, %op_uninit.exit.i.3.i ], [ 0, %.preheader.i.3.i ] ; 2 uses
  %i.cj = load ptr, ptr %.pre.i, align 8, !tbaa !37
  %i.ck = getelementptr inbounds nuw [480 x i8], ptr %i.cj, i64 %indvars.iv.i.3.i ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !14
  %switch.tableidx110 = add i32 %i.cl, -1         ; 3 uses
  %i.cm = icmp ult i32 %switch.tableidx110, 17
  %switch.shifted113 = lshr i32 114689, %switch.tableidx110
  %switch.lobit114 = trunc i32 %switch.shifted113 to i1
  %or.cond118 = select i1 %i.cm, i1 %switch.lobit114, i1 false
  br i1 %or.cond118, label %switch.lookup112, label %op_uninit.exit.i.3.i

switch.lookup112:                                 ; preds = %.lr.ph.i.3.i
  %i.cn = zext nneg i32 %switch.tableidx110 to i64
  %switch.gep115 = getelementptr inbounds nuw i8, ptr @switch.table.ff_sws_enum_op_lists.8, i64 %i.cn
  %switch.load116 = load i8, ptr %switch.gep115, align 1
  %switch.ext117 = zext i8 %switch.load116 to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 %switch.ext117
  call void @av_refstruct_unref(ptr noundef nonnull %i.co) #15
  br label %op_uninit.exit.i.3.i

op_uninit.exit.i.3.i:                             ; preds = %.lr.ph.i.3.i, %switch.lookup112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %i.ck, i8 0, i64 480, i1 false)
  %indvars.iv.next.i.3.i = add nuw nsw i64 %indvars.iv.i.3.i, 1 ; 2 uses
  %i.cp = load i32, ptr %i.cg, align 8, !tbaa !27
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next.i.3.i, %i.cq
  br i1 %i.cr, label %.lr.ph.i.3.i, label %ff_sws_op_list_free.exit36.sink.split.i, !llvm.loop !53

ff_sws_op_list_free.exit.3.i:                     ; preds = %bb.u, %bb.t, %bb.q, %bb.p, %bb.m, %bb.l, %bb.i, %bb.h
  %i.cs = phi ptr [ %.pre49.i, %bb.i ], [ %.pre48.i, %bb.h ], [ %.pre43.i, %bb.t ], [ %.pre47.i, %bb.l ], [ %.pre46.i, %bb.m ], [ %.pre.i, %bb.u ], [ %.pre45.i, %bb.p ], [ %.pre44.i, %bb.q ] ; 5 uses
  %.1.ph.i = phi i32 [ %i.w, %bb.i ], [ %i.u, %bb.h ], [ %i.cc, %bb.t ], [ %i.ao, %bb.l ], [ %i.aq, %bb.m ], [ %i.ce, %bb.u ], [ %i.bi, %bb.p ], [ %i.bk, %bb.q ] ; 3 uses
  %.not.i27.i = icmp eq ptr %i.cs, null
  br i1 %.not.i27.i, label %.thread, label %.preheader.i28.i

.preheader.i28.i:                                 ; preds = %ff_sws_op_list_free.exit.3.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !27
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.lr.ph.i30.i, label %ff_sws_op_list_free.exit36.sink.split.i

.lr.ph.i30.i:                                     ; preds = %.preheader.i28.i, %op_uninit.exit.i34.i
  %indvars.iv.i31.i = phi i64 [ %indvars.iv.next.i35.i, %op_uninit.exit.i34.i ], [ 0, %.preheader.i28.i ] ; 2 uses
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !37
  %i.cx = getelementptr inbounds nuw [480 x i8], ptr %i.cw, i64 %indvars.iv.i31.i ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !14
  %switch.tableidx119 = add i32 %i.cy, -1         ; 3 uses
  %i.cz = icmp ult i32 %switch.tableidx119, 17
  %switch.shifted122 = lshr i32 114689, %switch.tableidx119
  %switch.lobit123 = trunc i32 %switch.shifted122 to i1
  %or.cond127 = select i1 %i.cz, i1 %switch.lobit123, i1 false
  br i1 %or.cond127, label %switch.lookup121, label %op_uninit.exit.i34.i

switch.lookup121:                                 ; preds = %.lr.ph.i30.i
  %i.da = zext nneg i32 %switch.tableidx119 to i64
  %switch.gep124 = getelementptr inbounds nuw i8, ptr @switch.table.ff_sws_enum_op_lists.8, i64 %i.da
  %switch.load125 = load i8, ptr %switch.gep124, align 1
  %switch.ext126 = zext i8 %switch.load125 to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 %switch.ext126
  call void @av_refstruct_unref(ptr noundef nonnull %i.db) #15
  br label %op_uninit.exit.i34.i

op_uninit.exit.i34.i:                             ; preds = %.lr.ph.i30.i, %switch.lookup121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %i.cx, i8 0, i64 480, i1 false)
  %indvars.iv.next.i35.i = add nuw nsw i64 %indvars.iv.i31.i, 1 ; 2 uses
  %i.dc = load i32, ptr %i.ct, align 8, !tbaa !27
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp slt i64 %indvars.iv.next.i35.i, %i.dd
  br i1 %i.de, label %.lr.ph.i30.i, label %ff_sws_op_list_free.exit36.sink.split.i, !llvm.loop !53

ff_sws_op_list_free.exit36.sink.split.i:          ; preds = %op_uninit.exit.i.3.i, %op_uninit.exit.i34.i, %.preheader.i28.i, %.preheader.i.3.i
  %.pre.sink64.i = phi ptr [ %.pre.i, %.preheader.i.3.i ], [ %i.cs, %op_uninit.exit.i34.i ], [ %i.cs, %.preheader.i28.i ], [ %.pre.i, %op_uninit.exit.i.3.i ] ; 2 uses
  %.120.ph.i = phi i32 [ %i.ce, %.preheader.i.3.i ], [ %.1.ph.i, %op_uninit.exit.i34.i ], [ %.1.ph.i, %.preheader.i28.i ], [ %i.ce, %op_uninit.exit.i.3.i ]
  call void @av_freep(ptr noundef nonnull %.pre.sink64.i) #15
  call void @av_free(ptr noundef nonnull %.pre.sink64.i) #15
  br label %enum_ops_fmt.exit

enum_ops_fmt.exit:                                ; preds = %bb.f, %ff_sws_op_list_free.exit.i, %ff_sws_op_list_free.exit.1.i, %ff_sws_op_list_free.exit.2.i, %bb.v, %ff_sws_op_list_free.exit36.sink.split.i
  %.120.i = phi i32 [ 0, %ff_sws_op_list_free.exit.2.i ], [ %i.ce, %bb.v ], [ 0, %ff_sws_op_list_free.exit.1.i ], [ 0, %bb.f ], [ %.120.ph.i, %ff_sws_op_list_free.exit36.sink.split.i ], [ 0, %ff_sws_op_list_free.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.df = icmp slt i32 %.120.i, 0                 ; 2 uses
  %.2 = select i1 %i.df, i32 %.120.i, i32 %.12555 ; 3 uses
  %.0 = select i1 %i.df, i32 1, i32 %.
  switch i32 %.0, label %.thread48 [
    i32 0, label %bb.w
    i32 5, label %enum_ops_fmt.exit._crit_edge
  ]

bb.w:                                             ; preds = %enum_ops_fmt.exit
  %i.dg = call ptr @av_pix_fmt_desc_next(ptr noundef nonnull %.02854) #15 ; 2 uses
  %.not35 = icmp eq ptr %i.dg, null
  br i1 %.not35, label %enum_ops_fmt.exit._crit_edge, label %bb.f, !llvm.loop !83

enum_ops_fmt.exit._crit_edge:                     ; preds = %bb.w, %enum_ops_fmt.exit
  br i1 %.not, label %.thread44, label %.thread48

.thread:                                          ; preds = %ff_sws_op_list_free.exit.3.i, %bb.s, %bb.g, %bb.k, %bb.o
  %.120.i.ph = phi i32 [ %i.be, %bb.o ], [ %i.ak, %bb.k ], [ %i.q, %bb.g ], [ %i.by, %bb.s ], [ %.1.ph.i, %ff_sws_op_list_free.exit.3.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.thread48

.thread44:                                        ; preds = %enum_ops_fmt.exit._crit_edge
  %i.dh = call ptr @av_pix_fmt_desc_next(ptr noundef nonnull %.02958) #15 ; 2 uses
  %.not34 = icmp eq ptr %i.dh, null
  br i1 %.not34, label %.thread48, label %.lr.ph, !llvm.loop !79

.thread48:                                        ; preds = %enum_ops_fmt.exit._crit_edge, %.thread44, %enum_ops_fmt.exit, %.thread44.us.us, %bb.e, %.lr.ph61.split.us.split, %.thread
  %.5 = phi i32 [ %.2, %enum_ops_fmt.exit ], [ %.120.i.ph, %.thread ], [ 0, %bb.e ], [ 0, %.thread44.us.us ], [ 0, %.lr.ph61.split.us.split ], [ 0, %.thread44 ], [ 0, %enum_ops_fmt.exit._crit_edge ]
  ret i32 %.5
}

declare ptr @av_pix_fmt_desc_next(ptr noundef) local_unnamed_addr #7

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #7

declare i32 @av_pix_fmt_desc_get_id(ptr noundef) local_unnamed_addr #7

declare void @av_refstruct_unref(ptr noundef) local_unnamed_addr #7

declare void @ff_fmt_from_pixfmt(i32 noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i1 @ff_infer_colors(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @ff_sws_op_list_generate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @ff_sws_op_list_optimize(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 8}
!10 = !{!"AVRational64", !11, i64 0, !11, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!15, !6, i64 0}
!15 = !{!"SwsOp", !6, i64 0, !6, i64 4, !7, i64 8, !16, i64 336}
!16 = !{!"SwsComps", !7, i64 0, !7, i64 16, !7, i64 80}
!17 = !{!11, !11, i64 0}
!18 = !{!10, !11, i64 0}
!19 = !{!15, !6, i64 4}
!20 = !{i64 0, i64 8, !17, i64 8, i64 8, !17}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = !{!28, !6, i64 8}
!28 = !{!"SwsOpList", !29, i64 0, !6, i64 8, !31, i64 16, !31, i64 152, !7, i64 288, !7, i64 292, !16, i64 296}
!29 = !{!"p1 _ZTS5SwsOp", !30, i64 0}
!30 = !{!"any pointer", !7, i64 0}
!31 = !{!"SwsFormat", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !32, i64 40, !33, i64 48}
!32 = !{!"p1 _ZTS18AVPixFmtDescriptor", !30, i64 0}
!33 = !{!"SwsColor", !6, i64 0, !6, i64 4, !34, i64 8, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80}
!34 = !{!"AVPrimaryCoefficients", !35, i64 0, !35, i64 16, !35, i64 32}
!35 = !{!"AVCIExy", !36, i64 0, !36, i64 8}
!36 = !{!"AVRational", !6, i64 0, !6, i64 4}
!37 = !{!28, !29, i64 0}
!38 = distinct !{!38, !24}
!39 = !{i64 0, i64 16, !12, i64 16, i64 64, !12, i64 80, i64 64, !12}
!40 = distinct !{!40, !24}
!41 = distinct !{!41, !24}
!42 = !{!43, !43, i64 0}
!43 = !{!"_Bool", !7, i64 0}
!44 = distinct !{!44, !24}
!45 = !{!46, !6, i64 72}
!46 = !{!"SwsFilterWeights", !6, i64 0, !47, i64 8, !11, i64 16, !47, i64 24, !6, i64 32, !6, i64 36, !48, i64 40, !48, i64 48, !7, i64 56, !6, i64 72, !6, i64 76}
!47 = !{!"p1 int", !30, i64 0}
!48 = !{!"double", !7, i64 0}
!49 = !{!46, !6, i64 76}
!50 = !{!46, !6, i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"p1 _ZTS9SwsOpList", !30, i64 0}
!53 = distinct !{!53, !24}
!54 = !{i64 0, i64 8, !55, i64 8, i64 4, !13, i64 16, i64 4, !13, i64 20, i64 4, !13, i64 24, i64 4, !13, i64 28, i64 4, !13, i64 32, i64 4, !13, i64 36, i64 4, !13, i64 40, i64 4, !13, i64 44, i64 4, !13, i64 48, i64 4, !13, i64 56, i64 8, !56, i64 64, i64 4, !13, i64 68, i64 4, !13, i64 72, i64 4, !13, i64 76, i64 4, !13, i64 80, i64 4, !13, i64 84, i64 4, !13, i64 88, i64 4, !13, i64 92, i64 4, !13, i64 96, i64 4, !13, i64 100, i64 4, !13, i64 104, i64 4, !13, i64 108, i64 4, !13, i64 112, i64 4, !13, i64 116, i64 4, !13, i64 120, i64 4, !13, i64 124, i64 4, !13, i64 128, i64 4, !13, i64 132, i64 4, !13, i64 136, i64 4, !13, i64 140, i64 4, !13, i64 144, i64 4, !13, i64 148, i64 4, !13, i64 152, i64 4, !13, i64 156, i64 4, !13, i64 160, i64 4, !13, i64 164, i64 4, !13, i64 168, i64 4, !13, i64 172, i64 4, !13, i64 176, i64 4, !13, i64 180, i64 4, !13, i64 184, i64 4, !13, i64 192, i64 8, !56, i64 200, i64 4, !13, i64 204, i64 4, !13, i64 208, i64 4, !13, i64 212, i64 4, !13, i64 216, i64 4, !13, i64 220, i64 4, !13, i64 224, i64 4, !13, i64 228, i64 4, !13, i64 232, i64 4, !13, i64 236, i64 4, !13, i64 240, i64 4, !13, i64 244, i64 4, !13, i64 248, i64 4, !13, i64 252, i64 4, !13, i64 256, i64 4, !13, i64 260, i64 4, !13, i64 264, i64 4, !13, i64 268, i64 4, !13, i64 272, i64 4, !13, i64 276, i64 4, !13, i64 280, i64 4, !13, i64 284, i64 4, !13, i64 288, i64 4, !12, i64 292, i64 4, !12, i64 296, i64 16, !12, i64 312, i64 64, !12, i64 376, i64 64, !12}
!55 = !{!29, !29, i64 0}
!56 = !{!32, !32, i64 0}
!57 = distinct !{!57, !24}
!58 = distinct !{!58, !24}
!59 = !{i64 0, i64 4, !13, i64 4, i64 4, !13, i64 8, i64 328, !12, i64 336, i64 16, !12, i64 352, i64 64, !12, i64 416, i64 64, !12}
!60 = distinct !{!60, !24}
!61 = distinct !{!61, !24}
!62 = distinct !{!62, !24}
!63 = distinct !{!63, !22}
!64 = distinct !{!64, !24}
!65 = !{!66, !66, i64 0}
!66 = !{!"p1 omnipotent char", !30, i64 0}
!67 = distinct !{!67, !24}
!68 = !{!46, !6, i64 32}
!69 = !{!46, !6, i64 36}
!70 = distinct !{!70, !22}
!71 = distinct !{!71, !24}
!72 = distinct !{!72, !24, !73}
!73 = !{!"llvm.loop.peeled.count", i32 1}
!74 = !{!75, !6, i64 8}
!75 = !{!"AVBPrint", !66, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !7, i64 21}
!76 = !{!75, !6, i64 12}
!77 = !{!75, !66, i64 0}
!78 = distinct !{!78, !24}
!79 = distinct !{!79, !24}
!80 = !{!31, !6, i64 4}
!81 = !{!31, !6, i64 0}
!82 = distinct !{null}
!83 = distinct !{!83, !24}
end_hunk_1
