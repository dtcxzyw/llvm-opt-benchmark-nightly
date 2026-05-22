inline.NumInlined: 615
inline.NumDeleted: 145
begin_hunk_0_@rb_iseq_insns_info_encode_positions:bb.a
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi93.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = add nuw nsw i64 %i.w, 5
  %i.br = zext i32 %i.bp to i64
  %i.bs = icmp eq i64 %i.bq, %i.br
  %i.bt = zext i1 %i.bs to i32
  %spec.select.5.i = add nsw i32 %.2.4.i, %i.bt   ; 2 uses
  %.pre94.i = sext i32 %spec.select.5.i to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre-phi95.i = phi i64 [ %.pre94.i, %bb.n ], [ %.pre-phi93.i, %bb.m ] ; 3 uses
  %.2.5.i = phi i32 [ %spec.select.5.i, %bb.n ], [ %.2.4.i, %bb.m ] ; 3 uses
  %i.bu = shl i64 %.pre-phi95.i, 35
  %i.bv = icmp slt i32 %.2.5.i, %i.d
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi95.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.by = add nuw nsw i64 %i.w, 6
  %i.bz = zext i32 %i.bx to i64
  %i.ca = icmp eq i64 %i.by, %i.bz
  %i.cb = zext i1 %i.ca to i32
  %spec.select.6.i = add nsw i32 %.2.5.i, %i.cb   ; 2 uses
  %.pre96.i = sext i32 %spec.select.6.i to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre-phi97.i = phi i64 [ %.pre96.i, %bb.p ], [ %.pre-phi95.i, %bb.o ] ; 3 uses
  %.2.6.i = phi i32 [ %spec.select.6.i, %bb.p ], [ %.2.5.i, %bb.o ] ; 3 uses
  %i.cc = shl i64 %.pre-phi97.i, 42
  %i.cd = icmp slt i32 %.2.6.i, %i.d
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi97.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7
  %i.cg = add nuw nsw i64 %i.w, 7
  %i.ch = zext i32 %i.cf to i64
  %i.ci = icmp eq i64 %i.cg, %i.ch
  %i.cj = zext i1 %i.ci to i32
  %spec.select.7.i = add nsw i32 %.2.6.i, %i.cj   ; 2 uses
  %.pre98.i = sext i32 %spec.select.7.i to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pre-phi99.i = phi i64 [ %.pre98.i, %bb.r ], [ %.pre-phi97.i, %bb.q ] ; 2 uses
  %.2.7.i = phi i32 [ %spec.select.7.i, %bb.r ], [ %.2.6.i, %bb.q ] ; 3 uses
  %i.ck = shl i64 %.pre-phi99.i, 49
  %i.cl = icmp slt i32 %.2.7.i, %i.d
  br i1 %i.cl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi99.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7
  %i.co = add nuw nsw i64 %i.w, 8
  %i.cp = zext i32 %i.cn to i64
  %i.cq = icmp eq i64 %i.co, %i.cp
  %i.cr = zext i1 %i.cq to i32
  %spec.select.8.i = add nsw i32 %.2.7.i, %i.cr
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.8.i = phi i32 [ %.2.7.i, %bb.s ], [ %spec.select.8.i, %bb.t ] ; 3 uses
  %i.cs = zext i32 %.2.8.i to i64
  %i.ct = shl i64 %i.cs, 56
  %i.cu = or i64 %.promoted.i, %i.ao
  %i.cv = or i64 %i.cu, %i.aw
  %i.cw = or i64 %i.cv, %i.be
  %i.cx = or i64 %i.cw, %i.bm
  %i.cy = or i64 %i.cx, %i.bu
  %i.cz = or i64 %i.cy, %i.cc
  %i.da = or i64 %i.cz, %i.ck
  %i.db = or i64 %i.da, %i.ct
  %i.dc = or i64 %i.db, %i.ag
  store i64 %i.dc, ptr %i.v, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %.preheader60.i, !llvm.loop !161

bb.v:                                             ; preds = %bb.ah, %.lr.ph.i
  %indvars.iv83.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next84.i, %bb.ah ] ; 3 uses
  %.372.i = phi i32 [ %.055.lcssa.i, %.lr.ph.i ], [ %.6.i.1, %bb.ah ] ; 2 uses
  %i.dd = getelementptr [80 x i8], ptr %i.z, i64 %indvars.iv83.i ; 3 uses
  store i32 %.372.i, ptr %i.dd, align 8, !tbaa !162
  %i.de = shl i64 %indvars.iv83.i, 9
  %i.df = or disjoint i64 %i.de, 54
  %i.dg = getelementptr i8, ptr %i.dd, i64 16
  %i.dh = getelementptr i8, ptr %i.dd, i64 8      ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.ag, %bb.v
  %indvars.iv79.i = phi i64 [ 0, %bb.v ], [ %indvars.iv.next80.i, %bb.ag ] ; 5 uses
  %.05270.i = phi i32 [ 0, %bb.v ], [ %i.en, %bb.ag ] ; 2 uses
  %.469.i = phi i32 [ %.372.i, %bb.v ], [ %.6.i.1, %bb.ag ]
  %.not.i = icmp eq i64 %indvars.iv79.i, 0
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = sext i32 %.05270.i to i64
  %i.dj = mul nuw nsw i64 %indvars.iv79.i, 9
  %i.dk = add nsw i64 %i.dj, -9
  %i.dl = shl i64 %i.di, %i.dk
  %i.dm = load i64, ptr %i.dh, align 8, !tbaa !164
  %i.dn = or i64 %i.dm, %i.dl
  store i64 %i.dn, ptr %i.dh, align 8, !tbaa !164
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.do = shl nuw nsw i64 %indvars.iv79.i, 6
  %i.dp = add nuw nsw i64 %i.df, %i.do            ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.af, %bb.y
  %indvars.iv75.i = phi i64 [ 0, %bb.y ], [ %indvars.iv.next76.i.1, %bb.af ] ; 5 uses
  %.067.i = phi i64 [ 0, %bb.y ], [ %.1.i.1, %bb.af ] ; 3 uses
  %.565.i = phi i32 [ %.469.i, %bb.y ], [ %.6.i.1, %bb.af ] ; 5 uses
  %i.dq = icmp slt i32 %.565.i, %i.d
  br i1 %i.dq, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dr = sext i32 %.565.i to i64
  %i.ds = getelementptr [4 x i8], ptr %i.h, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !7
  %i.du = add nuw nsw i64 %i.dp, %indvars.iv75.i
  %i.dv = zext i32 %i.dt to i64
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dx = shl nuw i64 1, %indvars.iv75.i
  %i.dy = or i64 %i.dx, %.067.i
  %i.dz = add nsw i32 %.565.i, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.6.i = phi i32 [ %i.dz, %bb.ab ], [ %.565.i, %bb.aa ], [ %.565.i, %bb.z ] ; 5 uses
  %.1.i = phi i64 [ %i.dy, %bb.ab ], [ %.067.i, %bb.aa ], [ %.067.i, %bb.z ] ; 3 uses
  %i.ea = icmp slt i32 %.6.i, %i.d
  br i1 %i.ea, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv.next76.i = or disjoint i64 %indvars.iv75.i, 1
  %i.eb = sext i32 %.6.i to i64
  %i.ec = getelementptr [4 x i8], ptr %i.h, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !7
  %i.ee = add nuw nsw i64 %i.dp, %indvars.iv.next76.i
  %i.ef = zext i32 %i.ed to i64
  %i.eg = icmp eq i64 %i.ee, %i.ef
  br i1 %i.eg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eh = shl nuw i64 2, %indvars.iv75.i
  %i.ei = or i64 %i.eh, %.1.i
  %i.ej = add nsw i32 %.6.i, 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.6.i.1 = phi i32 [ %i.ej, %bb.ae ], [ %.6.i, %bb.ad ], [ %.6.i, %bb.ac ] ; 3 uses
  %.1.i.1 = phi i64 [ %i.ei, %bb.ae ], [ %.1.i, %bb.ad ], [ %.1.i, %bb.ac ] ; 3 uses
  %indvars.iv.next76.i.1 = add nuw nsw i64 %indvars.iv75.i, 2 ; 2 uses
  %exitcond78.not.i.1 = icmp eq i64 %indvars.iv.next76.i.1, 64
  br i1 %exitcond78.not.i.1, label %bb.ag, label %bb.z, !llvm.loop !165

bb.ag:                                            ; preds = %bb.af
  %i.ek = getelementptr [8 x i8], ptr %i.dg, i64 %indvars.iv79.i
  store i64 %.1.i.1, ptr %i.ek, align 8, !tbaa !11
  %i.el = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.1.i.1)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = add i32 %.05270.i, %i.em
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next80.i, 8
  br i1 %exitcond82.not.i, label %bb.ah, label %bb.w, !llvm.loop !166

bb.ah:                                            ; preds = %bb.ag
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, 1 ; 2 uses
  %exitcond87.not.i = icmp eq i64 %indvars.iv.next84.i, %wide.trip.count86.i
  br i1 %exitcond87.not.i, label %succ_index_table_create.exit, label %bb.v, !llvm.loop !167

succ_index_table_create.exit:                     ; preds = %bb.ah, %.preheader.i
  store ptr %i.t, ptr %i.i, align 8, !tbaa !85
  %i.eo = load ptr, ptr %i.g, align 8, !tbaa !84
  tail call void @ruby_xfree(ptr noundef %i.eo) #20
  store ptr null, ptr %i.g, align 8, !tbaa !84
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noalias nonnull ptr @rb_iseq_insns_info_decode_positions(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !154
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !89   ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85   ; 2 uses
  %1 = icmp sgt i32 %i.d, 53
  %2 = add nsw i32 %i.d, 8
  %3 = sdiv i32 %2, 9
  %i.g = select i1 %1, i32 6, i32 %3              ; 2 uses
  %i.h = add i32 %i.d, 457
  %i.i = sdiv i32 %i.h, 512
  %i.j = sext i32 %i.b to i64
  %i.k = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.j, i64 noundef 4) #21 ; 3 uses
  %i.l = icmp sgt i32 %i.g, 0
  br i1 %i.l, label %.preheader45.preheader.i, label %.preheader44.i

.preheader45.preheader.i:                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.g to i64
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %bb.s, %.preheader45.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader45.preheader.i ], [ %indvars.iv.next.i, %bb.s ] ; 3 uses
  %.051.i = phi ptr [ %i.k, %.preheader45.preheader.i ], [ %.2.8.i, %bb.s ] ; 3 uses
  %.03550.i = phi i32 [ -1, %.preheader45.preheader.i ], [ %i.bk, %bb.s ]
  %i.m = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 6 uses
  %i.o = mul nuw nsw i64 %indvars.iv.i, 9         ; 9 uses
  %i.p = trunc i64 %i.n to i32                    ; 4 uses
  %i.q = and i32 %i.p, 127                        ; 2 uses
  %.not42.i = icmp eq i32 %.03550.i, %i.q
  br i1 %.not42.i, label %bb.c, label %bb.b

.preheader44.i:                                   ; preds = %bb.s, %bb.a
  %.0.lcssa.i = phi ptr [ %i.k, %bb.a ], [ %.2.8.i, %bb.s ]
  %i.r = add i32 %i.d, -55
  %i.s = icmp ult i32 %i.r, 2147483136
  br i1 %i.s, label %.preheader43.preheader.i, label %succ_index_table_invert.exit

.preheader43.preheader.i:                         ; preds = %.preheader44.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.i, i32 1)
  %wide.trip.count71.i = zext nneg i32 %smax.i to i64
  br label %.preheader43.i

bb.b:                                             ; preds = %.preheader45.i
  %i.t = getelementptr i8, ptr %.051.i, i64 4
  %i.u = trunc nuw i64 %i.o to i32
  store i32 %i.u, ptr %.051.i, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader45.i
  %.2.i = phi ptr [ %i.t, %bb.b ], [ %.051.i, %.preheader45.i ] ; 3 uses
  %i.v = lshr i32 %i.p, 7
  %i.w = and i32 %i.v, 127                        ; 2 uses
  %.not42.1.i = icmp eq i32 %i.q, %i.w
  br i1 %.not42.1.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %.2.i, i64 4
  %i.y = trunc i64 %i.o to i32
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %.2.i, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2.1.i = phi ptr [ %i.x, %bb.d ], [ %.2.i, %bb.c ] ; 3 uses
  %i.aa = lshr i32 %i.p, 14
  %i.ab = and i32 %i.aa, 127                      ; 2 uses
  %.not42.2.i = icmp eq i32 %i.w, %i.ab
  br i1 %.not42.2.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %.2.1.i, i64 4
  %i.ad = trunc i64 %i.o to i32
  %i.ae = add i32 %i.ad, 2
  store i32 %i.ae, ptr %.2.1.i, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.2.i = phi ptr [ %i.ac, %bb.f ], [ %.2.1.i, %bb.e ] ; 3 uses
  %i.af = lshr i32 %i.p, 21
  %i.ag = and i32 %i.af, 127                      ; 2 uses
  %.not42.3.i = icmp eq i32 %i.ab, %i.ag
  br i1 %.not42.3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %.2.2.i, i64 4
  %i.ai = trunc i64 %i.o to i32
  %i.aj = add i32 %i.ai, 3
  store i32 %i.aj, ptr %.2.2.i, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.3.i = phi ptr [ %i.ah, %bb.h ], [ %.2.2.i, %bb.g ] ; 3 uses
  %i.ak = lshr i64 %i.n, 28
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.al, 127                      ; 2 uses
  %.not42.4.i = icmp eq i32 %i.ag, %i.am
  br i1 %.not42.4.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr i8, ptr %.2.3.i, i64 4
  %i.ao = trunc i64 %i.o to i32
  %i.ap = add i32 %i.ao, 4
  store i32 %i.ap, ptr %.2.3.i, align 4, !tbaa !7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.4.i = phi ptr [ %i.an, %bb.j ], [ %.2.3.i, %bb.i ] ; 3 uses
  %i.aq = lshr i64 %i.n, 35
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = and i32 %i.ar, 127                      ; 2 uses
  %.not42.5.i = icmp eq i32 %i.am, %i.as
  br i1 %.not42.5.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr i8, ptr %.2.4.i, i64 4
  %i.au = trunc i64 %i.o to i32
  %i.av = add i32 %i.au, 5
  store i32 %i.av, ptr %.2.4.i, align 4, !tbaa !7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2.5.i = phi ptr [ %i.at, %bb.l ], [ %.2.4.i, %bb.k ] ; 3 uses
  %i.aw = lshr i64 %i.n, 42
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 127                      ; 2 uses
  %.not42.6.i = icmp eq i32 %i.as, %i.ay
  br i1 %.not42.6.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr i8, ptr %.2.5.i, i64 4
  %i.ba = trunc i64 %i.o to i32
  %i.bb = add i32 %i.ba, 6
  store i32 %i.bb, ptr %.2.5.i, align 4, !tbaa !7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2.6.i = phi ptr [ %i.az, %bb.n ], [ %.2.5.i, %bb.m ] ; 3 uses
  %i.bc = lshr i64 %i.n, 49
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = and i32 %i.bd, 127                      ; 2 uses
  %.not42.7.i = icmp eq i32 %i.ay, %i.be
  br i1 %.not42.7.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr i8, ptr %.2.6.i, i64 4
  %i.bg = trunc i64 %i.o to i32
  %i.bh = add i32 %i.bg, 7
  store i32 %i.bh, ptr %.2.6.i, align 4, !tbaa !7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.7.i = phi ptr [ %i.bf, %bb.p ], [ %.2.6.i, %bb.o ] ; 3 uses
  %i.bi = lshr i64 %i.n, 56
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = and i32 %i.bj, 127                      ; 2 uses
  %.not42.8.i = icmp eq i32 %i.be, %i.bk
  br i1 %.not42.8.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr i8, ptr %.2.7.i, i64 4
  %i.bm = trunc i64 %i.o to i32
  %i.bn = add i32 %i.bm, 8
  store i32 %i.bn, ptr %.2.7.i, align 4, !tbaa !7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.8.i = phi ptr [ %i.bl, %bb.r ], [ %.2.7.i, %bb.q ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader44.i, label %.preheader45.i, !llvm.loop !168

.preheader43.i:                                   ; preds = %bb.bh, %.preheader43.preheader.i
  %indvars.iv68.i = phi i64 [ 0, %.preheader43.preheader.i ], [ %indvars.iv.next69.i, %bb.bh ] ; 3 uses
  %.357.i = phi ptr [ %.0.lcssa.i, %.preheader43.preheader.i ], [ %.6.7.i.1, %bb.bh ]
  %i.bo = getelementptr [80 x i8], ptr %i.f, i64 %indvars.iv68.i ; 8 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 64
  %i.bq = shl i64 %indvars.iv68.i, 9              ; 8 uses
  %i.br = or disjoint i64 %i.bq, 54               ; 2 uses
  %i.bs = load i64, ptr %i.bp, align 8, !tbaa !11 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.preheader43.i
  %indvars.iv60.i = phi i64 [ 0, %.preheader43.i ], [ %indvars.iv.next61.i.1, %bb.x ] ; 5 uses
  %.553.i = phi ptr [ %.357.i, %.preheader43.i ], [ %.6.i.1, %bb.x ] ; 3 uses
  %i.bt = shl nuw i64 1, %indvars.iv60.i
  %i.bu = and i64 %i.bt, %i.bs
  %.not.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = add nuw nsw i64 %i.br, %indvars.iv60.i
  %i.bw = getelementptr i8, ptr %.553.i, i64 4
  %i.bx = trunc nuw nsw i64 %i.bv to i32
  store i32 %i.bx, ptr %.553.i, align 4, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.6.i = phi ptr [ %i.bw, %bb.u ], [ %.553.i, %bb.t ] ; 3 uses
  %i.by = shl nuw i64 2, %indvars.iv60.i
  %i.bz = and i64 %i.by, %i.bs
  %.not.i.1 = icmp eq i64 %i.bz, 0
  br i1 %.not.i.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next61.i = or disjoint i64 %indvars.iv60.i, 1
  %i.ca = add nuw nsw i64 %i.br, %indvars.iv.next61.i
  %i.cb = getelementptr i8, ptr %.6.i, i64 4
  %i.cc = trunc nuw nsw i64 %i.ca to i32
end_hunk_0
