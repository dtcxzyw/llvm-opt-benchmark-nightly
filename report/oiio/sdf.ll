inline.NumInlined: 97
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@sdf_generate_with_overlaps:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.w = icmp eq i32 %.sroa.0129.0.extract.trunc, 0
  %i.x = icmp eq i32 %.sroa.0129.0.extract.trunc, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.0129.0.insert.insert = and i64 %.fr201, 280379760050175
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph181, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph181 ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %.1148180.in = phi ptr [ %i.e, %.lr.ph181 ], [ %i.cz, %bb.p ]
  %.0146178 = phi ptr [ null, %.lr.ph181 ], [ %i.dc, %bb.p ]
  %.1148180 = load ptr, ptr %.1148180.in, align 8, !tbaa !137 ; 4 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %indvars.iv ; 7 uses
  call void @FT_Bitmap_Init(ptr noundef %i.z) #12
  %i.aa = load <2 x i32>, ptr %3, align 8, !tbaa !3
  %i.ab = load i32, ptr %3, align 8, !tbaa !45
  store <2 x i32> %i.aa, ptr %i.z, align 8, !tbaa !3
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !46  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !46
  %i.ae = load i16, ptr %i.u, align 8, !tbaa !49
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i16 %i.ae, ptr %i.af, align 8, !tbaa !49
  %i.ag = load i8, ptr %i.v, align 2, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 26
  store i8 %i.ag, ptr %i.ah, align 2, !tbaa !48
  %i.ai = mul i32 %i.ac, %i.ab
  %i.aj = zext i32 %i.ai to i64
  %i.ak = call ptr @ft_mem_alloc(ptr noundef nonnull %i.d, i64 noundef %i.aj, ptr noundef nonnull %i.a) #12
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !44
  %i.am = load i32, ptr %i.a, align 4, !tbaa !3
  %.not159 = icmp eq i32 %i.am, 0
  br i1 %.not159, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %.1148180, null
  br i1 %.not.i, label %get_contour_orientation.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.1148180, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !138 ; 2 uses
  %.not41.i = icmp eq ptr %i.ao, null
  br i1 %.not41.i, label %get_contour_orientation.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %bb.k
  %.045.i = phi i32 [ %i.ct, %bb.k ], [ 0, %bb.g ] ; 3 uses
  %.03744.i = phi ptr [ %i.cv, %bb.k ], [ %i.ao, %bb.g ] ; 18 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.03744.i, i64 64
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !139
  switch i32 %i.aq, label %get_contour_orientation.exit [
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.h:                                             ; preds = %.preheader.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.03744.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !141
  %i.at = load i64, ptr %.03744.i, align 8, !tbaa !142
  %i.au = sub nsw i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.03744.i, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !143
  br label %bb.k

bb.i:                                             ; preds = %.preheader.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.03744.i, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !144 ; 2 uses
  %i.az = load i64, ptr %.03744.i, align 8, !tbaa !142
  %i.ba = sub nsw i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.03744.i, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !145 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.03744.i, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !146
  %i.bf = add nsw i64 %i.be, %i.bc
  %i.bg = mul nsw i64 %i.bf, %i.ba
  %i.bh = sdiv i64 %i.bg, 64
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = add i32 %.045.i, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %.03744.i, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !141
  %i.bm = sub nsw i64 %i.bl, %i.ay
  br label %bb.k

bb.j:                                             ; preds = %.preheader.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.03744.i, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !144 ; 2 uses
  %i.bp = load i64, ptr %.03744.i, align 8, !tbaa !142
  %i.bq = sub nsw i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.03744.i, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !145 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.03744.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !146
  %i.bv = add nsw i64 %i.bu, %i.bs
  %i.bw = mul nsw i64 %i.bv, %i.bq
  %i.bx = sdiv i64 %i.bw, 64
  %i.by = trunc i64 %i.bx to i32
  %i.bz = add i32 %.045.i, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %.03744.i, i64 48
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !147 ; 2 uses
  %i.cc = sub nsw i64 %i.cb, %i.bo
  %i.cd = getelementptr inbounds nuw i8, ptr %.03744.i, i64 56
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !148 ; 2 uses
  %i.cf = add nsw i64 %i.ce, %i.bs
  %i.cg = mul nsw i64 %i.cf, %i.cc
  %i.ch = sdiv i64 %i.cg, 64
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = add i32 %i.bz, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.03744.i, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !141
  %i.cm = sub nsw i64 %i.cl, %i.cb
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.sink56.i = phi i64 [ 24, %bb.j ], [ 24, %bb.i ], [ 8, %bb.h ]
  %.sink54.i = phi i64 [ %i.ce, %bb.j ], [ %i.bc, %bb.i ], [ %i.aw, %bb.h ]
  %.sink52.i = phi i64 [ %i.cm, %bb.j ], [ %i.bm, %bb.i ], [ %i.au, %bb.h ]
  %.sink.i = phi i32 [ %i.cj, %bb.j ], [ %i.bj, %bb.i ], [ %.045.i, %bb.h ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.03744.i, i64 %.sink56.i
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !88
  %i.cp = add nsw i64 %i.co, %.sink54.i
  %i.cq = mul nsw i64 %i.cp, %.sink52.i
  %i.cr = sdiv i64 %i.cq, 64
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = add i32 %.sink.i, %i.cs                 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.03744.i, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !149 ; 2 uses
  %.not42.i = icmp eq ptr %i.cv, null
  br i1 %.not42.i, label %bb.l, label %.preheader.i, !llvm.loop !150

bb.l:                                             ; preds = %bb.k
  %.inv.i = icmp slt i32 %i.ct, 1
  %..i = select i1 %.inv.i, i32 2, i32 1
  br label %get_contour_orientation.exit

get_contour_orientation.exit:                     ; preds = %.preheader.i, %bb.f, %bb.g, %bb.l
  %.038.i = phi i32 [ 0, %bb.f ], [ %..i, %bb.l ], [ 0, %bb.g ], [ 0, %.preheader.i ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv ; 3 uses
  store i32 %.038.i, ptr %i.cw, align 4, !tbaa !3
  %i.cx = icmp eq i32 %.038.i, 2
  %or.cond4 = and i1 %i.cx, %i.w
  %i.cy = icmp eq i32 %.038.i, 1
  %or.cond7 = and i1 %i.cy, %i.x
  %narrow = or i1 %or.cond4, %or.cond7
  %.sroa.8.sroa.2.0 = zext i1 %narrow to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %.1148180, i64 24 ; 4 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !133
  store ptr null, ptr %i.cz, align 8, !tbaa !133
  store ptr %.1148180, ptr %i.y, align 8, !tbaa !132
  %i.db = call fastcc i32 @sdf_generate_subdivision(i64 %.sroa.0129.0.insert.insert, i32 %.sroa.8.sroa.2.0, ptr noundef nonnull %4, i32 noundef %2, ptr noundef nonnull %i.z) ; 2 uses
  store i32 %i.db, ptr %i.a, align 4, !tbaa !3
  %.not160 = icmp eq i32 %i.db, 0
  br i1 %.not160, label %bb.m, label %.thread165

bb.m:                                             ; preds = %get_contour_orientation.exit
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !133
  %i.dc = load ptr, ptr %i.y, align 8, !tbaa !132 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store ptr %.0146178, ptr %i.dd, align 8, !tbaa !133
  br i1 %i.x, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.de = load i32, ptr %i.cw, align 4, !tbaa !3
  switch i32 %i.de, label %bb.p [
    i32 1, label %.sink.split
    i32 2, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.o
  %.sink = phi i32 [ 1, %bb.o ], [ 2, %bb.n ]
  store i32 %.sink, ptr %i.cw, align 4, !tbaa !3
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.n, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %._crit_edge182, label %bb.e, !llvm.loop !151

._crit_edge182:                                   ; preds = %bb.p, %.preheader170
  %.0146.lcssa = phi ptr [ null, %.preheader170 ], [ %i.dc, %bb.p ]
  store ptr %.0146.lcssa, ptr %i.e, align 8, !tbaa !132
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !44 ; 3 uses
  %i.dh = icmp sgt i32 %i.i, 0
  br i1 %i.dh, label %.preheader169.lr.ph, label %.loopexit

.preheader169.lr.ph:                              ; preds = %._crit_edge182
  %i.di = icmp sgt i32 %i.h, 0
  %i.dj = and i64 %.fr201, 1095216660480
  %.not158 = icmp ne i64 %i.dj, 0                 ; 2 uses
  %spec.select = sext i1 %.not158 to i8
  br i1 %i.di, label %.preheader169.lr.ph.split, label %.loopexit

.preheader169.lr.ph.split:                        ; preds = %.preheader169.lr.ph
  %i.dk = zext nneg i32 %i.h to i64               ; 5 uses
  %i.dl = zext nneg i32 %i.i to i64               ; 3 uses
  br i1 %.not199, label %.preheader169.lr.ph.split.split, label %.preheader169.lr.ph.split.split.us

.preheader169.lr.ph.split.split.us:               ; preds = %.preheader169.lr.ph.split
  br i1 %.not158, label %.preheader169.us.preheader, label %.preheader169.us.us.preheader

.preheader169.us.us.preheader:                    ; preds = %.preheader169.lr.ph.split.split.us
  %xtraiter = and i64 %i.m, 1
  %i.dm = icmp eq i32 %.0141.lcssa, 1
  %unroll_iter = and i64 %i.m, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod11 = trunc i32 %.0141.lcssa to i1
  br label %.preheader169.us.us

.preheader169.us.preheader:                       ; preds = %.preheader169.lr.ph.split.split.us
  %xtraiter13 = and i64 %i.m, 1
  %i.dn = icmp eq i32 %.0141.lcssa, 1
  %unroll_iter18 = and i64 %i.m, 4294967294
  %lcmp.mod14.not = icmp eq i64 %xtraiter13, 0
  %lcmp.mod17 = trunc i32 %.0141.lcssa to i1
  br label %.preheader169.us

.preheader169.us.us:                              ; preds = %.preheader169.us.us.preheader, %._crit_edge194.split.us.us.split.us.us
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %._crit_edge194.split.us.us.split.us.us ], [ 0, %.preheader169.us.us.preheader ] ; 2 uses
  %i.do = mul nuw nsw i64 %indvars.iv217, %i.dk
  br label %.lr.ph188.us.us.us.us

.lr.ph188.us.us.us.us:                            ; preds = %._crit_edge189.us.us.us.us, %.preheader169.us.us
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %._crit_edge189.us.us.us.us ], [ 0, %.preheader169.us.us ] ; 2 uses
  %i.dp = add nuw nsw i64 %indvars.iv212, %i.do   ; 4 uses
  br i1 %i.dm, label %.epil.preheader, label %.lr.ph188.us.us.us.us.new

.lr.ph188.us.us.us.us.new:                        ; preds = %.lr.ph188.us.us.us.us, %bb.v
  %indvars.iv208 = phi i64 [ %indvars.iv.next209.1, %bb.v ], [ 0, %.lr.ph188.us.us.us.us ] ; 4 uses
  %.0137186.us.us.us.us = phi i8 [ %.1.us.us.us.us.1, %bb.v ], [ -1, %.lr.ph188.us.us.us.us ] ; 2 uses
  %.0138185.us.us.us.us = phi i8 [ %.1139.us.us.us.us.1, %bb.v ], [ 0, %.lr.ph188.us.us.us.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.v ], [ 0, %.lr.ph188.us.us.us.us ]
  %i.dq = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %indvars.iv208
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !44
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dp
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !77  ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv208
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = icmp eq i32 %i.dw, 1
  br i1 %i.dx, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph188.us.us.us.us.new
  %i.dy = call i8 @llvm.umin.i8(i8 %.0137186.us.us.us.us, i8 %i.du)
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph188.us.us.us.us.new
  %i.dz = call i8 @llvm.umax.i8(i8 %.0138185.us.us.us.us, i8 %i.du)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1139.us.us.us.us = phi i8 [ %i.dz, %bb.r ], [ %.0138185.us.us.us.us, %bb.q ] ; 2 uses
  %.1.us.us.us.us = phi i8 [ %.0137186.us.us.us.us, %bb.r ], [ %i.dy, %bb.q ] ; 2 uses
  %indvars.iv.next209 = or disjoint i64 %indvars.iv208, 1 ; 2 uses
  %i.ea = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %indvars.iv.next209
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !44
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dp
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !77  ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next209
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !3
  %i.eh = icmp eq i32 %i.eg, 1
  br i1 %i.eh, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ei = call i8 @llvm.umin.i8(i8 %.1.us.us.us.us, i8 %i.ee)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ej = call i8 @llvm.umax.i8(i8 %.1139.us.us.us.us, i8 %i.ee)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1139.us.us.us.us.1 = phi i8 [ %i.ej, %bb.u ], [ %.1139.us.us.us.us, %bb.t ] ; 3 uses
  %.1.us.us.us.us.1 = phi i8 [ %.1.us.us.us.us, %bb.u ], [ %i.ei, %bb.t ] ; 3 uses
  %indvars.iv.next209.1 = add nuw nsw i64 %indvars.iv208, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge189.us.us.us.us.unr-lcssa, label %.lr.ph188.us.us.us.us.new, !llvm.loop !152

._crit_edge189.us.us.us.us.unr-lcssa:             ; preds = %bb.v
  br i1 %lcmp.mod.not, label %._crit_edge189.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge189.us.us.us.us.unr-lcssa, %.lr.ph188.us.us.us.us
  %indvars.iv208.epil.init = phi i64 [ 0, %.lr.ph188.us.us.us.us ], [ %indvars.iv.next209.1, %._crit_edge189.us.us.us.us.unr-lcssa ] ; 2 uses
  %.0137186.us.us.us.us.epil.init = phi i8 [ -1, %.lr.ph188.us.us.us.us ], [ %.1.us.us.us.us.1, %._crit_edge189.us.us.us.us.unr-lcssa ] ; 2 uses
  %.0138185.us.us.us.us.epil.init = phi i8 [ 0, %.lr.ph188.us.us.us.us ], [ %.1139.us.us.us.us.1, %._crit_edge189.us.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod11)
  %i.ek = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %indvars.iv208.epil.init
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !44
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.dp
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !77  ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv208.epil.init
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3
  %i.er = icmp eq i32 %i.eq, 1
  br i1 %i.er, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.epil.preheader
  %i.es = call i8 @llvm.umin.i8(i8 %.0137186.us.us.us.us.epil.init, i8 %i.eo)
  br label %._crit_edge189.us.us.us.us

bb.x:                                             ; preds = %.epil.preheader
  %i.et = call i8 @llvm.umax.i8(i8 %.0138185.us.us.us.us.epil.init, i8 %i.eo)
  br label %._crit_edge189.us.us.us.us

._crit_edge189.us.us.us.us:                       ; preds = %bb.w, %bb.x, %._crit_edge189.us.us.us.us.unr-lcssa
  %.1139.us.us.us.us.lcssa = phi i8 [ %.1139.us.us.us.us.1, %._crit_edge189.us.us.us.us.unr-lcssa ], [ %i.et, %bb.x ], [ %.0138185.us.us.us.us.epil.init, %bb.w ]
  %.1.us.us.us.us.lcssa = phi i8 [ %.1.us.us.us.us.1, %._crit_edge189.us.us.us.us.unr-lcssa ], [ %.0137186.us.us.us.us.epil.init, %bb.x ], [ %i.es, %bb.w ]
  %i.eu = call i8 @llvm.umin.i8(i8 %.1139.us.us.us.us.lcssa, i8 %.1.us.us.us.us.lcssa)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dp
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !77
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %i.dk
  br i1 %exitcond216.not, label %._crit_edge194.split.us.us.split.us.us, label %.lr.ph188.us.us.us.us, !llvm.loop !153

._crit_edge194.split.us.us.split.us.us:           ; preds = %._crit_edge189.us.us.us.us
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %i.dl
  br i1 %exitcond221.not, label %.thread165, label %.preheader169.us.us, !llvm.loop !154

.preheader169.us:                                 ; preds = %.preheader169.us.preheader, %._crit_edge194.split.us.us.split
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %._crit_edge194.split.us.us.split ], [ 0, %.preheader169.us.preheader ] ; 2 uses
  %i.ew = mul nuw nsw i64 %indvars.iv231, %i.dk
  br label %.lr.ph188.us.us

.lr.ph188.us.us:                                  ; preds = %._crit_edge189.us.us, %.preheader169.us
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %._crit_edge189.us.us ], [ 0, %.preheader169.us ] ; 2 uses
  %i.ex = add nuw nsw i64 %indvars.iv226, %i.ew   ; 4 uses
  br i1 %i.dn, label %.epil.preheader12, label %.lr.ph188.us.us.new

.lr.ph188.us.us.new:                              ; preds = %.lr.ph188.us.us, %bb.ad
  %indvars.iv222 = phi i64 [ %indvars.iv.next223.1, %bb.ad ], [ 0, %.lr.ph188.us.us ] ; 4 uses
  %.0137186.us.us = phi i8 [ %.1.us.us.1, %bb.ad ], [ -1, %.lr.ph188.us.us ] ; 2 uses
  %.0138185.us.us = phi i8 [ %.1139.us.us.1, %bb.ad ], [ 0, %.lr.ph188.us.us ] ; 2 uses
  %niter19 = phi i64 [ %niter19.next.1, %bb.ad ], [ 0, %.lr.ph188.us.us ]
  %i.ey = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %indvars.iv222
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !44
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ex
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !77  ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv222
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3
  %i.ff = icmp eq i32 %i.fe, 1
  br i1 %i.ff, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph188.us.us.new
  %i.fg = call i8 @llvm.umin.i8(i8 %.0137186.us.us, i8 %i.fc)
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph188.us.us.new
  %i.fh = call i8 @llvm.umax.i8(i8 %.0138185.us.us, i8 %i.fc)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1139.us.us = phi i8 [ %i.fh, %bb.z ], [ %.0138185.us.us, %bb.y ] ; 2 uses
  %.1.us.us = phi i8 [ %.0137186.us.us, %bb.z ], [ %i.fg, %bb.y ] ; 2 uses
  %indvars.iv.next223 = or disjoint i64 %indvars.iv222, 1 ; 2 uses
  %i.fi = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %indvars.iv.next223
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !44
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.ex
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !77  ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next223
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !3
  %i.fp = icmp eq i32 %i.fo, 1
  br i1 %i.fp, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fq = call i8 @llvm.umin.i8(i8 %.1.us.us, i8 %i.fm)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.fr = call i8 @llvm.umax.i8(i8 %.1139.us.us, i8 %i.fm)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.1139.us.us.1 = phi i8 [ %i.fr, %bb.ac ], [ %.1139.us.us, %bb.ab ] ; 3 uses
  %.1.us.us.1 = phi i8 [ %.1.us.us, %bb.ac ], [ %i.fq, %bb.ab ] ; 3 uses
  %indvars.iv.next223.1 = add nuw nsw i64 %indvars.iv222, 2 ; 2 uses
  %niter19.next.1 = add i64 %niter19, 2           ; 2 uses
  %niter19.ncmp.1 = icmp eq i64 %niter19.next.1, %unroll_iter18
  br i1 %niter19.ncmp.1, label %._crit_edge189.us.us.unr-lcssa, label %.lr.ph188.us.us.new, !llvm.loop !152

._crit_edge189.us.us.unr-lcssa:                   ; preds = %bb.ad
  br i1 %lcmp.mod14.not, label %._crit_edge189.us.us, label %.epil.preheader12

.epil.preheader12:                                ; preds = %._crit_edge189.us.us.unr-lcssa, %.lr.ph188.us.us
  %indvars.iv222.epil.init = phi i64 [ 0, %.lr.ph188.us.us ], [ %indvars.iv.next223.1, %._crit_edge189.us.us.unr-lcssa ] ; 2 uses
  %.0137186.us.us.epil.init = phi i8 [ -1, %.lr.ph188.us.us ], [ %.1.us.us.1, %._crit_edge189.us.us.unr-lcssa ] ; 2 uses
  %.0138185.us.us.epil.init = phi i8 [ 0, %.lr.ph188.us.us ], [ %.1139.us.us.1, %._crit_edge189.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod17)
  %i.fs = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %indvars.iv222.epil.init
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !44
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ex
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !77  ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv222.epil.init
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.fz = icmp eq i32 %i.fy, 1
  br i1 %i.fz, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.epil.preheader12
  %i.ga = call i8 @llvm.umin.i8(i8 %.0137186.us.us.epil.init, i8 %i.fw)
  br label %._crit_edge189.us.us

bb.af:                                            ; preds = %.epil.preheader12
  %i.gb = call i8 @llvm.umax.i8(i8 %.0138185.us.us.epil.init, i8 %i.fw)
  br label %._crit_edge189.us.us

._crit_edge189.us.us:                             ; preds = %bb.ae, %bb.af, %._crit_edge189.us.us.unr-lcssa
  %.1139.us.us.lcssa = phi i8 [ %.1139.us.us.1, %._crit_edge189.us.us.unr-lcssa ], [ %i.gb, %bb.af ], [ %.0138185.us.us.epil.init, %bb.ae ]
  %.1.us.us.lcssa = phi i8 [ %.1.us.us.1, %._crit_edge189.us.us.unr-lcssa ], [ %.0137186.us.us.epil.init, %bb.af ], [ %i.ga, %bb.ae ]
  %i.gc = call i8 @llvm.umin.i8(i8 %.1139.us.us.lcssa, i8 %.1.us.us.lcssa)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.ex
  %i.ge = xor i8 %i.gc, -1
  store i8 %i.ge, ptr %i.gd, align 1, !tbaa !77
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %i.dk
  br i1 %exitcond230.not, label %._crit_edge194.split.us.us.split, label %.lr.ph188.us.us, !llvm.loop !153

._crit_edge194.split.us.us.split:                 ; preds = %._crit_edge189.us.us
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %i.dl
  br i1 %exitcond235.not, label %.thread165, label %.preheader169.us, !llvm.loop !154

.preheader169.lr.ph.split.split:                  ; preds = %.preheader169.lr.ph.split
  %5 = mul nuw nsw i64 %i.dk, %i.dl
  call void @llvm.memset.p0.i64(ptr align 1 %i.dg, i8 %spec.select, i64 %5, i1 false), !tbaa !77
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.preheader169.lr.ph.split.split, %._crit_edge182, %.preheader169.lr.ph, %bb.d
  %.not161 = icmp eq ptr %i.r, null
  br i1 %.not161, label %.thread, label %.thread165

.thread165:                                       ; preds = %get_contour_orientation.exit, %._crit_edge194.split.us.us.split.us.us, %._crit_edge194.split.us.us.split, %.loopexit
  call void @ft_mem_free(ptr noundef nonnull %i.d, ptr noundef nonnull %i.r) #12
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %.thread165, %.loopexit
  %.not162 = icmp eq ptr %i.o, null
  br i1 %.not162, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %.thread
  %i.gf = icmp eq i32 %.0141.lcssa, 0
  br i1 %i.gf, label %bb.ah, label %.preheader

bb.ah:                                            ; preds = %bb.ag
  store i32 97, ptr %i.a, align 4, !tbaa !3
  br label %bb.aj

.preheader:                                       ; preds = %bb.ag, %.preheader
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %.preheader ], [ 0, %bb.ag ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %indvars.iv240
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !44
  call void @ft_mem_free(ptr noundef nonnull %i.d, ptr noundef %i.gi) #12
  store ptr null, ptr %i.gh, align 8, !tbaa !44
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond244.not = icmp eq i64 %indvars.iv.next241, %i.m
  br i1 %exitcond244.not, label %bb.ai, label %.preheader, !llvm.loop !155

bb.ai:                                            ; preds = %.preheader
  call void @ft_mem_free(ptr noundef nonnull %i.d, ptr noundef nonnull %i.o) #12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %.thread
  %i.gj = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.b, %bb.aj
  %.0 = phi i32 [ %i.gj, %bb.aj ], [ 6, %bb.b ], [ 6, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sdf_generate_subdivision(i64 range(i64 0, 281474976710656) %0, i32 range(i32 0, 2) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %6 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %7 = alloca %struct.FT_Vector_, align 8         ; 7 uses
  %8 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %9 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %10 = alloca %struct.FT_Vector_, align 8        ; 7 uses
  %11 = alloca %struct.FT_Vector_, align 8        ; 6 uses
  %12 = alloca %struct.FT_Vector_, align 8        ; 7 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %13 = alloca [3 x %struct.FT_Vector_], align 16 ; 7 uses
  %14 = alloca [4 x %struct.FT_Vector_], align 16 ; 7 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %split_sdf_shape.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !97     ; 7 uses
  %.not65.i = icmp eq ptr %i.e, null
  br i1 %.not65.i, label %split_sdf_shape.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132  ; 2 uses
  %.not66125.i = icmp eq ptr %i.g, null
  br i1 %.not66125.i, label %.loopexit, label %.lr.ph129.i

.lr.ph129.i:                                      ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph129.i
  %.049127.i = phi ptr [ null, %.lr.ph129.i ], [ %i.ar, %.loopexit.i ]
  %.051126.i = phi ptr [ %i.g, %.lr.ph129.i ], [ %i.ax, %.loopexit.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.051126.i, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !138  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store ptr null, ptr %i.d, align 8, !tbaa !156
  %.not67120.i = icmp eq ptr %i.n, null
  br i1 %.not67120.i, label %._crit_edge124.i, label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %bb.d, %bb.i
  %.047121.i = phi ptr [ %i.aq, %bb.i ], [ %i.n, %bb.d ] ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.047121.i, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !139
  switch i32 %i.p, label %.thread106.i [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %.lr.ph123.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.c, align 4, !tbaa !3
  %i.q = call ptr @ft_mem_qalloc(ptr noundef nonnull %i.e, i64 noundef 80, ptr noundef nonnull %i.c) #12 ; 4 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %.not8.i.i = icmp eq i32 %i.r, 0
  br i1 %.not8.i.i, label %.thread.i, label %sdf_edge_new.exit.i

sdf_edge_new.exit.i:                              ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.thread106.i

.thread.i:                                        ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %.047121.i, i64 72, i1 false)
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !156
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store ptr %i.s, ptr %i.t, align 8, !tbaa !149
  store ptr %i.q, ptr %i.d, align 8, !tbaa !156
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph123.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %.047121.i, i64 16, i1 false), !tbaa.struct !121
  %i.u = getelementptr inbounds nuw i8, ptr %.047121.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !121
  %i.v = getelementptr inbounds nuw i8, ptr %.047121.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !121
  %i.w = load <2 x i64>, ptr %i.l, align 16, !tbaa !88
  %i.x = load <2 x i64>, ptr %13, align 16, !tbaa !88
  %i.y = add nsw <2 x i64> %i.x, %i.w
  %i.z = load <2 x i64>, ptr %i.k, align 16, !tbaa !88
  %i.aa = shl <2 x i64> %i.z, splat (i64 1)
  %i.ab = sub <2 x i64> %i.y, %i.aa
  %i.ac = call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.ab, i1 true)
  %i.ad = trunc <2 x i64> %i.ac to <2 x i32>      ; 2 uses
  %i.ae = extractelement <2 x i32> %i.ad, i64 0
  %i.af = extractelement <2 x i32> %i.ad, i64 1
  %.043.i = call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.af) ; 2 uses
  %i.ag = icmp sgt i32 %.043.i, 8
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.041119.i = phi i32 [ %i.ai, %.lr.ph.i ], [ 1, %bb.f ]
  %.144118.i = phi i32 [ %i.ah, %.lr.ph.i ], [ %.043.i, %bb.f ] ; 2 uses
  %i.ah = lshr i32 %.144118.i, 2
  %i.ai = shl i32 %.041119.i, 1                   ; 2 uses
  %i.aj = icmp samesign ugt i32 %.144118.i, 35
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !157

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.041.lcssa.i = phi i32 [ 1, %bb.f ], [ %i.ai, %.lr.ph.i ]
  %i.ak = call fastcc i32 @split_sdf_conic(ptr noundef %i.e, ptr noundef %13, i32 noundef %.041.lcssa.i, ptr noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph123.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %.047121.i, i64 16, i1 false), !tbaa.struct !121
  %i.al = getelementptr inbounds nuw i8, ptr %.047121.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !121
  %i.am = getelementptr inbounds nuw i8, ptr %.047121.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !121
  %i.an = getelementptr inbounds nuw i8, ptr %.047121.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !121
  %i.ao = call fastcc i32 @split_sdf_cubic(ptr noundef %i.e, ptr noundef %14, i32 noundef 32, ptr noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %.146.i = phi i32 [ %i.ao, %bb.g ], [ %i.ak, %._crit_edge.i ] ; 2 uses
  %.not70.i = icmp eq i32 %.146.i, 0
  br i1 %.not70.i, label %bb.i, label %.thread106.i

bb.i:                                             ; preds = %bb.h, %.thread.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.047121.i, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !149 ; 2 uses
  %.not67.i = icmp eq ptr %i.aq, null
  br i1 %.not67.i, label %._crit_edge124.i, label %.lr.ph123.i, !llvm.loop !158

._crit_edge124.i:                                 ; preds = %bb.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.ar = call ptr @ft_mem_qalloc(ptr noundef nonnull %i.e, i64 noundef 32, ptr noundef nonnull %i.b) #12 ; 5 uses
  %i.as = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %.not8.i72.i = icmp eq i32 %i.as, 0
  br i1 %.not8.i72.i, label %bb.j, label %sdf_contour_new.exit.i

sdf_contour_new.exit.i:                           ; preds = %._crit_edge124.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.thread106.i

bb.j:                                             ; preds = %._crit_edge124.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
end_hunk_0
