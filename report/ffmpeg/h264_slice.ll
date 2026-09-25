Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h264_slice?download=true
inline.NumInlined: 69
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 24
begin_hunk_0_@ff_h264_queue_decode_slice:bb.a
  %i.bur = load i32, ptr %i.bid, align 16, !tbaa !259
  %i.bus = load i32, ptr %i.bif, align 4, !tbaa !260
  %i.but = getelementptr inbounds nuw i8, ptr %.3, i64 88
  %i.buu = load i32, ptr %i.but, align 8, !tbaa !135 ; 2 uses
  %i.buv = icmp eq i32 %i.buu, 1
  br i1 %i.buv, label %bb.nv, label %bb.nw

bb.nv:                                            ; preds = %bb.nu
  %i.buw = getelementptr inbounds nuw i8, ptr %.3, i64 92
  %i.bux = load i32, ptr %i.buw, align 4, !tbaa !177
  %.not225.i = icmp eq i32 %i.bux, 0
  %i.buy = select i1 %.not225.i, ptr @.str.47, ptr @.str.55
  br label %bb.nw

bb.nw:                                            ; preds = %bb.nv, %bb.nu
  %i.buz = phi ptr [ @.str.47, %bb.nu ], [ %i.buy, %bb.nv ]
  %i.bva = load i32, ptr %i.btt, align 4, !tbaa !129
  %i.bvb = icmp eq i32 %i.bva, 3
  br i1 %i.bvb, label %bb.nx, label %bb.ny

bb.nx:                                            ; preds = %bb.nw
  %i.bvc = getelementptr inbounds nuw i8, ptr %.3, i64 21080
  %i.bvd = load i32, ptr %i.bvc, align 8, !tbaa !251
  %.not226.i = icmp eq i32 %i.bvd, 0
  %i.bve = select i1 %.not226.i, ptr @.str.57, ptr @.str.56
  br label %bb.ny

bb.ny:                                            ; preds = %bb.nx, %bb.nw
  %i.bvf = phi ptr [ %i.bve, %bb.nx ], [ @.str.47, %bb.nw ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.bte, i32 noundef 48, ptr noundef nonnull @.str.52, i32 noundef %i.bti, i32 noundef %i.btn, i32 noundef %i.bts, i32 noundef %i.btw, ptr noundef nonnull %i.btz, ptr noundef nonnull %i.buc, i32 noundef %i.bue, i32 noundef %i.bui, i32 noundef %i.buk, i32 noundef %i.bul, i32 noundef %i.bun, i32 noundef %i.bup, i32 noundef %i.buq, i32 noundef %i.bur, i32 noundef %i.bus, i32 noundef %i.buu, ptr noundef nonnull %i.buz, ptr noundef nonnull %i.bvf) #12
  br label %h264_slice_init.exit

h264_slice_init.exit:                             ; preds = %bb.ny, %bb.nt
  %i.bvg = load i32, ptr %i.g, align 4, !tbaa !127
  %i.bvh = add nsw i32 %i.bvg, 1
  store i32 %i.bvh, ptr %i.g, align 4, !tbaa !127
  br label %h264_slice_header_parse.exit.thread

.critedge:                                        ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %h264_slice_header_parse.exit.thread

h264_slice_header_parse.exit.thread:              ; preds = %bb.gk, %bb.cf, %bb.my, %bb.mc, %bb.ma, %bb.lw, %bb.is, %bb.jn, %bb.fc, %bb.ez, %bb.fe, %bb.gc, %bb.ga, %bb.gi, %h264_export_frame_props.exit.thread388.i, %.loopexit.i, %bb.hs, %.split.thread.i, %bb.dg, %bb.de, %bb.t, %bb.w, %bb.bs, %bb.bd, %bb.bp, %bb.bk, %bb.bh, %bb.ba, %bb.as, %bb.av, %bb.q, %bb.o, %bb.l, %bb.j, %bb.cd, %bb.ct, %bb.cv, %bb.cx, %bb.da, %bb.db, %bb.ch, %bb.ci, %bb.cj, %bb.cg, %.critedge, %h264_slice_init.exit, %bb.lu, %bb.ls, %bb.bx, %bb.bt
  %.5 = phi i32 [ %i.rt, %.critedge ], [ 0, %bb.bt ], [ -1094995529, %bb.bx ], [ -1094995529, %bb.cd ], [ 0, %bb.ct ], [ -1094995529, %bb.dg ], [ 0, %h264_slice_init.exit ], [ -1094995529, %bb.ls ], [ -1094995529, %bb.lu ], [ -1094995529, %bb.j ], [ %i.ajr, %.split.thread.i ], [ %i.sp, %bb.cj ], [ %i.si, %bb.cg ], [ -1094995529, %bb.ci ], [ -1094995529, %bb.ch ], [ -1094995529, %bb.cf ], [ 0, %bb.db ], [ 0, %bb.da ], [ 0, %bb.cx ], [ 0, %bb.cv ], [ -1094995529, %bb.t ], [ -1, %bb.w ], [ -1094995529, %bb.bs ], [ -1094995529, %bb.bd ], [ -1094995529, %bb.bp ], [ -1094995529, %bb.bk ], [ -1094995529, %bb.bh ], [ %i.or, %bb.ba ], [ %i.nx, %bb.as ], [ %i.ob, %bb.av ], [ -1094995529, %bb.q ], [ -1094995529, %bb.o ], [ -1094995529, %bb.l ], [ -1094995529, %bb.de ], [ -1094995529, %bb.lw ], [ %i.aue, %bb.is ], [ %i.awj, %bb.jn ], [ %i.acp, %bb.fc ], [ -1094995529, %bb.ez ], [ %i.acy, %bb.fe ], [ -1163346256, %bb.gc ], [ -1094995529, %bb.ga ], [ %i.ahm, %bb.gi ], [ %i.awp, %h264_export_frame_props.exit.thread388.i ], [ %i.arh, %.loopexit.i ], [ -1094995529, %bb.hs ], [ -1163346256, %bb.my ], [ %i.bgo, %bb.mc ], [ -1094995529, %bb.ma ], [ %i.aib, %bb.gk ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_h264_execute_decode_slices(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30036 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !127  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 30024 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !117  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 21048 ; 2 uses
  store i32 2147483647, ptr %i.g, align 8, !tbaa !178
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !157
  %i.j = icmp ne ptr %i.i, null
  %i.k = icmp slt i32 %i.d, 1
  %or.cond = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.d, -1
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw [35552 x i8], ptr %i.f, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 21028
  %i.p = load i32, ptr %i.o, align 4, !tbaa !169
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 31724 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !78   ; 2 uses
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef 2789) #12
  tail call void @abort() #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.d, 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 31728
  %i.v = load i32, ptr %i.u, align 8, !tbaa !77   ; 5 uses
  %i.w = mul nsw i32 %i.v, %i.r                   ; 2 uses
  br i1 %i.t, label %bb.f, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.d
  %wide.trip.count120 = zext nneg i32 %i.d to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count120, 1
  %unroll_iter = and i64 %wide.trip.count120, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod132 = trunc i32 %i.d to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph110
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %._crit_edge.us ], [ 0, %.lr.ph110 ] ; 5 uses
  %i.x = getelementptr inbounds nuw [35552 x i8], ptr %i.f, i64 %indvars.iv117 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 21028
  %i.z = load i32, ptr %i.y, align 4, !tbaa !169
  %i.aa = mul nsw i32 %i.z, %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 21024
  %i.ac = load i32, ptr %i.ab, align 16, !tbaa !167
  %i.ad = add nsw i32 %i.aa, %i.ac                ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next.1, %bb.e ] ; 4 uses
  %.0108.us = phi i32 [ %i.w, %.lr.ph.us ], [ %.1.us.1, %bb.e ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.us ], [ %niter.next.1, %bb.e ]
  %i.ae = getelementptr inbounds nuw [35552 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 21028
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !169
  %i.ah = mul nsw i32 %i.ag, %i.v
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 21024
  %i.aj = load i32, ptr %i.ai, align 16, !tbaa !167
  %i.ak = add nsw i32 %i.ah, %i.aj                ; 2 uses
  %i.al = icmp eq i64 %indvars.iv117, %indvars.iv
  %i.am = icmp slt i32 %i.ak, %i.ad
  %or.cond106.us = select i1 %i.al, i1 true, i1 %i.am
  %i.an = tail call i32 @llvm.smin.i32(i32 %.0108.us, i32 %i.ak)
  %.1.us = select i1 %or.cond106.us, i32 %.0108.us, i32 %i.an ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [35552 x i8], ptr %i.f, i64 %indvars.iv.next ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 21028
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !169
  %i.ar = mul nsw i32 %i.aq, %i.v
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 21024
  %i.at = load i32, ptr %i.as, align 16, !tbaa !167
  %i.au = add nsw i32 %i.ar, %i.at                ; 2 uses
  %i.av = icmp eq i64 %indvars.iv117, %indvars.iv.next
  %i.aw = icmp slt i32 %i.au, %i.ad
  %or.cond106.us.1 = select i1 %i.av, i1 true, i1 %i.aw
  %i.ax = tail call i32 @llvm.smin.i32(i32 %.1.us, i32 %i.au)
  %.1.us.1 = select i1 %or.cond106.us.1, i32 %.1.us, i32 %i.ax ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %bb.e, !llvm.loop !351

._crit_edge.us.unr-lcssa:                         ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod132)
  %i.ay = getelementptr inbounds nuw [35552 x i8], ptr %i.f, i64 %indvars.iv.next.1 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 21028
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !169
  %i.bb = mul nsw i32 %i.ba, %i.v
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 21024
  %i.bd = load i32, ptr %i.bc, align 16, !tbaa !167
  %i.be = add nsw i32 %i.bb, %i.bd                ; 2 uses
  %i.bf = icmp eq i64 %indvars.iv117, %indvars.iv.next.1
  %i.bg = icmp slt i32 %i.be, %i.ad
  %or.cond106.us.epil = select i1 %i.bf, i1 true, i1 %i.bg
  %i.bh = tail call i32 @llvm.smin.i32(i32 %.1.us.1, i32 %i.be)
  %.1.us.epil = select i1 %or.cond106.us.epil, i32 %.1.us.1, i32 %i.bh
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.1.us.lcssa = phi i32 [ %.1.us.1, %._crit_edge.us.unr-lcssa ], [ %.1.us.epil, %.epil.preheader ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 21048
  store i32 %.1.us.lcssa, ptr %i.bi, align 8, !tbaa !178
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %._crit_edge111, label %.lr.ph.us, !llvm.loop !352

bb.f:                                             ; preds = %bb.d
  store i32 %i.w, ptr %i.g, align 8, !tbaa !178
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 30128
  store i32 0, ptr %i.bj, align 8, !tbaa !171
  %i.bk = tail call i32 @decode_slice(ptr nonnull poison, ptr noundef nonnull %i.f)
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 21028
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !169
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 31720
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !355
  br label %.loopexit

._crit_edge111:                                   ; preds = %._crit_edge.us
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !356
  %i.br = tail call i32 %i.bq(ptr noundef %i.b, ptr noundef nonnull @decode_slice, ptr noundef nonnull %i.f, ptr noundef null, i32 noundef %i.d, i32 noundef 35552) #12 ; 0 uses
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.bt = getelementptr inbounds nuw [35552 x i8], ptr %i.bs, i64 %i.m
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 21028
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !169
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 31720
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !355
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 30128 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !171
  %.not = icmp eq i32 %i.by, 0
  br i1 %.not, label %.loopexit, label %.lr.ph115

.lr.ph115:                                        ; preds = %._crit_edge111
  store i32 0, ptr %i.bx, align 8, !tbaa !171
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 31728 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 31064
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 31068
  %smax = tail call i32 @llvm.smax.i32(i32 %i.d, i32 1)
  %wide.trip.count125 = zext nneg i32 %smax to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph115, %._crit_edge
  %indvars.iv122 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next123, %._crit_edge ] ; 2 uses
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.cd = getelementptr inbounds nuw [35552 x i8], ptr %i.cc, i64 %indvars.iv122 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 21028 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !169 ; 2 uses
  %i.cg = load i32, ptr %i.q, align 4, !tbaa !78  ; 2 uses
  %.not102 = icmp slt i32 %i.cf, %i.cg            ; 2 uses
  %i.ch = add nsw i32 %i.cf, 1
  %i.ci = select i1 %.not102, i32 %i.ch, i32 %i.cg ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 21024
  %.in = select i1 %.not102, ptr %i.cj, ptr %i.bz
  %i.ck = load i32, ptr %.in, align 8, !tbaa !87
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 21040 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 16, !tbaa !170 ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.ci
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 21036
  %i.cp = add nsw i32 %i.ci, -1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.n
  %.191112 = phi i32 [ %i.cm, %.lr.ph ], [ %i.db, %bb.n ] ; 4 uses
  store i32 %.191112, ptr %i.ce, align 4, !tbaa !169
  %i.cq = load i32, ptr %i.cl, align 16, !tbaa !170
  %i.cr = icmp sgt i32 %.191112, %i.cq
  br i1 %i.cr, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cs = load i32, ptr %i.co, align 4, !tbaa !168
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ct = phi i32 [ %i.cs, %bb.i ], [ 0, %bb.h ]
  %i.cu = icmp eq i32 %.191112, %i.cp
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cv = load i32, ptr %i.bz, align 8, !tbaa !77
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.cw = phi i32 [ %i.cv, %bb.k ], [ %i.ck, %bb.j ]
  tail call fastcc void @loop_filter(ptr noundef nonnull %0, ptr noundef nonnull %i.cd, i32 noundef %i.ct, i32 noundef %i.cw)
  %i.cx = load i32, ptr %i.ca, align 8, !tbaa !164
  %.not104 = icmp eq i32 %i.cx, 0
  br i1 %.not104, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cy = load i32, ptr %i.cb, align 4, !tbaa !140
  %.not105 = icmp eq i32 %i.cy, 3
  %i.cz = select i1 %.not105, i32 1, i32 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.da = phi i32 [ 2, %bb.l ], [ %i.cz, %bb.m ]
  %i.db = add nsw i32 %i.da, %.191112             ; 2 uses
  %i.dc = icmp slt i32 %i.db, %i.ci
  br i1 %i.dc, label %bb.h, label %._crit_edge, !llvm.loop !353

._crit_edge:                                      ; preds = %bb.n, %bb.g
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %.loopexit, label %bb.g, !llvm.loop !354

.loopexit:                                        ; preds = %._crit_edge, %bb.f, %._crit_edge111
  %.094 = phi i32 [ %i.bk, %bb.f ], [ 0, %._crit_edge111 ], [ 0, %._crit_edge ]
  store i32 0, ptr %i.c, align 4, !tbaa !127
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %.loopexit
  %.095 = phi i32 [ %.094, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.095
}

declare i32 @ff_h264_field_end(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_thread_report_progress(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -1094995529, 5) i32 @ff_h264_get_slice_type(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !129
  %switch.tableidx = add i32 %i.b, -1             ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 6
  br i1 %i.c, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.ff_h264_get_slice_type, i64 %i.d
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ -1094995529, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @decode_slice(ptr nofree readnone captures(none) %0, ptr noundef initializes((20992, 21008)) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !124   ; 38 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 21024 ; 27 uses
  %i.c = load i32, ptr %i.b, align 16, !tbaa !167 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !139
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 28496
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !147  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !87   ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20992 ; 2 uses
  store i64 %i.k, ptr %i.l, align 16, !tbaa !179
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  %i.n = load i32, ptr %i.m, align 4, !tbaa !87
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 21000
  store i64 %i.o, ptr %i.p, align 8, !tbaa !180
  %i.q = tail call i32 @llvm.abs.i32(i32 %i.j, i1 true)
  %i.r = add nuw nsw i32 %i.q, 63
  %i.s = and i32 %i.r, 2147483616                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 28568 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 28600 ; 2 uses
  %i.v = mul nuw nsw i32 %i.s, 96
  %i.w = zext nneg i32 %i.v to i64
  tail call void @av_fast_malloc(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i64 noundef %i.w) #12
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28576 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28604
  %i.z = mul nuw nsw i32 %i.s, 42
  %i.aa = zext nneg i32 %i.z to i64
  tail call void @av_fast_malloc(ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, i64 noundef %i.aa) #12
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 28584 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 28608
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 31728 ; 8 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !77
  %i.af = mul nsw i32 %i.ae, 48
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 1
  tail call void @av_fast_mallocz(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac, i64 noundef %i.ah) #12
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 28592 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 28612
  %i.ak = load i32, ptr %i.ad, align 8, !tbaa !77
  %i.al = mul nsw i32 %i.ak, 48
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 1
  tail call void @av_fast_mallocz(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj, i64 noundef %i.an) #12
  %i.ao = load ptr, ptr %i.t, align 8, !tbaa !357
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %alloc_scratch_buffers.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = load ptr, ptr %i.x, align 16, !tbaa !358
  %.not28.i = icmp eq ptr %i.ap, null
  br i1 %.not28.i, label %alloc_scratch_buffers.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %i.ab, align 8, !tbaa !126
  %.not29.i = icmp eq ptr %i.aq, null
  br i1 %.not29.i, label %alloc_scratch_buffers.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = load ptr, ptr %i.ai, align 16, !tbaa !126
  %.not30.i = icmp eq ptr %i.ar, null
  br i1 %.not30.i, label %alloc_scratch_buffers.exit.thread, label %alloc_scratch_buffers.exit

alloc_scratch_buffers.exit.thread:                ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  tail call void @av_freep(ptr noundef nonnull %i.t) #12
  tail call void @av_freep(ptr noundef nonnull %i.x) #12
  tail call void @av_freep(ptr noundef nonnull %i.ab) #12
  tail call void @av_freep(ptr noundef nonnull %i.ai) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %er_add_slice.exit.thread

alloc_scratch_buffers.exit:                       ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 21052 ; 2 uses
  store i32 -1, ptr %i.as, align 4, !tbaa !359
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 30708
  %i.au = load i32, ptr %i.at, align 4, !tbaa !87
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 30088
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !111
  %i.ay = shl i32 12, %i.ax
  %i.az = sext i32 %i.ay to i64
  %i.ba = load i64, ptr %i.l, align 16, !tbaa !179
  %i.bb = mul nsw i64 %i.ba, 12
  %i.bc = add nsw i64 %i.bb, %i.az
  %i.bd = icmp eq i64 %i.bc, %i.av
  br i1 %i.bd, label %bb.f, label %bb.e

bb.e:                                             ; preds = %alloc_scratch_buffers.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.5, i32 noundef 2581) #12
end_hunk_0
