Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 78
begin_hunk_0_@button_released:bb.a
  br i1 %i.cy, label %.epil.preheader, label %.lr.ph127.new

.lr.ph127.new:                                    ; preds = %.lr.ph127
  %unroll_iter = and i64 %wide.trip.count133, 2147483646
  br label %bb.t

bb.t:                                             ; preds = %bb.ad, %.lr.ph127.new
  %indvars.iv130 = phi i64 [ 0, %.lr.ph127.new ], [ %indvars.iv.next131.1, %bb.ad ] ; 5 uses
  %.0100119.us126 = phi i32 [ 0, %.lr.ph127.new ], [ %.1.us.1, %bb.ad ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph127.new ], [ %niter.next.1, %bb.ad ]
  %i.cz = getelementptr inbounds nuw [48 x i8], ptr %i.cx, i64 %indvars.iv130
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load i32, ptr %i.da, align 8, !tbaa !224
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dd = load i32, ptr %i.br, align 4, !tbaa !200
  %i.de = icmp eq i32 %i.dd, 2
  br i1 %i.de, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = load i32, ptr %i.cu, align 8, !tbaa !197
  %.not111.us = icmp eq i32 %i.df, 3
  br i1 %.not111.us, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dg = load ptr, ptr %i.cv, align 8, !tbaa !179
  %i.dh = getelementptr inbounds nuw [64 x i8], ptr %i.dg, i64 %indvars.iv130
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 36 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !189
  %i.dk = or i32 %i.dj, 4
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !189
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.dl = load ptr, ptr %i.cv, align 8, !tbaa !179
  %i.dm = getelementptr inbounds nuw [64 x i8], ptr %i.dl, i64 %indvars.iv130
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 36 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !189
  %i.dp = and i32 %i.do, -5
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !189
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  %.1.us = phi i32 [ %.0100119.us126, %bb.t ], [ 1, %bb.x ], [ 1, %bb.w ], [ %.0100119.us126, %bb.v ] ; 2 uses
  %indvars.iv.next131 = or disjoint i64 %indvars.iv130, 1 ; 3 uses
  %i.dq = getelementptr inbounds nuw [48 x i8], ptr %i.cx, i64 %indvars.iv.next131
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !224
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.du = load i32, ptr %i.br, align 4, !tbaa !200
  %i.dv = icmp eq i32 %i.du, 2
  br i1 %i.dv, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dw = load i32, ptr %i.cu, align 8, !tbaa !197
  %.not111.us.1 = icmp eq i32 %i.dw, 3
  br i1 %.not111.us.1, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dx = load ptr, ptr %i.cv, align 8, !tbaa !179
  %i.dy = getelementptr inbounds nuw [64 x i8], ptr %i.dx, i64 %indvars.iv.next131
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 36 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !189
  %i.eb = or i32 %i.ea, 4
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !189
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.ec = load ptr, ptr %i.cv, align 8, !tbaa !179
  %i.ed = getelementptr inbounds nuw [64 x i8], ptr %i.ec, i64 %indvars.iv.next131
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 36 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !189
  %i.eg = and i32 %i.ef, -5
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !189
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y
  %.1.us.1 = phi i32 [ %.1.us, %bb.y ], [ 1, %bb.ac ], [ 1, %bb.ab ], [ %.1.us, %bb.aa ] ; 3 uses
  %indvars.iv.next131.1 = add nuw nsw i64 %indvars.iv130, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.unr-lcssa, label %bb.t

.critedge.unr-lcssa:                              ; preds = %bb.ad
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.unr-lcssa, %.lr.ph127
  %indvars.iv130.epil.init = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next131.1, %.critedge.unr-lcssa ] ; 3 uses
  %.0100119.us126.epil.init = phi i32 [ 0, %.lr.ph127 ], [ %.1.us.1, %.critedge.unr-lcssa ] ; 2 uses
  %lcmp.mod141 = trunc i32 %i.ct to i1
  call void @llvm.assume(i1 %lcmp.mod141)
  %i.eh = getelementptr inbounds nuw [48 x i8], ptr %i.cx, i64 %indvars.iv130.epil.init
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !224
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %.epil.preheader
  %i.el = load i32, ptr %i.br, align 4, !tbaa !200
  %i.em = icmp eq i32 %i.el, 2
  br i1 %i.em, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.en = load i32, ptr %i.cu, align 8, !tbaa !197
  %.not111.us.epil = icmp eq i32 %i.en, 3
  br i1 %.not111.us.epil, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eo = load ptr, ptr %i.cv, align 8, !tbaa !179
  %i.ep = getelementptr inbounds nuw [64 x i8], ptr %i.eo, i64 %indvars.iv130.epil.init
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 36 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !189
  %i.es = or i32 %i.er, 4
  store i32 %i.es, ptr %i.eq, align 4, !tbaa !189
  br label %.critedge

bb.ah:                                            ; preds = %bb.ae
  %i.et = load ptr, ptr %i.cv, align 8, !tbaa !179
  %i.eu = getelementptr inbounds nuw [64 x i8], ptr %i.et, i64 %indvars.iv130.epil.init
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 36 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !189
  %i.ex = and i32 %i.ew, -5
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !189
  br label %.critedge

.critedge:                                        ; preds = %.epil.preheader, %bb.af, %bb.ag, %bb.ah, %.critedge.unr-lcssa
  %.1.us.lcssa = phi i32 [ %.1.us.1, %.critedge.unr-lcssa ], [ %.0100119.us126.epil.init, %.epil.preheader ], [ 1, %bb.ah ], [ 1, %bb.ag ], [ %.0100119.us126.epil.init, %bb.af ]
  %i.ey = icmp eq i32 %.1.us.lcssa, 0
  br i1 %i.ey, label %.critedge.thread, label %bb.ai

bb.ai:                                            ; preds = %.critedge
  %i.ez = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !179
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !180
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 220
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  call fastcc void @_update_lines_count(ptr noundef %i.fa, i32 noundef %i.fc, ptr noundef nonnull %i.fd, ptr noundef nonnull %i.fe)
  %i.ff = load i32, ptr %i.cq, align 4, !tbaa !183
  %i.fg = add nsw i32 %i.ff, 1
  store i32 %i.fg, ptr %i.cq, align 4, !tbaa !183
  %i.fh = load i32, ptr %i.co, align 4, !tbaa !223
  %i.fi = add nsw i32 %i.fh, 1
  store i32 %i.fi, ptr %i.co, align 4, !tbaa !223
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.s, %.lr.ph122, %bb.ai, %.critedge
  call void @dt_control_queue_redraw_center() #34
  br label %bb.aj

bb.aj:                                            ; preds = %bb.q, %bb.r, %.critedge.thread, %bb.p, %bb.o
  %i.fj = getelementptr inbounds nuw i8, ptr %i.d, i64 156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fj, i8 0, i64 16, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 324
  store <4 x float> splat (float -1.000000e+00), ptr %i.fk, align 4, !tbaa !15
  %i.fl = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !197
  %i.fn = icmp eq i32 %i.fm, 3
  %i.fo = icmp eq i32 %3, 3
  %or.cond = and i1 %i.fo, %i.fn
  br i1 %or.cond, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call fastcc void @_draw_save_lines_to_params(ptr noundef %0)
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.e, %bb.d, %bb.g, %bb.b
  %.1102 = phi i32 [ 1, %bb.b ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %bb.d ], [ 0, %bb.ak ], [ 0, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i32 %.1102
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_draw_save_lines_to_params(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !125 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !157  ; 5 uses
  %i.f = icmp ne ptr %i.c, null
  %i.g = icmp ne ptr %i.e, null
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %thread-pre-split.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 368 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !197  ; 2 uses
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !179  ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %thread-pre-split.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.n = load i32, ptr %i.m, align 8, !tbaa !180
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %bb.e, label %thread-pre-split.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %1 = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %2 = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 16 %i.l, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x float> poison), !tbaa !15
  %3 = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 16 %1, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x float> poison), !tbaa !15
  %4 = shufflevector <5 x float> %2, <5 x float> %3, <8 x i32> <i32 0, i32 1, i32 3, i32 4, i32 5, i32 6, i32 8, i32 9>
  store <8 x float> %4, ptr %i.a, align 16, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !126  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !143
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.u = load i32, ptr %i.t, align 16, !tbaa !144
  %i.v = sitofp reassoc nsz arcp contract afn i32 %i.u to double
  %i.w = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.q, ptr noundef %i.s, double noundef %i.v, i32 noundef 4, ptr noundef nonnull %i.a, i64 noundef 4) #34
  %.not62 = icmp eq i32 %i.w, 0
  br i1 %.not62, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 860
  %i.y = load <8 x float>, ptr %i.a, align 16, !tbaa !15
  store <8 x float> %i.y, ptr %i.x, align 4, !tbaa !15
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !235
  call void @dt_dev_add_history_item(ptr noundef %i.z, ptr noundef nonnull %0, i32 noundef 1) #34
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.pr.pre = load i32, ptr %i.h, align 8, !tbaa !197
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.f, %bb.b
  %i.aa = phi i32 [ %i.i, %bb.b ], [ %.pr.pre, %bb.f ]
  %i.ab = icmp eq i32 %i.aa, 3
  br i1 %i.ab, label %bb.g, label %thread-pre-split.thread

bb.g:                                             ; preds = %thread-pre-split
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !179 ; 2 uses
  %.not63 = icmp eq ptr %i.ad, null
  br i1 %.not63, label %thread-pre-split.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 856 ; 2 uses
  store i32 0, ptr %i.ae, align 4, !tbaa !236
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !180 ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %bb.i, %.lr.ph
  %.ph = phi i32 [ %i.ba, %bb.i ], [ 0, %.lr.ph ] ; 4 uses
  %.066.ph = phi i32 [ %i.bc, %bb.i ], [ 0, %.lr.ph ]
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %bb.j
  %.066 = phi i32 [ %.old, %bb.j ], [ %.066.ph, %.backedge.outer ] ; 3 uses
  %i.aj = zext nneg i32 %.066 to i64
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %i.aj ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !189
  switch i32 %i.am, label %bb.j [
    i32 5, label %bb.i
    i32 7, label %bb.i
  ]

bb.i:                                             ; preds = %.backedge, %.backedge
  %i.an = load float, ptr %i.ak, align 16, !tbaa !15
  %i.ao = shl nsw i32 %.ph, 2
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ap ; 4 uses
  store float %i.an, ptr %i.aq, align 4, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !15
  %i.at = getelementptr i8, ptr %i.aq, i64 4
  store float %i.as, ptr %i.at, align 4, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.av = load float, ptr %i.au, align 4, !tbaa !15
  %i.aw = getelementptr i8, ptr %i.aq, i64 8
  store float %i.av, ptr %i.aw, align 4, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ay = load float, ptr %i.ax, align 16, !tbaa !15
  %i.az = getelementptr i8, ptr %i.aq, i64 12
  store float %i.ay, ptr %i.az, align 4, !tbaa !15
  %i.ba = add nuw nsw i32 %.ph, 1                 ; 3 uses
  store i32 %i.ba, ptr %i.ae, align 4, !tbaa !236
  %i.bb = icmp samesign ult i32 %.ph, 49
  %i.bc = add nuw nsw i32 %.066, 1                ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.ag
  %or.cond69 = select i1 %i.bb, i1 %i.bd, i1 false
  br i1 %or.cond69, label %.backedge.outer, label %._crit_edge.loopexit

bb.j:                                             ; preds = %.backedge
  %.old = add nuw nsw i32 %.066, 1                ; 2 uses
  %.old68 = icmp slt i32 %.old, %i.ag
  br i1 %.old68, label %.backedge, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.i, %bb.j
  %i.be = phi i32 [ %.ph, %bb.j ], [ %i.ba, %bb.i ]
  %i.bf = shl nsw i32 %i.be, 1
  %i.bg = sext i32 %i.bf to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %i.bh = phi i64 [ %i.bg, %._crit_edge.loopexit ], [ 0, %bb.h ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !126 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = load ptr, ptr %i.bk, align 16, !tbaa !143
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bn = load i32, ptr %i.bm, align 16, !tbaa !144
  %i.bo = sitofp reassoc nsz arcp contract afn i32 %i.bn to double
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.bq = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.bj, ptr noundef %i.bl, double noundef %i.bo, i32 noundef 4, ptr noundef nonnull %i.bp, i64 noundef %i.bh) #34
  %.not64 = icmp eq i32 %i.bq, 0
  br i1 %.not64, label %thread-pre-split.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !235
  call void @dt_dev_add_history_item(ptr noundef %i.br, ptr noundef nonnull %0, i32 noundef 1) #34
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.d, %bb.c, %thread-pre-split, %bb.g, %bb.k, %._crit_edge, %bb.a
  ret void
}

declare float @dt_bauhaus_slider_get(ptr noundef) local_unnamed_addr #7

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #7

declare void @dt_toast_log(ptr noundef, ...) local_unnamed_addr #7

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @scrolled(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !125 ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 11 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !179
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 2 uses
  %i.h = load float, ptr %i.g, align 8, !tbaa !203
  %i.i = fcmp reassoc nsz arcp contract afn ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.c, label %bb.an

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 7 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !221
  %.not60 = icmp eq i32 %i.k, 0
  br i1 %.not60, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 156
  %i.m = load i32, ptr %i.l, align 4, !tbaa !222
  %.not61 = icmp eq i32 %i.m, 0
  br i1 %.not61, label %bb.an, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !126
  %i.p = call i32 @dt_dev_get_preview_size(ptr noundef %i.o, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #34 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 368 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !197
  %i.s = and i32 %i.r, -2
  %switch = icmp eq i32 %i.s, 2
  %.str.13..str.14 = select i1 %switch, ptr @.str.13, ptr @.str.14
  %i.t = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %.str.13..str.14) #34
  %.not62 = icmp eq i32 %3, 0
  %i.u = select reassoc nsz arcp contract afn i1 %.not62, float 8.000000e-01, float 1.250000e+00
  %i.v = fmul reassoc nsz arcp contract afn float %i.t, %i.u ; 2 uses
  %i.w = fcmp reassoc nsz arcp contract afn olt float %i.v, 1.000000e+02
  %i.x = select reassoc nsz arcp contract afn i1 %i.w, float %i.v, float 1.000000e+02 ; 2 uses
  %i.y = fcmp reassoc nsz arcp contract afn olt float %i.x, 4.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.y, float 4.000000e+00, float %i.x ; 8 uses
  %i.z = load i32, ptr %i.q, align 8, !tbaa !197
  %i.aa = and i32 %i.z, -2
  %switch68 = icmp eq i32 %i.aa, 2
  %.str.14.sink118 = select i1 %switch68, ptr @.str.13, ptr @.str.14
  call void @dt_conf_set_float(ptr noundef nonnull %.str.14.sink118, float noundef %spec.select) #34
  store float %spec.select, ptr %i.g, align 8, !tbaa !203
  %i.ab = load i32, ptr %i.q, align 8, !tbaa !197
  %.fr99 = freeze i32 %i.ab                       ; 2 uses
  %i.ac = and i32 %.fr99, -2
  %switch70 = icmp eq i32 %i.ac, 2
  br i1 %switch70, label %bb.am, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !181
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !182 ; 14 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !186 ; 10 uses
  %i.aj = load float, ptr %i.a, align 4, !tbaa !15
end_hunk_0
begin_hunk_1_@_draw_retrieve_lines_from_params:bb.a
  %i.fo = fcmp reassoc nsz arcp contract afn ogt float %i.fm, 0.000000e+00
  %i.fp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fn
  %i.fq = select reassoc nsz arcp contract afn i1 %i.fo, float %i.fp, float 1.000000e+00 ; 3 uses
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fq, %i.ex ; 2 uses
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fq, %i.fe ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eo, i64 52
  %i.fu = fmul reassoc nsz arcp contract afn float %i.fq, %i.fh
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.fw = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.fr, float noundef %i.fs) #35 ; 2 uses
  %i.fx = fcmp reassoc nsz arcp contract afn ogt float %i.fw, 0.000000e+00
  %i.fy = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fw
  %i.fz = select reassoc nsz arcp contract afn i1 %i.fx, float %i.fy, float 1.000000e+00 ; 3 uses
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fz, %i.fr
  store float %i.ga, ptr %i.fd, align 16, !tbaa !15
  %i.gb = fmul reassoc nsz arcp contract afn float %i.fz, %i.fs
  store float %i.gb, ptr %i.ft, align 4, !tbaa !15
  %i.gc = fmul reassoc nsz arcp contract afn float %i.fu, %i.fz
  store float %i.gc, ptr %i.fv, align 8, !tbaa !15
  %i.gd = fsub reassoc nsz arcp contract afn float %i.ew, %i.er ; 2 uses
  %i.ge = fmul reassoc nsz arcp contract afn float %i.gd, %i.gd
  %i.gf = fadd reassoc nsz arcp contract afn float %i.ge, %i.fj
  %i.gg = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.gf)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store float %i.gg, ptr %i.gh, align 8, !tbaa !188
  %i.gi = getelementptr inbounds nuw i8, ptr %i.eo, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %i.gi, align 4, !tbaa !15
  %i.gj = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  store i32 %spec.select, ptr %i.gj, align 4, !tbaa !189
  %i.gk = zext i1 %i.fb to i32
  %.197 = add nuw nsw i32 %.096116, %i.gk         ; 2 uses
  %not. = xor i1 %i.fb, true
  %i.gl = zext i1 %not. to i32
  %.1 = add nuw nsw i32 %.095117, %i.gl           ; 2 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %._crit_edge121, label %.lr.ph120

.critedge114:                                     ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %.critedge114, %.critedge, %bb.f, %bb.e, %bb.d, %bb.c, %._crit_edge121, %bb.j, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 1, %bb.j ], [ 1, %._crit_edge121 ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %.critedge ], [ 0, %.critedge114 ], [ 0, %bb.k ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_do_get_structure_lines(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !125 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #34 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !152
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #34 ; 0 uses
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.105, i32 noundef 5) #34
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.i) #34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !126
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !143
  tail call void @dt_dev_pixelpipe_cache_flush(ptr noundef %i.m) #34
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !126
  tail call void @dt_dev_reprocess_preview(ptr noundef %i.n) #34
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !245
  %.val = load ptr, ptr %i.a, align 16, !tbaa !125
  tail call fastcc void @_gui_update_structure_states(ptr %.val, ptr noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !126  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !143
  %i.u = tail call ptr @dt_dev_distort_get_iop_pipe(ptr noundef %i.r, ptr noundef %i.t, ptr noundef nonnull %0) #34
  %i.v = load ptr, ptr %i.a, align 16, !tbaa !125 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 148 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !178
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.d, label %_do_clean_structure.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_draw_save_lines_to_params(ptr noundef nonnull %0)
  store i32 1, ptr %i.w, align 4, !tbaa !178
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  store i32 0, ptr %i.y, align 8, !tbaa !180
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 220
  store i32 0, ptr %i.z, align 4, !tbaa !230
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 224
  store i32 0, ptr %i.aa, align 8, !tbaa !232
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 192 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !179 ; 2 uses
  %.not16.i = icmp eq ptr %i.ac, null
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.ac) #34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.ab, align 8, !tbaa !179
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 228 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !183
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !183
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 368
  store i32 0, ptr %i.ag, align 8, !tbaa !197
  store i32 0, ptr %i.w, align 4, !tbaa !178
  br label %_do_clean_structure.exit

_do_clean_structure.exit:                         ; preds = %bb.c, %bb.f
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !245
  %i.ai = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.ah) #34
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_do_clean_structure.exit
  tail call void @dt_control_queue_redraw_center() #34
  br label %bb.i

bb.h:                                             ; preds = %_do_clean_structure.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 3, ptr %i.aj, align 8, !tbaa !197
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 108
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.am = load <2 x i32>, ptr %i.ak, align 4, !tbaa !17
  store <2 x i32> %i.am, ptr %i.al, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i32 0, ptr %i.an, align 8, !tbaa !308
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  store i32 0, ptr %i.ao, align 4, !tbaa !309
  %i.ap = tail call fastcc i32 @_draw_retrieve_lines_from_params(ptr noundef nonnull %0, i32 noundef 3) ; 0 uses
  tail call void @dt_control_queue_redraw_center() #34
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.powi.f64.i32(double, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i32> @llvm.masked.load.v4i32.p0(ptr captures(none), <4 x i1>, <4 x i32>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.sqrt.v3f32(<3 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x ptr> @llvm.masked.load.v4p0.p0(ptr captures(none), <4 x i1>, <4 x ptr>) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmul.v2f32(float, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.sqrt.v4f64(<4 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.exp.v4f64(<4 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.ceil.v2f64(<2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #12

attributes #0 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #28 = { nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #29 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { nounwind allocsize(0) }
attributes #34 = { nounwind }
attributes #35 = { nounwind willreturn memory(none) }
attributes #36 = { nounwind allocsize(0,1) }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { cold noreturn nounwind }
attributes #39 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 double", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"float", !7, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!11, !11, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!"p1 _ZTS15dt_iop_module_t", !11, i64 0}
!19 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !11, i64 0}
!20 = !{!"p1 _ZTS18dt_histogram_roi_t", !11, i64 0}
!21 = !{!"dt_dev_histogram_collection_params_t", !20, i64 0, !8, i64 8}
!22 = !{!"p1 int", !11, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !23, i64 8, !8, i64 16, !8, i64 20}
!25 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !14, i64 16}
!26 = !{!"short", !7, i64 0}
!27 = !{!"", !26, i64 0, !26, i64 2}
!28 = !{!"", !8, i64 0, !7, i64 16}
!29 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !27, i64 48, !28, i64 64, !7, i64 96, !8, i64 112}
!30 = !{!"p1 _ZTS11_GHashTable", !11, i64 0}
!31 = !{!"p1 float", !11, i64 0}
!32 = !{!"dt_dev_distorted_mask_cache_t", !31, i64 0, !25, i64 8, !23, i64 32, !23, i64 40}
!33 = !{!"dt_dev_pixelpipe_iop_t", !18, i64 0, !19, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !21, i64 40, !22, i64 56, !24, i64 64, !7, i64 88, !14, i64 104, !8, i64 108, !8, i64 112, !23, i64 120, !8, i64 128, !8, i64 132, !25, i64 136, !25, i64 156, !25, i64 176, !25, i64 196, !8, i64 216, !8, i64 220, !29, i64 224, !29, i64 352, !7, i64 480, !8, i64 516, !30, i64 520, !32, i64 528, !32, i64 576}
!34 = !{!33, !11, i64 16}
!35 = !{!"dt_iop_ashift_data_t", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40}
!36 = !{!35, !14, i64 0}
!37 = !{!35, !14, i64 4}
!38 = !{!35, !14, i64 8}
!39 = !{!35, !14, i64 12}
!40 = !{!35, !14, i64 24}
!41 = !{!35, !14, i64 28}
!42 = !{!35, !14, i64 32}
!43 = !{!35, !14, i64 36}
!44 = !{!35, !14, i64 40}
!45 = !{!35, !14, i64 16}
!46 = !{!35, !14, i64 20}
!47 = !{!33, !8, i64 144}
!48 = !{!33, !8, i64 148}
!49 = !{!"llvm.loop.isvectorized", i32 1}
!50 = !{!"llvm.loop.unroll.runtime.disable"}
!51 = !{!25, !8, i64 8}
!52 = !{!25, !8, i64 12}
!53 = !{!25, !14, i64 16}
!54 = !{!"llvm.loop.unswitch.partial.disable"}
!55 = !{i64 0, i64 4, !17, i64 4, i64 4, !17, i64 8, i64 4, !17, i64 12, i64 4, !17, i64 16, i64 4, !15}
!56 = !{!25, !8, i64 0}
!57 = !{!25, !8, i64 4}
!58 = !{!"dt_codepath_t", !8, i64 0}
!59 = !{!"p1 _ZTS6_GList", !11, i64 0}
!60 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!61 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!62 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!63 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!64 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!65 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!66 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!67 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!68 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!69 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!70 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!71 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!72 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!73 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!74 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!75 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!76 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!77 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!78 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!79 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!80 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!81 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!82 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!83 = !{!"dt_pthread_mutex_t", !7, i64 0}
!84 = !{!"p1 omnipotent char", !11, i64 0}
!85 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!86 = !{!"_Bool", !7, i64 0}
!87 = !{!"p1 _ZTS10_GMainLoop", !11, i64 0}
!88 = !{!"p1 _ZTS13_GMainContext", !11, i64 0}
!89 = !{!"p1 _ZTS12_GThreadPool", !11, i64 0}
!90 = !{!"p1 _ZTS12_GAsyncQueue", !11, i64 0}
!91 = !{!"", !85, i64 0, !83, i64 8, !7, i64 48, !86, i64 96, !86, i64 97, !87, i64 104, !88, i64 112, !89, i64 120, !90, i64 128, !90, i64 136, !90, i64 144}
!92 = !{!"double", !7, i64 0}
!93 = !{!"p1 _ZTS10_GTimeZone", !11, i64 0}
!94 = !{!"p1 _ZTS10_GDateTime", !11, i64 0}
!95 = !{!"dt_sys_resources_t", !23, i64 0, !23, i64 8, !22, i64 16, !22, i64 24, !8, i64 32}
!96 = !{!"dt_backthumb_t", !92, i64 0, !92, i64 8, !8, i64 16, !8, i64 20}
!97 = !{!"dt_gimp_t", !8, i64 0, !84, i64 8, !84, i64 16, !8, i64 24, !8, i64 28}
!98 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!99 = !{!"dt_splash_t", !98, i64 0, !98, i64 8, !98, i64 16, !98, i64 24, !8, i64 32}
!100 = !{!"darktable_t", !58, i64 0, !8, i64 4, !8, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !59, i64 40, !60, i64 48, !61, i64 56, !62, i64 64, !63, i64 72, !64, i64 80, !65, i64 88, !66, i64 96, !67, i64 104, !68, i64 112, !69, i64 120, !70, i64 128, !71, i64 136, !72, i64 144, !73, i64 152, !74, i64 160, !75, i64 168, !76, i64 176, !77, i64 184, !78, i64 192, !79, i64 200, !80, i64 208, !81, i64 216, !82, i64 224, !7, i64 232, !83, i64 2792, !83, i64 2832, !83, i64 2872, !83, i64 2912, !83, i64 2952, !83, i64 2992, !84, i64 3032, !84, i64 3040, !84, i64 3048, !84, i64 3056, !84, i64 3064, !84, i64 3072, !84, i64 3080, !84, i64 3088, !84, i64 3096, !84, i64 3104, !84, i64 3112, !84, i64 3120, !84, i64 3128, !91, i64 3136, !59, i64 3288, !92, i64 3296, !59, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !93, i64 3520, !94, i64 3528, !95, i64 3536, !96, i64 3576, !97, i64 3600, !99, i64 3632, !8, i64 3672}
!101 = !{!100, !8, i64 8}
!102 = !{!33, !19, i64 8}
end_hunk_1
