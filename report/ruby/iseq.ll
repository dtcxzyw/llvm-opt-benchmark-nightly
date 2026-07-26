inline.NumInlined: 615
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@rb_iseq_insns_info_encode_positions:bb.a
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
  %i.de = shl nuw nsw i64 %indvars.iv83.i, 9
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
define hidden noalias nonnull ptr @rb_iseq_insns_info_decode_positions(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !154
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !89   ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85   ; 2 uses
  %i.g = icmp sgt i32 %i.d, 53
  %i.h = add nsw i32 %i.d, 8
  %i.i = sdiv i32 %i.h, 9
  %i.j = select i1 %i.g, i32 6, i32 %i.i          ; 2 uses
  %i.k = add nuw nsw i32 %i.d, 457
  %i.l = sdiv i32 %i.k, 512
  %i.m = sext i32 %i.b to i64
  %i.n = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.m, i64 noundef 4) #21 ; 3 uses
  %i.o = icmp sgt i32 %i.j, 0
  br i1 %i.o, label %.preheader45.preheader.i, label %.preheader44.i

.preheader45.preheader.i:                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %bb.s, %.preheader45.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader45.preheader.i ], [ %indvars.iv.next.i, %bb.s ] ; 3 uses
  %.051.i = phi ptr [ %i.n, %.preheader45.preheader.i ], [ %.2.8.i, %bb.s ] ; 3 uses
  %.03550.i = phi i32 [ -1, %.preheader45.preheader.i ], [ %i.bn, %bb.s ]
  %i.p = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11   ; 6 uses
  %i.r = mul nuw nsw i64 %indvars.iv.i, 9         ; 9 uses
  %i.s = trunc i64 %i.q to i32                    ; 4 uses
  %i.t = and i32 %i.s, 127                        ; 2 uses
  %.not42.i = icmp eq i32 %.03550.i, %i.t
  br i1 %.not42.i, label %bb.c, label %bb.b

.preheader44.i:                                   ; preds = %bb.s, %bb.a
  %.0.lcssa.i = phi ptr [ %i.n, %bb.a ], [ %.2.8.i, %bb.s ]
  %i.u = add i32 %i.d, -55
  %i.v = icmp ult i32 %i.u, 2147483136
  br i1 %i.v, label %.preheader43.preheader.i, label %succ_index_table_invert.exit

.preheader43.preheader.i:                         ; preds = %.preheader44.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %wide.trip.count71.i = zext nneg i32 %smax.i to i64
  br label %.preheader43.i

bb.b:                                             ; preds = %.preheader45.i
  %i.w = getelementptr i8, ptr %.051.i, i64 4
  %i.x = trunc nuw i64 %i.r to i32
  store i32 %i.x, ptr %.051.i, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader45.i
  %.2.i = phi ptr [ %i.w, %bb.b ], [ %.051.i, %.preheader45.i ] ; 3 uses
  %i.y = lshr i32 %i.s, 7
  %i.z = and i32 %i.y, 127                        ; 2 uses
  %.not42.1.i = icmp eq i32 %i.t, %i.z
  br i1 %.not42.1.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %.2.i, i64 4
  %i.ab = trunc i64 %i.r to i32
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %.2.i, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2.1.i = phi ptr [ %i.aa, %bb.d ], [ %.2.i, %bb.c ] ; 3 uses
  %i.ad = lshr i32 %i.s, 14
  %i.ae = and i32 %i.ad, 127                      ; 2 uses
  %.not42.2.i = icmp eq i32 %i.z, %i.ae
  br i1 %.not42.2.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr i8, ptr %.2.1.i, i64 4
  %i.ag = trunc i64 %i.r to i32
  %i.ah = add i32 %i.ag, 2
  store i32 %i.ah, ptr %.2.1.i, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.2.i = phi ptr [ %i.af, %bb.f ], [ %.2.1.i, %bb.e ] ; 3 uses
  %i.ai = lshr i32 %i.s, 21
  %i.aj = and i32 %i.ai, 127                      ; 2 uses
  %.not42.3.i = icmp eq i32 %i.ae, %i.aj
  br i1 %.not42.3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr i8, ptr %.2.2.i, i64 4
  %i.al = trunc i64 %i.r to i32
  %i.am = add i32 %i.al, 3
  store i32 %i.am, ptr %.2.2.i, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.3.i = phi ptr [ %i.ak, %bb.h ], [ %.2.2.i, %bb.g ] ; 3 uses
  %i.an = lshr i64 %i.q, 28
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.ao, 127                      ; 2 uses
  %.not42.4.i = icmp eq i32 %i.aj, %i.ap
  br i1 %.not42.4.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr i8, ptr %.2.3.i, i64 4
  %i.ar = trunc i64 %i.r to i32
  %i.as = add i32 %i.ar, 4
  store i32 %i.as, ptr %.2.3.i, align 4, !tbaa !7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.4.i = phi ptr [ %i.aq, %bb.j ], [ %.2.3.i, %bb.i ] ; 3 uses
  %i.at = lshr i64 %i.q, 35
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = and i32 %i.au, 127                      ; 2 uses
  %.not42.5.i = icmp eq i32 %i.ap, %i.av
  br i1 %.not42.5.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr i8, ptr %.2.4.i, i64 4
  %i.ax = trunc i64 %i.r to i32
  %i.ay = add i32 %i.ax, 5
  store i32 %i.ay, ptr %.2.4.i, align 4, !tbaa !7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2.5.i = phi ptr [ %i.aw, %bb.l ], [ %.2.4.i, %bb.k ] ; 3 uses
  %i.az = lshr i64 %i.q, 42
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = and i32 %i.ba, 127                      ; 2 uses
  %.not42.6.i = icmp eq i32 %i.av, %i.bb
  br i1 %.not42.6.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr i8, ptr %.2.5.i, i64 4
  %i.bd = trunc i64 %i.r to i32
  %i.be = add i32 %i.bd, 6
  store i32 %i.be, ptr %.2.5.i, align 4, !tbaa !7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2.6.i = phi ptr [ %i.bc, %bb.n ], [ %.2.5.i, %bb.m ] ; 3 uses
  %i.bf = lshr i64 %i.q, 49
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 127                      ; 2 uses
  %.not42.7.i = icmp eq i32 %i.bb, %i.bh
  br i1 %.not42.7.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr i8, ptr %.2.6.i, i64 4
  %i.bj = trunc i64 %i.r to i32
  %i.bk = add i32 %i.bj, 7
  store i32 %i.bk, ptr %.2.6.i, align 4, !tbaa !7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.7.i = phi ptr [ %i.bi, %bb.p ], [ %.2.6.i, %bb.o ] ; 3 uses
  %i.bl = lshr i64 %i.q, 56
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = and i32 %i.bm, 127                      ; 2 uses
  %.not42.8.i = icmp eq i32 %i.bh, %i.bn
  br i1 %.not42.8.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr i8, ptr %.2.7.i, i64 4
  %i.bp = trunc i64 %i.r to i32
  %i.bq = add i32 %i.bp, 8
  store i32 %i.bq, ptr %.2.7.i, align 4, !tbaa !7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.8.i = phi ptr [ %i.bo, %bb.r ], [ %.2.7.i, %bb.q ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader44.i, label %.preheader45.i, !llvm.loop !168

.preheader43.i:                                   ; preds = %bb.bh, %.preheader43.preheader.i
  %indvars.iv68.i = phi i64 [ 0, %.preheader43.preheader.i ], [ %indvars.iv.next69.i, %bb.bh ] ; 3 uses
  %.357.i = phi ptr [ %.0.lcssa.i, %.preheader43.preheader.i ], [ %.6.7.i.1, %bb.bh ]
  %i.br = getelementptr [80 x i8], ptr %i.f, i64 %indvars.iv68.i ; 8 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 64
  %i.bt = shl nuw nsw i64 %indvars.iv68.i, 9      ; 8 uses
  %i.bu = or disjoint i64 %i.bt, 54               ; 2 uses
  %i.bv = load i64, ptr %i.bs, align 8, !tbaa !11 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.preheader43.i
  %indvars.iv60.i = phi i64 [ 0, %.preheader43.i ], [ %indvars.iv.next61.i.1, %bb.x ] ; 5 uses
  %.553.i = phi ptr [ %.357.i, %.preheader43.i ], [ %.6.i.1, %bb.x ] ; 3 uses
  %i.bw = shl nuw i64 1, %indvars.iv60.i
  %i.bx = and i64 %i.bw, %i.bv
  %.not.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = add nuw nsw i64 %i.bu, %indvars.iv60.i
  %i.bz = getelementptr i8, ptr %.553.i, i64 4
  %i.ca = trunc nuw nsw i64 %i.by to i32
  store i32 %i.ca, ptr %.553.i, align 4, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.6.i = phi ptr [ %i.bz, %bb.u ], [ %.553.i, %bb.t ] ; 3 uses
  %i.cb = shl nuw i64 2, %indvars.iv60.i
  %i.cc = and i64 %i.cb, %i.bv
  %.not.i.1 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next61.i = or disjoint i64 %indvars.iv60.i, 1
  %i.cd = add nuw nsw i64 %i.bu, %indvars.iv.next61.i
  %i.ce = getelementptr i8, ptr %.6.i, i64 4
  %i.cf = trunc nuw nsw i64 %i.cd to i32
  store i32 %i.cf, ptr %.6.i, align 4, !tbaa !7
end_hunk_0
