inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@jpeg_core_output_dimensions:bb.a
  %i.jh = tail call i64 @jdiv_round_up(i64 noundef %i.jg, i64 noundef 8) #5
  %i.ji = trunc i64 %i.jh to i32
  store i32 %i.ji, ptr %i.iq, align 4, !tbaa !39
  store i32 16, ptr %i.ir, align 8, !tbaa !40
  store i32 16, ptr %i.is, align 4, !tbaa !41
  br label %bb.ag

bb.ag:                                            ; preds = %bb.e, %bb.i, %bb.m, %bb.q, %bb.u, %bb.y, %bb.ac, %bb.af, %bb.ae, %bb.aa, %bb.w, %bb.s, %bb.o, %bb.k, %bb.g, %bb.c
  %i.jj = phi i32 [ 2, %bb.e ], [ 4, %bb.i ], [ 6, %bb.m ], [ 8, %bb.q ], [ 10, %bb.u ], [ 12, %bb.y ], [ 14, %bb.ac ], [ 16, %bb.af ], [ 15, %bb.ae ], [ 13, %bb.aa ], [ 11, %bb.w ], [ 9, %bb.s ], [ 7, %bb.o ], [ 5, %bb.k ], [ 3, %bb.g ], [ 1, %bb.c ] ; 18 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !42 ; 4 uses
  %i.jm = icmp sgt i32 %i.jl, 0
  br i1 %i.jm, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ag
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !43 ; 2 uses
  %xtraiter = and i32 %i.jl, 7                    ; 3 uses
  %i.jp = icmp ult i32 %i.jl, 8
  br i1 %i.jp, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.jl, 2147483640
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.new
  %.0158 = phi ptr [ %i.jo, %.lr.ph.new ], [ %i.kg, %bb.ah ] ; 17 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.ah ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.0158, i64 36
  store i32 %i.jj, ptr %i.jq, align 4, !tbaa !44
  %i.jr = getelementptr inbounds nuw i8, ptr %.0158, i64 40
  store i32 %i.jj, ptr %i.jr, align 8, !tbaa !46
  %i.js = getelementptr inbounds nuw i8, ptr %.0158, i64 132
  store i32 %i.jj, ptr %i.js, align 4, !tbaa !44
  %i.jt = getelementptr inbounds nuw i8, ptr %.0158, i64 136
  store i32 %i.jj, ptr %i.jt, align 8, !tbaa !46
  %i.ju = getelementptr inbounds nuw i8, ptr %.0158, i64 228
  store i32 %i.jj, ptr %i.ju, align 4, !tbaa !44
  %i.jv = getelementptr inbounds nuw i8, ptr %.0158, i64 232
  store i32 %i.jj, ptr %i.jv, align 8, !tbaa !46
  %i.jw = getelementptr inbounds nuw i8, ptr %.0158, i64 324
  store i32 %i.jj, ptr %i.jw, align 4, !tbaa !44
  %i.jx = getelementptr inbounds nuw i8, ptr %.0158, i64 328
  store i32 %i.jj, ptr %i.jx, align 8, !tbaa !46
  %i.jy = getelementptr inbounds nuw i8, ptr %.0158, i64 420
  store i32 %i.jj, ptr %i.jy, align 4, !tbaa !44
  %i.jz = getelementptr inbounds nuw i8, ptr %.0158, i64 424
  store i32 %i.jj, ptr %i.jz, align 8, !tbaa !46
  %i.ka = getelementptr inbounds nuw i8, ptr %.0158, i64 516
  store i32 %i.jj, ptr %i.ka, align 4, !tbaa !44
  %i.kb = getelementptr inbounds nuw i8, ptr %.0158, i64 520
  store i32 %i.jj, ptr %i.kb, align 8, !tbaa !46
  %i.kc = getelementptr inbounds nuw i8, ptr %.0158, i64 612
  store i32 %i.jj, ptr %i.kc, align 4, !tbaa !44
  %i.kd = getelementptr inbounds nuw i8, ptr %.0158, i64 616
  store i32 %i.jj, ptr %i.kd, align 8, !tbaa !46
  %i.ke = getelementptr inbounds nuw i8, ptr %.0158, i64 708
  store i32 %i.jj, ptr %i.ke, align 4, !tbaa !44
  %i.kf = getelementptr inbounds nuw i8, ptr %.0158, i64 712
  store i32 %i.jj, ptr %i.kf, align 8, !tbaa !46
  %i.kg = getelementptr inbounds nuw i8, ptr %.0158, i64 768 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.ah, !llvm.loop !47

bb.ai:                                            ; preds = %bb.a
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.kj = load <2 x i32>, ptr %i.kh, align 8, !tbaa !3
  store <2 x i32> %i.kj, ptr %i.ki, align 8, !tbaa !3
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ah
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.0158.epil.init = phi ptr [ %i.jo, %.lr.ph ], [ %i.kg, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod161 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.epil.preheader
  %.0158.epil = phi ptr [ %.0158.epil.init, %.epil.preheader ], [ %i.km, %bb.aj ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aj ]
  %i.kk = getelementptr inbounds nuw i8, ptr %.0158.epil, i64 36
  store i32 %i.jj, ptr %i.kk, align 4, !tbaa !44
  %i.kl = getelementptr inbounds nuw i8, ptr %.0158.epil, i64 40
  store i32 %i.jj, ptr %i.kl, align 8, !tbaa !46
  %i.km = getelementptr inbounds nuw i8, ptr %.0158.epil, i64 96
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.aj, !llvm.loop !49

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.aj, %bb.ag, %bb.ai
  ret void
}

declare i64 @jdiv_round_up(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @jpeg_calc_output_dimensions(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !51   ; 2 uses
  %.not = icmp eq i32 %i.b, 202
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 21, ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %i.b, ptr %i.e, align 4, !tbaa !56
  %i.f = load ptr, ptr %0, align 8, !tbaa !52
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  tail call void %i.g(ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @jpeg_core_output_dimensions(ptr noundef nonnull %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32
  %.not63 = icmp eq i32 %i.k, 0
  br i1 %.not63, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !42   ; 5 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph75, label %.loopexit

.lr.ph75:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.r = load i32, ptr %i.q, align 8, !tbaa !40   ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.t = icmp slt i32 %i.r, 8
  br i1 %i.t, label %.lr.ph75.split.us, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph75
  %xtraiter = and i32 %i.o, 7                     ; 3 uses
  %i.u = icmp ult i32 %i.o, 8
  br i1 %i.u, label %.critedge.epil.preheader, label %.critedge.preheader.new

.critedge.preheader.new:                          ; preds = %.critedge.preheader
  %unroll_iter = and i32 %i.o, 2147483640
  %i.v = insertelement <2 x i32> poison, i32 %i.r, i64 0
  %i.w = shufflevector <2 x i32> %i.v, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.x = insertelement <2 x i32> poison, i32 %i.r, i64 0
  %i.y = shufflevector <2 x i32> %i.x, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.z = insertelement <2 x i32> poison, i32 %i.r, i64 0
  %i.aa = shufflevector <2 x i32> %i.z, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ab = insertelement <2 x i32> poison, i32 %i.r, i64 0
  %i.ac = shufflevector <2 x i32> %i.ab, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x i32> poison, i32 %i.r, i64 0
  %i.ae = shufflevector <2 x i32> %i.ad, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.af = insertelement <2 x i32> poison, i32 %i.r, i64 0
  %i.ag = shufflevector <2 x i32> %i.af, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ah = insertelement <2 x i32> poison, i32 %i.r, i64 0
  %i.ai = shufflevector <2 x i32> %i.ah, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aj = insertelement <2 x i32> poison, i32 %i.r, i64 0
  %i.ak = shufflevector <2 x i32> %i.aj, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.critedge

.lr.ph75.split.us:                                ; preds = %.lr.ph75
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.am = load i32, ptr %i.al, align 8, !tbaa !58
  %i.an = mul nsw i32 %i.am, %i.r
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.critedge.us, %.lr.ph75.split.us
  %.06074.us = phi ptr [ %i.m, %.lr.ph75.split.us ], [ %i.bd, %.critedge.us ] ; 5 uses
  %.06173.us = phi i32 [ 0, %.lr.ph75.split.us ], [ %i.bc, %.critedge.us ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.06074.us, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !59
  %factor.op.mul.us = shl i32 %i.ap, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.06074.us, i64 12
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.us, %1
  %.068.us = phi i32 [ %i.r, %.lr.ph.us ], [ %i.aw, %1 ] ; 5 uses
  %.reass.us = mul i32 %.068.us, %factor.op.mul.us
  %i.ar = srem i32 %i.an, %.reass.us
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.f, label %.critedge.us

bb.f:                                             ; preds = %bb.e
  %i.at = load i32, ptr %i.s, align 4, !tbaa !60
  %i.au = mul nsw i32 %i.at, %i.r
  %i.av = load i32, ptr %i.aq, align 4, !tbaa !61
  %i.aw = shl i32 %.068.us, 1                     ; 3 uses
  %i.ax = mul i32 %i.aw, %i.av
  %i.ay = srem i32 %i.au, %i.ax
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %1, label %.critedge.us

.critedge.us:                                     ; preds = %bb.f, %1, %bb.e
  %.0.lcssa.us = phi i32 [ %i.aw, %1 ], [ %.068.us, %bb.e ], [ %.068.us, %bb.f ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.06074.us, i64 40
  store i32 %.0.lcssa.us, ptr %i.ba, align 8, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %.06074.us, i64 36
  store i32 %.0.lcssa.us, ptr %i.bb, align 4, !tbaa !44
  %i.bc = add nuw nsw i32 %.06173.us, 1           ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.06074.us, i64 96
  %exitcond79.not = icmp eq i32 %i.bc, %i.o
  br i1 %exitcond79.not, label %.lr.ph, label %.lr.ph.us, !llvm.loop !62

1:                                                ; preds = %bb.f
  %2 = icmp slt i32 %.068.us, 4
  br i1 %2, label %bb.e, label %.critedge.us, !llvm.loop !63

.lr.ph.loopexit88.unr-lcssa:                      ; preds = %.critedge
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph, label %.critedge.epil.preheader

.critedge.epil.preheader:                         ; preds = %.lr.ph.loopexit88.unr-lcssa, %.critedge.preheader
  %.06074.epil.init = phi ptr [ %i.m, %.critedge.preheader ], [ %i.bu, %.lr.ph.loopexit88.unr-lcssa ]
  %lcmp.mod89 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod89)
  %i.be = insertelement <2 x i32> poison, i32 %i.r, i64 0
  %i.bf = shufflevector <2 x i32> %i.be, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.critedge.epil

.critedge.epil:                                   ; preds = %.critedge.epil, %.critedge.epil.preheader
  %.06074.epil = phi ptr [ %i.bh, %.critedge.epil ], [ %.06074.epil.init, %.critedge.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.critedge.epil ], [ 0, %.critedge.epil.preheader ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.06074.epil, i64 36
  store <2 x i32> %i.bf, ptr %i.bg, align 4, !tbaa !3
  %i.bh = getelementptr inbounds nuw i8, ptr %.06074.epil, i64 96
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph, label %.critedge.epil, !llvm.loop !64

.lr.ph:                                           ; preds = %.lr.ph.loopexit88.unr-lcssa, %.critedge.epil, %.critedge.us
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 412
  br label %bb.g

.critedge:                                        ; preds = %.critedge, %.critedge.preheader.new
  %.06074 = phi ptr [ %i.m, %.critedge.preheader.new ], [ %i.bu, %.critedge ] ; 9 uses
  %niter = phi i32 [ 0, %.critedge.preheader.new ], [ %niter.next.7, %.critedge ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.06074, i64 36
  store <2 x i32> %i.w, ptr %i.bm, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %.06074, i64 132
  store <2 x i32> %i.y, ptr %i.bn, align 4, !tbaa !3
  %i.bo = getelementptr inbounds nuw i8, ptr %.06074, i64 228
  store <2 x i32> %i.aa, ptr %i.bo, align 4, !tbaa !3
  %i.bp = getelementptr inbounds nuw i8, ptr %.06074, i64 324
  store <2 x i32> %i.ac, ptr %i.bp, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw i8, ptr %.06074, i64 420
  store <2 x i32> %i.ae, ptr %i.bq, align 4, !tbaa !3
  %i.br = getelementptr inbounds nuw i8, ptr %.06074, i64 516
  store <2 x i32> %i.ag, ptr %i.br, align 4, !tbaa !3
  %i.bs = getelementptr inbounds nuw i8, ptr %.06074, i64 612
  store <2 x i32> %i.ai, ptr %i.bs, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr %.06074, i64 708
  store <2 x i32> %i.ak, ptr %i.bt, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.06074, i64 768 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.loopexit88.unr-lcssa, label %.critedge, !llvm.loop !62

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.177 = phi ptr [ %i.m, %.lr.ph ], [ %i.cz, %bb.g ] ; 6 uses
  %.16276 = phi i32 [ 0, %.lr.ph ], [ %i.cy, %bb.g ]
  %i.bv = load i32, ptr %i.bi, align 8, !tbaa !36
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.177, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !59
  %i.bz = getelementptr inbounds nuw i8, ptr %.177, i64 36 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !44
  %i.cb = mul nsw i32 %i.ca, %i.by
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul nsw i64 %i.cc, %i.bw
  %i.ce = load i32, ptr %i.bj, align 8, !tbaa !58
  %i.cf = shl nsw i32 %i.ce, 3
  %i.cg = sext i32 %i.cf to i64
  %i.ch = tail call i64 @jdiv_round_up(i64 noundef %i.cd, i64 noundef %i.cg) #5
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %.177, i64 44
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !65
  %i.ck = load i32, ptr %i.bk, align 4, !tbaa !38
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %.177, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !61
  %i.co = load i32, ptr %i.bz, align 4, !tbaa !44
  %i.cp = mul nsw i32 %i.co, %i.cn
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul nsw i64 %i.cq, %i.cl
  %i.cs = load i32, ptr %i.bl, align 4, !tbaa !60
  %i.ct = shl nsw i32 %i.cs, 3
  %i.cu = sext i32 %i.ct to i64
  %i.cv = tail call i64 @jdiv_round_up(i64 noundef %i.cr, i64 noundef %i.cu) #5
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %.177, i64 48
  store i32 %i.cw, ptr %i.cx, align 8, !tbaa !66
  %i.cy = add nuw nsw i32 %.16276, 1              ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.177, i64 96
  %i.da = load i32, ptr %i.n, align 8, !tbaa !42
  %i.db = icmp slt i32 %i.cy, %i.da
  br i1 %i.db, label %bb.g, label %.loopexit, !llvm.loop !67

bb.h:                                             ; preds = %bb.c
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.de = load <2 x i32>, ptr %i.dc, align 8, !tbaa !3
  store <2 x i32> %i.de, ptr %i.dd, align 8, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.d, %bb.h
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !68 ; 3 uses
  %switch.tableidx = add i32 %i.dg, -1            ; 2 uses
  %i.dh = icmp ult i32 %switch.tableidx, 16
  br i1 %i.dh, label %switch.lookup, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !42
  br label %bb.j

switch.lookup:                                    ; preds = %.loopexit
  %i.dk = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.jpeg_calc_output_dimensions, i64 %i.dk
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.j

bb.j:                                             ; preds = %switch.lookup, %bb.i
  %.sink = phi i32 [ %i.dj, %bb.i ], [ %switch.ext, %switch.lookup ] ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %.sink, ptr %i.dl, align 8, !tbaa !69
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !70
  %.not64 = icmp eq i32 %i.dn, 0
  %i.do = select i1 %.not64, i32 %.sink, i32 1
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !71
  %i.dq = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !32
  %.not.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i, label %bb.k, label %use_merged_upsample.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !72
  %.not37.i = icmp eq i32 %i.du, 0
  br i1 %.not37.i, label %bb.l, label %use_merged_upsample.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !73
  %.not38.i = icmp eq i32 %i.dw, 0
  br i1 %.not38.i, label %bb.m, label %use_merged_upsample.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !74
  %.not39.i = icmp eq i32 %i.dy, 3
  br i1 %.not39.i, label %bb.n, label %use_merged_upsample.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !42
  %.not40.i = icmp eq i32 %i.ea, 3
  br i1 %.not40.i, label %bb.o, label %use_merged_upsample.exit.thread

bb.o:                                             ; preds = %bb.n
  switch i32 %i.dg, label %use_merged_upsample.exit.thread [
    i32 16, label %bb.p
    i32 2, label %bb.q
    i32 6, label %bb.q
    i32 7, label %bb.q
    i32 8, label %bb.q
    i32 9, label %bb.q
    i32 10, label %bb.q
    i32 11, label %bb.q
    i32 12, label %bb.q
    i32 13, label %bb.q
    i32 14, label %bb.q
    i32 15, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %.not53.i = icmp eq i32 %.sink, 3
  br i1 %.not53.i, label %.thread.i, label %use_merged_upsample.exit.thread

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o
  %i.eb = zext nneg i32 %i.dg to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr @rgb_pixelsize, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  %.not55.i = icmp eq i32 %.sink, %i.ed
  br i1 %.not55.i, label %.thread.i, label %use_merged_upsample.exit.thread

.thread.i:                                        ; preds = %bb.q, %bb.p
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !43 ; 9 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !59
  %.not56.i = icmp eq i32 %i.eh, 2
  br i1 %.not56.i, label %bb.r, label %use_merged_upsample.exit.thread

bb.r:                                             ; preds = %.thread.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 104
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !59
  %.not57.i = icmp eq i32 %i.ej, 1
  br i1 %.not57.i, label %bb.s, label %use_merged_upsample.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 200
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !59
  %.not58.i = icmp eq i32 %i.el, 1
  br i1 %.not58.i, label %bb.t, label %use_merged_upsample.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  %i.en = load i32, ptr %i.em, align 4, !tbaa !61
  %i.eo = icmp sgt i32 %i.en, 2
  br i1 %i.eo, label %use_merged_upsample.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ef, i64 108
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !61
  %.not59.i = icmp eq i32 %i.eq, 1
  br i1 %.not59.i, label %bb.v, label %use_merged_upsample.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.er = getelementptr inbounds nuw i8, ptr %i.ef, i64 204
  %i.es = load i32, ptr %i.er, align 4, !tbaa !61
  %.not60.i = icmp eq i32 %i.es, 1
  br i1 %.not60.i, label %bb.w, label %use_merged_upsample.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.et = getelementptr inbounds nuw i8, ptr %i.ef, i64 36
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !44 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !40
  %.not61.i = icmp eq i32 %i.eu, %i.ew
  br i1 %.not61.i, label %bb.x, label %use_merged_upsample.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ef, i64 132
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !44
  %.not62.i = icmp eq i32 %i.ey, %i.eu
  br i1 %.not62.i, label %use_merged_upsample.exit, label %use_merged_upsample.exit.thread

use_merged_upsample.exit:                         ; preds = %bb.x
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ef, i64 228
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !44
  %.not63.i.not = icmp eq i32 %i.fa, %i.eu
  br i1 %.not63.i.not, label %bb.y, label %use_merged_upsample.exit.thread

bb.y:                                             ; preds = %use_merged_upsample.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !60
  br label %use_merged_upsample.exit.thread

use_merged_upsample.exit.thread:                  ; preds = %use_merged_upsample.exit, %bb.w, %bb.j, %bb.k, %bb.m, %bb.p, %.thread.i, %bb.l, %bb.o, %bb.n, %bb.q, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.x, %bb.y
  %.sink86 = phi i32 [ %i.fc, %bb.y ], [ 1, %bb.x ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.q ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.l ], [ 1, %.thread.i ], [ 1, %bb.p ], [ 1, %bb.m ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.w ], [ 1, %use_merged_upsample.exit ]
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 152
end_hunk_0
