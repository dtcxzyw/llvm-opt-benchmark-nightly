Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/job_scheduler?download=true
inline.NumInlined: 83
inline.NumDeleted: 33
begin_hunk_0_@sort_job_queue2:bb.a

._crit_edge:                                      ; preds = %bb.be
  %.phi.trans.insert240 = getelementptr inbounds nuw i8, ptr %i.bo, i64 408
  %.pre241 = load i32, ptr %.phi.trans.insert240, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge, %.thread228
  %i.dt = phi i32 [ %i.cz, %.thread228 ], [ %.pre241, %._crit_edge ] ; 2 uses
  %.1122232 = phi i32 [ %.1122230, %.thread228 ], [ %.1122, %._crit_edge ] ; 5 uses
  %.not195 = icmp eq i32 %i.dt, 0
  br i1 %.not195, label %bb.bo, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.du = getelementptr inbounds nuw i8, ptr %.pre, i64 408
  %i.dv = load i32, ptr %i.du, align 8
  %.not196 = icmp eq i32 %i.dt, %i.dv
  br i1 %.not196, label %bb.bo, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bo, i64 400
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %.not200 = icmp eq ptr %i.dx, null
  br i1 %.not200, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  br label %bb.bt

bb.bj:                                            ; preds = %bb.bh
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bo, i64 760
  %i.ea = load ptr, ptr %i.dz, align 8
  %.not201 = icmp eq ptr %i.ea, null
  br i1 %.not201, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bo, i64 792
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %.not202 = icmp eq ptr %i.ec, null
  br i1 %.not202, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  %.not203 = icmp eq ptr %i.ee, null
  br i1 %.not203, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.bt

bb.bn:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bo, i64 832
  br label %bb.bt

bb.bo:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %.1122233 = phi i32 [ %.1122232, %bb.bg ], [ %.1122232, %bb.bf ], [ %.1122, %bb.be ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bo, i64 760
  %i.ei = load ptr, ptr %i.eh, align 8
  %.not197 = icmp eq ptr %i.ei, null
  br i1 %.not197, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bo, i64 792
  %i.ek = load ptr, ptr %i.ej, align 8            ; 2 uses
  %.not198 = icmp eq ptr %i.ek, null
  br i1 %.not198, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  %.not199 = icmp eq ptr %i.em, null
  br i1 %.not199, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bo, i64 832
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.bi, %bb.bn, %bb.bm
  %.1122231 = phi i32 [ %.1122232, %bb.bi ], [ %.1122232, %bb.bm ], [ %.1122232, %bb.bn ], [ %.1122233, %bb.br ], [ %.1122233, %bb.bs ] ; 2 uses
  %.1.in = phi ptr [ %i.dy, %bb.bi ], [ %i.ef, %bb.bm ], [ %i.eg, %bb.bn ], [ %i.en, %bb.br ], [ %i.eo, %bb.bs ]
  %.1 = load i32, ptr %.1.in, align 4             ; 2 uses
  %i.ep = icmp ult i32 %.1122231, %.1
  br i1 %i.ep, label %bb.ck, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.eq = icmp ugt i32 %.1122231, %.1
  br i1 %i.eq, label %bb.ck, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.er = getelementptr inbounds nuw i8, ptr %.pre, i64 256
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %.not204 = icmp eq ptr %i.es, null
  br i1 %.not204, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.et = getelementptr inbounds nuw i8, ptr %i.bo, i64 256
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %.not205 = icmp eq ptr %i.eu, null
  br i1 %.not205, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 496
  %i.ew = load i64, ptr %i.ev, align 8            ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 496
  %i.ey = load i64, ptr %i.ex, align 8            ; 2 uses
  %i.ez = icmp sgt i64 %i.ew, %i.ey
  br i1 %i.ez, label %bb.ck, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fa = icmp sgt i64 %i.ey, %i.ew
  br i1 %i.fa, label %bb.ck, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bw, %bb.bv
  %i.fb = load i32, ptr %i.a, align 8             ; 3 uses
  %i.fc = icmp eq i32 %i.fb, -2
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %.pre, i64 80
  %.0124.in = select i1 %i.fc, ptr %i.fd, ptr %i.fe
  %.0124 = load i32, ptr %.0124.in, align 4       ; 2 uses
  %i.ff = load i32, ptr %i.b, align 8             ; 3 uses
  %i.fg = icmp eq i32 %i.ff, -2
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %.0123.in = select i1 %i.fg, ptr %i.fh, ptr %i.fi
  %.0123 = load i32, ptr %.0123.in, align 4       ; 2 uses
  %i.fj = icmp ugt i32 %.0124, %.0123
  br i1 %i.fj, label %bb.ck, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fk = icmp ult i32 %.0124, %.0123
  br i1 %i.fk, label %bb.ck, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fl = icmp ugt i32 %i.fb, %i.ff
  br i1 %i.fl, label %bb.ck, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fm = icmp ult i32 %i.fb, %i.ff
  br i1 %i.fm, label %bb.ck, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.fo = load ptr, ptr %i.fn, align 8            ; 2 uses
  %.not206 = icmp eq ptr %i.fo, null
  br i1 %.not206, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.fq = load ptr, ptr %i.fp, align 8            ; 2 uses
  %.not207 = icmp eq ptr %i.fq, null
  br i1 %.not207, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 280
  %i.fs = load i64, ptr %i.fr, align 8            ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 280
  %i.fu = load i64, ptr %i.ft, align 8            ; 2 uses
  %i.fv = icmp sgt i64 %i.fs, %i.fu
  br i1 %i.fv, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.fw = icmp slt i64 %i.fs, %i.fu
  br i1 %i.fw, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.ce, %bb.cd
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.fy = load i8, ptr %i.fx, align 8, !range !8, !noundef !9
  %i.fz = trunc nuw i8 %i.fy to i1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.gb = load i8, ptr %i.ga, align 8, !range !8, !noundef !9
  %i.gc = trunc nuw i8 %i.gb to i1                ; 2 uses
  br i1 %i.fz, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.gc, label %.thread234, label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  br i1 %i.gc, label %bb.ck, label %.thread234

.thread234:                                       ; preds = %bb.ci, %bb.cj
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.cg, %bb.cf, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bu, %bb.bt, %bb.ao, %bb.an, %bb.z, %bb.y, %bb.g, %bb.f, %.thread234, %bb.d
  %.0129 = phi i32 [ %i.r, %bb.d ], [ 1, %bb.g ], [ -1, %bb.f ], [ -1, %bb.y ], [ 1, %bb.z ], [ 1, %bb.an ], [ -1, %bb.ao ], [ 1, %bb.bt ], [ -1, %bb.bu ], [ 1, %bb.bx ], [ -1, %bb.by ], [ 1, %bb.bz ], [ -1, %bb.ca ], [ 1, %bb.cb ], [ -1, %bb.cc ], [ 1, %bb.cf ], [ 0, %.thread234 ], [ -1, %bb.ci ], [ -1, %bb.cg ], [ 1, %bb.cj ]
  ret i32 %.0129
}

declare zeroext i1 @slurm_preemption_enabled() local_unnamed_addr #2

declare zeroext i1 @preempt_g_job_preempt_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @get_tasks_per_node(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %struct.slurm_step_layout_req_t, align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  store i16 -2, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 5 uses
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load i16, ptr %i.k, align 8              ; 2 uses
  switch i16 %i.l, label %bb.b [
    i16 0, label %bb.c
    i16 -2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b
  %.046 = phi i16 [ %i.l, %bb.b ], [ 1, %bb.a ], [ 1, %bb.a ] ; 3 uses
  %i.m = zext i32 %i.g to i64
  %i.n = tail call ptr @slurm_xcalloc(i64 noundef %i.m, i64 noundef 2, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 2631, ptr noundef nonnull @__func__.get_tasks_per_node) #15 ; 5 uses
  store ptr %i.n, ptr %i.a, align 8
  %i.o = load i32, ptr %i.f, align 4
  %i.p = zext i32 %i.o to i64
  %i.q = tail call ptr @slurm_xcalloc(i64 noundef %i.p, i64 noundef 2, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 2633, ptr noundef nonnull @__func__.get_tasks_per_node) #15 ; 3 uses
  store ptr %i.q, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %._crit_edge65, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.pre = load ptr, ptr %i.t, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.v = phi i32 [ %i.s, %.preheader.lr.ph ], [ %i.at, %._crit_edge ]
  %i.w = phi ptr [ %.pre, %.preheader.lr.ph ], [ %i.au, %._crit_edge ] ; 3 uses
  %indvars.iv72 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next73, %._crit_edge ] ; 4 uses
  %.04463 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv72
  %i.y = load i32, ptr %i.x, align 4
  %.not69 = icmp eq i32 %i.y, 0
  br i1 %.not69, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.z = load i32, ptr %i.f, align 4
  %.not5897 = icmp ugt i32 %i.z, %.04463
  br i1 %.not5897, label %.lr.ph100, label %._crit_edge.loopexit

.lr.ph100:                                        ; preds = %.lr.ph.preheader
  %i.aa = sext i32 %.04463 to i64
  br label %bb.d

._crit_edge65:                                    ; preds = %._crit_edge, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.n, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.q, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = and i64 %i.ae, 16384
  %.not53 = icmp eq i64 %i.af, 0
  %.pre81 = load ptr, ptr %i.i, align 8           ; 5 uses
  br i1 %.not53, label %bb.f, label %bb.e

.lr.ph:                                           ; preds = %bb.d
  %i.ag = load i32, ptr %i.f, align 4
  %i.ah = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  %.not58 = icmp ugt i32 %i.ag, %i.ah
  br i1 %.not58, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !12

bb.d:                                             ; preds = %.lr.ph100, %.lr.ph
  %.0426099 = phi i32 [ 0, %.lr.ph100 ], [ %i.an, %.lr.ph ]
  %indvars.iv98 = phi i64 [ %i.aa, %.lr.ph100 ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ai = load ptr, ptr %i.u, align 8
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv72
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr inbounds [2 x i8], ptr %i.n, i64 %indvars.iv98
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = getelementptr inbounds [2 x i8], ptr %i.q, i64 %indvars.iv98
  store i16 %.046, ptr %i.am, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv98, 1 ; 3 uses
  %i.an = add nuw nsw i32 %.0426099, 1            ; 2 uses
  %i.ao = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv72
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = icmp ult i32 %i.an, %i.aq
  br i1 %i.ar, label %.lr.ph, label %._crit_edge.loopexit.split.loop.exit89, !llvm.loop !12

._crit_edge.loopexit.split.loop.exit89:           ; preds = %bb.d
  %indvars.le = trunc i64 %indvars.iv.next to i32
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge.loopexit.split.loop.exit89
  %i.as = phi ptr [ %i.ao, %._crit_edge.loopexit.split.loop.exit89 ], [ %i.w, %.lr.ph.preheader ], [ %i.ao, %.lr.ph ]
  %.1.lcssa.ph = phi i32 [ %indvars.le, %._crit_edge.loopexit.split.loop.exit89 ], [ %.04463, %.lr.ph.preheader ], [ %i.ah, %.lr.ph ]
  %.pre80 = load i32, ptr %i.r, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.at = phi i32 [ %i.v, %.preheader ], [ %.pre80, %._crit_edge.loopexit ] ; 2 uses
  %i.au = phi ptr [ %i.w, %.preheader ], [ %i.as, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.04463, %.preheader ], [ %.1.lcssa.ph, %._crit_edge.loopexit ]
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.av = zext i32 %i.at to i64
  %i.aw = icmp samesign ult i64 %indvars.iv.next73, %i.av
  br i1 %i.aw, label %.preheader, label %._crit_edge65, !llvm.loop !13

bb.e:                                             ; preds = %._crit_edge65
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre81, i64 300
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %.not54 = icmp eq i32 %i.ay, 0
  br i1 %.not54, label %bb.f, label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.e, %._crit_edge65
  %i.az = getelementptr inbounds nuw i8, ptr %.pre81, i64 296
  %i.ba = load i16, ptr %i.az, align 8            ; 2 uses
  %.not55 = icmp eq i16 %i.ba, 0
  br i1 %.not55, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = zext i16 %i.ba to i32
  %i.bc = mul i32 %i.g, %i.bb
  br label %.loopexit.sink.split

bb.h:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  store i32 0, ptr %i.bd, align 4
  %i.be = load i32, ptr %i.f, align 4             ; 3 uses
  %.not70 = icmp eq i32 %i.be, 0
  br i1 %.not70, label %.loopexit, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %bb.h
  %wide.trip.count = zext i32 %i.be to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.be, 4
  br i1 %min.iters.check, label %.lr.ph68.preheader103, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph68.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %.046, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %index
  %wide.load = load <4 x i16>, ptr %i.bf, align 2
  %i.bg = udiv <4 x i16> %wide.load, %broadcast.splat
  %i.bh = zext <4 x i16> %i.bg to <4 x i32>
  %i.bi = add <4 x i32> %vec.phi, %i.bh           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %2 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bi) ; 2 uses
  store i32 %2, ptr %i.bd, align 4
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph68.preheader103

.lr.ph68.preheader103:                            ; preds = %.lr.ph68.preheader, %middle.block
  %indvars.iv76.ph = phi i64 [ 0, %.lr.ph68.preheader ], [ %n.vec, %middle.block ]
  %.ph = phi i32 [ 0, %.lr.ph68.preheader ], [ %2, %middle.block ]
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68.preheader103, %.lr.ph68
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %.lr.ph68 ], [ %indvars.iv76.ph, %.lr.ph68.preheader103 ] ; 2 uses
  %i.bk = phi i32 [ %i.bp, %.lr.ph68 ], [ %.ph, %.lr.ph68.preheader103 ]
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv76
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = udiv i16 %i.bm, %.046
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add i32 %i.bk, %i.bo                    ; 2 uses
  store i32 %i.bp, ptr %i.bd, align 4
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph68, !llvm.loop !15

.loopexit.sink.split:                             ; preds = %bb.e, %bb.g
  %.sink = phi i32 [ %i.bc, %bb.g ], [ %i.ay, %bb.e ]
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %.sink, ptr %i.bq, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph68, %middle.block, %.loopexit.sink.split, %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %.pre81, i64 504
  %i.bs = load i32, ptr %i.br, align 8            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.bs, ptr %i.bt, align 8
  %i.bu = and i32 %i.bs, 65535
  %i.bv = icmp eq i32 %i.bu, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre81, i64 416
  %storemerge.in = select i1 %i.bv, ptr %i.bx, ptr %i.bw
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %1, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %.pre81, i64 248
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i16, ptr %i.ca, align 2            ; 2 uses
  %.not56 = icmp eq i16 %i.cb, 0
  br i1 %.not56, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  store i16 %i.cb, ptr %i.e, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %i.cc = call ptr @slurm_step_layout_create(ptr noundef nonnull %1) #15 ; 4 uses
  %.not57 = icmp eq ptr %i.cc, null
  br i1 %.not57, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call ptr @uint16_array_to_str(i32 noundef %i.ce, ptr noundef %i.cg) #15
  %i.ci = call i32 @slurm_step_layout_destroy(ptr noundef nonnull %i.cc) #15 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.045 = phi ptr [ %i.ch, %bb.k ], [ null, %bb.j ]
  call void @slurm_xfree(ptr noundef nonnull %i.a) #15
  call void @slurm_xfree(ptr noundef nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.045
}

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @slurm_step_layout_create(ptr noundef) local_unnamed_addr #2

declare ptr @uint16_array_to_str(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @slurm_step_layout_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @launch_job(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %struct.het_job_env_t, align 8      ; 7 uses
  %2 = alloca %struct.slurm_step_id_t, align 8    ; 9 uses
  %3 = alloca %struct.het_job_ready_t, align 8    ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.bo, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store i64 0, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_het_job_ready.exit.thread44, label %bb.c

_het_job_ready.exit.thread44:                     ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @find_job_record(i32 noundef %i.h) #15 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr %i.j, ptr %i.k, align 8
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_het_job_ready.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 432
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.m, null
  br i1 %.not9.i, label %_het_job_ready.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %0, ptr %i.n, align 8
  %i.o = call i32 @list_for_each(ptr noundef nonnull %i.m, ptr noundef nonnull @_foreach_het_job_ready, ptr noundef nonnull %3) #15 ; 0 uses
  %i.p = load ptr, ptr %i.k, align 8
  %.not10.i = icmp eq ptr %i.p, null
  br i1 %.not10.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.r = and i64 %i.q, 562949953421312
  %.not13.i = icmp eq i64 %i.r, 0
  br i1 %.not13.i, label %_het_job_ready.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call i32 @get_log_level() #15
  %i.t = icmp sgt i32 %i.s, 3
  br i1 %i.t, label %bb.h, label %_het_job_ready.exit

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.k, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.39, ptr noundef %i.u) #15
  br label %_het_job_ready.exit

bb.i:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %3, align 8
  %.not11.i = icmp eq ptr %i.v, null
  br i1 %.not11.i, label %_het_job_ready.exit.thread48, label %bb.j

_het_job_ready.exit.thread48:                     ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.bo

bb.j:                                             ; preds = %bb.i
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.x = and i64 %i.w, 562949953421312
  %.not12.i = icmp eq i64 %i.x, 0
  br i1 %.not12.i, label %_het_job_ready.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = call i32 @get_log_level() #15
  %i.z = icmp sgt i32 %i.y, 3
  br i1 %i.z, label %bb.l, label %_het_job_ready.exit

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr %3, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.40, ptr noundef %i.aa) #15
  br label %_het_job_ready.exit

_het_job_ready.exit.thread:                       ; preds = %bb.d, %bb.c
  %.str.37.sink = phi ptr [ @.str.37, %bb.c ], [ @.str.38, %bb.d ]
  %i.ab = tail call i32 (ptr, ...) @error(ptr noundef nonnull %.str.37.sink, ptr noundef nonnull %0) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.bo

_het_job_ready.exit:                              ; preds = %bb.f, %bb.g, %bb.h, %bb.j, %bb.k, %bb.l
  %.pr = load ptr, ptr %i.k, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %bb.bo, label %bb.m

bb.m:                                             ; preds = %_het_job_ready.exit.thread44, %_het_job_ready.exit
  %.0.i47 = phi ptr [ %0, %_het_job_ready.exit.thread44 ], [ %.pr, %_het_job_ready.exit ] ; 45 uses
  %i.ac = call i32 @pick_batch_host(ptr noundef nonnull %.0.i47) #15
  %.not32 = icmp eq i32 %i.ac, 0
  br i1 %.not32, label %bb.n, label %bb.bo

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call ptr @find_node_record(ptr noundef %i.ae) #15 ; 2 uses
  %.not33 = icmp eq ptr %i.af, null
  br i1 %.not33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 400
  %i.ah = load i16, ptr %i.ag, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi i16 [ %i.ah, %bb.o ], [ -2, %bb.n ]   ; 2 uses
  %i.ai = call ptr @build_batch_step(ptr noundef nonnull %0) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.aj = load i64, ptr %.0.i47, align 8
  store i64 %i.aj, ptr %2, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i47, i64 448 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8
  store i32 %i.am, ptr %i.ak, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 -2, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -2, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.ap, align 4
  %i.aq = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 352, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 2392, ptr noundef nonnull @__func__._build_launch_job_msg) #15 ; 48 uses
  %i.ar = load i32, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 324
  store i32 %i.ar, ptr %i.as, align 4
end_hunk_0
begin_hunk_1_@launch_job:bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 348
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i32 -5, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bf = call ptr @get_job_script(ptr noundef nonnull %.0.i47) #15 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  store ptr %i.bf, ptr %i.bg, align 8
  %.not.i36 = icmp eq ptr %i.bf, null
  br i1 %.not.i36, label %bb.ag, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i47, i64 144 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = and i64 %i.bi, 16384
  %.not131.i = icmp eq i64 %i.bj, 0
  br i1 %.not131.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i47, i64 256
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 300
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store i32 %i.bn, ptr %i.bo, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i47, i64 184
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call ptr @xstrdup(ptr noundef %i.bq) #15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  store ptr %i.br, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i47, i64 256 ; 21 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 84
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i32 %i.bw, ptr %i.bx, align 8
  %i.by = load ptr, ptr %i.bt, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 88
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  store i32 %i.ca, ptr %i.cb, align 4
  %i.cc = load ptr, ptr %i.bt, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 92
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i32 %i.ce, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i47, i64 640
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call ptr @xstrdup(ptr noundef %i.ch) #15
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  store ptr %i.ci, ptr %i.cj, align 8
  %i.ck = load ptr, ptr %i.bt, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 305
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aq, i64 233
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = load ptr, ptr %i.bt, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 304
  %i.cq = load i8, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aq, i64 232
  store i8 %i.cq, ptr %i.cr, align 8
  %i.cs = load ptr, ptr %i.bt, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  %i.cu = load i16, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  store i16 %i.cu, ptr %i.cv, align 8
  %i.cw = load ptr, ptr %i.bt, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 320
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aq, i64 248
  store i64 %i.cy, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i47, i64 898
  %i.db = load i16, ptr %i.da, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aq, i64 264
  store i16 %i.db, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i47, i64 848 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  store i32 %i.de, ptr %i.df, align 8
  %i.dg = call i32 @make_batch_job_cred(ptr noundef nonnull %i.aq, ptr noundef nonnull %.0.i47, i16 noundef zeroext %.0)
  %.not132.i = icmp eq i32 %i.dg, 0
  br i1 %.not132.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dh = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__._build_launch_job_msg, ptr noundef nonnull %.0.i47) #15 ; 0 uses
  call void @slurm_free_job_launch_msg(ptr noundef nonnull %i.aq) #15
  call void @job_mgr_handle_cred_failure(ptr noundef nonnull %.0.i47) #15
  br label %_build_launch_job_msg.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.di = load ptr, ptr %i.bt, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call ptr @xstrdup(ptr noundef %i.dk) #15
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.dl, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i47, i64 776
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %.not133.i = icmp eq ptr %i.do, null
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i47, i64 752
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 224
  %.sink147.in.i = select i1 %.not133.i, ptr %i.dp, ptr %i.dq
  %.sink147.i = load ptr, ptr %.sink147.in.i, align 8
  %i.dr = call ptr @xstrdup(ptr noundef %.sink147.i) #15
  %i.ds = getelementptr inbounds nuw i8, ptr %i.aq, i64 240
  store ptr %i.dr, ptr %i.ds, align 8
  %i.dt = load ptr, ptr %i.bt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 464
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = call ptr @xstrdup(ptr noundef %i.dv) #15
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aq, i64 144
  store ptr %i.dw, ptr %i.dx, align 8
  %i.dy = load ptr, ptr %i.bt, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 472
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call ptr @xstrdup(ptr noundef %i.ea) #15
  %i.ec = getelementptr inbounds nuw i8, ptr %i.aq, i64 152
  store ptr %i.eb, ptr %i.ec, align 8
  %i.ed = load ptr, ptr %i.bt, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 480
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = call ptr @xstrdup(ptr noundef %i.ef) #15
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aq, i64 168 ; 3 uses
  store ptr %i.eg, ptr %i.eh, align 8
  %i.ei = load ptr, ptr %i.bt, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 520
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = call ptr @xstrdup(ptr noundef %i.ek) #15
  %i.em = getelementptr inbounds nuw i8, ptr %i.aq, i64 176
  store ptr %i.el, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i47, i64 1024
  %i.eo = load i16, ptr %i.en, align 8
  %i.ep = icmp ult i16 %i.eo, 11009
  br i1 %i.ep, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eq = load ptr, ptr %i.eh, align 8
  %.not134.i = icmp eq ptr %i.eq, null
  br i1 %.not134.i, label %.sink.split.i, label %bb.w

.sink.split.i:                                    ; preds = %bb.v
  %i.er = load i32, ptr %i.aw, align 8
  %.not135.i = icmp eq i32 %i.er, 0
  %.str.44..str.45.i = select i1 %.not135.i, ptr @.str.44, ptr @.str.45
  %i.es = call ptr @xstrdup(ptr noundef nonnull %.str.44..str.45.i) #15
  store ptr %i.es, ptr %i.eh, align 8
  br label %bb.w

bb.w:                                             ; preds = %.sink.split.i, %bb.v, %bb.u
  %i.et = load ptr, ptr %i.bt, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = load i32, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.aq, i64 184
  store i32 %i.ev, ptr %i.ew, align 8
  %i.ex = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.ez = load i32, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call ptr @xduparray(i32 noundef %i.ez, ptr noundef %i.fb) #15
  %i.fd = getelementptr inbounds nuw i8, ptr %i.aq, i64 192
  store ptr %i.fc, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i47, i64 1008
  %i.ff = load i32, ptr %i.fe, align 8            ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.aq, i64 288
  store i32 %i.ff, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i47, i64 1000
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = call ptr @xduparray(i32 noundef %i.ff, ptr noundef %i.fi) #15
  %i.fk = getelementptr inbounds nuw i8, ptr %i.aq, i64 280
  store ptr %i.fj, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aq, i64 200 ; 6 uses
  %i.fm = call ptr @get_job_env(ptr noundef nonnull %.0.i47, ptr noundef nonnull %i.fl) #15 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aq, i64 208 ; 21 uses
  store ptr %i.fm, ptr %i.fn, align 8
  %i.fo = load ptr, ptr %i.bs, align 8
  %.not136.i = icmp eq ptr %i.fo, null
  %.not137.i = icmp eq ptr %i.fm, null
  %or.cond.i = select i1 %.not136.i, i1 %.not137.i, i1 false
  br i1 %or.cond.i, label %bb.ag, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fp = load i32, ptr %i.fl, align 8
  %i.fq = icmp ugt i32 %i.fp, 1
  br i1 %i.fq, label %.lr.ph.i.i, label %_split_env.exit.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 1, %bb.x ] ; 3 uses
  %i.fr = load ptr, ptr %i.fn, align 8
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv.i.i
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = call ptr @xstrdup(ptr noundef %i.ft) #15
  %i.fv = load ptr, ptr %i.fn, align 8
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv.i.i
  store ptr %i.fu, ptr %i.fw, align 8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fx = load i32, ptr %i.fl, align 8
  %i.fy = zext i32 %i.fx to i64
  %i.fz = icmp samesign ult i64 %indvars.iv.next.i.i, %i.fy
  br i1 %i.fz, label %.lr.ph.i.i, label %_split_env.exit.i, !llvm.loop !18

_split_env.exit.i:                                ; preds = %.lr.ph.i.i, %bb.x
  %i.ga = load i64, ptr %i.bh, align 8
  %i.gb = and i64 %i.ga, 2199023255552
  %.not138.i = icmp eq i64 %i.gb, 0
  br i1 %.not138.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_split_env.exit.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i47, i64 128
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = call i32 @env_array_overwrite(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.47, ptr noundef %i.gd) #15 ; 0 uses
  %i.gf = load ptr, ptr %i.fn, align 8
  %i.gg = call i64 @xsize(ptr noundef %i.gf) #15
  %i.gh = lshr i64 %i.gg, 3
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = add i32 %i.gi, -1
  store i32 %i.gj, ptr %i.fl, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_split_env.exit.i
  %i.gk = load ptr, ptr %i.bt, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 320
  %i.gm = load i64, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.aq, i64 256
  store i64 %i.gm, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i47, i64 504 ; 5 uses
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load i32, ptr %i.gq, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.aq, i64 68
  store i32 %i.gr, ptr %i.gs, align 4
  %i.gt = load ptr, ptr %i.go, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load i32, ptr %i.gu, align 8
  %i.gw = zext i32 %i.gv to i64
  %i.gx = shl nuw nsw i64 %i.gw, 1
  %i.gy = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.gx, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 2493, ptr noundef nonnull @__func__._build_launch_job_msg) #15 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  store ptr %i.gy, ptr %i.gz, align 8
  %i.ha = load ptr, ptr %i.go, align 8            ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.he = load i32, ptr %i.hd, align 8
  %i.hf = zext i32 %i.he to i64
  %i.hg = shl nuw nsw i64 %i.hf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.gy, ptr align 2 %i.hc, i64 %i.hg, i1 false)
  %i.hh = load ptr, ptr %i.go, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load i32, ptr %i.hi, align 8
  %i.hk = zext i32 %i.hj to i64
  %i.hl = shl nuw nsw i64 %i.hk, 2
  %i.hm = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.hl, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 2498, ptr noundef nonnull @__func__._build_launch_job_msg) #15 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store ptr %i.hm, ptr %i.hn, align 8
  %i.ho = load ptr, ptr %i.go, align 8            ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hs = load i32, ptr %i.hr, align 8
  %i.ht = zext i32 %i.hs to i64
  %i.hu = shl nuw nsw i64 %i.ht, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hm, ptr align 4 %i.hq, i64 %i.hu, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.i47, i64 32
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = call ptr @xstrdup(ptr noundef %i.hw) #15
  store ptr %i.hx, ptr %i.aq, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.i47, i64 880
  %i.hz = load ptr, ptr %i.hy, align 8            ; 2 uses
  %.not139.i = icmp eq ptr %i.hz, null
  br i1 %.not139.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 264
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = call ptr @xstrdup(ptr noundef %i.ib) #15
  %i.id = getelementptr inbounds nuw i8, ptr %i.aq, i64 160
  store ptr %i.ic, ptr %i.id, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ie = load ptr, ptr %i.bt, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 344
  %i.ig = load i16, ptr %i.if, align 8            ; 2 uses
  %.not140.i = icmp eq i16 %i.ig, -2
  br i1 %.not140.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ih = icmp ne i16 %i.ig, 0
  %i.ii = zext i1 %i.ih to i8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ij = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1520), align 8
  %i.ik = lshr i32 %i.ij, 20
  %i.il = trunc i32 %i.ik to i8
  %i.im = and i8 %i.il, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sink142.i = phi i8 [ %i.im, %bb.ad ], [ %i.ii, %bb.ac ]
  %i.in = getelementptr inbounds nuw i8, ptr %i.aq, i64 320
  store i8 %.sink142.i, ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %.0.i47, i64 936
  %i.ip = load ptr, ptr %i.io, align 8            ; 2 uses
  %.not141.i = icmp eq ptr %i.ip, null
  br i1 %.not141.i, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 200
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = call ptr @xstrdup(ptr noundef %i.ir) #15
  %i.it = getelementptr inbounds nuw i8, ptr %i.aq, i64 272
  store ptr %i.is, ptr %i.it, align 8
  br label %bb.aj

bb.ag:                                            ; preds = %bb.w, %bb.p
  %.0127.i = phi ptr [ @.str.42, %bb.p ], [ @.str.46, %bb.w ] ; 3 uses
  %i.iu = load i8, ptr @ignore_state_errors, align 1, !range !8, !noundef !9
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__._build_launch_job_msg, ptr noundef nonnull %.0127.i, ptr noundef nonnull %.0.i47) #17
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.iw = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__._build_launch_job_msg, ptr noundef nonnull %.0127.i, ptr noundef nonnull %.0.i47, ptr noundef nonnull %.0.i47) #15 ; 0 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.i47, i64 1040 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.ix) #15
  %i.iy = call ptr @xstrdup(ptr noundef nonnull %.0127.i) #15
  store ptr %i.iy, ptr %i.ix, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %.0.i47, i64 1048
  store i32 22, ptr %i.iz, align 8
  %i.ja = call i64 @time(ptr noundef null) #15
  store i64 %i.ja, ptr @last_job_update, align 8
  call void @slurm_free_job_launch_msg(ptr noundef nonnull %i.aq) #15
  %i.jb = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1232), align 8
  %i.jc = call i32 @job_complete(ptr noundef nonnull %2, i32 noundef %i.jb, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 1) #15 ; 0 uses
  br label %_build_launch_job_msg.exit.thread

_build_launch_job_msg.exit.thread:                ; preds = %bb.t, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.bo

bb.aj:                                            ; preds = %bb.af, %bb.ae
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.i47, i64 1176
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = call ptr @xstrdup(ptr noundef %i.je) #15
  %i.jg = getelementptr inbounds nuw i8, ptr %i.aq, i64 312
  store ptr %i.jf, ptr %i.jg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.jh = load i32, ptr %i.at, align 8
  %.not34 = icmp eq i32 %i.jh, 0
  br i1 %.not34, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store ptr %.0.i47, ptr %1, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.jj, align 4
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.aq, ptr %i.jk, align 8
  %i.jl = load ptr, ptr %i.fn, align 8
  %.not.i38 = icmp eq ptr %i.jl, null
  br i1 %.not.i38, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.jm = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.50, ptr noundef nonnull %.0.i47) #15 ; 0 uses
  br label %_set_het_job_env.exit

bb.am:                                            ; preds = %bb.ak
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.i47, i64 432
  %i.jo = load ptr, ptr %i.jn, align 8            ; 2 uses
  %.not15.i = icmp eq ptr %i.jo, null
  br i1 %.not15.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.jp = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.38, ptr noundef nonnull %.0.i47) #15 ; 0 uses
  br label %_set_het_job_env.exit

bb.ao:                                            ; preds = %bb.am
  %i.jq = call i32 @list_for_each(ptr noundef nonnull %i.jo, ptr noundef nonnull @_foreach_set_het_job_env, ptr noundef nonnull %1) #15 ; 0 uses
  %i.jr = load i32, ptr %i.ji, align 8
  %i.js = call i32 (ptr, ptr, ptr, ...) @env_array_overwrite_fmt(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %i.jr) #15 ; 0 uses
  %i.jt = load i32, ptr %i.ji, align 8
  %i.ju = call i32 (ptr, ptr, ptr, ...) @env_array_overwrite_fmt(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef %i.jt) #15 ; 0 uses
  %i.jv = load ptr, ptr %i.fn, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ap ], [ 0, %bb.ao ] ; 3 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv.i
  %i.jx = load ptr, ptr %i.jw, align 8
  %.not16.i = icmp eq ptr %i.jx, null
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not16.i, label %bb.aq, label %bb.ap, !llvm.loop !19

bb.aq:                                            ; preds = %bb.ap
  %i.jy = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.jy, ptr %i.fl, align 8
  br label %_set_het_job_env.exit

_set_het_job_env.exit:                            ; preds = %bb.al, %bb.an, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.ar

bb.ar:                                            ; preds = %_set_het_job_env.exit, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i47, i64 616
  %i.ka = load ptr, ptr %i.jz, align 8            ; 2 uses
  %.not.i39 = icmp eq ptr %i.ka, null
  br i1 %.not.i39, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kb = call i32 @env_array_overwrite(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.59, ptr noundef nonnull %i.ka) #15 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.kc = call zeroext i16 @get_job_oversubscribe_value(ptr noundef nonnull %.0.i47) #15
  %i.kd = call ptr @job_oversubscribe_string(i16 noundef zeroext %i.kc) #15
  %i.ke = call i32 @env_array_overwrite(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.72, ptr noundef %i.kd) #15 ; 0 uses
  %i.kf = call zeroext i16 @get_job_exclusive_display_value(ptr noundef nonnull %.0.i47) #15
  %i.kg = call ptr @job_exclusive_display_string(i16 noundef zeroext %i.kf) #15
  %i.kh = call i32 @env_array_overwrite(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.73, ptr noundef %i.kg) #15 ; 0 uses
  %i.ki = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 304
  %i.kk = load i8, ptr %i.kj, align 8
  switch i8 %i.kk, label %bb.au [
    i8 0, label %bb.av
    i8 1, label %.sink.split.i40
  ]

bb.au:                                            ; preds = %bb.at
  br label %.sink.split.i40

.sink.split.i40:                                  ; preds = %bb.au, %bb.at
  %.str.75.sink.i = phi ptr [ @.str.76, %bb.au ], [ @.str.75, %bb.at ]
  %i.kl = call i32 @env_array_overwrite(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.74, ptr noundef nonnull %.str.75.sink.i) #15 ; 0 uses
  %.pre = load ptr, ptr %i.bt, align 8
  br label %bb.av

bb.av:                                            ; preds = %.sink.split.i40, %bb.at
  %i.km = phi ptr [ %.pre, %.sink.split.i40 ], [ %i.ki, %bb.at ]
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 128
  %i.ko = load ptr, ptr %i.kn, align 8            ; 2 uses
  %.not47.i = icmp eq ptr %i.ko, null
  br i1 %.not47.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kp = call i32 @env_array_overwrite(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.77, ptr noundef nonnull %i.ko) #15 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.kq = load i32, ptr %i.dd, align 8            ; 2 uses
  %.not48.i = icmp eq i32 %i.kq, 0
  br i1 %.not48.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  call void @acct_gather_profile_to_string_r(i32 noundef %i.kq, ptr noundef nonnull %i.b) #15
  %i.kr = call i32 @env_array_overwrite(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.b) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ks = load ptr, ptr %i.bt, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8            ; 2 uses
  %.not49.i = icmp eq ptr %i.ku, null
  br i1 %.not49.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kv = call i32 @env_array_overwrite(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.79, ptr noundef nonnull %i.ku) #15 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.i47, i64 624
  %i.kx = load ptr, ptr %i.kw, align 8            ; 2 uses
  %.not50.i = icmp eq ptr %i.kx, null
  br i1 %.not50.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ky = call i32 @env_array_overwrite(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.80, ptr noundef nonnull %i.kx) #15 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.kz = load ptr, ptr %i.bt, align 8            ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 84
  %i.lb = load i32, ptr %i.la, align 4            ; 2 uses
  %.not51.i = icmp eq i32 %i.lb, 0
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 88
  %i.ld = load i32, ptr %i.lc, align 8            ; 2 uses
  %.not52.i = icmp eq i32 %i.ld, 0
  %or.cond.i41 = select i1 %.not51.i, i1 %.not52.i, i1 false
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 92
  %i.lf = load i32, ptr %i.le, align 4            ; 2 uses
  br i1 %or.cond.i41, label %bb.be, label %._crit_edge.i

bb.be:                                            ; preds = %bb.bd
  %.not53.i = icmp eq i32 %i.lf, 0
  br i1 %.not53.i, label %bb.bh, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bd, %bb.be
  %i.lg = phi i32 [ 0, %bb.be ], [ %i.ld, %bb.bd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.lh = call ptr @cpu_freq_to_cmdline(i32 noundef %i.lb, i32 noundef %i.lg, i32 noundef %i.lf) #15 ; 3 uses
  store ptr %i.lh, ptr %i.c, align 8
  %.not54.i = icmp eq ptr %i.lh, null
  br i1 %.not54.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge.i
  %i.li = call i32 @env_array_overwrite(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.81, ptr noundef nonnull %i.lh) #15 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %._crit_edge.i
  call void @slurm_xfree(ptr noundef nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %.pre58.i = load ptr, ptr %i.bt, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be
  %i.lj = phi ptr [ %.pre58.i, %bb.bg ], [ %i.kz, %bb.be ]
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 440
  %i.ll = load i16, ptr %i.lk, align 8            ; 2 uses
  %.not55.i = icmp eq i16 %i.ll, 0
  br i1 %.not55.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lm = zext i16 %i.ll to i32
  %i.ln = call i32 (ptr, ptr, ptr, ...) @env_array_overwrite_fmt(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.58, i32 noundef %i.lm) #15 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.lo = call ptr @get_tasks_per_node(ptr noundef nonnull %.0.i47) ; 3 uses
  store ptr %i.lo, ptr %i.a, align 8
  %.not56.i = icmp eq ptr %i.lo, null
  br i1 %.not56.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lp = call i32 @env_array_overwrite(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.69, ptr noundef nonnull %i.lo) #15 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  call void @slurm_xfree(ptr noundef nonnull %i.a) #15
  %i.lq = load ptr, ptr %i.fn, align 8            ; 2 uses
  %.not57.i = icmp eq ptr %i.lq, null
  br i1 %.not57.i, label %_set_job_env.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lr = call i64 @xsize(ptr noundef nonnull %i.lq) #15
  %i.ls = lshr i64 %i.lr, 3
  %i.lt = trunc i64 %i.ls to i32
  %i.lu = add i32 %i.lt, -1
  store i32 %i.lu, ptr %i.fl, align 8
  br label %_set_job_env.exit

_set_job_env.exit:                                ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.lv = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 64, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 2963, ptr noundef nonnull @__func__.launch_job) #15 ; 8 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 32
  store i16 %.0, ptr %i.lw, align 8
  store i32 1, ptr %i.lv, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  store i16 0, ptr %i.lx, align 4
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i47, i64 128
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = call ptr @hostlist_create(ptr noundef %i.lz) #15
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  store ptr %i.ma, ptr %i.mb, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lv, i64 36
  store i32 4005, ptr %i.mc, align 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.lv, i64 40
  store ptr %i.aq, ptr %i.md, align 8
  call void @set_agent_arg_r_uid(ptr noundef nonnull %i.lv, i32 noundef -1) #15
  call void @agent_queue_request(ptr noundef nonnull %i.lv) #15
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.mf = load i32, ptr %i.me, align 8
  %i.mg = and i32 %i.mf, 16777216
  %.not35 = icmp eq i32 %i.mg, 0
  br i1 %.not35, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_set_job_env.exit
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i16 0, ptr %i.mh, align 8
  call void @slurm_job_state_unset_flag(ptr noundef nonnull %0, i32 noundef 16777216, ptr noundef nonnull @__func__.launch_job) #15
  br label %bb.bo

bb.bo:                                            ; preds = %_build_launch_job_msg.exit.thread, %_het_job_ready.exit.thread48, %_het_job_ready.exit.thread, %_set_job_env.exit, %bb.bn, %bb.m, %_het_job_ready.exit, %bb.a
  ret void
}

declare i32 @pick_batch_host(ptr noundef) local_unnamed_addr #2

declare ptr @find_node_record(ptr noundef) local_unnamed_addr #2

end_hunk_1
begin_hunk_2_@handle_job_dependency_updates:bb.a
  call void @handle_invalid_dependency(ptr noundef nonnull %0) #15
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i32 2, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1040
  call void @slurm_xfree(ptr noundef nonnull %i.br) #15
  store i64 %i.a, ptr @last_job_update, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %_depend_list2str.exit
  %i.bs = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bt = and i64 %i.bs, 9007199254740992
  %.not28 = icmp eq i64 %i.bt, 0
  br i1 %.not28, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @print_job_dependency(ptr noundef nonnull %0, ptr noundef nonnull @__func__.handle_job_dependency_updates)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @_foreach_handle_job_dependency_updates(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((16, 17)) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i16, ptr %i.a, align 2              ; 2 uses
  %i.c = trunc i16 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = trunc i16 %i.b to i8
  %i.f = and i8 %i.e, 1
  store i8 %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  switch i32 %i.h, label %_test_dependency_state.exit [
    i32 1, label %bb.c
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 1, ptr %i.i, align 1
  br label %_test_dependency_state.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 1, ptr %i.j, align 1
  br label %_test_dependency_state.exit

bb.e:                                             ; preds = %bb.a
  switch i32 %i.h, label %_test_dependency_state.exit [
    i32 2, label %bb.f
    i32 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %1, align 8
  br label %_test_dependency_state.exit

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 1, ptr %i.k, align 1
  br label %_test_dependency_state.exit

_test_dependency_state.exit:                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  ret i32 0
}

declare i32 @fed_mgr_job_requeue(ptr noundef) local_unnamed_addr #2

declare void @acct_policy_remove_accrue_time(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @handle_invalid_dependency(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @update_job_dependency(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.depend_str_t, align 8       ; 7 uses
  %4 = alloca %struct.test_job_dep_t, align 8     ; 8 uses
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 13 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.update_dependency_args_t, align 8 ; 10 uses
  %i.h = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i32 0, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 %i.h, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.j, i8 0, i64 3, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.cb, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  store i32 0, ptr %i.q, align 8
  %i.r = load i32, ptr @update_job_dependency.select_hetero, align 4
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1184), align 8
  %i.u = tail call ptr @xstrstr(ptr noundef %i.t, ptr noundef nonnull @.str.13) #15
  %.not34 = icmp ne ptr %i.u, null
  %. = zext i1 %.not34 to i32
  store i32 %., ptr @update_job_dependency.select_hetero, align 4
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i8, ptr %1, align 1
  switch i8 %i.v, label %bb.f [
    i8 0, label %.thread
    i8 48, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = tail call ptr @list_create(ptr noundef nonnull @xfree_ptr) #15 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.aa = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.113) #18
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_xlate_array_dep.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr @max_array_size, align 4
  %i.ad = icmp eq i32 %i.ac, -2
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 688), align 8
  store i32 %i.ae, ptr @max_array_size, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = load i8, ptr %1, align 1                ; 2 uses
  %.not56.i.i = icmp eq i8 %i.af, 0
  br i1 %.not56.i.i, label %_xlate_array_dep.exit.i, label %.lr.ph60.i.i

.lr.ph60.i.i:                                     ; preds = %bb.i, %bb.y
  %i.ag = phi i8 [ %i.ce, %bb.y ], [ %i.af, %bb.i ]
  %i.ah = phi ptr [ %i.cd, %bb.y ], [ %1, %bb.i ] ; 3 uses
  %.03858.i.i = phi i32 [ %i.cb, %bb.y ], [ 0, %bb.i ] ; 4 uses
  %.03957.i.i = phi ptr [ %.140.i.i, %bb.y ], [ null, %bb.i ] ; 4 uses
  %i.ai = sext i8 %i.ag to i32
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.114, i32 noundef %i.ai) #15
  %i.aj = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.ak = add i8 %i.aj, -48
  %or.cond53.i.i = icmp ult i8 %i.ak, 10
  br i1 %or.cond53.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph60.i.i
  %i.al = icmp eq ptr %.03957.i.i, null
  %spec.select.i.i = select i1 %i.al, ptr %i.ah, ptr %.03957.i.i
  br label %bb.y

bb.k:                                             ; preds = %.lr.ph60.i.i
  %i.am = icmp eq i8 %i.aj, 95
  br i1 %i.am, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr i8, ptr %i.ah, i64 1
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = icmp eq i8 %i.ao, 91
  %i.aq = icmp ne ptr %.03957.i.i, null
  %or.cond.i.i = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond.i.i, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.ar = call i64 @strtol(ptr noundef nonnull captures(none) %.03957.i.i, ptr noundef null, i32 noundef 10) #15, !inline_history !20
  %i.as = trunc i64 %i.ar to i32
  %i.at = add nsw i32 %.03858.i.i, 2              ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %1, i64 %i.au
  %i.aw = call ptr @xstrdup(ptr noundef nonnull %i.av) #15 ; 2 uses
  store ptr %i.aw, ptr %i.e, align 8
  %i.ax = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.aw, i32 noundef 93) #18 ; 3 uses
  %.not47.i.i = icmp eq ptr %i.ax, null
  br i1 %.not47.i.i, label %.thread.i.i, label %bb.n

.thread.i.i:                                      ; preds = %bb.m
  %i.ay = load i32, ptr @max_array_size, align 4
  %i.az = zext i32 %i.ay to i64
  %i.ba = call ptr @bit_alloc(i64 noundef %i.az) #15
  store ptr %i.ba, ptr %i.f, align 8
  br label %.loopexit.i.i

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.ax, align 1
  %i.bb = load i32, ptr @max_array_size, align 4
  %i.bc = zext i32 %i.bb to i64
  %i.bd = call ptr @bit_alloc(i64 noundef %i.bc) #15 ; 2 uses
  store ptr %i.bd, ptr %i.f, align 8
  %i.be = load ptr, ptr %i.e, align 8
  %i.bf = call i32 @bit_unfmt(ptr noundef %i.bd, ptr noundef %i.be) #15
  %.not48.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not48.i.i, label %bb.o, label %.loopexit.i.i

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %i.f, align 8
  %i.bh = call i64 @bit_ffs(ptr noundef %i.bg) #15 ; 2 uses
  %i.bi = trunc i64 %i.bh to i32                  ; 3 uses
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %.loopexit.i.i, label %bb.r

.loopexit.i.i:                                    ; preds = %bb.o, %bb.n, %.thread.i.i
  call void @slurm_xfree(ptr noundef nonnull %i.e) #15
  %i.bk = load ptr, ptr %i.f, align 8
  %.not52.i.i = icmp eq ptr %i.bk, null
  br i1 %.not52.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit.i.i
  call void @slurm_bit_free(ptr noundef nonnull %i.f) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit.i.i
  store ptr null, ptr %i.f, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.d) #15
  br label %_xlate_array_dep.exit.i

bb.r:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %i.e, align 8
  %i.bm = ptrtoint ptr %i.ax to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = add i32 %i.at, %i.bp
  call void @slurm_xfree(ptr noundef nonnull %i.e) #15
  %i.br = load ptr, ptr %i.f, align 8
  %i.bs = call i64 @bit_fls(ptr noundef %i.br) #15
  %i.bt = trunc i64 %i.bs to i32                  ; 2 uses
  %.not4954.i.i = icmp sgt i32 %i.bi, %i.bt
  br i1 %.not4954.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.r
  %sext.i.i = shl i64 %i.bh, 32
  %i.bu = ashr exact i64 %sext.i.i, 32            ; 2 uses
  %i.bv = add i32 %i.bt, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.bu, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.v ] ; 4 uses
  %i.bw = load ptr, ptr %i.f, align 8
  %i.bx = call i32 @slurm_bit_test(ptr noundef %i.bw, i64 noundef %indvars.iv.i.i) #15
  %.not51.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not51.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.by = icmp eq i64 %indvars.iv.i.i, %i.bu
  br i1 %i.by, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.52, i32 noundef %i.bi) #15
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bz = trunc nsw i64 %indvars.iv.i.i to i32
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.115, i32 noundef %i.as, i32 noundef %i.bz) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %i.bv, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !21

._crit_edge.i.i:                                  ; preds = %bb.v, %bb.r
  %i.ca = load ptr, ptr %i.f, align 8
  %.not50.i.i = icmp eq ptr %i.ca, null
  br i1 %.not50.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i
  call void @slurm_bit_free(ptr noundef nonnull %i.f) #15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i
  store ptr null, ptr %i.f, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.l, %bb.k, %bb.j
  %.140.i.i = phi ptr [ null, %bb.k ], [ %spec.select.i.i, %bb.j ], [ null, %bb.x ], [ null, %bb.l ]
  %.1.i.i = phi i32 [ %.03858.i.i, %bb.k ], [ %.03858.i.i, %bb.j ], [ %i.bq, %bb.x ], [ %.03858.i.i, %bb.l ]
  %i.cb = add nsw i32 %.1.i.i, 1                  ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %1, i64 %i.cc ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i, label %._crit_edge61.loopexit.i.i, label %.lr.ph60.i.i, !llvm.loop !22

._crit_edge61.loopexit.i.i:                       ; preds = %bb.y
  %.pre.i.i = load ptr, ptr %i.d, align 8
  br label %_xlate_array_dep.exit.i

_xlate_array_dep.exit.i:                          ; preds = %._crit_edge61.loopexit.i.i, %bb.q, %bb.i, %bb.f
  %.041.i.i = phi ptr [ null, %bb.f ], [ null, %bb.q ], [ %.pre.i.i, %._crit_edge61.loopexit.i.i ], [ null, %bb.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  store ptr %.041.i.i, ptr %i.g, align 8
  %.not36.i = icmp eq ptr %.041.i.i, null
  %..i = select i1 %.not36.i, ptr %1, ptr %.041.i.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_xlate_array_dep.exit.i, %.lr.ph.backedge.i
  %.0103196.i = phi i32 [ %.0103196.be.i, %.lr.ph.backedge.i ], [ 2, %_xlate_array_dep.exit.i ] ; 5 uses
  %.0105195.i = phi ptr [ %.0105195.be.i, %.lr.ph.backedge.i ], [ %..i, %_xlate_array_dep.exit.i ] ; 16 uses
  %i.cf = call i32 @xstrncasecmp(ptr noundef %.0105195.i, ptr noundef nonnull @.str.101, i64 noundef 9) #15
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %.lr.ph.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.0105195.i, i64 9 ; 4 uses
  %i.ci = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ch, i32 noundef 40) #18 ; 2 uses
  %.not.i52.i = icmp eq ptr %i.ci, null
  br i1 %.not.i52.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ch, i32 noundef 41) #18 ; 3 uses
  %.not16.not.i.i = icmp eq ptr %i.cj, null
  br i1 %.not16.not.i.i, label %.thread142thread-pre-split.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 0, ptr %i.cj, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 1 ; 2 uses
  %i.cl = call i32 @xstrcasecmp(ptr noundef nonnull %i.ck, ptr noundef nonnull @.str.91) #15
  %.not.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i, label %_depend_state_str2state.exit.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = call i32 @xstrcasecmp(ptr noundef nonnull %i.ck, ptr noundef nonnull @.str.92) #15
  %.not2.i.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not2.i.i.i, label %_depend_state_str2state.exit.i.i, label %_depend_state_str2state.exit.thread.i.i

_depend_state_str2state.exit.thread.i.i:          ; preds = %bb.ac, %bb.ab
  br label %_depend_state_str2state.exit.i.i

_depend_state_str2state.exit.i.i:                 ; preds = %_depend_state_str2state.exit.thread.i.i, %bb.ac
  %i.cn = phi i32 [ 0, %_depend_state_str2state.exit.thread.i.i ], [ 2, %bb.ac ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  br label %bb.ad

bb.ad:                                            ; preds = %_depend_state_str2state.exit.i.i, %bb.z
  %.3108.ph.i = phi ptr [ %i.ch, %bb.z ], [ %i.co, %_depend_state_str2state.exit.i.i ] ; 3 uses
  %.0102.ph.i = phi i32 [ 0, %bb.z ], [ %i.cn, %_depend_state_str2state.exit.i.i ]
  %i.cp = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 48, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 4100, ptr noundef nonnull @__func__._parse_dependency_str) #15 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 %.0102.ph.i, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i16 5, ptr %i.cr, align 4
  call void @list_append(ptr noundef %i.z, ptr noundef %i.cp) #15
  %i.cs = load i8, ptr %.3108.ph.i, align 1       ; 2 uses
  switch i8 %i.cs, label %.thread142.i [
    i8 44, label %bb.af
    i8 63, label %bb.ae
  ], !llvm.loop !23

bb.ae:                                            ; preds = %bb.ad
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0.i.i = phi i32 [ 1, %bb.ad ], [ 0, %bb.ae ]  ; 2 uses
  %.not17.i.i = icmp eq i32 %.0103196.i, 2
  %.not18.i.i = icmp eq i32 %.0103196.i, %.0.i.i
  %or.cond.i55.i = or i1 %.not17.i.i, %.not18.i.i
  br i1 %or.cond.i55.i, label %.lr.ph.backedge.i, label %.thread142thread-pre-split.i, !llvm.loop !23

.lr.ph.backedge.i:                                ; preds = %bb.an, %bb.bj, %bb.af
  %.0103196.be.i = phi i32 [ %.0.i.i, %bb.af ], [ 1, %bb.an ], [ %.0.i76.i, %bb.bj ]
  %.1.i.i.sink.i.pn = phi ptr [ %.3108.ph.i, %bb.af ], [ %.1.i.i.i, %bb.an ], [ %i.fg, %bb.bj ]
  %.0105195.be.i = getelementptr inbounds nuw i8, ptr %.1.i.i.sink.i.pn, i64 1
  br label %.lr.ph.i, !llvm.loop !23

bb.ag:                                            ; preds = %.lr.ph.i
  %i.ct = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0105195.i, i32 noundef 58) #18 ; 2 uses
  %.not37.i = icmp eq ptr %i.ct, null
  br i1 %.not37.i, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.cu = load i8, ptr %.0105195.i, align 1
  %i.cv = add i8 %i.cu, -48
  %or.cond.i = icmp ult i8 %i.cv, 10
  br i1 %or.cond.i, label %bb.ai, label %.thread142thread-pre-split.i

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8
  %i.cw = call i64 @strtol(ptr noundef nonnull %.0105195.i, ptr noundef nonnull %i.c, i32 noundef 10) #15
  %i.cx = trunc i64 %i.cw to i32                  ; 2 uses
  %i.cy = load ptr, ptr %i.c, align 8             ; 5 uses
  %.not.i.i56.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i56.i, label %_parse_dependency_job_array.exit.thread.i.i, label %bb.aj

_parse_dependency_job_array.exit.thread.i.i:      ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %.thread142thread-pre-split.i

bb.aj:                                            ; preds = %bb.ai
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = icmp eq i8 %i.cz, 95
  br i1 %i.da, label %bb.ak, label %_parse_dependency_job_array.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 1 ; 3 uses
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = icmp eq i8 %i.dc, 42
  br i1 %i.dd, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  br label %_parse_dependency_job_array.exit.i.i

bb.am:                                            ; preds = %bb.ak
  %i.df = call i64 @strtol(ptr noundef nonnull %i.db, ptr noundef nonnull %i.c, i32 noundef 10) #15
  %i.dg = trunc i64 %i.df to i32
  %i.dh = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.di = icmp eq ptr %i.db, %i.dh
  %spec.select.i.i.i = select i1 %i.di, ptr null, ptr %i.dh
  br label %_parse_dependency_job_array.exit.i.i

_parse_dependency_job_array.exit.i.i:             ; preds = %bb.am, %bb.al, %bb.aj
  %.0.i57.i = phi i32 [ %i.dg, %bb.am ], [ -1, %bb.al ], [ -2, %bb.aj ] ; 2 uses
  %.1.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.am ], [ %i.de, %bb.al ], [ %i.cy, %bb.aj ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.dj = icmp eq ptr %.1.i.i.i, null
  %i.dk = icmp eq i32 %i.cx, 0
  %or.cond.i58.i = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond.i58.i, label %.thread142thread-pre-split.i, label %bb.an

bb.an:                                            ; preds = %_parse_dependency_job_array.exit.i.i
  %i.dl = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 48, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 3865, ptr noundef nonnull @__func__._parse_dependency_jobid_old) #15 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i32 %i.cx, ptr %i.dm, align 8
  store i32 %.0.i57.i, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i16 2, ptr %i.dn, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store i32 %.0.i57.i, ptr %i.do, align 8
  call void @list_append(ptr noundef %i.z, ptr noundef nonnull %i.dl) #15
  %i.dp = load i8, ptr %.1.i.i.i, align 1         ; 2 uses
  switch i8 %i.dp, label %.thread142.i [
    i8 44, label %.lr.ph.backedge.i
    i8 63, label %.thread142thread-pre-split.i
  ]

bb.ao:                                            ; preds = %bb.ag
  %i.dq = call i32 @xstrncasecmp(ptr noundef nonnull %.0105195.i, ptr noundef nonnull @.str.106, i64 noundef 11) #15
  %.not40.i = icmp eq i32 %i.dq, 0
  br i1 %.not40.i, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dr = call i32 @xstrncasecmp(ptr noundef nonnull %.0105195.i, ptr noundef nonnull @.str.107, i64 noundef 10) #15
  %.not41.i = icmp eq i32 %i.dr, 0
  br i1 %.not41.i, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ds = call i32 @xstrncasecmp(ptr noundef nonnull %.0105195.i, ptr noundef nonnull @.str.108, i64 noundef 9) #15
  %.not42.i = icmp eq i32 %i.ds, 0
  br i1 %.not42.i, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dt = call i32 @xstrncasecmp(ptr noundef nonnull %.0105195.i, ptr noundef nonnull @.str.109, i64 noundef 8) #15
  %.not43.i = icmp eq i32 %i.dt, 0
  br i1 %.not43.i, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.du = call i32 @xstrncasecmp(ptr noundef nonnull %.0105195.i, ptr noundef nonnull @.str.110, i64 noundef 11) #15
  %.not44.i = icmp eq i32 %i.du, 0
  br i1 %.not44.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dv = call i32 @xstrncasecmp(ptr noundef nonnull %.0105195.i, ptr noundef nonnull @.str.111, i64 noundef 6) #15
  %.not45.i = icmp eq i32 %i.dv, 0
  br i1 %.not45.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dw = call i32 @xstrncasecmp(ptr noundef nonnull %.0105195.i, ptr noundef nonnull @.str.112, i64 noundef 7) #15
  %.not46.i = icmp eq i32 %i.dw, 0
  br i1 %.not46.i, label %bb.av, label %.thread142thread-pre-split.i

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.029.i = phi i16 [ 1, %bb.at ], [ 8, %bb.as ], [ 4, %bb.ar ], [ 2, %bb.aq ], [ 7, %bb.ap ], [ 3, %bb.ao ], [ 6, %bb.au ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ct, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8
  %i.dy = call i64 @strtol(ptr noundef nonnull %i.dx, ptr noundef nonnull %i.a, i32 noundef 10) #15
  %i.dz = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i.i67.i85 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i67.i85, label %_parse_dependency_job_array.exit.thread.i74.i, label %.lr.ph

.lr.ph.i66.i:                                     ; preds = %bb.bg
  %i.ea = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8
  %i.eb = call i64 @strtol(ptr noundef nonnull %i.ea, ptr noundef nonnull %i.a, i32 noundef 10) #15
  %i.ec = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i.i67.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i67.i, label %_parse_dependency_job_array.exit.thread.i74.i, label %.lr.ph, !llvm.loop !24

_parse_dependency_job_array.exit.thread.i74.i:    ; preds = %bb.av, %.lr.ph.i66.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_parse_dependency_jobid_new.exit.thread.i

.lr.ph:                                           ; preds = %bb.av, %.lr.ph.i66.i
  %i.ed = phi ptr [ %i.ec, %.lr.ph.i66.i ], [ %i.dz, %bb.av ] ; 4 uses
  %.in = phi i64 [ %i.eb, %.lr.ph.i66.i ], [ %i.dy, %bb.av ]
  %.044.i.i86 = phi i32 [ %.1.i71.i, %.lr.ph.i66.i ], [ 0, %bb.av ]
  %i.ee = trunc i64 %.in to i32                   ; 2 uses
  %i.ef = load i8, ptr %i.ed, align 1
  %i.eg = icmp eq i8 %i.ef, 95
  br i1 %i.eg, label %bb.aw, label %_parse_dependency_job_array.exit.i68.i

bb.aw:                                            ; preds = %.lr.ph
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 1 ; 3 uses
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = icmp eq i8 %i.ei, 42
  br i1 %i.ej, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  br label %_parse_dependency_job_array.exit.i68.i

bb.ay:                                            ; preds = %bb.aw
  %i.el = call i64 @strtol(ptr noundef nonnull %i.eh, ptr noundef nonnull %i.a, i32 noundef 10) #15
  %i.em = trunc i64 %i.el to i32
  %i.en = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.eo = icmp eq ptr %i.eh, %i.en
  %spec.select.i.i73.i = select i1 %i.eo, ptr null, ptr %i.en
  br label %_parse_dependency_job_array.exit.i68.i

_parse_dependency_job_array.exit.i68.i:           ; preds = %bb.ay, %bb.ax, %.lr.ph
  %.031.i.i = phi i32 [ %i.em, %bb.ay ], [ -1, %bb.ax ], [ -2, %.lr.ph ] ; 2 uses
  %.1.i.i69.i = phi ptr [ %spec.select.i.i73.i, %bb.ay ], [ %i.ek, %bb.ax ], [ %i.ed, %.lr.ph ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  store ptr %.1.i.i69.i, ptr %i.b, align 8
  %i.ep = icmp eq ptr %.1.i.i69.i, null
  %i.eq = icmp eq i32 %i.ee, 0
  %or.cond.i70.i = select i1 %i.ep, i1 true, i1 %i.eq
  br i1 %or.cond.i70.i, label %_parse_dependency_jobid_new.exit.thread.i, label %bb.az

bb.az:                                            ; preds = %_parse_dependency_job_array.exit.i68.i
  %i.er = load i8, ptr %.1.i.i69.i, align 1
  %i.es = icmp eq i8 %i.er, 43
  br i1 %i.es, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.et = getelementptr inbounds nuw i8, ptr %.1.i.i69.i, i64 1
  %i.eu = call i64 @strtol(ptr noundef nonnull %i.et, ptr noundef nonnull %i.b, i32 noundef 10) #15
  %i.ev = trunc i64 %i.eu to i32                  ; 2 uses
  %i.ew = icmp slt i32 %i.ev, 1
  br i1 %i.ew, label %_parse_dependency_jobid_new.exit.thread.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ex = mul nuw nsw i32 %i.ev, 60
  %.pre.i72.i = load ptr, ptr %i.b, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.az
  %i.ey = phi ptr [ %.pre.i72.i, %bb.bb ], [ %.1.i.i69.i, %bb.az ] ; 3 uses
  %.1.i71.i = phi i32 [ %i.ex, %bb.bb ], [ %.044.i.i86, %bb.az ] ; 2 uses
  %i.ez = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ey, i32 noundef 40) #18 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i23.i.i, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fa = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ey, i32 noundef 41) #18 ; 3 uses
  %.not16.not.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not16.not.i.i.i, label %_parse_dependency_jobid_new.exit.thread.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i8 0, ptr %i.fa, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 1 ; 2 uses
  %i.fc = call i32 @xstrcasecmp(ptr noundef nonnull %i.fb, ptr noundef nonnull @.str.91) #15
  %.not.i.i.i.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i.i.i.i, label %_depend_state_str2state.exit.thread.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fd = call i32 @xstrcasecmp(ptr noundef nonnull %i.fb, ptr noundef nonnull @.str.92) #15
  %.not2.i.i.i.i = icmp eq i32 %i.fd, 0
  br i1 %.not2.i.i.i.i, label %_depend_state_str2state.exit.i.i.i, label %_depend_state_str2state.exit.thread.i.i.i

_depend_state_str2state.exit.thread.i.i.i:        ; preds = %bb.bf, %bb.be
  br label %_depend_state_str2state.exit.i.i.i

_depend_state_str2state.exit.i.i.i:               ; preds = %_depend_state_str2state.exit.thread.i.i.i, %bb.bf
  %i.fe = phi i32 [ 0, %_depend_state_str2state.exit.thread.i.i.i ], [ 2, %bb.bf ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 1 ; 2 uses
  store ptr %i.ff, ptr %i.b, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %_depend_state_str2state.exit.i.i.i, %bb.bc
  %i.fg = phi ptr [ %i.ey, %bb.bc ], [ %i.ff, %_depend_state_str2state.exit.i.i.i ] ; 5 uses
  %.130.ph.i.i = phi i32 [ 0, %bb.bc ], [ %i.fe, %_depend_state_str2state.exit.i.i.i ]
  %i.fh = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 48, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 3831, ptr noundef nonnull @__func__._parse_dependency_jobid_new) #15 ; 7 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store i32 %i.ee, ptr %i.fi, align 8
  store i32 %.031.i.i, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  store i16 %.029.i, ptr %i.fj, align 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  store i32 %.1.i71.i, ptr %i.fk, align 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i32 %.130.ph.i.i, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  store i32 %.031.i.i, ptr %i.fm, align 8
  call void @list_append(ptr noundef %i.z, ptr noundef nonnull %i.fh) #15
  %i.fn = load i8, ptr %i.fg, align 1
  %.not22.i.i = icmp eq i8 %i.fn, 58
  br i1 %.not22.i.i, label %.lr.ph.i66.i, label %bb.bh

_parse_dependency_jobid_new.exit.thread.i:        ; preds = %_parse_dependency_job_array.exit.i68.i, %bb.ba, %bb.bd, %_parse_dependency_job_array.exit.thread.i74.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %.thread142thread-pre-split.i

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.fo = load i8, ptr %i.fg, align 1             ; 2 uses
  switch i8 %i.fo, label %.thread142.i [
    i8 44, label %bb.bj
    i8 63, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0.i76.i = phi i32 [ 1, %bb.bh ], [ 0, %bb.bi ] ; 2 uses
  %.not17.i77.i = icmp eq i32 %.0103196.i, 2
  %.not18.i78.i = icmp eq i32 %.0103196.i, %.0.i76.i
  %or.cond.i79.i = or i1 %.not17.i77.i, %.not18.i78.i
  br i1 %or.cond.i79.i, label %.lr.ph.backedge.i, label %.thread142thread-pre-split.i

.thread142thread-pre-split.i:                     ; preds = %bb.bj, %bb.au, %bb.ah, %bb.an, %_parse_dependency_job_array.exit.i.i, %bb.af, %bb.aa, %_parse_dependency_job_array.exit.thread.i.i, %_parse_dependency_jobid_new.exit.thread.i
  %.2107145.ph.i = phi ptr [ %i.dx, %_parse_dependency_jobid_new.exit.thread.i ], [ %.0105195.i, %_parse_dependency_job_array.exit.thread.i.i ], [ %i.fg, %bb.bj ], [ %.0105195.i, %bb.ah ], [ %.1.i.i.i, %bb.an ], [ %.0105195.i, %bb.au ], [ %i.ch, %bb.aa ], [ %.0105195.i, %_parse_dependency_job_array.exit.i.i ], [ %.3108.ph.i, %bb.af ]
  %.pr146.i = load i8, ptr %.2107145.ph.i, align 1
  br label %.thread142.i

.thread142.i:                                     ; preds = %bb.bh, %bb.an, %bb.ad, %.thread142thread-pre-split.i
  %.2 = phi i32 [ 2038, %.thread142thread-pre-split.i ], [ 0, %bb.ad ], [ 0, %bb.an ], [ 0, %bb.bh ]
  %i.fp = phi i8 [ %.pr146.i, %.thread142thread-pre-split.i ], [ %i.fo, %bb.bh ], [ %i.dp, %bb.an ], [ %i.cs, %bb.ad ]
  %.not50.i = icmp eq i8 %i.fp, 0
  %spec.select = select i1 %.not50.i, i32 %.2, i32 2038 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.g) #15
  %i.fq = icmp eq i32 %.0103196.i, 0
  %i.fr = zext i1 %i.fq to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  %.not35 = icmp eq i32 %spec.select, 0
  br i1 %.not35, label %bb.bk, label %bb.cb

.thread:                                          ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  br label %bb.bl

bb.bk:                                            ; preds = %.thread142.i
  %.not36 = icmp eq ptr %i.z, null
  br i1 %.not36, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %.thread, %bb.bk
  %i.fs = load ptr, ptr %i.o, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 128
  call void @slurm_xfree(ptr noundef nonnull %i.ft) #15
  %i.fu = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 120
  %i.fw = load ptr, ptr %i.fv, align 8            ; 2 uses
  %.not37 = icmp eq ptr %i.fw, null
  br i1 %.not37, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @list_destroy(ptr noundef nonnull %i.fw) #15
  %.pre109 = load ptr, ptr %i.o, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.fx = phi ptr [ %.pre109, %bb.bm ], [ %i.fu, %bb.bl ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 120
  store ptr null, ptr %i.fy, align 8
  br label %bb.cb

bb.bo:                                            ; preds = %bb.bk
  %i.fz = load i32, ptr @update_job_dependency.select_hetero, align 4
  store i32 %i.fz, ptr %i.n, align 4
  %i.ga = call ptr @list_create(ptr noundef nonnull @xfree_ptr) #15 ; 6 uses
  store ptr %i.ga, ptr %i.l, align 8
  %i.gb = call i32 @list_delete_all(ptr noundef nonnull %i.z, ptr noundef nonnull @_update_job_dependency, ptr noundef nonnull %5) #15 ; 0 uses
  call void @list_destroy(ptr noundef nonnull %i.z) #15
  %i.gc = load i32, ptr %i.m, align 8             ; 2 uses
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr @_scan_depend.job_counter, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %4, align 8
  store ptr %0, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gh = icmp eq ptr %i.ga, null
  store i64 0, ptr %i.gg, align 8
  br i1 %i.gh, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr @_scan_depend.job_counter, align 4
  br label %_scan_depend.exit.thread

bb.br:                                            ; preds = %bb.bp
  store i32 1, ptr @_scan_depend.job_counter, align 4
  %i.gi = load i32, ptr @max_depend_depth, align 4
  %.not.i41 = icmp sgt i32 %i.gi, 0
  br i1 %.not.i41, label %_scan_depend.exit, label %_scan_depend.exit.thread

_scan_depend.exit.thread:                         ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %.thread67

_scan_depend.exit:                                ; preds = %bb.br
  %i.gj = call i32 @list_for_each(ptr noundef nonnull %i.ga, ptr noundef nonnull @_foreach_scan_depend, ptr noundef nonnull %4) #15, !inline_history !25 ; 0 uses
  %i.gk = load i8, ptr %i.ge, align 1, !range !8, !noundef !9
  %i.gl = trunc nuw i8 %i.gk to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br i1 %i.gl, label %bb.bs, label %.thread67

bb.bs:                                            ; preds = %_scan_depend.exit, %bb.bo
  %.053 = phi i32 [ %i.gc, %bb.bo ], [ 2071, %_scan_depend.exit ] ; 3 uses
  br i1 %2, label %.thread67, label %bb.bz

.thread67:                                        ; preds = %_scan_depend.exit.thread, %_scan_depend.exit, %bb.bs
  %.05371 = phi i32 [ %.053, %bb.bs ], [ 0, %_scan_depend.exit ], [ 0, %_scan_depend.exit.thread ] ; 2 uses
  %i.gm = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 120
  %i.go = load ptr, ptr %i.gn, align 8            ; 2 uses
  %.not39 = icmp eq ptr %i.go, null
  br i1 %.not39, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.thread67
  call void @list_destroy(ptr noundef nonnull %i.go) #15
  %.pre = load ptr, ptr %i.o, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.thread67
  %i.gp = phi ptr [ %.pre, %bb.bt ], [ %i.gm, %.thread67 ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 120
  store ptr null, ptr %i.gq, align 8
  %i.gr = load ptr, ptr %i.o, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 120
  store ptr %i.ga, ptr %i.gs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %0, ptr %3, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.23, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %i.fr, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.gv, i8 0, i64 7, i1 false)
  %i.gw = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %_depend_list2str.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 128
  call void @slurm_xfree(ptr noundef nonnull %i.gy) #15
  %i.gz = load ptr, ptr %i.o, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 120
  %i.hb = load ptr, ptr %i.ha, align 8            ; 2 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %_depend_list2str.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hd = call i32 @list_count(ptr noundef nonnull %i.hb) #15
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %_depend_list2str.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hf = load ptr, ptr %i.o, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 120
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = call i32 @list_for_each(ptr noundef %i.hh, ptr noundef nonnull @_foreach_depend_list2str, ptr noundef nonnull %3) #15 ; 0 uses
  br label %_depend_list2str.exit

_depend_list2str.exit:                            ; preds = %bb.bu, %bb.bv, %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.hj = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.hk = and i64 %i.hj, 9007199254740992
  %.not40 = icmp eq i64 %i.hk, 0
  br i1 %.not40, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %_depend_list2str.exit
  call void @print_job_dependency(ptr noundef nonnull %0, ptr noundef nonnull @__func__.update_job_dependency)
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bs
  %.not38 = icmp eq ptr %i.ga, null
  br i1 %.not38, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @list_destroy(ptr noundef nonnull %i.ga) #15
  br label %bb.cb

bb.cb:                                            ; preds = %bb.by, %_depend_list2str.exit, %bb.ca, %bb.bz, %.thread142.i, %bb.a, %bb.bn
  %.0 = phi i32 [ 22, %bb.a ], [ %spec.select, %.thread142.i ], [ 0, %bb.bn ], [ %.053, %bb.bz ], [ %.053, %bb.ca ], [ %.05371, %_depend_list2str.exit ], [ %.05371, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i32 %.0
}

declare ptr @xstrstr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @list_delete_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @_update_job_dependency(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i8, ptr %i.e, align 4, !range !8, !noundef !9
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.ag

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8              ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i16, ptr %i.j, align 4              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.m = load ptr, ptr %i.l, align 8
  %.not62 = icmp eq ptr %i.m, null
  br i1 %.not62, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call zeroext i1 @fed_mgr_is_origin_job_id(i32 noundef %i.i) #15
  %i.o = xor i1 %i.n, true
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i1 [ false, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.q = load i32, ptr %0, align 8                ; 2 uses
  %i.r = icmp eq i32 %i.q, -2
  br i1 %i.r, label %bb.f, label %_find_dependent_job_ptr.exit

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @find_job_record(i32 noundef %i.i) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.t = tail call ptr @find_job_array_rec(i32 noundef %i.i, i32 noundef -1) #15 ; 2 uses
  %.not14.i = icmp eq ptr %i.t, null
  br i1 %.not14.i, label %_find_dependent_job_ptr.exit.thread76, label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.f
  %.019.i = phi ptr [ %i.t, %bb.g ], [ %i.s, %bb.f ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i, i64 80
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp eq i32 %i.v, %i.i
  br i1 %i.w, label %bb.h, label %_find_dependent_job_ptr.exit.thread

bb.h:                                             ; preds = %.thread.i
  %i.x = getelementptr inbounds nuw i8, ptr %.019.i, i64 84
  %i.y = load i32, ptr %i.x, align 4
  %.not15.i = icmp eq i32 %i.y, -2
  br i1 %.not15.i, label %bb.i, label %_find_dependent_job_ptr.exit.thread.thread

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.019.i, i64 88
  %i.aa = load ptr, ptr %i.z, align 8
  %.not16.i = icmp eq ptr %i.aa, null
  br i1 %.not16.i, label %_find_dependent_job_ptr.exit.thread, label %_find_dependent_job_ptr.exit.thread.thread

_find_dependent_job_ptr.exit.thread.thread:       ; preds = %bb.h, %bb.i
  store i32 -1, ptr %0, align 8
  br label %bb.k

_find_dependent_job_ptr.exit:                     ; preds = %bb.e
  %i.ab = tail call ptr @find_job_array_rec(i32 noundef %i.i, i32 noundef %i.q) #15 ; 2 uses
  %.not63 = icmp eq ptr %i.ab, null
  br i1 %.not63, label %_find_dependent_job_ptr.exit.thread76, label %_find_dependent_job_ptr.exit.thread

_find_dependent_job_ptr.exit.thread76:            ; preds = %bb.g, %_find_dependent_job_ptr.exit
  %i.ac = tail call zeroext i1 @fed_mgr_is_origin_job_id(i32 noundef %i.i) #15
  %i.ad = add i16 %i.k, -3
  %or.cond = icmp ult i16 %i.ad, 2
  %or.cond70 = select i1 %i.ac, i1 %or.cond, i1 false
  br i1 %or.cond70, label %bb.j, label %_find_dependent_job_ptr.exit.thread

bb.j:                                             ; preds = %_find_dependent_job_ptr.exit.thread76
  store i32 2038, ptr %i.c, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.ae, align 8
  br label %bb.af

_find_dependent_job_ptr.exit.thread:              ; preds = %.thread.i, %bb.i, %_find_dependent_job_ptr.exit.thread76, %_find_dependent_job_ptr.exit
  %.1.i75.ph = phi ptr [ %.019.i, %.thread.i ], [ %.019.i, %bb.i ], [ null, %_find_dependent_job_ptr.exit.thread76 ], [ %i.ab, %_find_dependent_job_ptr.exit ] ; 3 uses
  %.pr = load i32, ptr %0, align 8
  %i.af = icmp eq i32 %.pr, -1
  br i1 %i.af, label %bb.k, label %.split80

bb.k:                                             ; preds = %_find_dependent_job_ptr.exit.thread.thread, %_find_dependent_job_ptr.exit.thread
  %.1.i7583 = phi ptr [ %.019.i, %_find_dependent_job_ptr.exit.thread.thread ], [ %.1.i75.ph, %_find_dependent_job_ptr.exit.thread ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.ah = load i32, ptr %i.ag, align 4
  %.not.i72 = icmp eq i32 %i.ah, -2
  br i1 %.not.i72, label %bb.l, label %.split

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not9.i = icmp eq ptr %i.aj, null
  br i1 %.not9.i, label %_depends_on_same_job.exit, label %.split

.split:                                           ; preds = %bb.l, %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 80
end_hunk_2
begin_hunk_3_@node_features_reboot:bb.a
  %i.aa = call i64 @bit_ffs(ptr noundef %i.z) #15
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not13 = icmp eq ptr %i.z, null
  br i1 %.not13, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @slurm_bit_free(ptr noundef nonnull %i.b) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g, %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ %i.z, %bb.g ], [ null, %bb.i ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.0
}

declare i32 @node_features_g_count() local_unnamed_addr #2

declare zeroext i1 @node_features_g_user_update(i32 noundef) local_unnamed_addr #2

declare void @build_active_feature_bitmap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @slurm_bit_free(ptr noundef) local_unnamed_addr #2

declare ptr @node_features_g_get_node_bitmap() local_unnamed_addr #2

declare ptr @node_features_g_job_xlate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @build_active_feature_bitmap2(ptr noundef) local_unnamed_addr #2

declare ptr @bit_copy(ptr noundef) local_unnamed_addr #2

declare void @bit_and(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bit_and_not(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @bit_ffs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @reboot_job_nodes(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  %i.e = alloca ptr, align 8                      ; 11 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  %i.g = tail call i64 @time(ptr noundef null) #15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store ptr null, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.ap, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @bit_copy(ptr noundef nonnull %i.l) #15
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = call ptr @node_features_reboot(ptr noundef nonnull %0, ptr noundef nonnull %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ %i.q, %bb.e ], [ %i.p, %bb.d ] ; 8 uses
  store ptr %i.r, ptr %i.b, align 8
  %.not43 = icmp eq ptr %i.r, null                ; 3 uses
  br i1 %.not43, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.h, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 216
  %i.u = load ptr, ptr %i.t, align 8
  %.not44 = icmp eq ptr %i.u, null
  br i1 %.not44, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.w = load i32, ptr %i.v, align 8
  %i.x = tail call zeroext i1 @node_features_g_user_update(i32 noundef %i.w) #15
  br i1 %i.x, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.y = tail call ptr @bit_copy(ptr noundef nonnull %i.r) #15 ; 5 uses
  store ptr %i.y, ptr %i.d, align 8
  %i.z = load ptr, ptr %i.e, align 8
  %.not45 = icmp eq ptr %i.z, null
  br i1 %.not45, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 216
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 200
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load ptr, ptr %i.k, align 8
  %i.ag = tail call ptr @node_features_g_job_xlate(ptr noundef %i.ac, ptr noundef %i.ae, ptr noundef %i.af) #15 ; 2 uses
  store ptr %i.ag, ptr %i.e, align 8
  %.not46 = icmp eq ptr %i.ag, null
  br i1 %.not46, label %thread-pre-split, label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %i.ah = tail call ptr @node_features_g_get_node_bitmap() #15 ; 2 uses
  store ptr %i.ah, ptr %i.c, align 8
  br label %bb.k

thread-pre-split:                                 ; preds = %bb.j
  %.pr = load ptr, ptr %i.c, align 8
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split, %.thread
  %.pr67 = phi ptr [ %.pr, %thread-pre-split ], [ %i.ah, %.thread ] ; 4 uses
  %.not47 = icmp eq ptr %.pr67, null
  br i1 %.not47, label %.thread86, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @bit_and(ptr noundef nonnull %.pr67, ptr noundef %i.y) #15
  %i.ai = tail call i64 @bit_ffs(ptr noundef nonnull %.pr67) #15
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @slurm_bit_free(ptr noundef nonnull %i.c) #15
  br label %.thread86

.thread86:                                        ; preds = %bb.m, %bb.k
  store ptr null, ptr %i.c, align 8
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  tail call void @bit_and_not(ptr noundef %i.y, ptr noundef nonnull %.pr67) #15
  %i.ak = tail call i64 @bit_ffs(ptr noundef %i.y) #15
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not49 = icmp eq ptr %i.y, null
  br i1 %.not49, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @slurm_bit_free(ptr noundef nonnull %i.d) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr null, ptr %i.d, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.h, %bb.g, %bb.f
  %.pr71 = load ptr, ptr %i.c, align 8            ; 3 uses
  %.not51 = icmp eq ptr %.pr71, null
  br i1 %.not51, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4
  %i.an = call ptr @next_node_bitmap(ptr noundef nonnull %.pr71, ptr noundef nonnull %i.a) #15 ; 2 uses
  %.not9.i = icmp eq ptr %i.an, null
  br i1 %.not9.i, label %_set_reboot_features_active.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.i
  %i.ao = phi ptr [ %i.ba, %.lr.ph.i ], [ %i.an, %bb.s ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 160 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load i32, ptr %i.a, align 4
  %i.au = call ptr @node_features_g_node_xlate(ptr noundef %i.am, ptr noundef %i.aq, ptr noundef %i.as, i32 noundef %i.at) #15 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.ap) #15
  store ptr %i.au, ptr %i.ap, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 280
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call i32 @update_node_active_features(ptr noundef %i.aw, ptr noundef %i.au, i32 noundef 0) #15 ; 0 uses
  %i.ay = load i32, ptr %i.a, align 4
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.a, align 4
  %i.ba = call ptr @next_node_bitmap(ptr noundef nonnull %.pr71, ptr noundef nonnull %i.a) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %_set_reboot_features_active.exit, label %.lr.ph.i, !llvm.loop !26

_set_reboot_features_active.exit:                 ; preds = %.lr.ph.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.t

bb.t:                                             ; preds = %_set_reboot_features_active.exit, %bb.r
  br i1 %.not43, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.thread86, %bb.t
  %i.bb = load ptr, ptr @cloud_node_bitmap, align 8
  %i.bc = load ptr, ptr %i.k, align 8
  %i.bd = call i32 @bit_overlap_any(ptr noundef %i.bb, ptr noundef %i.bc) #15
  %.not52 = icmp eq i32 %i.bd, 0
  br i1 %.not52, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.be = load ptr, ptr @power_down_node_bitmap, align 8
  %i.bf = load ptr, ptr %i.k, align 8
  %i.bg = call i32 @bit_overlap_any(ptr noundef %i.be, ptr noundef %i.bf) #15
  %.not60 = icmp eq i32 %i.bg, 0
  br i1 %.not60, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bh = load ptr, ptr @booting_node_bitmap, align 8
  %i.bi = load ptr, ptr %i.k, align 8
  %i.bj = call i32 @bit_overlap_any(ptr noundef %i.bh, ptr noundef %i.bi) #15
  %.not61 = icmp eq i32 %i.bj, 0
  br i1 %.not61, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @slurm_job_state_set_flag(ptr noundef nonnull %0, i32 noundef 278528, ptr noundef nonnull @__func__.reboot_job_nodes) #15
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1248
  store i16 1, ptr %i.bk, align 8
  br label %bb.aj

bb.y:                                             ; preds = %bb.u
  call void @slurm_job_state_set_flag(ptr noundef nonnull %0, i32 noundef 278528, ptr noundef nonnull @__func__.reboot_job_nodes) #15
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1248
  store i16 1, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  store i32 0, ptr %i.f, align 4
  %i.bm = call ptr @next_node_bitmap(ptr noundef nonnull %i.r, ptr noundef nonnull %i.f) #15 ; 2 uses
  %.not5474 = icmp eq ptr %i.bm, null
  br i1 %.not5474, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ad, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  %i.bn = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not55 = icmp eq ptr %i.bn, null
  br i1 %.not55, label %bb.af, label %bb.ae

.lr.ph:                                           ; preds = %bb.y, %bb.ad
  %i.bo = phi ptr [ %i.cp, %bb.ad ], [ %i.bm, %bb.y ] ; 4 uses
  %.075 = phi i16 [ %spec.select, %bb.ad ], [ 11520, %bb.y ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 400
  %i.bq = load i16, ptr %i.bp, align 8
  %spec.select = call i16 @llvm.umin.i16(i16 %.075, i16 %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 328 ; 6 uses
  %i.bs = load i32, ptr %i.br, align 8            ; 3 uses
  %i.bt = and i32 %i.bs, 4096
  %.not58 = icmp eq i32 %i.bt, 0
  br i1 %.not58, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph
  %i.bu = and i32 %i.bs, -4097
  store i32 %i.bu, ptr %i.br, align 8
  %i.bv = load ptr, ptr @acct_db_conn, align 8
  %i.bw = call i32 @clusteracct_storage_g_node_up(ptr noundef %i.bv, ptr noundef nonnull %i.bo, i64 noundef %i.g) #15 ; 0 uses
  %.pre = load i32, ptr %i.br, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph
  %i.bx = phi i32 [ %.pre, %bb.z ], [ %i.bs, %.lr.ph ]
  %i.by = or i32 %i.bx, 18432                     ; 2 uses
  store i32 %i.by, ptr %i.br, align 8
  %i.bz = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not59 = icmp eq ptr %i.bz, null
  br i1 %.not59, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = call zeroext i1 @node_features_g_job_features_need_reboot(ptr noundef nonnull %i.bz) #15
  br i1 %i.ca, label %._crit_edge76, label %bb.ad

._crit_edge76:                                    ; preds = %bb.ab
  %.pre77 = load i32, ptr %i.br, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge76, %bb.aa
  %i.cb = phi i32 [ %.pre77, %._crit_edge76 ], [ %i.by, %bb.aa ]
  %i.cc = or i32 %i.cb, 1048576
  store i32 %i.cc, ptr %i.br, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.cd = load ptr, ptr @avail_node_bitmap, align 8
  %i.ce = load i32, ptr %i.f, align 4
  %i.cf = sext i32 %i.ce to i64
  call void @bit_clear(ptr noundef %i.cd, i64 noundef %i.cf) #15
  %i.cg = load ptr, ptr @power_down_node_bitmap, align 8
  %i.ch = load i32, ptr %i.f, align 4
  %i.ci = sext i32 %i.ch to i64
  call void @bit_clear(ptr noundef %i.cg, i64 noundef %i.ci) #15
  %i.cj = load ptr, ptr @booting_node_bitmap, align 8
  %i.ck = load i32, ptr %i.f, align 4
  %i.cl = sext i32 %i.ck to i64
  call void @bit_set(ptr noundef %i.cj, i64 noundef %i.cl) #15
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i64 %i.g, ptr %i.cm, align 8
  %i.cn = load i32, ptr %i.f, align 4
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.f, align 4
  %i.cp = call ptr @next_node_bitmap(ptr noundef nonnull %i.r, ptr noundef nonnull %i.f) #15 ; 2 uses
  %.not54 = icmp eq ptr %i.cp, null
  br i1 %.not54, label %._crit_edge, label %.lr.ph, !llvm.loop !27

bb.ae:                                            ; preds = %._crit_edge
  %i.cq = load ptr, ptr %i.e, align 8
  call fastcc void @_do_reboot(ptr noundef nonnull %i.bn, ptr noundef %i.cq)
  %i.cr = load ptr, ptr %i.c, align 8
  call void @bit_and_not(ptr noundef nonnull %i.r, ptr noundef %i.cr) #15
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge
  %i.cs = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not56 = icmp eq ptr %i.cs, null
  br i1 %.not56, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call fastcc void @_do_reboot(ptr noundef nonnull %i.cs, ptr noundef null)
  %i.ct = load ptr, ptr %i.d, align 8
  call void @bit_and_not(ptr noundef nonnull %i.r, ptr noundef %i.ct) #15
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cu = load i8, ptr %i.n, align 8
  %.not57 = icmp eq i8 %i.cu, 0
  br i1 %.not57, label %.thread87, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call fastcc void @_do_reboot(ptr noundef nonnull %i.r, ptr noundef null)
  br label %.thread87

.thread87:                                        ; preds = %bb.ah, %bb.ai
  call void @slurm_xfree(ptr noundef nonnull %i.e) #15
  br label %bb.ak

bb.aj:                                            ; preds = %bb.w, %bb.x
  call void @slurm_xfree(ptr noundef nonnull %i.e) #15
  br i1 %.not43, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.thread87, %bb.aj
  call void @slurm_bit_free(ptr noundef nonnull %i.b) #15
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  store ptr null, ptr %i.b, align 8
  %i.cv = load ptr, ptr %i.d, align 8
  %.not63 = icmp eq ptr %i.cv, null
  br i1 %.not63, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @slurm_bit_free(ptr noundef nonnull %i.d) #15
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  store ptr null, ptr %i.d, align 8
  %i.cw = load ptr, ptr %i.c, align 8
  %.not64 = icmp eq ptr %i.cw, null
  br i1 %.not64, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @slurm_bit_free(ptr noundef nonnull %i.c) #15
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret void
}

declare i32 @bit_overlap_any(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @slurm_job_state_set_flag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @next_node_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @clusteracct_storage_g_node_up(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @node_features_g_job_features_need_reboot(ptr noundef) local_unnamed_addr #2

declare void @bit_clear(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @bit_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_do_reboot(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i64 @bit_ffs(ptr noundef %0) #15
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @power_action_reboot(ptr noundef %0, ptr noundef %1) #15
  %i.d = tail call i32 @get_log_level() #15
  %i.e = icmp sgt i32 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.f = tail call ptr @bitmap2node_name(ptr noundef %0) #15 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @get_log_level() #15
  %i.h = icmp sgt i32 %i.g, 4
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not5 = icmp eq ptr %1, null
  %i.i = select i1 %.not5, ptr @.str.121, ptr @.str.120
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.119, ptr noundef nonnull @__func__._do_reboot, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i) #15
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.j = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.122, ptr noundef nonnull @__func__._do_reboot) #15 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  call void @slurm_xfree(ptr noundef nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @prolog_slurmctld(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @prep_g_required(i32 noundef 3) #15
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 368 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = add i8 %i.e, 1
  store i8 %i.f, ptr %i.d, align 8
  tail call void @slurm_job_state_set_flag(ptr noundef %0, i32 noundef 16384, ptr noundef nonnull @__func__.prolog_slurmctld) #15
  %i.g = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 5040, ptr noundef nonnull @__func__.prolog_slurmctld) #15 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.i = load i32, ptr %i.h, align 8
  store i32 %i.i, ptr %i.g, align 4
  %i.j = tail call i32 @threadpool_create(ptr noundef nonnull @_start_prolog_slurmctld_thread, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.g, i1 noundef zeroext true, ptr noundef null, ptr noundef null, ptr noundef nonnull @__func__.prolog_slurmctld) #15 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @slurm_strerror(i32 noundef %i.j) #15
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.prolog_slurmctld, ptr noundef %i.k) #17
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare zeroext i1 @prep_g_required(i32 noundef) local_unnamed_addr #2

declare i32 @threadpool_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_start_prolog_slurmctld_thread(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr %0, ptr %i.a, align 8
  tail call void @lock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._start_prolog_slurmctld_thread.node_write_lock) #15
  %i.b = load i32, ptr %0, align 4
  %i.c = tail call ptr @find_job_record(i32 noundef %i.b) #15 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4
  %i.e = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.14, i32 noundef %i.d) #15 ; 0 uses
  tail call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._start_prolog_slurmctld_thread.node_write_lock) #15
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @prep_g_prolog_slurmctld(ptr noundef nonnull %i.c) #15
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 824
  %i.g = load i32, ptr %i.f, align 8
  %.not5 = icmp eq i32 %i.g, 0
  br i1 %.not5, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @get_log_level() #15
  %i.i = icmp sgt i32 %i.h, 5
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.14) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @prolog_running_decr(ptr noundef nonnull %i.c)
  br label %bb.g

end_hunk_3
begin_hunk_4_@build_feature_list:bb.a
  %i.l = load ptr, ptr %i.k, align 8
  %.not57 = icmp eq ptr %i.l, null
  %. = select i1 %.not57, i32 0, i32 2114
  br label %bb.al

bb.e:                                             ; preds = %bb.c, %bb.b
  br i1 %1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.n = load ptr, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i64 [ 352, %bb.f ], [ 192, %bb.e ]
  %i.o = phi ptr [ %i.n, %bb.f ], [ %i.h, %bb.e ] ; 3 uses
  %.044 = phi i32 [ 2133, %bb.f ], [ 2029, %bb.e ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.o, ptr %i.q, align 8
  %.not58 = icmp eq ptr %i.o, null
  br i1 %.not58, label %bb.al, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.p, align 8
  %.not59 = icmp eq ptr %i.r, null
  br i1 %.not59, label %bb.i, label %bb.al

bb.i:                                             ; preds = %bb.h
  br i1 %2, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = tail call ptr @xstrdup(ptr noundef nonnull @.str.17) #15 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.s, ptr %i.t, align 8
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %.not60 = icmp eq i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %.not60, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = tail call ptr @xstrdup(ptr noundef nonnull @.str.18) #15 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.y = tail call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.19, i32 noundef %i.v) #15 ; 2 uses
  store ptr %i.y, ptr %i.w, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j
  %i.z = phi ptr [ %i.x, %bb.l ], [ %i.y, %bb.m ], [ %i.s, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = tail call zeroext i1 @node_features_g_user_update(i32 noundef %i.ab) #15
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ae = zext i1 %i.ac to i8
  store i8 %i.ae, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ag = call fastcc i32 @_feature_string2list(ptr noundef nonnull %i.o, ptr noundef %i.z, ptr noundef %i.p, ptr noundef %i.c)
  %.not61 = icmp eq i32 %i.ag, 0
  br i1 %.not61, label %bb.o, label %bb.ak

bb.o:                                             ; preds = %bb.n
  %i.ah = load i8, ptr %i.c, align 1, !range !8, !noundef !9
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr null, ptr %i.d, align 8
  %i.aj = load ptr, ptr %i.q, align 8
  %i.ak = load ptr, ptr %i.p, align 8
  %i.al = tail call ptr @job_features_list2feature_sets(ptr noundef %i.aj, ptr noundef %i.ak, i1 noundef zeroext false) #15 ; 3 uses
  %i.am = call i32 @list_for_each(ptr noundef %i.al, ptr noundef nonnull @job_features_set2str, ptr noundef nonnull %i.d) #15 ; 0 uses
  %.not62 = icmp eq ptr %i.al, null
  br i1 %.not62, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @list_destroy(ptr noundef nonnull %i.al) #15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.an = load ptr, ptr %i.p, align 8             ; 2 uses
  %.not63 = icmp eq ptr %i.an, null
  br i1 %.not63, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @list_destroy(ptr noundef nonnull %i.an) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store ptr null, ptr %i.p, align 8
  %i.ao = load ptr, ptr %i.d, align 8
  %i.ap = load ptr, ptr %i.af, align 8
  %i.aq = call fastcc i32 @_feature_string2list(ptr noundef %i.ao, ptr noundef %i.ap, ptr noundef %i.p, ptr noundef %i.c)
  %.not64 = icmp eq i32 %i.aq, 0
  br i1 %.not64, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.as = and i64 %i.ar, 140737488355328
  %.not65 = icmp eq i64 %i.as, 0
  br i1 %.not65, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = call i32 @get_log_level() #15
  %i.au = icmp sgt i32 %i.at, 3
  br i1 %i.au, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.av = select i1 %1, ptr @.str.22, ptr @.str.23
  %i.aw = load ptr, ptr %i.q, align 8
  %i.ax = load ptr, ptr %i.d, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.build_feature_list, ptr noundef nonnull %i.av, ptr noundef %i.aw, ptr noundef %i.ax) #15
  br label %.thread

.thread:                                          ; preds = %bb.u, %bb.w, %bb.v
  call void @slurm_xfree(ptr noundef nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr %i.d, align 8
  %i.az = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.build_feature_list, ptr noundef %i.ay) #15 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.ak

bb.y:                                             ; preds = %.thread, %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %.not66 = icmp eq ptr %i.bb, null
  br i1 %.not66, label %bb.aj, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bc = load ptr, ptr %i.p, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 200 ; 5 uses
  store ptr %i.bc, ptr %i.bd, align 8
  %i.be = load ptr, ptr %i.q, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 216 ; 5 uses
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = load i8, ptr %i.ad, align 4, !range !8, !noundef !9
  %i.bh = trunc nuw i8 %i.bg to i1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8
  %i.bi = load ptr, ptr %i.ba, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %_valid_batch_features.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not24.i = icmp eq ptr %i.bj, null
  br i1 %.not24.i, label %_valid_batch_features.exit.thread74, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
  %i.bl = load ptr, ptr %i.bk, align 8
  %.not25.i = icmp eq ptr %i.bl, null
  br i1 %.not25.i, label %_valid_batch_features.exit.thread74, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bm = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bi, i32 noundef 124) #18
  %i.bn = call ptr @xstrdup(ptr noundef nonnull %i.bi) #15 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8
  %i.bo = call ptr @strtok_r(ptr noundef %i.bn, ptr noundef nonnull @.str.136, ptr noundef nonnull %i.b) #15 ; 5 uses
  %.not2730.i = icmp eq ptr %i.bo, null
  br i1 %.not2730.i, label %._crit_edge.i.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ac
  %.fr.i = freeze ptr %i.bm
  %.not26.i.not = icmp eq ptr %.fr.i, null
  br i1 %.not26.i.not, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %i.bh, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.i, %bb.ad
  %.032.us.us.i = phi i1 [ %spec.select.us.us.i, %bb.ad ], [ false, %.lr.ph.split.us.i ] ; 2 uses
  %.02031.us.us.i = phi ptr [ %i.bv, %bb.ad ], [ %i.bo, %.lr.ph.split.us.i ] ; 2 uses
  %i.bp = load ptr, ptr %i.e, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 200
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call ptr @list_find_first(ptr noundef %i.br, ptr noundef nonnull @_match_job_feature, ptr noundef nonnull %.02031.us.us.i) #15
  %.not28.us.us.i = icmp eq ptr %i.bs, null
  br i1 %.not28.us.us.i, label %._crit_edge.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.split.us.split.us.i
  %i.bt = load ptr, ptr @avail_feature_list, align 8
  %i.bu = call ptr @list_find_first(ptr noundef %i.bt, ptr noundef nonnull @_find_feature_in_list, ptr noundef nonnull %.02031.us.us.i) #15
  %.not.i.not.not.us.us.i = icmp eq ptr %i.bu, null ; 2 uses
  %not..not.i.not.not.us.us.i = xor i1 %.not.i.not.not.us.us.i, true
  %spec.select.us.us.i = select i1 %not..not.i.not.not.us.us.i, i1 true, i1 %.032.us.us.i ; 2 uses
  %i.bv = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull %i.b) #15 ; 2 uses
  %.not27.us.us.i = icmp eq ptr %i.bv, null
  br i1 %.not27.us.us.i, label %._crit_edge37.i, label %.lr.ph.split.us.split.us.i, !llvm.loop !28

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i, %bb.ae
  %.032.us.i = phi i1 [ %spec.select.us.i, %bb.ae ], [ false, %.lr.ph.split.us.i ] ; 2 uses
  %.02031.us.i = phi ptr [ %i.cc, %bb.ae ], [ %i.bo, %.lr.ph.split.us.i ] ; 2 uses
  %i.bw = load ptr, ptr %i.e, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 200
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call ptr @list_find_first(ptr noundef %i.by, ptr noundef nonnull @_match_job_feature, ptr noundef nonnull %.02031.us.i) #15
  %.not28.us.i = icmp eq ptr %i.bz, null
  br i1 %.not28.us.i, label %._crit_edge.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.split.us.split.i
  %i.ca = load ptr, ptr @active_feature_list, align 8
  %i.cb = call ptr @list_find_first(ptr noundef %i.ca, ptr noundef nonnull @_find_feature_in_list, ptr noundef nonnull %.02031.us.i) #15
  %.not.i.not.not.us.i = icmp eq ptr %i.cb, null  ; 2 uses
  %not..not.i.not.not.us.i = xor i1 %.not.i.not.not.us.i, true
  %spec.select.us.i = select i1 %not..not.i.not.not.us.i, i1 true, i1 %.032.us.i ; 2 uses
  %i.cc = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull %i.b) #15 ; 2 uses
  %.not27.us.i = icmp eq ptr %i.cc, null
  br i1 %.not27.us.i, label %._crit_edge37.i, label %.lr.ph.split.us.split.i, !llvm.loop !28

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %i.bh, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i, %bb.ag
  %.02031.us43.i = phi ptr [ %i.cj, %bb.ag ], [ %i.bo, %.lr.ph.split.i ] ; 2 uses
  %i.cd = load ptr, ptr %i.e, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 200
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call ptr @list_find_first(ptr noundef %i.cf, ptr noundef nonnull @_match_job_feature, ptr noundef nonnull %.02031.us43.i) #15
  %.not28.us44.i = icmp eq ptr %i.cg, null
  br i1 %.not28.us44.i, label %._crit_edge.i.thread, label %bb.af

bb.af:                                            ; preds = %.lr.ph.split.split.us.i
  %i.ch = load ptr, ptr @avail_feature_list, align 8
  %i.ci = call ptr @list_find_first(ptr noundef %i.ch, ptr noundef nonnull @_find_feature_in_list, ptr noundef nonnull %.02031.us43.i) #15
  %.not.i.not.not.us46.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.not.not.us46.i, label %._crit_edge.i.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cj = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull %i.b) #15 ; 2 uses
  %.not27.us45.i = icmp eq ptr %i.cj, null
  br i1 %.not27.us45.i, label %._crit_edge.i.thread, label %.lr.ph.split.split.us.i, !llvm.loop !28

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i, %bb.ai
  %.02031.i = phi ptr [ %i.cq, %bb.ai ], [ %i.bo, %.lr.ph.split.i ] ; 2 uses
  %i.ck = load ptr, ptr %i.e, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 200
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call ptr @list_find_first(ptr noundef %i.cm, ptr noundef nonnull @_match_job_feature, ptr noundef nonnull %.02031.i) #15
  %.not28.i = icmp eq ptr %i.cn, null
  br i1 %.not28.i, label %._crit_edge.i.thread, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.split.split.i
  %i.co = load ptr, ptr @active_feature_list, align 8
  %i.cp = call ptr @list_find_first(ptr noundef %i.co, ptr noundef nonnull @_find_feature_in_list, ptr noundef nonnull %.02031.i) #15
  %.not.i.not.not.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.not.not.i, label %._crit_edge.i.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cq = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull %i.b) #15 ; 2 uses
  %.not27.i = icmp eq ptr %i.cq, null
  br i1 %.not27.i, label %._crit_edge.i.thread, label %.lr.ph.split.split.i, !llvm.loop !28

._crit_edge37.i:                                  ; preds = %bb.ae, %bb.ad
  %.us-phi41.i = phi i1 [ %.not.i.not.not.us.us.i, %bb.ad ], [ %.not.i.not.not.us.i, %bb.ae ]
  %.us-phi42.i = phi i1 [ %spec.select.us.us.i, %bb.ad ], [ %spec.select.us.i, %bb.ae ]
  %cond.fr.i = freeze i1 %.us-phi41.i
  %spec.select.i = select i1 %cond.fr.i, i32 2029, i32 0
  call void @slurm_xfree(ptr noundef nonnull %i.a) #15
  br i1 %.us-phi42.i, label %_valid_batch_features.exit.thread, label %_valid_batch_features.exit

._crit_edge.i.thread:                             ; preds = %bb.ai, %bb.ah, %.lr.ph.split.split.i, %bb.ag, %bb.af, %.lr.ph.split.split.us.i, %bb.ac
  %.119.i.ph = phi i32 [ 0, %bb.ac ], [ 2114, %.lr.ph.split.split.us.i ], [ 0, %bb.ag ], [ 2114, %bb.af ], [ 0, %bb.ai ], [ 2114, %bb.ah ], [ 2114, %.lr.ph.split.split.i ]
  call void @slurm_xfree(ptr noundef nonnull %i.a) #15
  br label %_valid_batch_features.exit

._crit_edge.i:                                    ; preds = %.lr.ph.split.us.split.i, %.lr.ph.split.us.split.us.i
  %.0.lcssa.i = phi i1 [ %.032.us.us.i, %.lr.ph.split.us.split.us.i ], [ %.032.us.i, %.lr.ph.split.us.split.i ]
  call void @slurm_xfree(ptr noundef nonnull %i.a) #15
  br i1 %.0.lcssa.i, label %_valid_batch_features.exit.thread, label %_valid_batch_features.exit.thread103

_valid_batch_features.exit.thread103:             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.bd, align 8
  store ptr null, ptr %i.bf, align 8
  br label %bb.ak

_valid_batch_features.exit.thread:                ; preds = %._crit_edge37.i, %bb.z, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.bd, align 8
  store ptr null, ptr %i.bf, align 8
  br label %bb.aj

_valid_batch_features.exit.thread74:              ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.bd, align 8
  store ptr null, ptr %i.bf, align 8
  br label %bb.ak

_valid_batch_features.exit:                       ; preds = %._crit_edge37.i, %._crit_edge.i.thread
  %.021.i = phi i32 [ %spec.select.i, %._crit_edge37.i ], [ %.119.i.ph, %._crit_edge.i.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.bd, align 8
  store ptr null, ptr %i.bf, align 8
  %.not67 = icmp eq i32 %.021.i, 0
  br i1 %.not67, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_valid_batch_features.exit.thread, %_valid_batch_features.exit, %bb.y
  %i.cr = load ptr, ptr %i.p, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.cr, ptr %i.cs, align 8
  %i.ct = call fastcc i32 @_valid_feature_list(ptr noundef nonnull %0, ptr noundef %3, i1 noundef zeroext %2)
  %.not68 = icmp eq i32 %i.ct, 0
  %spec.select = select i1 %.not68, i32 0, i32 %.044
  br label %bb.ak

bb.ak:                                            ; preds = %_valid_batch_features.exit.thread103, %_valid_batch_features.exit.thread74, %bb.x, %bb.aj, %bb.n, %_valid_batch_features.exit
  %.1 = phi i32 [ %.044, %bb.x ], [ %.021.i, %_valid_batch_features.exit ], [ %.044, %bb.n ], [ %spec.select, %bb.aj ], [ 2114, %_valid_batch_features.exit.thread74 ], [ 2114, %_valid_batch_features.exit.thread103 ]
  call void @slurm_xfree(ptr noundef nonnull %i.af) #15
  br label %bb.al

bb.al:                                            ; preds = %bb.h, %bb.g, %bb.d, %bb.ak
  %.047 = phi i32 [ 0, %bb.g ], [ %.1, %bb.ak ], [ 0, %bb.h ], [ %., %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  ret i32 %.047
}

declare ptr @xstrdup_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2030) i32 @_feature_string2list(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %strchr357 = tail call ptr @strchr(ptr nonnull dereferenceable(1) %0, i32 44) ; 2 uses
  %.not358 = icmp eq ptr %strchr357, null
  br i1 %.not358, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %strchr359 = phi ptr [ %strchr, %.lr.ph ], [ %strchr357, %bb.a ]
  store i8 38, ptr %strchr359, align 1
  %strchr = tail call ptr @strchr(ptr nonnull dereferenceable(1) %0, i32 44) ; 2 uses
  %.not = icmp eq ptr %strchr, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  store ptr null, ptr %i.b, align 8
  %i.c = tail call ptr @xstrdup(ptr noundef nonnull %0) #15 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = tail call ptr @list_create(ptr noundef nonnull @feature_list_delete) #15
  store ptr %i.d, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %.thread230, %._crit_edge
  %i.e = phi ptr [ %i.c, %._crit_edge ], [ %i.dj, %.thread230 ] ; 10 uses
  %.0191 = phi i32 [ 0, %._crit_edge ], [ %.2193243, %.thread230 ] ; 17 uses
  %.0187 = phi i32 [ 0, %._crit_edge ], [ %.3190244, %.thread230 ] ; 10 uses
  %.0184 = phi i32 [ 0, %._crit_edge ], [ %i.dk, %.thread230 ] ; 10 uses
  %.0181 = phi i32 [ 0, %._crit_edge ], [ %.2183246, %.thread230 ] ; 16 uses
  %.0178 = phi i32 [ 0, %._crit_edge ], [ %.2180247, %.thread230 ] ; 11 uses
  %.0174 = phi ptr [ null, %._crit_edge ], [ %.3177248, %.thread230 ] ; 20 uses
  %.0170 = phi i8 [ 0, %._crit_edge ], [ %.4249, %.thread230 ] ; 12 uses
  %.0166 = phi i8 [ 0, %._crit_edge ], [ %.3169250, %.thread230 ] ; 10 uses
  %.0164 = phi i1 [ false, %._crit_edge ], [ %.3251, %.thread230 ] ; 11 uses
  %i.f = sext i32 %.0184 to i64                   ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f ; 10 uses
  %i.h = load i8, ptr %i.g, align 1
  switch i8 %i.h, label %bb.ah [
    i8 42, label %bb.c
    i8 38, label %bb.f
    i8 124, label %bb.o
    i8 91, label %bb.v
    i8 93, label %bb.z
    i8 40, label %bb.ab
    i8 41, label %bb.ad
    i8 0, label %bb.af
  ]

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.g, align 1
  %i.i = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 %i.f
  %i.k = getelementptr i8, ptr %i.j, i64 1
  %i.l = call i64 @strtol(ptr noundef %i.k, ptr noundef nonnull %i.b, i32 noundef 10) #15
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = icmp eq ptr %.0174, null
  %i.o = icmp slt i32 %i.m, 1
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  %i.p = icmp ne i32 %.0181, 0
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.p
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @get_log_level() #15
  %i.r = icmp sgt i32 %i.q, 3
  br i1 %i.r, label %.thread273.sink.split, label %.thread273

bb.e:                                             ; preds = %bb.c
  %.not212 = icmp eq i32 %.0191, 0
  %spec.select = select i1 %.not212, i1 true, i1 %.0164
  %i.s = load ptr, ptr %i.b, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.i to i64
  %i.v = xor i64 %i.u, -1
  %i.w = add i64 %i.v, %i.t
  %i.x = trunc i64 %i.w to i32
  br label %.thread230

bb.f:                                             ; preds = %bb.b
  store i8 0, ptr %i.g, align 1
  %i.y = icmp eq ptr %.0174, null
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = tail call i32 @get_log_level() #15
  %i.aa = icmp sgt i32 %i.z, 3
  br i1 %i.aa, label %.thread273.sink.split, label %.thread273

bb.h:                                             ; preds = %bb.f
  %i.ab = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 40, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 5176, ptr noundef nonnull @__func__._feature_string2list) #15 ; 8 uses
  %i.ac = load i8, ptr %3, align 1, !range !8, !noundef !9
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = trunc nuw nsw i32 %.0191 to i16
  %i.af = select i1 %i.ad, i16 1, i16 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i16 %i.af, ptr %i.ag, align 8
  %i.ah = tail call ptr @xstrdup(ptr noundef nonnull %.0174) #15
  store ptr %i.ah, ptr %i.ab, align 8
  %i.ai = tail call zeroext i1 @node_features_g_changeable_feature(ptr noundef nonnull %.0174) #15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 10
  %i.ak = zext i1 %i.ai to i8                     ; 2 uses
  store i8 %i.ak, ptr %i.aj, align 2
  %i.al = trunc i32 %.0187 to i16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i16 %i.al, ptr %i.am, align 4
  %i.an = trunc nuw nsw i32 %.0181 to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i16 %i.an, ptr %i.ao, align 8
  %i.ap = or i8 %.0170, %i.ak
  %.not210 = icmp eq i32 %.0181, 0
  br i1 %.not210, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = load i8, ptr %3, align 1, !range !8, !noundef !9
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 14
  store i8 1, ptr %i.as, align 2
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %.not211 = icmp eq i32 %.0191, 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 14 ; 2 uses
  br i1 %.not211, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 3, ptr %i.at, align 2
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store i8 1, ptr %i.at, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j
  %i.au = load ptr, ptr %2, align 8
  tail call void @list_append(ptr noundef %i.au, ptr noundef nonnull %i.ab) #15
  br label %.thread230

bb.o:                                             ; preds = %bb.b
  store i8 0, ptr %i.g, align 1
  %.not209 = icmp eq ptr %.0174, null
  br i1 %.not209, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = tail call i32 @get_log_level() #15
  %i.aw = icmp sgt i32 %i.av, 3
  br i1 %i.aw, label %.thread273.sink.split, label %.thread273

bb.q:                                             ; preds = %bb.o
  %i.ax = tail call zeroext i1 @node_features_g_changeable_feature(ptr noundef nonnull %.0174) #15 ; 2 uses
  %i.ay = zext i1 %i.ax to i8                     ; 2 uses
  %i.az = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 40, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 5207, ptr noundef nonnull @__func__._feature_string2list) #15 ; 7 uses
  %i.ba = load i8, ptr %3, align 1, !range !8, !noundef !9
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = trunc nuw nsw i32 %.0191 to i16
  %i.bd = select i1 %i.bb, i16 1, i16 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i16 %i.bd, ptr %i.be, align 8
  %i.bf = tail call ptr @xstrdup(ptr noundef nonnull %.0174) #15
  store ptr %i.bf, ptr %i.az, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 10
  store i8 %i.ay, ptr %i.bg, align 2
  %i.bh = trunc i32 %.0187 to i16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i16 %i.bh, ptr %i.bi, align 4
  %i.bj = trunc nuw nsw i32 %.0181 to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i16 %i.bj, ptr %i.bk, align 8
  %i.bl = or i8 %.0170, %i.ay
  %.not208 = icmp eq i32 %.0181, 0
  br i1 %.not208, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = load i8, ptr %3, align 1, !range !8, !noundef !9
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bo = icmp ne i32 %.0191, 0
  %or.cond5 = select i1 %i.bo, i1 true, i1 %i.ax
  br i1 %or.cond5, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = load i8, ptr %3, align 1, !range !8, !noundef !9
  %spec.select489 = shl nuw nsw i8 %i.bp, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sink = phi i8 [ 0, %bb.r ], [ 2, %bb.s ], [ %spec.select489, %bb.t ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 14
  store i8 %.sink, ptr %i.bq, align 2
  %i.br = load ptr, ptr %2, align 8
  tail call void @list_append(ptr noundef %i.br, ptr noundef nonnull %i.az) #15
  br label %.thread230

bb.v:                                             ; preds = %bb.b
  store i8 0, ptr %i.g, align 1
  %i.bs = icmp ne ptr %.0174, null
  %i.bt = icmp ne i32 %.0191, 0
  %or.cond7 = select i1 %i.bs, i1 true, i1 %i.bt
  %i.bu = icmp ne i32 %.0181, 0
  %or.cond9 = select i1 %or.cond7, i1 true, i1 %i.bu
  br i1 %or.cond9, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bv = tail call i32 @get_log_level() #15
  %i.bw = icmp sgt i32 %i.bv, 3
  br i1 %i.bw, label %.thread273.sink.split, label %.thread273

bb.x:                                             ; preds = %bb.v
  %i.bx = add nsw i32 %.0178, 1
  %i.by = icmp sgt i32 %.0178, 0
  br i1 %i.by, label %bb.y, label %.thread230

bb.y:                                             ; preds = %bb.x
  %i.bz = tail call i32 @get_log_level() #15
  %i.ca = icmp sgt i32 %i.bz, 3
  br i1 %i.ca, label %.thread273.sink.split, label %.thread273

bb.z:                                             ; preds = %bb.b
  store i8 0, ptr %i.g, align 1
  %i.cb = icmp eq ptr %.0174, null
  %i.cc = icmp eq i32 %.0191, 0
  %or.cond11 = select i1 %i.cb, i1 true, i1 %i.cc
  %i.cd = icmp ne i32 %.0181, 0
  %or.cond13 = select i1 %or.cond11, i1 true, i1 %i.cd
  br i1 %or.cond13, label %bb.aa, label %.thread230

bb.aa:                                            ; preds = %bb.z
  %i.ce = tail call i32 @get_log_level() #15
  %i.cf = icmp sgt i32 %i.ce, 3
  br i1 %i.cf, label %.thread273.sink.split, label %.thread273

bb.ab:                                            ; preds = %bb.b
  store i8 0, ptr %i.g, align 1
  %i.cg = icmp ne ptr %.0174, null
  %i.ch = icmp ne i32 %.0181, 0
  %or.cond15 = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond15, label %bb.ac, label %.thread230

bb.ac:                                            ; preds = %bb.ab
  %i.ci = tail call i32 @get_log_level() #15
  %i.cj = icmp sgt i32 %i.ci, 3
  br i1 %i.cj, label %.thread273.sink.split, label %.thread273

bb.ad:                                            ; preds = %bb.b
  store i8 0, ptr %i.g, align 1
  %i.ck = icmp eq ptr %.0174, null
  %i.cl = icmp eq i32 %.0181, 0
  %or.cond17 = select i1 %i.ck, i1 true, i1 %i.cl
  br i1 %or.cond17, label %bb.ae, label %.thread230

bb.ae:                                            ; preds = %bb.ad
  %i.cm = tail call i32 @get_log_level() #15
  %i.cn = icmp sgt i32 %i.cm, 3
  br i1 %i.cn, label %.thread273.sink.split, label %.thread273

bb.af:                                            ; preds = %bb.b
  %.not207 = icmp eq ptr %.0174, null
  br i1 %.not207, label %.thread254, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.co = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 40, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 5278, ptr noundef nonnull @__func__._feature_string2list) #15 ; 7 uses
  %i.cp = trunc nuw nsw i32 %.0191 to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i16 %i.cp, ptr %i.cq, align 8
  %i.cr = tail call ptr @xstrdup(ptr noundef nonnull %.0174) #15
  store ptr %i.cr, ptr %i.co, align 8
  %i.cs = tail call zeroext i1 @node_features_g_changeable_feature(ptr noundef nonnull %.0174) #15
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 10 ; 2 uses
  %i.cu = zext i1 %i.cs to i8
  store i8 %i.cu, ptr %i.ct, align 2
  %i.cv = trunc i32 %.0187 to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i16 %i.cv, ptr %i.cw, align 4
  %i.cx = trunc nuw nsw i32 %.0181 to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  store i16 %i.cx, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 14
  store i8 4, ptr %i.cz, align 2
  %i.da = load ptr, ptr %2, align 8
  tail call void @list_append(ptr noundef %i.da, ptr noundef nonnull %i.co) #15
  %i.db = load i8, ptr %i.ct, align 2, !range !8, !noundef !9
  %i.dc = or i8 %i.db, %.0170
  br label %.thread254

bb.ah:                                            ; preds = %bb.b
  %i.dd = icmp eq ptr %.0174, null
  br i1 %i.dd, label %.thread230, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not206 = icmp eq i32 %.0184, 0
  br i1 %.not206, label %.thread230, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = getelementptr i8, ptr %i.g, i64 -1
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %bb.ak, label %.thread230

bb.ak:                                            ; preds = %bb.aj
  %i.dh = tail call i32 @get_log_level() #15
  %i.di = icmp sgt i32 %i.dh, 3
  br i1 %i.di, label %.thread273.sink.split, label %.thread273

.thread230:                                       ; preds = %bb.u, %bb.n, %bb.z, %bb.ab, %bb.ad, %bb.ah, %bb.e, %bb.aj, %bb.ai, %bb.x
  %i.dj = phi ptr [ %i.e, %bb.ab ], [ %i.e, %bb.z ], [ %i.e, %bb.ai ], [ %i.e, %bb.x ], [ %i.e, %bb.n ], [ %i.i, %bb.e ], [ %i.e, %bb.ah ], [ %i.e, %bb.aj ], [ %i.e, %bb.u ], [ %i.e, %bb.ad ]
  %.3251 = phi i1 [ %.0164, %bb.ab ], [ %.0164, %bb.z ], [ %.0164, %bb.ai ], [ %.0164, %bb.x ], [ %.0164, %bb.n ], [ %spec.select, %bb.e ], [ %.0164, %bb.ah ], [ %.0164, %bb.aj ], [ %.0164, %bb.u ], [ %.0164, %bb.ad ]
  %.3169250 = phi i8 [ %.0166, %bb.ab ], [ %.0166, %bb.z ], [ %.0166, %bb.ai ], [ %.0166, %bb.x ], [ %.0166, %bb.n ], [ %.0166, %bb.e ], [ %.0166, %bb.ah ], [ %.0166, %bb.aj ], [ 1, %bb.u ], [ %.0166, %bb.ad ]
  %.4249 = phi i8 [ %.0170, %bb.ab ], [ %.0170, %bb.z ], [ %.0170, %bb.ai ], [ %.0170, %bb.x ], [ %i.ap, %bb.n ], [ %.0170, %bb.e ], [ %.0170, %bb.ah ], [ %.0170, %bb.aj ], [ %i.bl, %bb.u ], [ %.0170, %bb.ad ]
  %.3177248 = phi ptr [ null, %bb.ab ], [ %.0174, %bb.z ], [ %.0174, %bb.ai ], [ null, %bb.x ], [ null, %bb.n ], [ %.0174, %bb.e ], [ %i.g, %bb.ah ], [ %.0174, %bb.aj ], [ null, %bb.u ], [ %.0174, %bb.ad ]
  %.2180247 = phi i32 [ %.0178, %bb.ab ], [ %.0178, %bb.z ], [ %.0178, %bb.ai ], [ %i.bx, %bb.x ], [ %.0178, %bb.n ], [ %.0178, %bb.e ], [ %.0178, %bb.ah ], [ %.0178, %bb.aj ], [ %.0178, %bb.u ], [ %.0178, %bb.ad ]
  %.2183246 = phi i32 [ 1, %bb.ab ], [ 0, %bb.z ], [ %.0181, %bb.ai ], [ 0, %bb.x ], [ %.0181, %bb.n ], [ 0, %bb.e ], [ %.0181, %bb.ah ], [ %.0181, %bb.aj ], [ %.0181, %bb.u ], [ 0, %bb.ad ]
  %.2186245 = phi i32 [ %.0184, %bb.ab ], [ %.0184, %bb.z ], [ 0, %bb.ai ], [ %.0184, %bb.x ], [ %.0184, %bb.n ], [ %i.x, %bb.e ], [ %.0184, %bb.ah ], [ %.0184, %bb.aj ], [ %.0184, %bb.u ], [ %.0184, %bb.ad ]
  %.3190244 = phi i32 [ %.0187, %bb.ab ], [ %.0187, %bb.z ], [ %.0187, %bb.ai ], [ %.0187, %bb.x ], [ 0, %bb.n ], [ %i.m, %bb.e ], [ %.0187, %bb.ah ], [ %.0187, %bb.aj ], [ 0, %bb.u ], [ %.0187, %bb.ad ]
  %.2193243 = phi i32 [ %.0191, %bb.ab ], [ 0, %bb.z ], [ %.0191, %bb.ai ], [ 1, %bb.x ], [ %.0191, %bb.n ], [ %.0191, %bb.e ], [ %.0191, %bb.ah ], [ %.0191, %bb.aj ], [ %.0191, %bb.u ], [ %.0191, %bb.ad ]
  %i.dk = add nsw i32 %.2186245, 1
  br label %bb.b, !llvm.loop !30

.thread254:                                       ; preds = %bb.ag, %bb.af
  %.4269 = phi i8 [ %.0170, %bb.af ], [ %i.dc, %bb.ag ]
  %.not213 = icmp eq i32 %.0191, 0
  br i1 %.not213, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.thread254
  %i.dl = tail call i32 @get_log_level() #15
  %i.dm = icmp sgt i32 %i.dl, 3
  br i1 %i.dm, label %.thread273.sink.split, label %.thread273

bb.am:                                            ; preds = %.thread254
  %.not214 = icmp eq i32 %.0181, 0
  br i1 %.not214, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dn = tail call i32 @get_log_level() #15
  %i.do = icmp sgt i32 %i.dn, 3
  br i1 %i.do, label %.thread273.sink.split, label %.thread273

bb.ao:                                            ; preds = %bb.am
  br i1 %.0164, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.dp = load ptr, ptr %2, align 8
  %i.dq = tail call i32 @list_count(ptr noundef %i.dp) #15
  %i.dr = icmp sgt i32 %i.dq, 1
  br i1 %i.dr, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ds = tail call i32 @get_log_level() #15
  %i.dt = icmp sgt i32 %i.ds, 3
  br i1 %i.dt, label %.thread273.sink.split, label %.thread273

bb.ar:                                            ; preds = %bb.ao, %bb.ap
  %i.du = trunc nuw i8 %.4269 to i1
  %i.dv = select i1 %i.du, i8 %.0166, i8 0
  store i8 %i.dv, ptr %3, align 1
  br label %bb.av

.thread273.sink.split:                            ; preds = %bb.aq, %bb.an, %bb.al, %bb.ak, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.p, %bb.g, %bb.d
  %.str.127.sink = phi ptr [ @.str.126, %bb.g ], [ @.str.130, %bb.ae ], [ @.str.130, %bb.ac ], [ @.str.128, %bb.aa ], [ @.str.129, %bb.y ], [ @.str.128, %bb.w ], [ @.str.127, %bb.p ], [ @.str.125, %bb.d ], [ @.str.131, %bb.ak ], [ @.str.133, %bb.an ], [ @.str.132, %bb.al ], [ @.str.134, %bb.aq ]
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull %.str.127.sink, ptr noundef %1, ptr noundef nonnull %0) #15
  br label %.thread273

.thread273:                                       ; preds = %.thread273.sink.split, %bb.p, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.g, %bb.d, %bb.ak, %bb.aq, %bb.an, %bb.al
  %i.dw = load ptr, ptr %2, align 8               ; 2 uses
  %.not216 = icmp eq ptr %i.dw, null
  br i1 %.not216, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.thread273
  tail call void @list_destroy(ptr noundef nonnull %i.dw) #15
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.thread273
  store ptr null, ptr %2, align 8
  %i.dx = tail call i32 @get_log_level() #15
  %i.dy = icmp sgt i32 %i.dx, 2
  br i1 %i.dy, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.135, ptr noundef %1, ptr noundef nonnull %0) #15
  br label %bb.av

bb.av:                                            ; preds = %bb.ar, %bb.at, %bb.au
  %.4198277 = phi i32 [ 2029, %bb.at ], [ 2029, %bb.au ], [ 0, %bb.ar ]
  call void @slurm_xfree(ptr noundef nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.4198277
}

declare ptr @job_features_list2feature_sets(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @job_features_set2str(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_valid_feature_list(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @get_log_level() #15
  %i.d = icmp sgt i32 %i.c, 5
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.137, ptr noundef %i.f) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.t

bb.e:                                             ; preds = %bb.a
  %i.h = load i64, ptr @_valid_feature_list.sched_update, align 8
  %i.i = load i64, ptr @slurm_conf, align 8       ; 2 uses
  %.not25 = icmp eq i64 %i.h, %i.i
  br i1 %.not25, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.b24.pre = load i1, ptr @_valid_feature_list.ignore_constraint_val, align 1
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  store i64 %i.i, ptr @_valid_feature_list.sched_update, align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.k = tail call ptr @xstrcasestr(ptr noundef %i.j, ptr noundef nonnull @.str.138) #15
  %.not26 = icmp ne ptr %i.k, null
  store i1 %.not26, ptr @_valid_feature_list.ignore_prefer_val, align 1
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.m = tail call ptr @xstrcasestr(ptr noundef %i.l, ptr noundef nonnull @.str.139) #15
  %.not27 = icmp eq ptr %i.m, null
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i1 true, ptr @_valid_feature_list.ignore_constraint_val, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i1 false, ptr @_valid_feature_list.ignore_constraint_val, align 1
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.g, %bb.h
  %.b24 = phi i1 [ %.b24.pre, %._crit_edge ], [ true, %bb.g ], [ false, %bb.h ]
  %i.n = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 352
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.n, %i.r
  %.b = load i1, ptr @_valid_feature_list.ignore_prefer_val, align 1
  %i.t = select i1 %i.s, i1 %.b, i1 %.b24
  %i.u = zext i1 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i8 %i.u, ptr %i.v, align 4
  %i.w = tail call i32 @list_for_each(ptr noundef %i.n, ptr noundef nonnull @_foreach_valid_feature_list, ptr noundef nonnull %1) #15 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call i32 @get_log_level() #15
  %i.ab = icmp sgt i32 %i.aa, 4
  br i1 %i.ab, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.140, ptr noundef %i.ad, ptr noundef %i.af) #15
  br label %bb.t

bb.l:                                             ; preds = %bb.i
  br i1 %2, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call i32 @get_log_level() #15
  %i.ah = icmp sgt i32 %i.ag, 2
  br i1 %i.ah, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.141, ptr noundef %i.aj) #15
  br label %bb.t

bb.o:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = load i8, ptr %i.ak, align 4, !range !8, !noundef !9
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = tail call i32 @get_log_level() #15
  %i.ao = icmp sgt i32 %i.an, 2                   ; 2 uses
  br i1 %i.am, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  br i1 %i.ao, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.142, ptr noundef %i.aq, ptr noundef %i.as) #15
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  br i1 %i.ao, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_4
begin_hunk_5_@cleanup_completing:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = and i32 %i.t, 255                        ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @job_set_alloc_tres(ptr noundef nonnull %0, i1 noundef zeroext false) #15
  %.pre = load i32, ptr %i.s, align 8             ; 2 uses
  %.pre22 = and i32 %.pre, 255
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi = phi i32 [ %.pre22, %bb.j ], [ %i.u, %bb.i ]
  %i.w = phi i32 [ %.pre, %bb.j ], [ %i.t, %bb.i ]
  %i.x = icmp samesign ugt i32 %.pre-phi, 2
  %i.y = and i32 %i.w, 32768
  %i.z = icmp eq i32 %i.y, 0
  %or.cond = and i1 %i.x, %i.z
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = tail call i32 @fed_mgr_job_complete(ptr noundef nonnull %0, i32 noundef %i.ab, i64 noundef %i.ad) #15 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @batch_requeue_fini(ptr noundef nonnull %0) #15
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.a, %bb.b
  ret void
}

declare i32 @license_job_return(ptr noundef) local_unnamed_addr #2

declare void @gs_job_fini(ptr noundef) local_unnamed_addr #2

declare void @delete_step_records(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @job_hold_requeue(ptr noundef) local_unnamed_addr #2

declare void @job_set_alloc_tres(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @fed_mgr_job_complete(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @batch_requeue_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @main_sched_init() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @sched_mutex) #15 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #16
  store i32 %i.a, ptr %i.b, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.main_sched_init) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i8, ptr @sched_alive, align 1, !range !8, !noundef !9
  store i8 1, ptr @sched_alive, align 1
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @sched_mutex) #15 ; 2 uses
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @__errno_location() #16
  store i32 %i.d, ptr %i.e, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.main_sched_init) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = trunc nuw i8 %i.c to i1
  br i1 %i.f, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 @threadpool_create(ptr noundef nonnull @_sched_agent, ptr noundef nonnull @.str.26, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef nonnull @__func__.main_sched_init) #15 ; 2 uses
  %.not9 = icmp eq i32 %i.g, 0
  br i1 %.not9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call ptr @slurm_strerror(i32 noundef %i.g) #15
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.main_sched_init, ptr noundef %i.h) #17
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_sched_agent(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 7 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.u, %bb.a
  %i.c = call i32 @pthread_mutex_lock(ptr noundef nonnull @sched_mutex) #15 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 328), align 8
  %.not4266 = icmp eq i64 %i.d, 0
  br i1 %.not4266, label %.lr.ph, label %.preheader._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #16
  store i32 %i.c, ptr %i.e, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @.str.26) #17
  unreachable

.preheader._crit_edge:                            ; preds = %.preheader, %bb.l
  %i.f = call i32 @pthread_mutex_unlock(ptr noundef nonnull @sched_mutex) #15 ; 2 uses
  %.not51 = icmp eq i32 %i.f, 0
  br i1 %.not51, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader._crit_edge
  %i.g = tail call ptr @__errno_location() #16
  store i32 %i.f, ptr %i.g, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.26) #17
  unreachable

bb.e:                                             ; preds = %.preheader._crit_edge
  %i.h = call i32 @pthread_mutex_lock(ptr noundef nonnull @sched_mutex) #15 ; 2 uses
  %.not52 = icmp eq i32 %i.h, 0
  br i1 %.not52, label %bb.x, label %bb.w

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.i = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #15 ; 0 uses
  %i.j = load i32, ptr @sched_requests, align 4
  %.not43 = icmp eq i32 %i.j, 0
  br i1 %.not43, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.k = load i64, ptr %1, align 8
  %i.l = load i64, ptr @sched_last.0, align 8     ; 2 uses
  %i.m = sub nsw i64 %i.k, %i.l
  %i.n = mul nsw i64 %i.m, 1000000
  %i.o = load i64, ptr %i.a, align 8
  %i.p = load i64, ptr @sched_last.1, align 8     ; 2 uses
  %i.q = sub i64 %i.o, %i.p
  %i.r = add nsw i64 %i.q, %i.n
  %i.s = load i32, ptr @sched_min_interval, align 4
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = icmp sgt i64 %i.r, %i.t
  br i1 %i.u, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.v = add nsw i64 %i.p, %i.t
  %i.w = mul nsw i64 %i.v, 1000
  %i.x = add nsw i64 %i.w, 1000                   ; 2 uses
  %i.y = sdiv i64 %i.x, 1000000000
  %i.z = add nsw i64 %i.y, %i.l
  store i64 %i.z, ptr %2, align 8
  %i.aa = srem i64 %i.x, 1000000000
  store i64 %i.aa, ptr %i.b, align 8
  %i.ab = call i32 @pthread_cond_timedwait(ptr noundef nonnull @sched_cond, ptr noundef nonnull @sched_mutex, ptr noundef nonnull %2) #15 ; 2 uses
  switch i32 %i.ab, label %bb.h [
    i32 110, label %bb.i
    i32 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call ptr @__errno_location() #16
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.2, i32 noundef 947, ptr noundef nonnull @.str.26) #15 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph
  %i.ae = call i32 @pthread_cond_wait(ptr noundef nonnull @sched_cond, ptr noundef nonnull @sched_mutex) #15 ; 2 uses
  %.not45 = icmp eq i32 %i.ae, 0
  br i1 %.not45, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = tail call ptr @__errno_location() #16
  store i32 %i.ae, ptr %i.af, align 4
  %i.ag = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 949, ptr noundef nonnull @.str.26) #15 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.ah = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 328), align 8
  %.not42 = icmp eq i64 %i.ah, 0
  br i1 %.not42, label %.lr.ph, label %.preheader._crit_edge, !llvm.loop !31

bb.m:                                             ; preds = %bb.f
  %i.ai = load i8, ptr @sched_full_queue, align 1, !range !8, !noundef !9
  store i8 0, ptr @sched_full_queue, align 1
  store i32 0, ptr @sched_requests, align 4
  store i8 1, ptr @sched_running, align 1
  %i.aj = call i32 @pthread_mutex_unlock(ptr noundef nonnull @sched_mutex) #15 ; 2 uses
  %.not46 = icmp eq i32 %i.aj, 0
  br i1 %.not46, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = tail call ptr @__errno_location() #16
  store i32 %i.aj, ptr %i.ak, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.26) #17
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.al = trunc nuw i8 %i.ai to i1
  %i.am = call fastcc i32 @_schedule(i1 noundef zeroext %i.al)
  %i.an = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #15 ; 0 uses
  %i.ao = load i64, ptr %1, align 8
  store i64 %i.ao, ptr @sched_last.0, align 8
  %i.ap = load i64, ptr %i.a, align 8
  store i64 %i.ap, ptr @sched_last.1, align 8
  %.not47 = icmp eq i32 %i.am, 0
  br i1 %.not47, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @schedule_node_save() #15
  call void @schedule_job_save() #15
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.aq = call i32 @pthread_mutex_lock(ptr noundef nonnull @sched_mutex) #15 ; 2 uses
  %.not48 = icmp eq i32 %i.aq, 0
  br i1 %.not48, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = tail call ptr @__errno_location() #16
  store i32 %i.aq, ptr %i.ar, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @.str.26) #17
  unreachable

bb.s:                                             ; preds = %bb.q
  store i8 0, ptr @sched_running, align 1
  %i.as = call i32 @pthread_cond_broadcast(ptr noundef nonnull @sched_cond) #15 ; 2 uses
  %.not49 = icmp eq i32 %i.as, 0
  br i1 %.not49, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = tail call ptr @__errno_location() #16
  store i32 %i.as, ptr %i.at, align 4
  %i.au = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 972, ptr noundef nonnull @.str.26) #15 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.av = call i32 @pthread_mutex_unlock(ptr noundef nonnull @sched_mutex) #15 ; 2 uses
  %.not50 = icmp eq i32 %i.av, 0
  br i1 %.not50, label %bb.b, label %bb.v, !llvm.loop !32

bb.v:                                             ; preds = %bb.u
  %i.aw = tail call ptr @__errno_location() #16
  store i32 %i.av, ptr %i.aw, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.26) #17
  unreachable

bb.w:                                             ; preds = %bb.e
  %i.ax = tail call ptr @__errno_location() #16
  store i32 %i.h, ptr %i.ax, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @.str.26) #17
  unreachable

bb.x:                                             ; preds = %bb.e
  store i8 0, ptr @sched_alive, align 1
  %i.ay = call i32 @pthread_cond_broadcast(ptr noundef nonnull @sched_cond) #15 ; 2 uses
  %.not53 = icmp eq i32 %i.ay, 0
  br i1 %.not53, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.az = tail call ptr @__errno_location() #16
  store i32 %i.ay, ptr %i.az, align 4
  %i.ba = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 980, ptr noundef nonnull @.str.26) #15 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bb = call i32 @pthread_mutex_unlock(ptr noundef nonnull @sched_mutex) #15 ; 2 uses
  %.not54 = icmp eq i32 %i.bb, 0
  br i1 %.not54, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bc = tail call ptr @__errno_location() #16
  store i32 %i.bb, ptr %i.bc, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.26) #17
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local void @main_sched_fini() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @sched_mutex) #15 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.b = load i8, ptr @sched_alive, align 1, !range !8, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #16
  store i32 %i.a, ptr %i.d, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.main_sched_fini) #17
  unreachable

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %i.e = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull @sched_cond) #15 ; 2 uses
  %.not12 = icmp eq i32 %i.e, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = tail call ptr @__errno_location() #16
  store i32 %i.e, ptr %i.f, align 4
  %i.g = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 5795, ptr noundef nonnull @__func__.main_sched_fini) #15 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.h = tail call i32 @pthread_cond_wait(ptr noundef nonnull @sched_cond, ptr noundef nonnull @sched_mutex) #15 ; 2 uses
  %.not13 = icmp eq i32 %i.h, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @__errno_location() #16
  store i32 %i.h, ptr %i.i, align 4
  %i.j = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 5796, ptr noundef nonnull @__func__.main_sched_fini) #15 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = load i8, ptr @sched_alive, align 1, !range !8, !noundef !9
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @sched_mutex) #15 ; 2 uses
  %.not11 = icmp eq i32 %i.m, 0
  br i1 %.not11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.n = tail call ptr @__errno_location() #16
  store i32 %i.m, ptr %i.n, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.main_sched_fini) #17
  unreachable

bb.h:                                             ; preds = %._crit_edge
  ret void
}

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_split_job_on_schedule_recurse(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8
  %i.c = tail call i32 @num_pending_job_array_tasks(i32 noundef %i.b) #15
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not49 = icmp slt i32 %i.c, %i.e
  br i1 %.not49, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr50 = phi ptr [ %0, %.lr.ph ], [ %i.af, %tailrecurse ] ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.tr50, i64 88 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i64 @bit_ffs(ptr noundef %i.m) #15
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.h, align 8
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %.tr50, i64 84
  store i32 %i.o, ptr %i.t, align 4
  br i1 %i.s, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @job_array_post_sched(ptr noundef nonnull %.tr50, i1 noundef zeroext false) #15 ; 6 uses
  %.not42 = icmp eq ptr %i.u, %.tr50
  br i1 %.not42, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %1, align 8                ; 2 uses
  %.not43 = icmp eq ptr %i.v, null
  br i1 %.not43, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = tail call ptr @list_create(ptr noundef null) #15 ; 2 uses
  store ptr %i.w, ptr %1, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = phi ptr [ %i.w, %bb.g ], [ %i.v, %bb.f ]
  tail call void @list_append(ptr noundef %i.x, ptr noundef %i.u) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.tr50, i64 256
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %.not44 = icmp eq ptr %i.z, null
  br i1 %.not44, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not45 = icmp eq ptr %i.ab, null
  br i1 %.not45, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8
  %.not46 = icmp eq ptr %i.ad, null
  br i1 %.not46, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call i32 @fed_mgr_submit_remote_dependencies(ptr noundef nonnull %.tr50, i1 noundef zeroext false, i1 noundef zeroext false) #15 ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.d
  %i.af = tail call ptr @job_array_split(ptr noundef nonnull %.tr50, i1 noundef zeroext false) #15 ; 7 uses
  %i.ag = tail call i32 @get_log_level() #15
  %i.ah = icmp sgt i32 %i.ag, 4
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %i.f, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__._split_job_on_schedule_recurse, ptr noundef nonnull %.tr50, ptr noundef %i.ai) #15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @slurm_job_state_set(ptr noundef %i.af, i32 noundef 0, ptr noundef nonnull @__func__._split_job_on_schedule_recurse) #15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1032
  store i64 0, ptr %i.aj, align 8
  %i.ak = load ptr, ptr %1, align 8               ; 2 uses
  %.not41 = icmp eq ptr %i.ak, null
  br i1 %.not41, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = tail call ptr @list_create(ptr noundef null) #15 ; 2 uses
  store ptr %i.al, ptr %1, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.am = phi ptr [ %i.al, %bb.p ], [ %i.ak, %bb.o ]
  tail call void @list_append(ptr noundef %i.am, ptr noundef nonnull %i.af) #15
  %i.an = load i32, ptr %i.g, align 8
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.r, label %tailrecurse

bb.r:                                             ; preds = %bb.q
  %i.ap = tail call i32 @bb_g_job_validate2(ptr noundef nonnull %i.af, ptr noundef null) #15 ; 0 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.r, %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = tail call i32 @num_pending_job_array_tasks(i32 noundef %i.ar) #15
  %i.at = load i32, ptr %i.d, align 8
  %.not = icmp slt i32 %i.as, %i.at
  br i1 %.not, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.b, %bb.c, %bb.a, %bb.i, %bb.j, %bb.k, %bb.l
  %.0 = phi ptr [ %i.u, %bb.i ], [ %i.u, %bb.l ], [ %i.u, %bb.k ], [ %i.u, %bb.j ], [ %0, %bb.a ], [ %i.af, %tailrecurse ], [ %.tr50, %bb.b ], [ %.tr50, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @_find_depend_after_corr(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i16, ptr %i.a, align 4
  %i.c = icmp eq i16 %i.b, 7
  %. = zext i1 %i.c to i32
  ret i32 %.
}

declare i32 @num_pending_job_array_tasks(i32 noundef) local_unnamed_addr #2

declare ptr @job_array_post_sched(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @fed_mgr_submit_remote_dependencies(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @job_array_split(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @bb_g_job_validate2(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @set_job_failed_assoc_qos_ptr(ptr noundef) local_unnamed_addr #2

declare i32 @acct_policy_handle_accrue_time(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare double @difftime(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal noundef i32 @_build_job_queue_for_part(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 776
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 872
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @list_for_each(ptr noundef nonnull %i.e, ptr noundef nonnull @_build_job_queue_for_qos, ptr noundef nonnull %1) #15 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 880
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 @_build_job_queue_for_qos(ptr noundef %i.h, ptr noundef nonnull %1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}
end_hunk_5
begin_hunk_6_@_foreach_valid_feature_list:bb.a
  br i1 %.not61, label %bb.n, label %thread-pre-split.thread

bb.n:                                             ; preds = %bb.m
  %i.ao = tail call i32 @get_log_level() #15
  %i.ap = icmp sgt i32 %i.ao, 3
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load ptr, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.145, ptr noundef %i.ar, ptr noundef %i.as, ptr noundef %i.au) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i32 2029, ptr %i.p, align 8
  %.pr.pre = load i8, ptr %i.a, align 2
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.p, %bb.l
  %.pr70.pre7276 = phi i8 [ %i.ak, %bb.l ], [ %.pr.pre, %bb.p ] ; 2 uses
  %i.av = icmp eq i8 %.pr70.pre7276, 2
  br i1 %i.av, label %bb.q, label %thread-pre-split.thread

bb.q:                                             ; preds = %thread-pre-split
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ax = load i16, ptr %i.aw, align 4
  %.not62 = icmp eq i16 %i.ax, 0
  br i1 %.not62, label %thread-pre-split.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = tail call i32 @get_log_level() #15
  %i.az = icmp sgt i32 %i.ay, 3
  br i1 %i.az, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.146, ptr noundef %i.bb, ptr noundef %i.bc, ptr noundef %i.be) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store i32 2029, ptr %i.p, align 8
  %.pr70.pre72.pre = load i8, ptr %i.a, align 2
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.m, %bb.t, %bb.q, %thread-pre-split
  %.pr70.pre72 = phi i8 [ %.pr70.pre72.pre, %bb.t ], [ 2, %bb.q ], [ %.pr70.pre7276, %thread-pre-split ], [ 3, %bb.m ] ; 2 uses
  %i.bf = load i32, ptr %1, align 8
  %i.bg = load i32, ptr %i.k, align 4
  %i.bh = icmp sle i32 %i.bf, %i.bg
  %i.bi = and i8 %.pr70.pre72, -2
  %switch68 = icmp eq i8 %i.bi, 2
  %or.cond = select i1 %i.bh, i1 true, i1 %switch68
  br i1 %or.cond, label %thread-pre-split69, label %bb.u

bb.u:                                             ; preds = %thread-pre-split.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 8, !range !8, !noundef !9
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bn = load i16, ptr %i.bm, align 4
  %.not65 = icmp eq i16 %i.bn, 0
  br i1 %.not65, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  store i32 2029, ptr %i.p, align 8
  %i.bo = tail call i32 @get_log_level() #15
  %i.bp = icmp sgt i32 %i.bo, 3
  br i1 %i.bp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = load ptr, ptr %0, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.145, ptr noundef %i.br, ptr noundef %i.bs, ptr noundef %i.bu) #15
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v, %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 33 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !range !8, !noundef !9
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bz = load i16, ptr %i.by, align 4
  %.not66 = icmp eq i16 %i.bz, 0
  br i1 %.not66, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 2029, ptr %i.p, align 8
  %i.ca = tail call i32 @get_log_level() #15
  %i.cb = icmp sgt i32 %i.ca, 3
  br i1 %i.cb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = load ptr, ptr %0, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.146, ptr noundef %i.cd, ptr noundef %i.ce, ptr noundef %i.cg) #15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z, %bb.y
  store i32 0, ptr %1, align 8
  store i8 0, ptr %i.bj, align 8
  store i8 0, ptr %i.bv, align 1
  %.pr70.pre = load i8, ptr %i.a, align 2
  br label %thread-pre-split69

thread-pre-split69:                               ; preds = %bb.ac, %thread-pre-split.thread
  %i.ch = phi i8 [ %.pr70.pre, %bb.ac ], [ %.pr70.pre72, %thread-pre-split.thread ] ; 2 uses
  %i.ci = icmp eq i8 %i.ch, 3
  br i1 %i.ci, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %thread-pre-split69
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 1, ptr %i.cj, align 8
  %.pre74 = load i8, ptr %i.a, align 2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %thread-pre-split69
  %i.ck = phi i8 [ %.pre74, %bb.ad ], [ %i.ch, %thread-pre-split69 ]
  %i.cl = icmp eq i8 %i.ck, 2
  br i1 %i.cl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 1, ptr %i.cm, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  ret i32 0
}

declare void @_xstrcat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

declare i32 @pthread_cond_timedwait(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_schedule(i1 noundef zeroext %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.job_is_comp_t, align 8      ; 8 uses
  %2 = alloca %struct.job_is_comp_t, align 8      ; 7 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 105 uses
  %3 = alloca %struct.timespec, align 8           ; 7 uses
  %4 = alloca %struct.timespec, align 8           ; 6 uses
  %5 = alloca %struct.job_node_select_t, align 8  ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %6 = alloca %struct.part_reduce_frag_t, align 8 ; 8 uses
  %7 = alloca %struct.assoc_mgr_lock_t, align 4   ; 7 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %8 = alloca %struct.timespec, align 8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 328), align 8
  %.not323 = icmp eq i64 %i.e, 0
  br i1 %.not323, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr @_schedule.sched_update, align 8
  %i.g = load i64, ptr @slurm_conf, align 8
  %.not324 = icmp eq i64 %i.f, %i.g
  br i1 %.not324, label %bb.bt, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.i = tail call ptr @xstrcasestr(ptr noundef %i.h, ptr noundef nonnull @.str.148) #15
  %.not325 = icmp ne ptr %i.i, null
  store i1 %.not325, ptr @_schedule.assoc_limit_stop, align 1
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.k = tail call ptr @xstrcasestr(ptr noundef %i.j, ptr noundef nonnull @.str.149) #15 ; 2 uses
  %.not326 = icmp eq ptr %i.k, null
  br i1 %.not326, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  %i.m = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.l, ptr noundef null, i32 noundef 10) #15, !inline_history !34
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  store i32 %i.n, ptr @batch_sched_delay, align 4
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.150, i32 noundef %i.n) #15 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e
  store i32 3, ptr @batch_sched_delay, align 4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  store i32 10, ptr @bb_array_stage_cnt, align 4
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.r = tail call ptr @xstrcasestr(ptr noundef %i.q, ptr noundef nonnull @.str.151) #15 ; 2 uses
  %.not327 = icmp eq ptr %i.r, null
  br i1 %.not327, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 19
  %i.t = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.s, ptr noundef null, i32 noundef 10) #15, !inline_history !34
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.u, ptr @bb_array_stage_cnt, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  store i32 0, ptr @_schedule.bf_min_age_reserve, align 4
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.x = tail call ptr @xstrcasestr(ptr noundef %i.w, ptr noundef nonnull @.str.152) #15 ; 2 uses
  %.not328 = icmp eq ptr %i.x, null
  br i1 %.not328, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 19
  %i.z = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.y, ptr noundef null, i32 noundef 10) #15, !inline_history !34
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.aa, ptr @_schedule.bf_min_age_reserve, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  store i32 0, ptr @_schedule.bf_min_prio_reserve, align 4
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.ad = tail call ptr @xstrcasestr(ptr noundef %i.ac, ptr noundef nonnull @.str.153) #15 ; 2 uses
  %.not329 = icmp eq ptr %i.ad, null
  br i1 %.not329, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.af = tail call i64 @strtoll(ptr noundef nonnull captures(none) %i.ae, ptr noundef null, i32 noundef 10) #15, !inline_history !35 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = trunc i64 %i.af to i32
  store i32 %i.ah, ptr @_schedule.bf_min_prio_reserve, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  store i1 false, ptr @_schedule.bf_licenses, align 1
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.aj = tail call ptr @xstrcasestr(ptr noundef %i.ai, ptr noundef nonnull @.str.154) #15
  %.not330 = icmp eq ptr %i.aj, null
  br i1 %.not330, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1168), align 8
  %i.al = tail call i32 @xstrcmp(ptr noundef %i.ak, ptr noundef nonnull @.str.155) #15
  %.not331 = icmp eq i32 %i.al, 0
  br i1 %.not331, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.am = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.156) #15 ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  store i1 true, ptr @_schedule.bf_licenses, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.ao = tail call ptr @xstrcasestr(ptr noundef %i.an, ptr noundef nonnull @.str.157) #15 ; 2 uses
  %.not332 = icmp eq ptr %i.ao, null
  br i1 %.not332, label %.sink.split1754, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.aq = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ap, ptr noundef null, i32 noundef 10) #15, !inline_history !34
  %i.ar = trunc i64 %i.aq to i32                  ; 3 uses
  store i32 %i.ar, ptr @build_queue_timeout, align 4
  %i.as = icmp slt i32 %i.ar, 100
  br i1 %i.as, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.at = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.158, i32 noundef %i.ar) #15 ; 0 uses
  br label %.sink.split1754

.sink.split1754:                                  ; preds = %bb.s, %bb.u
  store i32 2000000, ptr @build_queue_timeout, align 4
  br label %bb.v

bb.v:                                             ; preds = %.sink.split1754, %bb.t
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.av = tail call ptr @xstrcasestr(ptr noundef %i.au, ptr noundef nonnull @.str.159) #15 ; 2 uses
  %.not333 = icmp eq ptr %i.av, null
  br i1 %.not333, label %.sink.split1755, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 26
  %i.ax = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.aw, ptr noundef null, i32 noundef 10) #15, !inline_history !34
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  store i32 %i.ay, ptr @correspond_after_task_cnt, align 4
  %i.az = icmp slt i32 %i.ay, 10
  br i1 %i.az, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ba = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.160, i32 noundef %i.ay, i32 noundef 10) #15 ; 0 uses
  br label %.sink.split1755

.sink.split1755:                                  ; preds = %bb.v, %bb.x
  store i32 10, ptr @correspond_after_task_cnt, align 4
  br label %bb.y

bb.y:                                             ; preds = %.sink.split1755, %bb.w
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.bc = tail call ptr @xstrcasestr(ptr noundef %i.bb, ptr noundef nonnull @.str.161) #15 ; 2 uses
  %.not334 = icmp eq ptr %i.bc, null
  br i1 %.not334, label %.sink.split1756, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.be = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.bd, ptr noundef null, i32 noundef 10) #15, !inline_history !34
  %i.bf = trunc i64 %i.be to i32                  ; 3 uses
  store i32 %i.bf, ptr @_schedule.def_job_limit, align 4
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bh = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.162, i32 noundef %i.bf) #15 ; 0 uses
  br label %.sink.split1756

.sink.split1756:                                  ; preds = %bb.y, %bb.aa
  store i32 100, ptr @_schedule.def_job_limit, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split1756, %bb.z
  store i16 0, ptr @bf_hetjob_prio, align 2
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.bj = tail call ptr @xstrcasestr(ptr noundef %i.bi, ptr noundef nonnull @.str.163) #15 ; 2 uses
  %.not335 = icmp eq ptr %i.bj, null
  br i1 %.not335, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 15 ; 4 uses
  %i.bl = tail call i32 @xstrncasecmp(ptr noundef nonnull %i.bk, ptr noundef nonnull @.str.164, i64 noundef 3) #15
  %.not336 = icmp eq i32 %i.bl, 0
  br i1 %.not336, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bm = load i16, ptr @bf_hetjob_prio, align 2
  %i.bn = or i16 %i.bm, 1
  store i16 %i.bn, ptr @bf_hetjob_prio, align 2
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %i.bo = tail call i32 @xstrncasecmp(ptr noundef nonnull %i.bk, ptr noundef nonnull @.str.165, i64 noundef 3) #15
  %.not337 = icmp eq i32 %i.bo, 0
  br i1 %.not337, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bp = load i16, ptr @bf_hetjob_prio, align 2
  %i.bq = or i16 %i.bp, 2
  store i16 %i.bq, ptr @bf_hetjob_prio, align 2
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %i.br = tail call i32 @xstrncasecmp(ptr noundef nonnull %i.bk, ptr noundef nonnull @.str.166, i64 noundef 3) #15
  %.not338 = icmp eq i32 %i.br, 0
  br i1 %.not338, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bs = load i16, ptr @bf_hetjob_prio, align 2
  %i.bt = or i16 %i.bs, 4
  store i16 %i.bt, ptr @bf_hetjob_prio, align 2
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.bu = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.167, ptr noundef nonnull %i.bk) #15 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ad, %bb.ah, %bb.ai, %bb.af, %bb.ab
  store i1 false, ptr @bf_hetjob_immediate, align 1
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.bw = tail call ptr @xstrcasestr(ptr noundef %i.bv, ptr noundef nonnull @.str.168) #15
  %.not339 = icmp eq ptr %i.bw, null
  br i1 %.not339, label %._crit_edge1435, label %bb.ak

._crit_edge1435:                                  ; preds = %bb.aj
  %.b322.pre = load i1, ptr @bf_hetjob_immediate, align 1
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i1 true, ptr @bf_hetjob_immediate, align 1
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge1435, %bb.ak
  %.b322 = phi i1 [ %.b322.pre, %._crit_edge1435 ], [ true, %bb.ak ]
  %i.bx = load i16, ptr @bf_hetjob_prio, align 2
  %i.by = icmp eq i16 %i.bx, 0
  %or.cond.not = select i1 %.b322, i1 %i.by, i1 false
  br i1 %or.cond.not, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  store i16 1, ptr @bf_hetjob_prio, align 2
  %i.bz = tail call i32 @get_log_level() #15
  %i.ca = icmp sgt i32 %i.bz, 2
  br i1 %i.ca, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.169) #15
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %bb.al
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.cc = tail call ptr @xstrcasestr(ptr noundef %i.cb, ptr noundef nonnull @.str.170) #15 ; 2 uses
  %.not = icmp eq ptr %i.cc, null
  br i1 %.not, label %.sink.split1757, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %i.ce = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.cd, ptr noundef null, i32 noundef 10) #15, !inline_history !34
  %i.cf = trunc i64 %i.ce to i32                  ; 3 uses
  store i32 %i.cf, ptr @_schedule.max_jobs_per_part, align 4
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ch = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.171, i32 noundef %i.cf) #15 ; 0 uses
  br label %.sink.split1757

.sink.split1757:                                  ; preds = %bb.ao, %bb.aq
  store i32 0, ptr @_schedule.max_jobs_per_part, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split1757, %bb.ap
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.cj = tail call ptr @xstrcasestr(ptr noundef %i.ci, ptr noundef nonnull @.str.172) #15
  %.not341 = icmp ne ptr %i.cj, null
  store i1 %.not341, ptr @_schedule.reduce_completing_frag, align 1
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.cl = tail call ptr @xstrcasestr(ptr noundef %i.ck, ptr noundef nonnull @.str.173) #15 ; 2 uses
  %.not342 = icmp eq ptr %i.cl, null
  br i1 %.not342, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.co = tail call ptr @xstrcasestr(ptr noundef %i.cn, ptr noundef nonnull @.str.174) #15 ; 2 uses
  %.not343 = icmp eq ptr %i.co, null
  br i1 %.not343, label %.sink.split1758, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 14
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.as
  %.sink = phi ptr [ %i.cp, %bb.au ], [ %i.cm, %bb.as ]
  %i.cq = tail call i64 @strtol(ptr noundef nonnull captures(none) %.sink, ptr noundef null, i32 noundef 10) #15
  %storemerge = trunc i64 %i.cq to i32            ; 3 uses
  store i32 %storemerge, ptr @_schedule.defer_rpc_cnt, align 4
  %i.cr = icmp slt i32 %storemerge, 0
  br i1 %i.cr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.cs = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.175, i32 noundef %storemerge) #15 ; 0 uses
  br label %.sink.split1758

.sink.split1758:                                  ; preds = %bb.at, %bb.aw
  store i32 0, ptr @_schedule.defer_rpc_cnt, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split1758, %bb.av
  %i.ct = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8 ; 2 uses
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.cv = tail call ptr @xstrcasestr(ptr noundef %i.cu, ptr noundef nonnull @.str.176) #15 ; 2 uses
  %.not344 = icmp eq ptr %i.cv, null
  br i1 %.not344, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cw = lshr i16 %i.ct, 1
  %i.cx = zext nneg i16 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 15
  %i.cz = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.cy, ptr noundef null, i32 noundef 10) #15, !inline_history !34
  %i.da = trunc i64 %i.cz to i32                  ; 4 uses
  store i32 %i.da, ptr @_schedule.sched_timeout, align 4
  %i.db = icmp slt i32 %i.da, 1
  %i.dc = icmp sgt i32 %i.da, %i.cx
  %or.cond = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %or.cond, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.dd = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.177, i32 noundef %i.da) #15 ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ax, %bb.az
  %i.de = icmp ult i16 %i.ct, 4
  %i.df = select i1 %i.de, i32 1, i32 2
  store i32 %i.df, ptr @_schedule.sched_timeout, align 4
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ay, %bb.ba
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.dh = tail call ptr @xstrcasestr(ptr noundef %i.dg, ptr noundef nonnull @.str.178) #15 ; 2 uses
  %.not345 = icmp eq ptr %i.dh, null
  br i1 %.not345, label %.sink.split1759, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 15
  %i.dj = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.di, ptr noundef null, i32 noundef 10) #15, !inline_history !34
  %i.dk = trunc i64 %i.dj to i32                  ; 4 uses
  store i32 %i.dk, ptr @sched_interval, align 4
  %i.dl = icmp eq i32 %i.dk, -1
  br i1 %i.dl, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.dm = tail call i32 @get_sched_log_level() #15
  %i.dn = icmp sgt i32 %i.dm, 4
  br i1 %i.dn, label %bb.be, label %.critedge

bb.be:                                            ; preds = %bb.bd
  tail call void (i32, ptr, ...) @sched_log_var(i32 noundef 5, ptr noundef nonnull @.str.179) #15
  br label %.critedge

bb.bf:                                            ; preds = %bb.bc
  %i.do = icmp slt i32 %i.dk, 0
  br i1 %i.do, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.dp = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.180, i32 noundef %i.dk) #15 ; 0 uses
  br label %.sink.split1759

.sink.split1759:                                  ; preds = %bb.bb, %bb.bg
  store i32 60, ptr @sched_interval, align 4
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split1759, %bb.bf
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.dr = tail call ptr @xstrcasestr(ptr noundef %i.dq, ptr noundef nonnull @.str.181) #15 ; 2 uses
  %.not346 = icmp eq ptr %i.dr, null
  br i1 %.not346, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 19
  %i.dt = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ds, ptr noundef null, i32 noundef 10) #15, !inline_history !34
  %i.du = trunc i64 %i.dt to i32                  ; 3 uses
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.dw = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.182, i32 noundef %i.du) #15 ; 0 uses
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bi
  store i32 %i.du, ptr @sched_min_interval, align 4
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bh
  store i32 2, ptr @sched_min_interval, align 4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bj, %bb.bk, %bb.bl
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.dy = tail call ptr @xstrcasestr(ptr noundef %i.dx, ptr noundef nonnull @.str.183) #15 ; 2 uses
  %.not347 = icmp eq ptr %i.dy, null
  br i1 %.not347, label %.sink.split1760, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 20
  %i.ea = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.dz, ptr noundef null, i32 noundef 10) #15, !inline_history !34
  %i.eb = trunc i64 %i.ea to i32                  ; 3 uses
  store i32 %i.eb, ptr @_schedule.sched_max_job_start, align 4
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ed = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.184, i32 noundef %i.eb) #15 ; 0 uses
  br label %.sink.split1760

.sink.split1760:                                  ; preds = %bb.bm, %bb.bo
  store i32 0, ptr @_schedule.sched_max_job_start, align 4
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split1760, %bb.bn
  %i.ee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.ef = tail call ptr @xstrcasestr(ptr noundef %i.ee, ptr noundef nonnull @.str.138) #15
  %.not348 = icmp ne ptr %i.ef, null
  store i1 %.not348, ptr @_schedule.ignore_prefer_val, align 1
  %i.eg = load i64, ptr @slurm_conf, align 8
  store i64 %i.eg, ptr @_schedule.sched_update, align 8
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8 ; 2 uses
  %.not349 = icmp eq ptr %i.eh, null
  br i1 %.not349, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %char0 = load i8, ptr %i.eh, align 1
  %.not350 = icmp eq i8 %char0, 0
  br i1 %.not350, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ei = tail call i32 @get_log_level() #15
  %i.ej = icmp sgt i32 %i.ei, 2
  br i1 %i.ej, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.185, ptr noundef %i.ek) #15
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.bq, %bb.bp, %bb.b
  %i.el = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 480)) #15 ; 2 uses
  %.not351 = icmp eq i32 %i.el, 0
  br i1 %.not351, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.em = tail call ptr @__errno_location() #16
  store i32 %i.el, ptr %i.em, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._schedule) #17
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.en = load i32, ptr @_schedule.defer_rpc_cnt, align 4 ; 2 uses
  %i.eo = icmp slt i32 %i.en, 1
  %i.ep = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 324), align 4
  %.not352 = icmp slt i32 %i.ep, %i.en
  %or.cond434 = select i1 %i.eo, i1 true, i1 %.not352
  br i1 %or.cond434, label %bb.ca, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.eq = tail call i32 @get_sched_log_level() #15
  %i.er = icmp sgt i32 %i.eq, 4
  br i1 %i.er, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  tail call void (i32, ptr, ...) @sched_log_var(i32 noundef 5, ptr noundef nonnull @.str.186) #15
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %i.es = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 480)) #15 ; 2 uses
  %.not433 = icmp eq i32 %i.es, 0
  br i1 %.not433, label %.critedge, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.et = tail call ptr @__errno_location() #16
  store i32 %i.es, ptr %i.et, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._schedule) #17
  unreachable

bb.ca:                                            ; preds = %bb.bv
  %i.eu = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 480)) #15 ; 2 uses
  %.not353 = icmp eq i32 %i.eu, 0
  br i1 %.not353, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ev = tail call ptr @__errno_location() #16
  store i32 %i.eu, ptr %i.ev, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._schedule) #17
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.ew = tail call zeroext i1 @fed_mgr_sibs_synced() #15
  br i1 %i.ew, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void (ptr, ...) @sched_info(ptr noundef nonnull @.str.187) #15
  br label %.critedge

bb.ce:                                            ; preds = %bb.cc
  tail call void @lock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._schedule.job_write_lock) #15
  %i.ex = tail call i64 @time(ptr noundef null) #15 ; 17 uses
  %i.ey = tail call { i64, i64 } @timespec_now() #15 ; 2 uses
  %i.ez = extractvalue { i64, i64 } %i.ey, 0
  %i.fa = extractvalue { i64, i64 } %i.ey, 1
  store i64 %i.ez, ptr %3, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.fa, ptr %.sroa.436.0..sroa_idx, align 8
  %.b320 = load i1, ptr @_schedule.reduce_completing_frag, align 1
  br i1 %.b320, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.fb = load ptr, ptr @job_list, align 8
  %i.fc = icmp eq ptr %i.fb, null
  %i.fd = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 280), align 8
  %i.fe = icmp eq i16 %i.fd, 0
  %or.cond.i = select i1 %i.fc, i1 true, i1 %i.fe
  br i1 %or.cond.i, label %job_is_completing.exit.thread, label %job_is_completing.exit

job_is_completing.exit.thread:                    ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.ci

job_is_completing.exit:                           ; preds = %bb.cf
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fg = tail call i64 @time(ptr noundef null) #15
  %i.fh = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 280), align 8
  %i.fi = zext i16 %i.fh to i64
  %i.fj = sub nsw i64 %i.fg, %i.fi
  store i64 %i.fj, ptr %i.ff, align 8
  %i.fk = load ptr, ptr @job_list, align 8
  %i.fl = call i32 @list_for_each(ptr noundef %i.fk, ptr noundef nonnull @_foreach_job_is_completing, ptr noundef nonnull %2) #15 ; 0 uses
  %i.fm = load i8, ptr %2, align 8, !range !8, !noundef !9
  %i.fn = trunc nuw i8 %i.fm to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %i.fn, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %job_is_completing.exit
  call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._schedule.job_write_lock) #15
  %i.fo = call i32 @get_sched_log_level() #15
  %i.fp = icmp sgt i32 %i.fo, 4
  br i1 %i.fp, label %bb.ch, label %.critedge

bb.ch:                                            ; preds = %bb.cg
  call void (i32, ptr, ...) @sched_log_var(i32 noundef 5, ptr noundef nonnull @.str.188) #15
  br label %.critedge

bb.ci:                                            ; preds = %job_is_completing.exit.thread, %job_is_completing.exit, %bb.ce
  %i.fq = load ptr, ptr @part_list, align 8
  %i.fr = call i32 @list_for_each(ptr noundef %i.fq, ptr noundef nonnull @_foreach_setup_part_sched, ptr noundef null) #15 ; 0 uses
  %i.fs = load ptr, ptr @resv_list, align 8
  %i.ft = call i32 @list_for_each(ptr noundef %i.fs, ptr noundef nonnull @_foreach_setup_resv_sched, ptr noundef null) #15 ; 0 uses
  %i.fu = load ptr, ptr @avail_node_bitmap, align 8
  %i.fv = call ptr @bit_copy(ptr noundef %i.fu) #15
  %.b319 = load i1, ptr @_schedule.reduce_completing_frag, align 1
  br i1 %.b319, label %bb.cj, label %bb.cs

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.fw = load i32, ptr @node_record_count, align 4
  %i.fx = sext i32 %i.fw to i64
  %i.fy = call ptr @bit_alloc(i64 noundef %i.fx) #15 ; 3 uses
  store ptr %i.fy, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %1, align 8
  store ptr %i.fy, ptr %i.fz, align 8
  %i.ga = load ptr, ptr @job_list, align 8
  %i.gb = icmp eq ptr %i.ga, null
  %i.gc = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 280), align 8
  %i.gd = icmp eq i16 %i.gc, 0
  %or.cond.i457 = select i1 %i.gb, i1 true, i1 %i.gd
  br i1 %or.cond.i457, label %job_is_completing.exit459.thread, label %job_is_completing.exit459

job_is_completing.exit459.thread:                 ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.cp

job_is_completing.exit459:                        ; preds = %bb.cj
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gf = call i64 @time(ptr noundef null) #15
  %i.gg = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 280), align 8
  %i.gh = zext i16 %i.gg to i64
  %i.gi = sub nsw i64 %i.gf, %i.gh
  store i64 %i.gi, ptr %i.ge, align 8
  %i.gj = load ptr, ptr @job_list, align 8
  %i.gk = call i32 @list_for_each(ptr noundef %i.gj, ptr noundef nonnull @_foreach_job_is_completing, ptr noundef nonnull %1) #15 ; 0 uses
  %i.gl = load i8, ptr %1, align 8, !range !8, !noundef !9
  %i.gm = trunc nuw i8 %i.gl to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %.pre1437 = load ptr, ptr %i.c, align 8         ; 2 uses
  br i1 %i.gm, label %bb.ck, label %bb.cp

bb.ck:                                            ; preds = %job_is_completing.exit459
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.gn = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr %.pre1437, ptr %i.gn, align 8
  %i.go = load ptr, ptr @part_list, align 8
  %i.gp = call i32 @list_for_each(ptr noundef %i.go, ptr noundef nonnull @_foreach_part_reduce_frag, ptr noundef nonnull %6) #15 ; 0 uses
  %i.gq = load ptr, ptr %6, align 8
  %.not354 = icmp eq ptr %i.gq, null
  br i1 %.not354, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.gr = call i32 @get_sched_log_level() #15
  %i.gs = icmp sgt i32 %i.gr, 4
  br i1 %i.gs, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.gt = load ptr, ptr %6, align 8
  call void (i32, ptr, ...) @sched_log_var(i32 noundef 5, ptr noundef nonnull @.str.189, ptr noundef %i.gt) #15
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  call void @slurm_xfree(ptr noundef nonnull %6) #15
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %.pre = load ptr, ptr %i.c, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %job_is_completing.exit459.thread, %job_is_completing.exit459, %bb.co
  %i.gu = phi ptr [ %i.fy, %job_is_completing.exit459.thread ], [ %.pre1437, %job_is_completing.exit459 ], [ %.pre, %bb.co ]
  %.not355 = icmp eq ptr %i.gu, null
  br i1 %.not355, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @slurm_bit_free(ptr noundef nonnull %i.c) #15
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ci, %bb.cr
  %i.gv = call i32 @get_sched_log_level() #15
  %i.gw = icmp sgt i32 %i.gv, 4
  br i1 %i.gw, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.gx = select i1 %0, ptr @.str.191, ptr @.str.192
  call void (i32, ptr, ...) @sched_log_var(i32 noundef 5, ptr noundef nonnull @.str.190, ptr noundef nonnull %i.gx) #15
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.gy = call ptr @build_job_queue(i1 noundef zeroext false, i1 noundef zeroext false) ; 5 uses
  %i.gz = call i32 @list_count(ptr noundef %i.gy) #15
  store i32 %i.gz, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 56), align 8
  call void @list_sort(ptr noundef %i.gy, ptr noundef nonnull @sort_job_queue2) #15
  store ptr null, ptr %i.b, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.cv

bb.cv:                                            ; preds = %.backedge, %bb.cu
  %i.hb = phi ptr [ null, %bb.cu ], [ %.pre1438, %.backedge ] ; 2 uses
  %.0236 = phi i32 [ 0, %bb.cu ], [ %.0236.be, %.backedge ] ; 5 uses
  %.0235 = phi ptr [ null, %bb.cu ], [ %.0235.be, %.backedge ] ; 30 uses
  %.0233 = phi i32 [ 0, %bb.cu ], [ %.0233.be, %.backedge ] ; 31 uses
  %.0229 = phi i64 [ %i.ex, %bb.cu ], [ %.0229.be, %.backedge ] ; 5 uses
  %.0224 = phi ptr [ null, %bb.cu ], [ %.0224.be, %.backedge ] ; 6 uses
  %.0219 = phi ptr [ null, %bb.cu ], [ %.0219.be, %.backedge ] ; 5 uses
  %.0214 = phi ptr [ null, %bb.cu ], [ %.0214.be, %.backedge ] ; 5 uses
  %.0210 = phi i8 [ 0, %bb.cu ], [ %.0210.be, %.backedge ] ; 5 uses
  %.0200 = phi i1 [ false, %bb.cu ], [ %.0200.be, %.backedge ] ; 5 uses
  %.0192 = phi i32 [ 0, %bb.cu ], [ %.0192.be, %.backedge ] ; 5 uses
  %.0185 = phi i32 [ 0, %bb.cu ], [ %.0185.be, %.backedge ] ; 7 uses
  %.not356 = icmp eq ptr %i.hb, null
  br i1 %.not356, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @job_resv_clear_magnetic_flag(ptr noundef nonnull %i.hb) #15
  %i.hc = load ptr, ptr %i.b, align 8
  call void @fill_array_reasons(ptr noundef %i.hc, ptr noundef %.0224)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.hd = call ptr @list_pop(ptr noundef %i.gy) #15 ; 6 uses
  store ptr %i.hd, ptr %i.a, align 8
  %.not357 = icmp eq ptr %i.hd, null
  br i1 %.not357, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.he = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 32), align 8
  %i.hf = add i32 %i.he, 1
  store i32 %i.hf, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 32), align 8
  br label %.loopexit545

bb.cz:                                            ; preds = %bb.cx
  %i.hg = load i32, ptr %i.hd, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8            ; 4 uses
  store ptr %i.hi, ptr %i.b, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8            ; 8 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 84
  %i.hm = load i32, ptr %i.hl, align 4
  %i.hn = icmp eq i32 %i.hg, -2
  %i.ho = icmp ne i32 %i.hm, -2
  %or.cond3 = and i1 %i.hn, %i.ho
  br i1 %or.cond3, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %bb.cz
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hi, i64 80
  %i.hq = load i32, ptr %i.hp, align 8
  %i.hr = call ptr @find_job_record(i32 noundef %i.hq) #15 ; 4 uses
  store ptr %i.hr, ptr %i.b, align 8
  %i.hs = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store ptr %i.hr, ptr %i.ht, align 8
  %.not358 = icmp eq ptr %i.hr, null
  br i1 %.not358, label %bb.db, label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.cz, %thread-pre-split
  %i.hu = phi ptr [ %i.hr, %thread-pre-split ], [ %i.hi, %bb.cz ] ; 7 uses
  %i.hv = phi ptr [ %i.hs, %thread-pre-split ], [ %i.hd, %bb.cz ] ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 512
  %i.hx = load i32, ptr %i.hw, align 8
  %i.hy = and i32 %i.hx, 255
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %bb.da, label %bb.db

bb.da:                                            ; preds = %thread-pre-split.thread
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hu, i64 832
  %i.ib = load i32, ptr %i.ia, align 8
  %.not359 = icmp eq i32 %i.ib, 0
  br i1 %.not359, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da, %thread-pre-split.thread, %thread-pre-split
  call void @slurm_xfree(ptr noundef nonnull %i.a) #15
  br label %.backedge

.backedge:                                        ; preds = %bb.iw, %bb.ix, %bb.ja, %bb.iz, %bb.iy, %bb.ec, %bb.gw, %bb.gv, %bb.gr, %bb.gj, %bb.fb, %bb.ed, %.split, %bb.kh, %bb.kg, %bb.kc, %bb.id, %bb.ie, %bb.fu, %bb.fv, %bb.fg, %bb.fh, %bb.db, %_job_runnable_test3.exit, %bb.el, %bb.fr, %bb.hc, %bb.dn, %bb.ei, %bb.gh
  %.0236.be = phi i32 [ %.0236, %bb.dn ], [ %.2238, %bb.kc ], [ %.0236, %_job_runnable_test3.exit ], [ %.1237985, %bb.ei ], [ %.1237985, %bb.el ], [ %.2238, %bb.gh ], [ %.3239521, %bb.kg ], [ %.2238, %bb.hc ], [ %.2238, %bb.fu ], [ %.2238, %bb.id ], [ %.2238, %bb.fr ], [ %.2238, %bb.fg ], [ %.0236, %bb.db ], [ %.2238, %bb.fh ], [ %.2238, %bb.fv ], [ %.2238, %bb.ie ], [ %.3239521, %bb.kh ], [ %.2238, %.split ], [ %.2238, %bb.iw ], [ %.1237985, %bb.ec ], [ %.1237985, %bb.ed ], [ %.2238, %bb.gj ], [ %.2238, %bb.gr ], [ %.2238, %bb.gv ], [ %.2238, %bb.gw ], [ %.2238, %bb.fb ], [ %.2238, %bb.iy ], [ %.2238, %bb.iz ], [ %.2238, %bb.ja ], [ %.2238, %bb.ix ]
  %.0235.be = phi ptr [ %.0235, %bb.dn ], [ %.0235, %bb.kc ], [ %.0235, %_job_runnable_test3.exit ], [ %.0235, %bb.ei ], [ %i.ni, %bb.el ], [ %.0235, %bb.gh ], [ %.0235, %bb.kg ], [ %.0235, %bb.hc ], [ %.0235, %bb.fu ], [ %.0235, %bb.id ], [ %.0235, %bb.fr ], [ %.0235, %bb.fg ], [ %.0235, %bb.db ], [ %.0235, %bb.fh ], [ %.0235, %bb.fv ], [ %.0235, %bb.ie ], [ %.0235, %bb.kh ], [ %.0235, %.split ], [ %.0235, %bb.ed ], [ %.0235, %bb.fb ], [ %.0235, %bb.gj ], [ %.0235, %bb.gr ], [ %.0235, %bb.gv ], [ %.0235, %bb.gw ], [ %.0235, %bb.ec ], [ %.0235, %bb.iy ], [ %.0235, %bb.iz ], [ %.0235, %bb.ja ], [ %.0235, %bb.ix ], [ %.0235, %bb.iw ]
  %.0233.be = phi i32 [ %.0233, %bb.dn ], [ %.0233, %bb.kc ], [ %.0233, %_job_runnable_test3.exit ], [ %.0233, %bb.ei ], [ %.0233, %bb.el ], [ %.0233, %bb.gh ], [ %.0233, %bb.kg ], [ %.0233, %bb.hc ], [ %.0233, %bb.fu ], [ %.1234, %bb.id ], [ %.0233, %bb.fr ], [ %.0233, %bb.fg ], [ %.0233, %bb.db ], [ %.0233, %bb.fh ], [ %.0233, %bb.fv ], [ %.1234, %bb.ie ], [ %.0233, %bb.kh ], [ %.0233, %.split ], [ %.0233, %bb.ed ], [ %.0233, %bb.fb ], [ %.0233, %bb.gj ], [ %.0233, %bb.gr ], [ %.0233, %bb.gv ], [ %.0233, %bb.gw ], [ %.0233, %bb.ec ], [ %.0233, %bb.iy ], [ %.0233, %bb.iz ], [ %.0233, %bb.ja ], [ %.0233, %bb.ix ], [ %.0233, %bb.iw ]
  %.0229.be = phi i64 [ %.0229, %bb.dn ], [ %.1230., %bb.kc ], [ %.0229, %_job_runnable_test3.exit ], [ %.1230986, %bb.ei ], [ %.1230986, %bb.el ], [ %.1230986, %bb.gh ], [ %.2231523, %bb.kg ], [ %.1230986, %bb.hc ], [ %.1230986, %bb.fu ], [ %.1230., %bb.id ], [ %.1230986, %bb.fr ], [ %.1230986, %bb.fg ], [ %.0229, %bb.db ], [ %.1230986, %bb.fh ], [ %.1230986, %bb.fv ], [ %.1230., %bb.ie ], [ %.2231523, %bb.kh ], [ %.1230., %.split ], [ %.1230., %bb.iw ], [ %.1230986, %bb.ec ], [ %.1230986, %bb.ed ], [ %.1230986, %bb.gj ], [ %.1230986, %bb.gr ], [ %.1230986, %bb.gv ], [ %.1230986, %bb.gw ], [ %.1230986, %bb.fb ], [ %.1230., %bb.iy ], [ %.1230., %bb.iz ], [ %.1230., %bb.ja ], [ %.1230., %bb.ix ]
  %.0224.be = phi ptr [ %.0224, %bb.dn ], [ %.2226, %bb.kc ], [ %.0224, %_job_runnable_test3.exit ], [ %.2226, %bb.ei ], [ %.2226, %bb.el ], [ %.2226, %bb.gh ], [ %.4228525, %bb.kg ], [ %.2226, %bb.hc ], [ %.2226, %bb.fu ], [ %.3227, %bb.id ], [ %.2226, %bb.fr ], [ %.2226, %bb.fg ], [ %.0224, %bb.db ], [ %.2226, %bb.fh ], [ %.2226, %bb.fv ], [ %.3227, %bb.ie ], [ %.4228525, %bb.kh ], [ %.2226, %.split ], [ null, %bb.iw ], [ %.1225987, %bb.ec ], [ %i.lp, %bb.ed ], [ %.2226, %bb.gj ], [ %.2226, %bb.gr ], [ %.2226, %bb.gv ], [ %.2226, %bb.gw ], [ %.2226, %bb.fb ], [ null, %bb.iy ], [ null, %bb.iz ], [ null, %bb.ja ], [ null, %bb.ix ]
  %.0219.be = phi ptr [ %.0219, %bb.dn ], [ %.2221, %bb.kc ], [ %.0219, %_job_runnable_test3.exit ], [ %.2221, %bb.ei ], [ %.2221, %bb.el ], [ %.2221, %bb.gh ], [ %.4223527, %bb.kg ], [ %.2221, %bb.hc ], [ %.2221, %bb.fu ], [ %.3222, %bb.id ], [ %.2221, %bb.fr ], [ %.2221, %bb.fg ], [ %.0219, %bb.db ], [ %.2221, %bb.fh ], [ %.2221, %bb.fv ], [ %.3222, %bb.ie ], [ %.4223527, %bb.kh ], [ %.2221, %.split ], [ null, %bb.iw ], [ %i.hk, %bb.ec ], [ %i.hk, %bb.ed ], [ %.2221, %bb.gj ], [ %.2221, %bb.gr ], [ %.2221, %bb.gv ], [ %.2221, %bb.gw ], [ %.2221, %bb.fb ], [ null, %bb.iy ], [ null, %bb.iz ], [ null, %bb.ja ], [ null, %bb.ix ]
  %.0214.be = phi ptr [ %.0214, %bb.dn ], [ %.2216, %bb.kc ], [ %.0214, %_job_runnable_test3.exit ], [ %.2216, %bb.ei ], [ %.2216, %bb.el ], [ %.2216, %bb.gh ], [ %.4218529, %bb.kg ], [ %.2216, %bb.hc ], [ %.2216, %bb.fu ], [ %.3217, %bb.id ], [ %.2216, %bb.fr ], [ %.2216, %bb.fg ], [ %.0214, %bb.db ], [ %.2216, %bb.fh ], [ %.2216, %bb.fv ], [ %.3217, %bb.ie ], [ %.4218529, %bb.kh ], [ %.2216, %.split ], [ null, %bb.iw ], [ %.1215989, %bb.ec ], [ %i.mf, %bb.ed ], [ %.2216, %bb.gj ], [ %.2216, %bb.gr ], [ %.2216, %bb.gv ], [ %.2216, %bb.gw ], [ %.2216, %bb.fb ], [ null, %bb.iy ], [ null, %bb.iz ], [ null, %bb.ja ], [ null, %bb.ix ]
  %.0210.be = phi i8 [ %.0210, %bb.dn ], [ %.2212, %bb.kc ], [ %.0210, %_job_runnable_test3.exit ], [ %.2212, %bb.ei ], [ %.2212, %bb.el ], [ %.2212, %bb.gh ], [ %.3213531, %bb.kg ], [ %.2212, %bb.hc ], [ %.2212, %bb.fu ], [ %.2212, %bb.id ], [ %.2212, %bb.fr ], [ %.2212, %bb.fg ], [ %.0210, %bb.db ], [ %.2212, %bb.fh ], [ %.2212, %bb.fv ], [ %.2212, %bb.ie ], [ %.3213531, %bb.kh ], [ %.2212, %.split ], [ %.2212, %bb.iw ], [ %.1211990, %bb.ec ], [ %i.id, %bb.ed ], [ %.2212, %bb.gj ], [ %.2212, %bb.gr ], [ %.2212, %bb.gv ], [ %.2212, %bb.gw ], [ %.2212, %bb.fb ], [ %.2212, %bb.iy ], [ %.2212, %bb.iz ], [ %.2212, %bb.ja ], [ %.2212, %bb.ix ]
  %.0200.be = phi i1 [ %.0200, %bb.dn ], [ %.3203, %bb.kc ], [ %.0200, %_job_runnable_test3.exit ], [ %.1201991, %bb.ei ], [ %.1201991, %bb.el ], [ %.3203, %bb.gh ], [ %.4204533, %bb.kg ], [ %.3203, %bb.hc ], [ true, %bb.fu ], [ %.3203, %bb.id ], [ %.1201991, %bb.fr ], [ %.2202, %bb.fg ], [ %.0200, %bb.db ], [ %.2202, %bb.fh ], [ true, %bb.fv ], [ %.3203, %bb.ie ], [ %.4204533, %bb.kh ], [ %.3203, %.split ], [ %.3203, %bb.iw ], [ %.1201991, %bb.ec ], [ %.1201991, %bb.ed ], [ %.3203, %bb.gj ], [ %.3203, %bb.gr ], [ %.3203, %bb.gv ], [ %.3203, %bb.gw ], [ %.1201991, %bb.fb ], [ %.3203, %bb.iy ], [ %.3203, %bb.iz ], [ %.3203, %bb.ja ], [ %.3203, %bb.ix ]
  %.0192.be = phi i32 [ %.0192, %bb.dn ], [ %.2194, %bb.kc ], [ %.0192, %_job_runnable_test3.exit ], [ %.1193992, %bb.ei ], [ %.1193992, %bb.el ], [ %.1193992, %bb.gh ], [ %.3195536, %bb.kg ], [ %.1193992, %bb.hc ], [ %.1193992, %bb.fu ], [ %.2194, %bb.id ], [ %.1193992, %bb.fr ], [ %.1193992, %bb.fg ], [ %.0192, %bb.db ], [ %.1193992, %bb.fh ], [ %.1193992, %bb.fv ], [ %.2194, %bb.ie ], [ %.3195536, %bb.kh ], [ %.2194, %.split ], [ %.2194, %bb.iw ], [ %.1193992, %bb.ec ], [ %.1193992, %bb.ed ], [ %.1193992, %bb.gj ], [ %.1193992, %bb.gr ], [ %.1193992, %bb.gv ], [ %.1193992, %bb.gw ], [ %.1193992, %bb.fb ], [ %.2194, %bb.iy ], [ %.2194, %bb.iz ], [ %.2194, %bb.ja ], [ %.2194, %bb.ix ]
  %.0185.be = phi i32 [ %.0185, %bb.dn ], [ %.1186993, %bb.kc ], [ %.0185, %_job_runnable_test3.exit ], [ %.1186993, %bb.ei ], [ %.1186993, %bb.el ], [ %.1186993, %bb.gh ], [ %.2538, %bb.kg ], [ %.1186993, %bb.hc ], [ %.1186993, %bb.fu ], [ %.1186993, %bb.id ], [ %.1186993, %bb.fr ], [ %.1186993, %bb.fg ], [ %.0185, %bb.db ], [ %.1186993, %bb.fh ], [ %.1186993, %bb.fv ], [ %.1186993, %bb.ie ], [ %.2538, %bb.kh ], [ %.1186993, %.split ], [ %i.ace, %bb.iw ], [ %.1186993, %bb.ec ], [ %.1186993, %bb.ed ], [ %.1186993, %bb.gj ], [ %.1186993, %bb.gr ], [ %.1186993, %bb.gv ], [ %.1186993, %bb.gw ], [ %.1186993, %bb.fb ], [ %i.ace, %bb.iy ], [ %i.ace, %bb.iz ], [ %i.ace, %bb.ja ], [ %i.ace, %bb.ix ]
  %.pre1438 = load ptr, ptr %i.b, align 8
  br label %bb.cv, !llvm.loop !36

bb.dc:                                            ; preds = %bb.da
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 48
  %i.id = load i8, ptr %i.ic, align 8, !range !8, !noundef !9 ; 6 uses
  %i.ie = trunc nuw i8 %i.id to i1                ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hu, i64 256 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8            ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 216
  %..i = select i1 %i.ie, i64 360, i64 208        ; 2 uses
  %.13.i = select i1 %i.ie, i64 352, i64 192      ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 %..i
  %i.ij = load ptr, ptr %i.ii, align 8
  store ptr %i.ij, ptr %i.ih, align 8
  %i.ik = load ptr, ptr %i.if, align 8            ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.13.i
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 200
  store ptr %i.im, ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.hu, i64 920
  %i.ip = load ptr, ptr %i.io, align 8
  %.not360 = icmp eq ptr %i.ip, null
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  %i.ir = load ptr, ptr %i.iq, align 8            ; 5 uses
  %.not.i460 = icmp eq ptr %i.ir, null            ; 2 uses
  br i1 %.not360, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  br i1 %.not.i460, label %job_queue_rec_resv_list.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.is = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.it = load ptr, ptr %i.is, align 8            ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 936
  store ptr %i.ir, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 272
  %i.iw = load i32, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 912
  store i32 %i.iw, ptr %i.ix, align 8
  br label %job_queue_rec_resv_list.exit

bb.df:                                            ; preds = %bb.dc
  br i1 %.not.i460, label %job_queue_rec_resv_list.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8            ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 936 ; 2 uses
  store ptr %i.ir, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ir, i64 200
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = call ptr @xstrdup(ptr noundef %i.jc) #15
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 928
  store ptr %i.jd, ptr %i.je, align 8
  %i.jf = load ptr, ptr %i.ja, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 272
  %i.jh = load i32, ptr %i.jg, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iz, i64 912
  store i32 %i.jh, ptr %i.ji, align 8
  %i.jj = load ptr, ptr %i.iy, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 144 ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8
  %i.jm = or i64 %i.jl, 1073741824
  store i64 %i.jm, ptr %i.jk, align 8
  %.pre1439 = load ptr, ptr %i.b, align 8
  br label %job_queue_rec_resv_list.exit

job_queue_rec_resv_list.exit:                     ; preds = %bb.dg, %bb.df, %bb.de, %bb.dd
  %i.jn = phi ptr [ %.pre1439, %bb.dg ], [ %i.hu, %bb.df ], [ %i.hu, %bb.de ], [ %i.hu, %bb.dd ] ; 6 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 936
  %i.jp = load ptr, ptr %i.jo, align 8            ; 3 uses
  %.not.i461 = icmp eq ptr %i.jp, null
  br i1 %.not.i461, label %bb.dl, label %bb.dh

bb.dh:                                            ; preds = %job_queue_rec_resv_list.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 208
  %i.jr = load ptr, ptr %i.jq, align 8            ; 2 uses
  %.not14.i = icmp eq ptr %i.jr, null
  br i1 %.not14.i, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 144
  %i.jt = load i64, ptr %i.js, align 8
  %i.ju = and i64 %i.jt, 33554432
  %i.jv = icmp eq i64 %i.ju, 0
  %i.jw = icmp ne ptr %i.hk, null
  %or.cond.i462 = and i1 %i.jw, %i.jv
  br i1 %or.cond.i462, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hk, i64 232
  %i.jy = load ptr, ptr %i.jx, align 8            ; 2 uses
  %.not15.i = icmp eq ptr %i.jy, null
  br i1 %.not15.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.jz = call i32 @bit_overlap(ptr noundef nonnull %i.jr, ptr noundef nonnull %i.jy) #15
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jn, i64 700
  %i.kb = load i32, ptr %i.ka, align 4
  %i.kc = icmp ult i32 %i.jz, %i.kb
  br i1 %i.kc, label %_job_runnable_test3.exit, label %._crit_edge1440

._crit_edge1440:                                  ; preds = %bb.dk
  %.pre1441 = load ptr, ptr %i.b, align 8
  br label %bb.dl

_job_runnable_test3.exit:                         ; preds = %bb.dk
  call void @slurm_xfree(ptr noundef nonnull %i.a) #15
  br label %.backedge

bb.dl:                                            ; preds = %._crit_edge1440, %job_queue_rec_resv_list.exit, %bb.dh, %bb.di, %bb.dj
  %i.kd = phi ptr [ %.pre1441, %._crit_edge1440 ], [ %i.jn, %job_queue_rec_resv_list.exit ], [ %i.jn, %bb.dh ], [ %i.jn, %bb.di ], [ %i.jn, %bb.dj ] ; 4 uses
  %i.ke = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  %i.kg = load ptr, ptr %i.kf, align 8            ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 880
  store ptr %i.kg, ptr %i.kh, align 8
  %.not361 = icmp eq ptr %i.kg, null
  br i1 %.not361, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.kj = load i32, ptr %i.ki, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kd, i64 864
  store i32 %i.kj, ptr %i.kk, align 8
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kd, i64 776
  store ptr %i.hk, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kn = load i32, ptr %i.km, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kd, i64 832
  store i32 %i.kn, ptr %i.ko, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.a) #15
  %i.kp = call i64 @time(ptr noundef null) #15
  %i.kq = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 520
  store i64 %i.kp, ptr %i.kr, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 816
  %i.kt = load i8, ptr %i.ks, align 8, !range !8, !noundef !9
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %.backedge, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 408
  %i.kw = load i32, ptr %i.kv, align 8
  %.not362 = icmp eq i32 %i.kw, 0
  br i1 %.not362, label %bb.dp, label %.thread508

bb.dp:                                            ; preds = %bb.do
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kq, i64 88
  %i.ky = load ptr, ptr %i.kx, align 8
  %.not363 = icmp eq ptr %i.ky, null
  br i1 %.not363, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kq, i64 84
  %i.la = load i32, ptr %i.kz, align 4
  %i.lb = icmp eq i32 %i.la, -2
  br i1 %i.lb, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dq, %bb.dr
  %.0232 = phi i1 [ false, %bb.dr ], [ true, %bb.dq ]
  %i.lc = call i64 @time(ptr noundef null) #15
  %i.ld = sub nsw i64 %i.lc, %i.ex
  %i.le = load i32, ptr @_schedule.sched_timeout, align 4
  %i.lf = sext i32 %i.le to i64
  %.not364984 = icmp slt i64 %i.ld, %i.lf
  br i1 %.not364984, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ds, %bb.jb
  %.1186.lcssa = phi i32 [ %i.ace, %bb.jb ], [ %.0185, %bb.ds ]
  %i.lg = call i32 @get_sched_log_level() #15
  %i.lh = icmp sgt i32 %i.lg, 4
  br i1 %i.lh, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %._crit_edge
  call void (i32, ptr, ...) @sched_log_var(i32 noundef 5, ptr noundef nonnull @.str.193) #15
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %._crit_edge
  %i.li = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 52), align 4
  %i.lj = add i32 %i.li, 1
  store i32 %i.lj, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 52), align 4
  br label %.loopexit545

.lr.ph:                                           ; preds = %bb.ds, %bb.jb
  %.1186993 = phi i32 [ %i.ace, %bb.jb ], [ %.0185, %bb.ds ] ; 30 uses
  %.1193992 = phi i32 [ %.2194, %bb.jb ], [ %.0192, %bb.ds ] ; 19 uses
  %.1201991 = phi i1 [ %.3203, %bb.jb ], [ %.0200, %bb.ds ] ; 9 uses
  %.1211990 = phi i8 [ %.2212, %bb.jb ], [ %.0210, %bb.ds ] ; 3 uses
  %.1215989 = phi ptr [ null, %bb.jb ], [ %.0214, %bb.ds ] ; 3 uses
  %.1220988 = phi ptr [ null, %bb.jb ], [ %.0219, %bb.ds ] ; 2 uses
  %.1225987 = phi ptr [ null, %bb.jb ], [ %.0224, %bb.ds ] ; 4 uses
  %.1230986 = phi i64 [ %.1230., %bb.jb ], [ %.0229, %bb.ds ] ; 19 uses
  %.1237985 = phi i32 [ %.2238, %bb.jb ], [ %.0236, %bb.ds ] ; 7 uses
  %i.lk = load i32, ptr @_schedule.sched_max_job_start, align 4 ; 2 uses
  %.not365 = icmp eq i32 %i.lk, 0
  %.not366 = icmp slt i32 %.1186993, %i.lk
  %or.cond435 = select i1 %.not365, i1 true, i1 %.not366
  br i1 %or.cond435, label %bb.dy, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph
  %i.ll = call i32 @get_sched_log_level() #15
  %i.lm = icmp sgt i32 %i.ll, 4
  br i1 %i.lm, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  call void (i32, ptr, ...) @sched_log_var(i32 noundef 5, ptr noundef nonnull @.str.194) #15
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.ln = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 40), align 8
  %i.lo = add i32 %i.ln, 1
  store i32 %i.lo, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 40), align 8
  br label %.loopexit545

bb.dy:                                            ; preds = %.lr.ph
  %i.lp = load ptr, ptr %i.b, align 8             ; 8 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 84
  %i.lr = load i32, ptr %i.lq, align 4
  %.not367 = icmp eq i32 %i.lr, -2
  br i1 %.not367, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 88
  %i.lt = load ptr, ptr %i.ls, align 8
  %.not368 = icmp eq ptr %i.lt, null
  br i1 %.not368, label %bb.ee, label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.not369 = icmp eq ptr %.1225987, null
  br i1 %.not369, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.lu = getelementptr inbounds nuw i8, ptr %.1225987, i64 80
  %i.lv = load i32, ptr %i.lu, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lp, i64 80
  %i.lx = load i32, ptr %i.lw, align 8
  %i.ly = icmp eq i32 %i.lv, %i.lx
  %i.lz = icmp eq ptr %.1220988, %i.hk
  %or.cond436 = select i1 %i.ly, i1 %i.lz, i1 false
  br i1 %or.cond436, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lp, i64 936
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = icmp eq ptr %.1215989, %i.mb
  %i.md = icmp eq i8 %.1211990, %i.id
  %or.cond438 = select i1 %i.mc, i1 %i.md, i1 false
  br i1 %or.cond438, label %.backedge, label %bb.ed, !llvm.loop !36

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %bb.ea
  %i.me = getelementptr inbounds nuw i8, ptr %i.lp, i64 936
  %i.mf = load ptr, ptr %i.me, align 8            ; 2 uses
  %i.mg = call zeroext i1 @job_array_start_test(ptr noundef nonnull %i.lp) #15
  br i1 %i.mg, label %bb.ee, label %.backedge, !llvm.loop !36

bb.ee:                                            ; preds = %bb.ed, %bb.dz
  %.2226 = phi ptr [ %i.lp, %bb.ed ], [ %.1225987, %bb.dz ] ; 21 uses
  %.2221 = phi ptr [ %i.hk, %bb.ed ], [ %.1220988, %bb.dz ] ; 21 uses
  %.2216 = phi ptr [ %i.mf, %bb.ed ], [ %.1215989, %bb.dz ] ; 21 uses
  %.2212 = phi i8 [ %i.id, %bb.ed ], [ %.1211990, %bb.dz ] ; 28 uses
  %i.mh = load i32, ptr @_schedule.max_jobs_per_part, align 4 ; 2 uses
  %.not370 = icmp eq i32 %i.mh, 0
  br i1 %.not370, label %bb.em, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.mi = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 776
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 212 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 4
  %i.mn = add i32 %i.mm, 1                        ; 2 uses
  store i32 %i.mn, ptr %i.ml, align 4
  %i.mo = icmp ult i32 %i.mh, %i.mn
  br i1 %i.mo, label %bb.eg, label %bb.em

bb.eg:                                            ; preds = %bb.ef
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mi, i64 1048
  %i.mq = load i32, ptr %i.mp, align 8
  %i.mr = icmp eq i32 %i.mq, 0
  br i1 %i.mr, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mi, i64 1040
  call void @slurm_xfree(ptr noundef nonnull %i.ms) #15
  %i.mt = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 1048
  store i32 1, ptr %i.mu, align 8
  store i64 %i.ex, ptr @last_job_update, align 8
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.mv = phi ptr [ %i.mt, %bb.eh ], [ %i.mi, %bb.eg ]
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 776
  %i.mx = load ptr, ptr %i.mw, align 8
  %i.my = icmp eq ptr %i.mx, %.0235
  br i1 %i.my, label %.backedge, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.mz = call i32 @get_sched_log_level() #15
  %i.na = icmp sgt i32 %i.mz, 5
  br i1 %i.na, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.nb = load ptr, ptr %i.b, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 776
  %i.nd = load ptr, ptr %i.nc, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 224
  %i.nf = load ptr, ptr %i.ne, align 8
  call void (i32, ptr, ...) @sched_log_var(i32 noundef 6, ptr noundef nonnull @.str.195, ptr noundef %i.nf) #15
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.ng = load ptr, ptr %i.b, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 776
  %i.ni = load ptr, ptr %i.nh, align 8
  br label %.backedge

bb.em:                                            ; preds = %bb.ef, %bb.ee
  br i1 %0, label %bb.er, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.nj = add i32 %.1237985, 1                    ; 2 uses
  %i.nk = load i32, ptr @_schedule.def_job_limit, align 4
  %i.nl = icmp ugt i32 %.1237985, %i.nk
  br i1 %i.nl, label %bb.eo, label %bb.er

bb.eo:                                            ; preds = %bb.en
  %i.nm = call i32 @get_sched_log_level() #15
  %i.nn = icmp sgt i32 %i.nm, 4
  br i1 %i.nn, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  call void (i32, ptr, ...) @sched_log_var(i32 noundef 5, ptr noundef nonnull @.str.196, i32 noundef %i.nj) #15
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.no = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 36), align 4
  %i.np = add i32 %i.no, 1
  store i32 %i.np, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 36), align 4
  br label %.loopexit545

bb.er:                                            ; preds = %bb.em, %bb.en
  %.2238 = phi i32 [ %.1237985, %bb.em ], [ %i.nj, %bb.en ] ; 26 uses
  %i.nq = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 480)) #15 ; 2 uses
  %.not371 = icmp eq i32 %i.nq, 0
  br i1 %.not371, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.nr = tail call ptr @__errno_location() #16
  store i32 %i.nq, ptr %i.nr, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._schedule) #17
  unreachable

bb.et:                                            ; preds = %bb.er
  %i.ns = load i32, ptr @_schedule.defer_rpc_cnt, align 4 ; 2 uses
  %i.nt = icmp slt i32 %i.ns, 1
  %i.nu = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 324), align 4
  %.not372 = icmp slt i32 %i.nu, %i.ns
  %or.cond439 = select i1 %i.nt, i1 true, i1 %.not372
  br i1 %or.cond439, label %bb.ez, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.nv = call i32 @get_sched_log_level() #15
  %i.nw = icmp sgt i32 %i.nv, 4
  br i1 %i.nw, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  call void (i32, ptr, ...) @sched_log_var(i32 noundef 5, ptr noundef nonnull @.str.186) #15
  br label %bb.ew

bb.ew:                                            ; preds = %bb.eu, %bb.ev
  %i.nx = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 480)) #15 ; 2 uses
  %.not424 = icmp eq i32 %i.nx, 0
  br i1 %.not424, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ny = tail call ptr @__errno_location() #16
  store i32 %i.nx, ptr %i.ny, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._schedule) #17
  unreachable

bb.ey:                                            ; preds = %bb.ew
  %i.nz = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 48), align 8
  %i.oa = add i32 %i.nz, 1
  store i32 %i.oa, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 48), align 8
  br label %.loopexit545

bb.ez:                                            ; preds = %bb.et
  %i.ob = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 480)) #15 ; 2 uses
  %.not373 = icmp eq i32 %i.ob, 0
  br i1 %.not373, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.oc = tail call ptr @__errno_location() #16
  store i32 %i.ob, ptr %i.oc, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._schedule) #17
  unreachable

bb.fb:                                            ; preds = %bb.ez
  %i.od = call i32 @job_limits_check(ptr noundef nonnull %i.b, i1 noundef zeroext false) #15
  %.not374 = icmp eq i32 %i.od, 0
  br i1 %.not374, label %bb.fc, label %.backedge, !llvm.loop !36

bb.fc:                                            ; preds = %bb.fb
  %i.oe = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 28), align 4
  %i.of = add i32 %i.oe, 1
  store i32 %i.of, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 28), align 4
  %i.og = load ptr, ptr %i.b, align 8             ; 9 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 928
  %i.oi = load ptr, ptr %i.oh, align 8
  %.not375 = icmp eq ptr %i.oi, null
  br i1 %.not375, label %bb.fi, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 936
  %i.ok = load ptr, ptr %i.oj, align 8            ; 3 uses
  %.not379 = icmp eq ptr %i.ok, null
  br i1 %.not379, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 192
  %i.om = load i32, ptr %i.ol, align 8
  %.not380 = icmp ne i32 %i.om, 0
  %spec.select = select i1 %.not380, i1 true, i1 %.1201991
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.2202 = phi i1 [ %.1201991, %bb.fd ], [ %spec.select, %bb.fe ] ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 144
  %i.oo = load i64, ptr %i.on, align 8
  %i.op = and i64 %i.oo, 2199023255552
  %.not381 = icmp eq i64 %i.op, 0
  br i1 %.not381, label %bb.fw, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.oq = getelementptr inbounds nuw i8, ptr %i.og, i64 1048
  store i32 1, ptr %i.oq, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.og, i64 1040
  call void @slurm_xfree(ptr noundef nonnull %i.or) #15
  store i64 %i.ex, ptr @last_job_update, align 8
  %i.os = call i32 @get_sched_log_level() #15
  %i.ot = icmp sgt i32 %i.os, 6
  br i1 %i.ot, label %bb.fh, label %.backedge

bb.fh:                                            ; preds = %bb.fg
  %i.ou = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 832
  %i.ow = load i32, ptr %i.ov, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 928
  %i.oy = load ptr, ptr %i.ox, align 8
  call void (i32, ptr, ...) @sched_log_var(i32 noundef 7, ptr noundef nonnull @.str.197, ptr noundef %i.ou, i32 noundef %i.ow, ptr noundef %i.oy) #15
  br label %.backedge

bb.fi:                                            ; preds = %bb.fc
  %i.oz = getelementptr inbounds nuw i8, ptr %i.og, i64 776
  %i.pa = load ptr, ptr %i.oz, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 168
  %i.pc = load i32, ptr %i.pb, align 8
  %i.pd = zext i32 %i.pc to i64                   ; 2 uses
  %i.pe = and i64 %i.pd, 262144
  %.not376 = icmp eq i64 %i.pe, 0
  br i1 %.not376, label %bb.fs, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.pf = and i64 %i.pd, 524288
  %.not378 = icmp eq i64 %i.pf, 0
  br i1 %.not378, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.pg = load ptr, ptr @avail_node_bitmap, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.hk, i64 232
  %i.pi = load ptr, ptr %i.ph, align 8
  call void @bit_and_not(ptr noundef %i.pg, ptr noundef %i.pi) #15
  %i.pj = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 776
  %i.pl = load ptr, ptr %i.pk, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 168 ; 2 uses
  %i.pn = load i32, ptr %i.pm, align 8
  %i.po = or i32 %i.pn, 524288
  store i32 %i.po, ptr %i.pm, align 8
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.pp = phi ptr [ %i.pj, %bb.fk ], [ %i.og, %bb.fj ]
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 1048
  %i.pr = load i32, ptr %i.pq, align 8
  %i.ps = call i32 @get_sched_log_level() #15     ; 2 uses
  switch i32 %i.pr, label %bb.fp [
    i32 0, label %bb.fm
    i32 3, label %bb.fm
  ]

bb.fm:                                            ; preds = %bb.fl, %bb.fl
  %i.pt = icmp sgt i32 %i.ps, 4
  br i1 %i.pt, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.pu = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 776
  %i.pw = load ptr, ptr %i.pv, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 224
  %i.py = load ptr, ptr %i.px, align 8
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pu, i64 1048
  %i.qa = load i32, ptr %i.pz, align 8
  %i.qb = call ptr @job_state_reason_string(i32 noundef %i.qa) #15
  %i.qc = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 1040
  %i.qe = load ptr, ptr %i.qd, align 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qc, i64 832
  %i.qg = load i32, ptr %i.qf, align 8
  call void (i32, ptr, ...) @sched_log_var(i32 noundef 5, ptr noundef nonnull @.str.198, ptr noundef %i.pu, ptr noundef %i.py, ptr noundef %i.qb, ptr noundef %i.qe, i32 noundef %i.qg) #15
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %i.qh = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 1048
  store i32 1, ptr %i.qi, align 8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 1040
  call void @slurm_xfree(ptr noundef nonnull %i.qj) #15
  br label %bb.fr

bb.fp:                                            ; preds = %bb.fl
  %i.qk = icmp sgt i32 %i.ps, 5
  br i1 %i.qk, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.ql = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 776
  %i.qn = load ptr, ptr %i.qm, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 224
  %i.qp = load ptr, ptr %i.qo, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ql, i64 1048
  %i.qr = load i32, ptr %i.qq, align 8
  %i.qs = call ptr @job_state_reason_string(i32 noundef %i.qr) #15
  %i.qt = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 1040
  %i.qv = load ptr, ptr %i.qu, align 8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qt, i64 832
  %i.qx = load i32, ptr %i.qw, align 8
  call void (i32, ptr, ...) @sched_log_var(i32 noundef 6, ptr noundef nonnull @.str.199, ptr noundef %i.ql, ptr noundef %i.qp, ptr noundef %i.qs, ptr noundef %i.qv, i32 noundef %i.qx) #15
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fp, %bb.fq, %bb.fo
  store i64 %i.ex, ptr @last_job_update, align 8
  br label %.backedge

bb.fs:                                            ; preds = %bb.fi
  br i1 %.1201991, label %bb.ft, label %bb.fw

bb.ft:                                            ; preds = %bb.fs
  %i.qy = getelementptr inbounds nuw i8, ptr %i.og, i64 1250
  %i.qz = load i16, ptr %i.qy, align 2
  %i.ra = and i16 %i.qz, 256
  %.not377 = icmp eq i16 %i.ra, 0
  br i1 %.not377, label %bb.fw, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.rb = call i32 @get_sched_log_level() #15
  %i.rc = icmp sgt i32 %i.rb, 4
  br i1 %i.rc, label %bb.fv, label %.backedge

bb.fv:                                            ; preds = %bb.fu
  %i.rd = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 832
  %i.rf = load i32, ptr %i.re, align 8
  call void (i32, ptr, ...) @sched_log_var(i32 noundef 5, ptr noundef nonnull @.str.200, ptr noundef %i.rd, i32 noundef %i.rf) #15
  br label %.backedge

bb.fw:                                            ; preds = %bb.ft, %bb.fs, %bb.ff
  %.3203 = phi i1 [ %.2202, %bb.ff ], [ true, %bb.ft ], [ false, %bb.fs ] ; 20 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.og, i64 880
  %i.rh = load ptr, ptr %i.rg, align 8
  %.not382 = icmp eq ptr %i.rh, null
  br i1 %.not382, label %bb.gi, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull align 4 dereferenceable(28) @__const._schedule.locks, i64 28, i1 false)
  call void @assoc_mgr_lock(ptr noundef nonnull %7) #15
  %i.ri = load ptr, ptr %i.b, align 8             ; 7 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 104
  %i.rk = load ptr, ptr %i.rj, align 8            ; 2 uses
  %.not383 = icmp eq ptr %i.rk, null
  br i1 %.not383, label %bb.gf, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.rl = load i16, ptr @accounting_enforce, align 2
  %i.rm = and i16 %i.rl, 8
  %.not384 = icmp eq i16 %i.rm, 0
  br i1 %.not384, label %bb.gf, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ri, i64 880
  %i.ro = load ptr, ptr %i.rn, align 8
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.rq = load i32, ptr %i.rp, align 8            ; 2 uses
  %i.rr = load i32, ptr @g_qos_count, align 4
  %.not385 = icmp ult i32 %i.rq, %i.rr
  br i1 %.not385, label %bb.ga, label %._crit_edge1442

bb.ga:                                            ; preds = %bb.fz
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rk, i64 296
  %i.rt = load ptr, ptr %i.rs, align 8            ; 2 uses
  %.not386 = icmp eq ptr %i.rt, null
  br i1 %.not386, label %._crit_edge1442, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 192
  %i.rv = load ptr, ptr %i.ru, align 16           ; 2 uses
  %.not387 = icmp eq ptr %i.rv, null
  br i1 %.not387, label %._crit_edge1442, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.rw = zext i32 %i.rq to i64
  %i.rx = call i32 @slurm_bit_test(ptr noundef nonnull %i.rv, i64 noundef %i.rw) #15
  %.not388 = icmp eq i32 %i.rx, 0
  %.pre1444 = load ptr, ptr %i.b, align 8         ; 2 uses
  br i1 %.not388, label %._crit_edge1442, label %bb.gf

._crit_edge1442:                                  ; preds = %bb.gc, %bb.gb, %bb.ga, %bb.fz
  %i.ry = phi ptr [ %i.ri, %bb.fz ], [ %i.ri, %bb.gb ], [ %i.ri, %bb.ga ], [ %.pre1444, %bb.gc ] ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 568
  %i.sa = load i16, ptr %i.rz, align 8
  %.not389 = icmp eq i16 %i.sa, 0
  br i1 %.not389, label %bb.gd, label %bb.gf

bb.gd:                                            ; preds = %._crit_edge1442
  call void @assoc_mgr_unlock(ptr noundef nonnull %7) #15
  %i.sb = call i32 @get_sched_log_level() #15
  %i.sc = icmp sgt i32 %i.sb, 4
  br i1 %i.sc, label %bb.ge, label %bb.gh

bb.ge:                                            ; preds = %bb.gd
  %i.sd = load ptr, ptr %i.b, align 8
  call void (i32, ptr, ...) @sched_log_var(i32 noundef 5, ptr noundef nonnull @.str.201, ptr noundef %i.sd) #15
  br label %bb.gh

bb.gf:                                            ; preds = %._crit_edge1442, %bb.gc, %bb.fy, %bb.fx
  %i.se = phi ptr [ %i.ry, %._crit_edge1442 ], [ %.pre1444, %bb.gc ], [ %i.ri, %bb.fy ], [ %i.ri, %bb.fx ] ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 1048
  %i.sg = load i32, ptr %i.sf, align 8
  %i.sh = icmp eq i32 %i.sg, 28
  br i1 %i.sh, label %bb.gg, label %.thread470

bb.gg:                                            ; preds = %bb.gf
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 1040
  call void @slurm_xfree(ptr noundef nonnull %i.si) #15
  %i.sj = load ptr, ptr %i.b, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 1048
  store i32 0, ptr %i.sk, align 8
  store i64 %i.ex, ptr @last_job_update, align 8
  br label %.thread470

.thread470:                                       ; preds = %bb.gg, %bb.gf
  call void @assoc_mgr_unlock(ptr noundef nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %.pre1445 = load ptr, ptr %i.b, align 8
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gd, %bb.ge
  %i.sl = load ptr, ptr %i.b, align 8
  %i.sm = call i32 @job_fail_qos(ptr noundef %i.sl, ptr noundef nonnull @__func__._schedule, i1 noundef zeroext false) #15 ; 0 uses
  store i64 %i.ex, ptr @last_job_update, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %.backedge

bb.gi:                                            ; preds = %.thread470, %bb.fw
  %i.sn = phi ptr [ %.pre1445, %.thread470 ], [ %i.og, %bb.fw ] ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 240
  %i.sp = load i64, ptr %i.so, align 8
  switch i64 %i.sp, label %bb.gj [
    i64 0, label %bb.gq
    i64 4294967294, label %bb.gq
  ]

bb.gj:                                            ; preds = %bb.gi
  %i.sq = call zeroext i1 @deadline_ok(ptr noundef nonnull %i.sn, ptr noundef nonnull @__func__._schedule)
  br i1 %i.sq, label %bb.gk, label %.backedge, !llvm.loop !36

bb.gk:                                            ; preds = %bb.gj
  %i.sr = load ptr, ptr %i.b, align 8             ; 7 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 240
  %i.st = load i64, ptr %i.ss, align 8
  %i.su = sub nsw i64 %i.st, %i.ex
  %i.sv = trunc i64 %i.su to i32
  %i.sw = udiv i32 %i.sv, 60                      ; 4 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sr, i64 1104
  %i.sy = load i32, ptr %i.sx, align 8            ; 2 uses
  %switch = icmp ugt i32 %i.sy, -3
  br i1 %switch, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %. = call i32 @llvm.umin.i32(i32 %i.sy, i32 %i.sw)
  br label %bb.gq

bb.gm:                                            ; preds = %bb.gk
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sr, i64 776
  %i.ta = load ptr, ptr %i.sz, align 8            ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 120
  %i.tc = load i32, ptr %i.tb, align 8            ; 2 uses
  %switch454 = icmp ugt i32 %i.tc, -3
  br i1 %switch454, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %.440 = call i32 @llvm.umin.i32(i32 %i.tc, i32 %i.sw)
  br label %bb.gq

bb.go:                                            ; preds = %bb.gm
  %i.td = getelementptr inbounds nuw i8, ptr %i.ta, i64 208
  %i.te = load i32, ptr %i.td, align 8            ; 2 uses
  %switch456 = icmp ugt i32 %i.te, -3
  br i1 %switch456, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %.441 = call i32 @llvm.umin.i32(i32 %i.te, i32 %i.sw)
  br label %bb.gq

bb.gq:                                            ; preds = %bb.go, %bb.gi, %bb.gi, %bb.gl, %bb.gp, %bb.gn
  %i.tf = phi ptr [ %i.sr, %bb.gl ], [ %i.sr, %bb.gn ], [ %i.sr, %bb.gp ], [ %i.sn, %bb.gi ], [ %i.sr, %bb.go ], [ %i.sn, %bb.gi ]
  %.0196 = phi i32 [ %., %bb.gl ], [ %.440, %bb.gn ], [ %.441, %bb.gp ], [ 0, %bb.gi ], [ %i.sw, %bb.go ], [ 0, %bb.gi ] ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 1048
  %i.th = load i32, ptr %i.tg, align 8
  %i.ti = call zeroext i1 @job_state_reason_check(i32 noundef %i.th, i32 noundef 2) #15
  br i1 %i.ti, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.tj = load ptr, ptr %i.b, align 8
  %i.tk = call zeroext i1 @acct_policy_job_runnable_pre_select(ptr noundef %i.tj, i1 noundef zeroext false) #15
  br i1 %i.tk, label %bb.gs, label %.backedge, !llvm.loop !36

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.tl = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 1048
  %i.tn = load i32, ptr %i.tm, align 8
  %i.to = icmp eq i32 %i.tn, 15
  br i1 %i.to, label %bb.gt, label %bb.gw

bb.gt:                                            ; preds = %bb.gs
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tl, i64 256
  %i.tq = load ptr, ptr %i.tp, align 8            ; 2 uses
  %.not398 = icmp eq ptr %i.tq, null
  br i1 %.not398, label %bb.gw, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 392
  %i.ts = load ptr, ptr %i.tr, align 8            ; 2 uses
  %.not399 = icmp eq ptr %i.ts, null
  br i1 %.not399, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.tt = load ptr, ptr @avail_node_bitmap, align 8
  %i.tu = call i32 @bit_super_set(ptr noundef nonnull %i.ts, ptr noundef %i.tt) #15
  %.not400 = icmp eq i32 %i.tu, 0
  br i1 %.not400, label %.backedge, label %._crit_edge1446, !llvm.loop !36

._crit_edge1446:                                  ; preds = %bb.gv
  %.pre1447 = load ptr, ptr %i.b, align 8
  br label %bb.gw, !llvm.loop !36

bb.gw:                                            ; preds = %._crit_edge1446, %bb.gu, %bb.gt, %bb.gs
  %i.tv = phi ptr [ %.pre1447, %._crit_edge1446 ], [ %i.tl, %bb.gu ], [ %i.tl, %bb.gt ], [ %i.tl, %bb.gs ]
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 776
  %i.tx = load ptr, ptr %i.tw, align 8            ; 2 uses
  %.not401 = icmp eq ptr %i.tx, null
  br i1 %.not401, label %.backedge, label %bb.gx, !llvm.loop !36

bb.gx:                                            ; preds = %bb.gw
  %i.ty = load ptr, ptr @avail_node_bitmap, align 8
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 232
  %i.ua = load ptr, ptr %i.tz, align 8
  %i.ub = call i32 @bit_overlap(ptr noundef %i.ty, ptr noundef %i.ua) #15 ; 2 uses
  %i.uc = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 256
  %i.ue = load ptr, ptr %i.ud, align 8            ; 2 uses
  %.not402 = icmp eq ptr %i.ue, null
  br i1 %.not402, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 288
  %i.ug = load i32, ptr %i.uf, align 8            ; 2 uses
  %.not403 = icmp ne i32 %i.ug, -2
  %i.uh = icmp ugt i32 %i.ug, %i.ub
  %or.cond442 = select i1 %.not403, i1 %i.uh, i1 false
  br i1 %or.cond442, label %bb.ha, label %.thread472

bb.gz:                                            ; preds = %bb.gx
  %i.ui = icmp eq i32 %i.ub, 0
  br i1 %i.ui, label %bb.ha, label %.thread472

bb.ha:                                            ; preds = %bb.gy, %bb.gz
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uc, i64 1048
  store i32 3, ptr %i.uj, align 8
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uc, i64 1040
  call void @slurm_xfree(ptr noundef nonnull %i.uk) #15
  %i.ul = load ptr, ptr @rs_node_bitmap, align 8
  %i.um = load ptr, ptr %i.b, align 8
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 776
  %i.uo = load ptr, ptr %i.un, align 8
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 232
  %i.uq = load ptr, ptr %i.up, align 8
  %i.ur = call i32 @bit_overlap(ptr noundef %i.ul, ptr noundef %i.uq) #15
  %.not423 = icmp eq i32 %i.ur, 0
  %i.us = select i1 %.not423, ptr @.str.23, ptr @.str.203
  %i.ut = call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.202, ptr noundef nonnull %i.us) #15
  %i.uu = load ptr, ptr %i.b, align 8
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 1040
  store ptr %i.ut, ptr %i.uv, align 8
  store i64 %i.ex, ptr @last_job_update, align 8
  %i.uw = call i32 @get_sched_log_level() #15
  %i.ux = icmp sgt i32 %i.uw, 6
  br i1 %i.ux, label %bb.hb, label %.thread508

bb.hb:                                            ; preds = %bb.ha
  %i.uy = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 512
  %i.va = load i32, ptr %i.uz, align 8
  %i.vb = call ptr @job_state_string(i32 noundef %i.va) #15
  %i.vc = load ptr, ptr %i.b, align 8
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 1048
  %i.ve = load i32, ptr %i.vd, align 8
  %i.vf = call ptr @job_state_reason_string(i32 noundef %i.ve) #15
  %i.vg = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 832
  %i.vi = load i32, ptr %i.vh, align 8
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vg, i64 752
  %i.vk = load ptr, ptr %i.vj, align 8
  call void (i32, ptr, ...) @sched_log_var(i32 noundef 7, ptr noundef nonnull @.str.204, ptr noundef %i.uy, ptr noundef %i.vb, ptr noundef %i.vf, i32 noundef %i.vi, ptr noundef %i.vk) #15
  br label %.thread508

.thread472:                                       ; preds = %bb.gy, %bb.gz
  %i.vl = load ptr, ptr @acct_db_conn, align 8
  %i.vm = getelementptr inbounds nuw i8, ptr %i.uc, i64 96
  %i.vn = load i32, ptr %i.vm, align 8
  %i.vo = load i16, ptr @accounting_enforce, align 2
  %i.vp = zext i16 %i.vo to i32
  %i.vq = call i32 @assoc_mgr_validate_assoc_id(ptr noundef %i.vl, i32 noundef %i.vn, i32 noundef %i.vp) #15
  %.not404 = icmp eq i32 %i.vq, 0
  %i.vr = load ptr, ptr %i.b, align 8             ; 4 uses
  br i1 %.not404, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %.thread472
  call void (ptr, ...) @sched_info(ptr noundef nonnull @.str.205, ptr noundef %i.vr) #15
  store i64 %i.ex, ptr @last_job_update, align 8
  %i.vs = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 1048
  store i32 27, ptr %i.vt, align 8
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 1040
  call void @slurm_xfree(ptr noundef nonnull %i.vu) #15
  br label %.backedge

bb.hd:                                            ; preds = %.thread472
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vr, i64 1032
  %i.vw = load i64, ptr %i.vv, align 8
  %.1230. = call i64 @llvm.smax.i64(i64 %.1230986, i64 %i.vw) ; 13 uses
  %.not539 = icmp eq i32 %.0196, 0                ; 2 uses
  br i1 %.not539, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vr, i64 1104 ; 2 uses
  %i.vy = load i32, ptr %i.vx, align 8
  store i32 %.0196, ptr %i.vx, align 8
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %.2194 = phi i32 [ %i.vy, %bb.he ], [ %.1193992, %bb.hd ] ; 13 uses
  %i.vz = call i32 @fed_mgr_job_lock(ptr noundef nonnull %i.vr) #15
  %.not405 = icmp eq i32 %i.vz, 0
  br i1 %.not405, label %bb.hg, label %.loopexit

bb.hg:                                            ; preds = %bb.hf
  %i.wa = load ptr, ptr %i.b, align 8
  store ptr %i.wa, ptr %i.ha, align 8
  %i.wb = call i32 @select_nodes(ptr noundef nonnull %5, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 4) #15 ; 3 uses
  %i.wc = icmp eq i32 %i.wb, 0
  br i1 %i.wc, label %bb.iq, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %.b321 = load i1, ptr @_schedule.ignore_prefer_val, align 1
  %.pre1448 = load ptr, ptr %i.b, align 8         ; 7 uses
  br i1 %.b321, label %bb.hi, label %bb.hp

bb.hi:                                            ; preds = %bb.hh
  %i.wd = getelementptr inbounds nuw i8, ptr %.pre1448, i64 256
  %i.we = load ptr, ptr %i.wd, align 8            ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 360
  %i.wg = load ptr, ptr %i.wf, align 8
  %.not406 = icmp eq ptr %i.wg, null
  br i1 %.not406, label %bb.hp, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.wh = getelementptr inbounds nuw i8, ptr %i.we, i64 352
  %i.wi = load ptr, ptr %i.wh, align 8            ; 2 uses
  %.not407 = icmp eq ptr %i.wi, null
  br i1 %.not407, label %bb.hp, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.wj = getelementptr inbounds nuw i8, ptr %i.we, i64 200
  %i.wk = load ptr, ptr %i.wj, align 8
  %i.wl = icmp eq ptr %i.wi, %i.wk
  %i.wm = icmp eq i32 %i.wb, 2014
  %or.cond7 = and i1 %i.wm, %i.wl
  br i1 %or.cond7, label %bb.hl, label %bb.hp

bb.hl:                                            ; preds = %bb.hk
  %i.wn = getelementptr inbounds nuw i8, ptr %.pre1448, i64 1048
  %i.wo = load i32, ptr %i.wn, align 8
  %i.wp = icmp eq i32 %i.wo, 21
  br i1 %i.wp, label %bb.hm, label %bb.hp

bb.hm:                                            ; preds = %bb.hl
  %i.wq = call i32 @get_sched_log_level() #15
  %i.wr = icmp sgt i32 %i.wq, 5
  br i1 %i.wr, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.ws = load ptr, ptr %i.b, align 8
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 1048
  %i.wu = load i32, ptr %i.wt, align 8
  %i.wv = call ptr @job_state_reason_string(i32 noundef %i.wu) #15
  %i.ww = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 776
  %i.wy = load ptr, ptr %i.wx, align 8
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 224
  %i.xa = load ptr, ptr %i.wz, align 8
  call void (i32, ptr, ...) @sched_log_var(i32 noundef 6, ptr noundef nonnull @.str.206, ptr noundef %i.wv, ptr noundef %i.ww, ptr noundef %i.xa) #15
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.xb = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 1048
  store i32 200, ptr %i.xc, align 8
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh
  %i.xd = phi ptr [ %i.xb, %bb.ho ], [ %.pre1448, %bb.hl ], [ %.pre1448, %bb.hk ], [ %.pre1448, %bb.hj ], [ %.pre1448, %bb.hi ], [ %.pre1448, %bb.hh ]
  %i.xe = call i32 @fed_mgr_job_unlock(ptr noundef %i.xd) #15 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.hf, %bb.hp
  %.0187 = phi i32 [ %i.wb, %bb.hp ], [ 7105, %bb.hf ] ; 9 uses
  br i1 %.not539, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %.loopexit
  %i.xf = load ptr, ptr %i.b, align 8
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 1104
  store i32 %.2194, ptr %i.xg, align 8
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %.loopexit
  switch i32 %.0187, label %bb.if [
    i32 2016, label %bb.hs
    i32 2040, label %bb.hv
    i32 2100, label %bb.ib
  ]

bb.hs:                                            ; preds = %bb.hr
  %i.xh = call i32 @get_sched_log_level() #15
  %i.xi = icmp sgt i32 %i.xh, 6
  br i1 %i.xi, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.xj = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 512
  %i.xl = load i32, ptr %i.xk, align 8
  %i.xm = call ptr @job_state_string(i32 noundef %i.xl) #15
end_hunk_6
begin_hunk_7_@_schedule:bb.a
  store i32 %i.ajx, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 12), align 4
  %i.aka = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 24), align 8
  %i.akb = add i32 %i.aka, 1
  store i32 %i.akb, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 24), align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.bd, %bb.be, %bb.cd, %_do_diag_stats.exit, %bb.ch, %bb.cg, %bb.by, %bb.a
  %.1 = phi i32 [ 0, %bb.by ], [ 0, %bb.a ], [ 0, %bb.cd ], [ %.3, %_do_diag_stats.exit ], [ 0, %bb.ch ], [ 0, %bb.cg ], [ 0, %bb.be ], [ 0, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.1
}

declare void @schedule_node_save() local_unnamed_addr #2

declare void @schedule_job_save() local_unnamed_addr #2

declare zeroext i1 @fed_mgr_sibs_synced() local_unnamed_addr #2

declare void @sched_info(ptr noundef, ...) local_unnamed_addr #2

declare { i64, i64 } @timespec_now() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @_foreach_setup_part_sched(ptr nofree noundef captures(none) initializes((212, 216)) %0, ptr nofree readnone captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, -786433
  store i32 %i.d, ptr %i.b, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @_foreach_setup_resv_sched(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, -2199023255553
  store i64 %i.c, ptr %i.a, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_part_reduce_frag(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @bit_overlap_any(ptr noundef %i.b, ptr noundef %i.d) #15
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 298
  %i.g = load i16, ptr %i.f, align 2
  %i.h = and i16 %i.g, 2
  %.not10 = icmp eq i16 %i.h, 0
  br i1 %.not10, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = or i32 %i.j, 262144
  store i32 %i.k, ptr %i.i, align 8
  %i.l = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1272), align 8
  %i.m = icmp ugt i16 %i.l, 4
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %1, align 8
  %.not11 = icmp eq ptr %i.o, null
  %i.p = select i1 %.not11, ptr @.str.23, ptr @.str.89
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.r = load ptr, ptr %i.q, align 8
  tail call void (ptr, ptr, ptr, ...) @_xstrfmtcatat(ptr noundef nonnull %1, ptr noundef nonnull %i.n, ptr noundef nonnull @.str.221, ptr noundef nonnull %i.p, ptr noundef %i.r) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret i32 0
}

declare void @job_resv_clear_magnetic_flag(ptr noundef) local_unnamed_addr #2

declare ptr @list_pop(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @job_array_start_test(ptr noundef) local_unnamed_addr #2

declare i32 @job_fail_qos(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @acct_policy_job_runnable_pre_select(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @bit_overlap(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @assoc_mgr_validate_assoc_id(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fed_mgr_job_lock(ptr noundef) local_unnamed_addr #2

declare i32 @select_nodes(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare i32 @fed_mgr_job_start(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @fed_mgr_job_unlock(ptr noundef) local_unnamed_addr #2

declare void @srun_allocate(ptr noundef) local_unnamed_addr #2

declare i32 @bb_g_job_test_stage_in(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @bit_set_count(ptr noundef) local_unnamed_addr #2

declare i32 @acct_policy_get_prio_thresh(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @_get_nodes_in_reservations(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @bit_or(ptr noundef %1, ptr noundef nonnull %i.b) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

declare void @bit_not(ptr noundef) local_unnamed_addr #2

declare i32 @bb_g_job_try_stage_in() local_unnamed_addr #2

declare void @timer_compare_limit(i64, i64, i64, i64, ptr noundef, ptr noundef byval(%struct.timespec) align 8) local_unnamed_addr #2

declare i64 @timer_get_duration(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #11

declare void @_xstrfmtcatat(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11, !16, !17}
!15 = distinct !{!15, !10, !11, !16}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{null}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = !{ptr @_scan_depend}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !10, !11}
!34 = distinct !{null}
!35 = distinct !{null}
!36 = distinct !{!36, !11}
end_hunk_7
